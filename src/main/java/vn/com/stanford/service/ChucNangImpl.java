package vn.com.stanford.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.com.stanford.entity.ChucNang;

public class ChucNangImpl implements ChucNangDao {
	@Override
	public List<ChucNang> layDanhSach() {
		// Khai báo 1 danh sách
		List<ChucNang> lstChucNang = new ArrayList<ChucNang>();
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		TypedQuery<ChucNang> query = session.createQuery("from ChucNang", ChucNang.class);

		lstChucNang = query.getResultList();
		tx.commit();

		return lstChucNang;
	}

	@Override
	public ChucNang layChiTiet(Integer id) {
		// Khai báo 1 đối tượng sách
		ChucNang objChucNang = null;
		// Khai báo 1 kết nối
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		objChucNang = (ChucNang) session.get(ChucNang.class, id);

		tx.commit();

		return objChucNang;
	}

	@Override
	public boolean themMoi(ChucNang objChucNang) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.save(objChucNang);
		tx.commit();

		return true;
	}

	@Override
	public boolean sua(ChucNang objChucNang) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.update(objChucNang);
		tx.commit();
		return true;
	}

	@Override
	public boolean xoa(Integer id) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// lấy đối tượng cần xóa

		ChucNang objChucNang = (ChucNang) session.get(ChucNang.class, id);

		if (objChucNang != null) {
			session.delete(objChucNang);
			tx.commit();
			return true;
		}
		return false;
	}
}
