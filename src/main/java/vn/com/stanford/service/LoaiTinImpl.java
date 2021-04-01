package vn.com.stanford.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.com.stanford.entity.LoaiTin;

public class LoaiTinImpl implements LoaiTinDao{
	@Override
	public List<LoaiTin> layDanhSach() {
		// Khai báo 1 danh sách
				List<LoaiTin> lstLoaiTin = new ArrayList<LoaiTin>();
				// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();

				// khởi tạo 1 trấnction

				Transaction tx = session.beginTransaction();

				TypedQuery<LoaiTin> query = session.createQuery("from LoaiTin", LoaiTin.class);

				lstLoaiTin = query.getResultList();
				tx.commit();

				return lstLoaiTin;
	}
	@Override
	public LoaiTin layChiTiet(Integer id) {
		// Khai báo 1 đối tượng sách
				LoaiTin objLoaiTin = null;
				// Khai báo 1 kết nối
				// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();

				// khởi tạo 1 trấnction

				Transaction tx = session.beginTransaction();

				objLoaiTin = (LoaiTin) session.get(LoaiTin.class, id);

				tx.commit();

				return objLoaiTin;
	}
	@Override
	public boolean themMoi(LoaiTin objLoaiTin) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.save(objLoaiTin);
		tx.commit();

		return true;
	}
	@Override
	public boolean sua(LoaiTin objLoaiTin) {
		// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = session.beginTransaction();

				// thực hiện thêm mới thông tin

				session.update(objLoaiTin);
				tx.commit();
				return true;
	}
	@Override
	public boolean xoa(Integer id) {
		// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = session.beginTransaction();

				// lấy đối tượng cần xóa

				LoaiTin objLoaiTin = (LoaiTin) session.get(LoaiTin.class, id);

				if (objLoaiTin != null) {
					session.delete(objLoaiTin);
					tx.commit();
					return true;
				}
				return false;
	}
}
