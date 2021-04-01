package vn.com.stanford.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.com.stanford.entity.LuatSu;

public class LuatSuImpl implements LuatSuDao{
	@Override
	public List<LuatSu> layDanhSach() {
		// Khai báo 1 danh sách
		List<LuatSu> lstLuatSu = new ArrayList<LuatSu>();
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		TypedQuery<LuatSu> query = session.createQuery("from LuatSu", LuatSu.class);

		lstLuatSu = query.getResultList();
		tx.commit();

		return lstLuatSu;
	}

	@Override
	public LuatSu layChiTiet(Integer id) {
		// Khai báo 1 đối tượng sách
		LuatSu objLuatSu = null;
		// Khai báo 1 kết nối
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		objLuatSu = (LuatSu) session.get(LuatSu.class, id);

		tx.commit();

		return objLuatSu;
	}

	@Override
	public boolean themMoi(LuatSu objLuatSu) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.save(objLuatSu);
		tx.commit();

		return true;
	}

	@Override
	public boolean sua(LuatSu objLuatSu) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.update(objLuatSu);
		tx.commit();
		return true;
	}

	@Override
	public boolean xoa(Integer id) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// lấy đối tượng cần xóa

		LuatSu objLuatSu = (LuatSu) session.get(LuatSu.class, id);

		if (objLuatSu != null) {
			session.delete(objLuatSu);
			tx.commit();
			return true;
		}
		return false;
	}
}
