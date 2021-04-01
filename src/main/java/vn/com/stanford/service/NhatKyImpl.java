package vn.com.stanford.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.com.stanford.entity.NhatKy;

public class NhatKyImpl implements NhatKyDao{
	@Override
	public List<NhatKy> layDanhSach() {
		// Khai báo 1 danh sách
				List<NhatKy> lstNhatKy = new ArrayList<NhatKy>();
				// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();

				// khởi tạo 1 trấnction

				Transaction tx = session.beginTransaction();

				TypedQuery<NhatKy> query = session.createQuery("from NhatKy", NhatKy.class);

				lstNhatKy = query.getResultList();
				tx.commit();

				return lstNhatKy;
	}
	@Override
	public NhatKy layChiTiet(Integer id) {
		// Khai báo 1 đối tượng sách
				NhatKy objNhatKy = null;
				// Khai báo 1 kết nối
				// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();

				// khởi tạo 1 trấnction

				Transaction tx = session.beginTransaction();

				objNhatKy = (NhatKy) session.get(NhatKy.class, id);

				tx.commit();

				return objNhatKy;
	}
	@Override
	public boolean themMoi(NhatKy objNhatKy) {
		// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = session.beginTransaction();

				// thực hiện thêm mới thông tin

				session.save(objNhatKy);
				tx.commit();

				return true;
	}
	@Override
	public boolean sua(NhatKy objNhatKy) {
		// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = session.beginTransaction();

				// thực hiện thêm mới thông tin

				session.update(objNhatKy);
				tx.commit();
				return true;
	}
	@Override
	public boolean xoa(Integer id) {
		// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = session.beginTransaction();

				// lấy đối tượng cần xóa

				NhatKy objNhatKy = (NhatKy) session.get(NhatKy.class, id);

				if (objNhatKy != null) {
					session.delete(objNhatKy);
					tx.commit();
					return true;
				}
				return false;
	}
	
}
