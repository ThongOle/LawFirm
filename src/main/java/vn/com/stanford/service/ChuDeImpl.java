package vn.com.stanford.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.com.stanford.entity.ChuDe;

public class ChuDeImpl implements ChuDeDao {
	@Override
	public List<ChuDe> layDanhSach() {
		// Khai báo 1 danh sách
		List<ChuDe> lstChuDe = new ArrayList<ChuDe>();
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		TypedQuery<ChuDe> query = session.createQuery("from ChuDe", ChuDe.class);

		lstChuDe = query.getResultList();
		tx.commit();

		return lstChuDe;
	}

	@Override
	public ChuDe layChiTiet(String id) {
		// Khai báo 1 đối tượng sách
		ChuDe objChuDe = null;
		// Khai báo 1 kết nối
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		objChuDe = (ChuDe) session.get(ChuDe.class, id);

		tx.commit();

		return objChuDe;
	}

	@Override
	public boolean themMoi(ChuDe objChuDe) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.save(objChuDe);
		tx.commit();

		return true;
	}

	@Override
	public boolean sua(ChuDe objChuDe) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.update(objChuDe);
		tx.commit();
		return true;
	}

	@Override
	public boolean xoa(String id) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// lấy đối tượng cần xóa

		ChuDe objChuDe = (ChuDe) session.get(ChuDe.class, id);

		if (objChuDe != null) {
			session.delete(objChuDe);
			tx.commit();
			return true;
		}
		return false;
	}
}
