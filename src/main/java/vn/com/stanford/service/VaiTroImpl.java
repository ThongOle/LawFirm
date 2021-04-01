package vn.com.stanford.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.com.stanford.entity.VaiTro;

public class VaiTroImpl implements VaiTroDao{
	@Override
	public List<VaiTro> layDanhSach() {
		// Khai báo 1 danh sách
				List<VaiTro> lstVaiTro = new ArrayList<VaiTro>();
				// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();

				// khởi tạo 1 trấnction

				Transaction tx = session.beginTransaction();

				TypedQuery<VaiTro> query = session.createQuery("from VaiTro", VaiTro.class);

				lstVaiTro = query.getResultList();
				tx.commit();

				return lstVaiTro;
	}
	@Override
	public VaiTro layChiTiet(Integer id) {
		// Khai báo 1 đối tượng sách
				VaiTro objVaiTro = null;
				// Khai báo 1 kết nối
				// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();

				// khởi tạo 1 trấnction

				Transaction tx = session.beginTransaction();

				objVaiTro = (VaiTro) session.get(VaiTro.class, id);

				tx.commit();

				return objVaiTro;
	}
	@Override
	public boolean themMoi(VaiTro objVaiTro) {
		// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = session.beginTransaction();

				// thực hiện thêm mới thông tin

				session.save(objVaiTro);
				tx.commit();

				return true;
	}
	@Override
	public boolean sua(VaiTro objVaiTro) {
		// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = session.beginTransaction();

				// thực hiện thêm mới thông tin

				session.update(objVaiTro);
				tx.commit();
				return true;
	}
	@Override
	public boolean xoa(Integer id) {
		// kết nối với db qua hibernate
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				Transaction tx = session.beginTransaction();

				// lấy đối tượng cần xóa

				VaiTro objVaiTro = (VaiTro) session.get(VaiTro.class, id);

				if (objVaiTro != null) {
					session.delete(objVaiTro);
					tx.commit();
					return true;
				}
				return false;

	}

}
