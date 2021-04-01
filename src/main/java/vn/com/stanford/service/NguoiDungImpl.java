package vn.com.stanford.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.com.stanford.entity.NguoiDung;

public class NguoiDungImpl implements NguoiDungDao {
	@Override
	public List<NguoiDung> layDanhSach() {
		// Khai báo 1 danh sách
		List<NguoiDung> lstNguoiDung = new ArrayList<NguoiDung>();
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		TypedQuery<NguoiDung> query = session.createQuery("from NguoiDung", NguoiDung.class);

		lstNguoiDung = query.getResultList();
		tx.commit();

		return lstNguoiDung;
	}

	@Override
	public NguoiDung layChiTiet(Integer id) {
		// Khai báo 1 đối tượng sách
		NguoiDung objNguoiDung = null;
		// Khai báo 1 kết nối
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		objNguoiDung = (NguoiDung) session.get(NguoiDung.class, id);

		tx.commit();

		return objNguoiDung;
	}

	@Override
	public boolean themMoi(NguoiDung objNguoiDung) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.save(objNguoiDung);
		tx.commit();

		return true;
	}

	@Override
	public boolean sua(NguoiDung objNguoiDung) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.update(objNguoiDung);
		tx.commit();
		return true;
	}

	@Override
	public boolean xoa(Integer id) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// lấy đối tượng cần xóa

		NguoiDung objNguoiDung = (NguoiDung) session.get(NguoiDung.class, id);

		if (objNguoiDung != null) {
			session.delete(objNguoiDung);
			tx.commit();
			return true;
		}
		return false;
	}
	@Override
	public NguoiDung kiemTraDangNhap(String username) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		
		TypedQuery<NguoiDung> query = session.createQuery("from NguoiDung where tenDangNhap = :ten", NguoiDung.class);
		//Thiết lập tham số
		query.setParameter("ten", username);
		// Lấy danh sách
		List<NguoiDung> lst = query.getResultList();
		tx.commit();
		if(lst.size() > 0)
		{
		return lst.get(0);
		}
		
		return null;
	}
}
