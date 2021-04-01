package vn.com.stanford.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.com.stanford.entity.BaiViet;

public class BaiVietImpl implements BaiVietDao {
	@Override
	public List<BaiViet> layDanhSach() {
		// Khai báo 1 danh sách
		List<BaiViet> lstBaiViet = new ArrayList<BaiViet>();
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		TypedQuery<BaiViet> query = session.createQuery("from BaiViet", BaiViet.class);

		lstBaiViet = query.getResultList();
		tx.commit();

		return lstBaiViet;
	}

	@Override
	public BaiViet layChiTiet(Integer id) {
		// Khai báo 1 đối tượng sách
		BaiViet objBaiViet = null;
		// Khai báo 1 kết nối
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		objBaiViet = (BaiViet) session.get(BaiViet.class, id);

		tx.commit();

		return objBaiViet;
	}

	@Override
	public boolean themMoi(BaiViet objBaiViet) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.save(objBaiViet);
		tx.commit();

		return true;
	}

	@Override
	public boolean sua(BaiViet objBaiViet) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.update(objBaiViet);
		tx.commit();
		return true;
	}

	@Override
	public boolean xoa(Integer id) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// lấy đối tượng cần xóa

		BaiViet objBaiViet = (BaiViet) session.get(BaiViet.class, id);

		if (objBaiViet != null) {
			session.delete(objBaiViet);
			tx.commit();
			return true;
		}
		return false;
	}
	@Override
	public List<BaiViet> timKiem(String maBV) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		// Khai báo điều kiện lọc
		CriteriaQuery<BaiViet> cr = cb.createQuery(BaiViet.class);
		Root<BaiViet> root = cr.from(BaiViet.class);
		// Lấy tất cả
		// Nhiều điều kiện
		List<Predicate> restrictions = new ArrayList<Predicate>();
		restrictions.add(cb.equal(root.get("maChuDe"), maBV));
		cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
		TypedQuery<BaiViet> query = session.createQuery(cr);
		List<BaiViet> lstBaiViet = query.getResultList();
		tx.commit();
		
		return lstBaiViet;
	}
}
