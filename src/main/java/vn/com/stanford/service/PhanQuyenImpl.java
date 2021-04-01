package vn.com.stanford.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.com.stanford.entity.PhanQuyen;

public class PhanQuyenImpl implements PhanQuyenDao{
	@Override
	public List<PhanQuyen> layDanhSach() {
		// Khai báo 1 danh sách
				List<PhanQuyen> lstPhanQuyen = new ArrayList<PhanQuyen>();
				// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();

				// khởi tạo 1 trấnction

				Transaction tx = session.beginTransaction();

				TypedQuery<PhanQuyen> query = session.createQuery("from PhanQuyen", PhanQuyen.class);

				lstPhanQuyen = query.getResultList();
				tx.commit();

				return lstPhanQuyen;
	}
	@Override
	public PhanQuyen layChiTiet(Integer id) {
		// Khai báo 1 đối tượng sách
				PhanQuyen objPhanQuyen = null;
				// Khai báo 1 kết nối
				// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();

				// khởi tạo 1 trấnction

				Transaction tx = session.beginTransaction();

				objPhanQuyen = (PhanQuyen) session.get(PhanQuyen.class, id);

				tx.commit();

				return objPhanQuyen;
	}
	@Override
	public boolean themMoi(PhanQuyen objPhanQuyen) {
		// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = session.beginTransaction();

				// thực hiện thêm mới thông tin

				session.save(objPhanQuyen);
				tx.commit();

				return true;
	}
	@Override
	public boolean sua(PhanQuyen objPhanQuyen) {
		// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = session.beginTransaction();

				// thực hiện thêm mới thông tin

				session.update(objPhanQuyen);
				tx.commit();
				return true;
	}
	@Override
	public boolean xoa(Integer id) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// lấy đối tượng cần xóa

		PhanQuyen objPhanQuyen = (PhanQuyen) session.get(PhanQuyen.class, id);

		if (objPhanQuyen != null) {
			session.delete(objPhanQuyen);
			tx.commit();
			return true;
		}
		return false;
	}
	@Override
	public List<PhanQuyen> timKiemTheoVaiTro(int maVaiTro) {
		List<PhanQuyen> lstPhanQuyen = new ArrayList<PhanQuyen>();
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		TypedQuery<PhanQuyen> query = session.createQuery("from PhanQuyen where VaiTroId = :ten", PhanQuyen.class);
		
		query.setParameter("ten", maVaiTro);

		lstPhanQuyen = query.getResultList();
		tx.commit();

		return lstPhanQuyen;
	}
}
