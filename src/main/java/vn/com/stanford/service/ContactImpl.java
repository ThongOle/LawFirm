package vn.com.stanford.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.com.stanford.entity.Contact;

public class ContactImpl implements ContactDao {
	@Override
	public List<Contact> layDanhSach() {
		// Khai báo 1 danh sách
		List<Contact> lstContact = new ArrayList<Contact>();
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		TypedQuery<Contact> query = session.createQuery("from Contact", Contact.class);

		lstContact = query.getResultList();
		tx.commit();

		return lstContact;
	}

	@Override
	public Contact layChiTiet(Integer id) {
		// Khai báo 1 đối tượng sách
		Contact objContact = null;
		// Khai báo 1 kết nối
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// khởi tạo 1 trấnction

		Transaction tx = session.beginTransaction();

		objContact = (Contact) session.get(Contact.class, id);

		tx.commit();

		return objContact;
	}

	@Override
	public boolean themMoi(Contact objContact) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.save(objContact);
		tx.commit();

		return true;
	}

	@Override
	public boolean sua(Contact objContact) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// thực hiện thêm mới thông tin

		session.update(objContact);
		tx.commit();
		return true;
	}

	@Override
	public boolean xoa(Integer id) {
		// kết nối với db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		// lấy đối tượng cần xóa

		Contact objContact = (Contact) session.get(Contact.class, id);

		if (objContact != null) {
			session.delete(objContact);
			tx.commit();
			return true;
		}
		return false;
	}
}
