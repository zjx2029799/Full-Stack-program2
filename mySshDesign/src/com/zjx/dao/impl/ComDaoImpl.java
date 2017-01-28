package com.zjx.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zjx.bean.CommonFile;
import com.zjx.dao.ComDao;

@Repository("ComDao")
public class ComDaoImpl implements ComDao {

	@Autowired
	private SessionFactory sessionFactroy;
	
	@Override
	public void addFiles(CommonFile com) {
		 sessionFactroy.getCurrentSession().save(com);
		
	}

	@Override
	public List<CommonFile> showFiles() {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile");
		List<CommonFile> comlist = query.list();
		return comlist;
	}

	@Override
	public List<CommonFile> showFiles(int start, int row) {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile ");
		query.setFirstResult(start);//页数
		query.setMaxResults(row);//每页个数
		return query.list();
	}

	@Override
	public int showComCount() {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile");

		return query.list().size();
	}

	@Override
	public void delCom(CommonFile com) {
		sessionFactroy.getCurrentSession().delete(com);
		
	}

	@Override
	public CommonFile findComById(int cid) {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile where cid=?");
		query.setInteger(0, cid);
		CommonFile com = null;
		if(query.list().size()>0){
			com = (CommonFile) query.list().get(0);
		}
		return com;
	}

	@Override
	public List<CommonFile> showFiles1(int start, int row, String str) {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile where typename=? ");
		query.setString(0, str);
		query.setFirstResult(start);//页数
		query.setMaxResults(row);//每页个数
		return query.list();
	}

	@Override
	public int showComCount1(String str) {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile where typename=?");
		query.setString(0, str);
		return query.list().size();
	}

	@Override
	public void updateCom(CommonFile com) {
		sessionFactroy.getCurrentSession().update(com);
	}

	@Override
	public List<CommonFile> showFilesRank(int start, int row) {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile order by grade desc");
		query.setFirstResult(start);//页数
		query.setMaxResults(row);//每页个数
		return query.list();
	}

	@Override
	public List<CommonFile> showMyFiles(int start, int row, int id) {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile c, UCmapping m where c.cid=u.id and u.id=?");
		query.setInteger(0, id);
		query.setFirstResult(start);//页数
		query.setMaxResults(row);//每页个数
		return query.list();
	}

	@Override
	public int showComCount2(int id) {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile c, UCmapping m where c.cid=u.id and u.id=?");
		query.setInteger(0, id);
		return query.list().size();
	}

	@Override
	public List<CommonFile> selectFiles(String fname) {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile where filename like ?");
		query.setString(0, "%"+fname+"%");
		//query.setString(1, "%"+fclass+"%");
		return query.list();
	}

	@Override
	public List<CommonFile> selectFiles1(String typename) {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile where typename like ?");
		query.setString(0, "%"+typename+"%");
		return query.list();
	}

	@Override
	public List<CommonFile> selectFiles2(String fname, String typename) {
		Session session = sessionFactroy.getCurrentSession();
		Query query = session.createQuery("from CommonFile where filename like ? and typename like ?");
		query.setString(0, "%"+fname+"%");
		query.setString(1, "%"+typename+"%");
		return query.list();
	}


}
