package com.zjx.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zjx.bean.CommonFile;
import com.zjx.bean.MyFiles;
import com.zjx.dao.MyFileDao;

@Repository("MyFileDao")
public class MyFileDaoImpl implements MyFileDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addMyFiles(MyFiles file) {
		sessionFactory.getCurrentSession().save(file);
		
	}

	@Override
	public List<MyFiles> showMyFiles(int start, int row,int uid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from MyFiles where userid=?");
		query.setInteger(0, uid);
		query.setFirstResult(start);//页数
		query.setMaxResults(row);//每页个数
		return query.list();
	}

	@Override
	public void delMyFiles(MyFiles file) {
		sessionFactory.getCurrentSession().delete(file);
		
	}

	@Override
	public MyFiles findMyFileById(int cid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from MyFiles where mcid=? ");
		query.setInteger(0, cid);
		MyFiles file = null;
		if(query.list().size()>0){
			file = (MyFiles) query.list().get(0);
					
		}
		return file;
	}

	@Override
	public int MyFilesCount(int uid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from MyFiles where userid=? ");
		query.setInteger(0, uid);
		return query.list().size();
	}

	@Override
	public List<MyFiles> selectFiles(String fname) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from MyFiles where myfiles like ?");
		query.setString(0, "%"+fname+"%");
		return query.list();
	}

	@Override
	public List<MyFiles> selectFiles1(String typename) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from MyFiles where filesub like ?");
		query.setString(0, "%"+typename+"%");
		return query.list();
	}

	@Override
	public List<MyFiles> selectFiles2(String fname, String typename) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from MyFiles where myfiles like ? and filesub like ?");
		query.setString(0, "%"+fname+"%");
		query.setString(1, "%"+typename+"%");
		return query.list();
	}
	
}
