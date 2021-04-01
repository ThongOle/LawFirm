package vn.com.stanford.action;

import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import vn.com.stanford.entity.Contact;
import vn.com.stanford.service.ContactDao;


public class ContactAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3171750283743630003L;
	private Contact objContact;
	private ContactDao contactDao;
	private String hoTen;
	private List<Contact> lstContact;
	private int idContact;
	private String chuoiId;
	private String ketQua;
	
	public String getKetQua() {
		return ketQua;
	}
	public void setKetQua(String ketQua) {
		this.ketQua = ketQua;
	}
	public String getChuoiId() {
		return chuoiId;
	}
	public void setChuoiId(String chuoiId) {
		this.chuoiId = chuoiId;
	}
	public int getIdContact() {
		return idContact;
	}
	public void setIdContact(int idContact) {
		this.idContact = idContact;
	}
	public List<Contact> getLstContact() {
		return lstContact;
	}
	public void setLstContact(List<Contact> lstContact) {
		this.lstContact = lstContact;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public void setContactDao(ContactDao contactDao) {
		this.contactDao = contactDao;
	}
	public Contact getObjContact() {
		return objContact;
	}
	public void setObjContact(Contact objContact) {
		this.objContact = objContact;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		lstContact = contactDao.layDanhSach();
		return SUCCESS;
	}
	
	public String chiTietThongTinContact() {
		System.out.println("id là"+ idContact);
		if(idContact != 0) {
			objContact = contactDao.layChiTiet(idContact);
			if(objContact != null) {
				System.out.println(objContact.getTieuDe());
			}
		}
		return SUCCESS;
	}
	
	public String xoaContact() {
		String[] lstId= chuoiId.split(";");
		for (int i =0; i< lstId.length; i++) {
			contactDao.xoa(Integer.parseInt(lstId[i]));
		}
		ketQua = "Xóa thành công";
		return SUCCESS;
		
	}
	public String themContact() {
		System.out.println(hoTen);
		System.out.println(objContact.getHoTen());
		Date date = new Date();
		objContact.setNgayTao(date);
		boolean kq = contactDao.themMoi(objContact);
		if (kq) {
			return SUCCESS;
		}else {
			return INPUT;
		}
		
	}
}
