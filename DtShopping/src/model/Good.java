package model;
/**
 * 
 * @author hjl
 *	time:2017/8/28
 *	disc:��Ʒ��
 */
public class Good {
	private String goodsid;
	private String goodsname;
	private String goodsprice;
	private String goodtypeid;
	private String goodsinfo;
	private String goodsmap;
	private String goodsimg;
	private String goodcount;
	private String goodssail;
	private String goodsdate;
	private String goodsdeldate;
	private String goodstypename;
	
	public Good(){
		
	}
	
	
	public Good(String goodsid, String goodsname, String goodsprice, String goodtypeid, String goodsinfo,
			String goodsmap, String goodsimg, String goodcount, String goodssail, String goodsdate,
			String goodsdeldate,String goodstypename) {
		this.goodsid = goodsid;
		this.goodsname = goodsname;
		this.goodsprice = goodsprice;
		this.goodtypeid = goodtypeid;
		this.goodsinfo = goodsinfo;
		this.goodsmap = goodsmap;
		this.goodsimg = goodsimg;
		this.goodcount = goodcount;
		this.goodssail = goodssail;
		this.goodsdate = goodsdate;
		this.goodsdeldate=goodsdeldate;
		this.goodstypename = goodstypename;
	}


	public String getGoodsid() {
		return goodsid;
	}


	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}


	public String getGoodsname() {
		return goodsname;
	}


	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}


	public String getGoodsprice() {
		return goodsprice;
	}


	public void setGoodsprice(String goodsprice) {
		this.goodsprice = goodsprice;
	}


	public String getGoodtypeid() {
		return goodtypeid;
	}


	public void setGoodtypeid(String goodtypeid) {
		this.goodtypeid = goodtypeid;
	}


	public String getGoodsinfo() {
		return goodsinfo;
	}


	public void setGoodsinfo(String goodsinfo) {
		this.goodsinfo = goodsinfo;
	}


	public String getGoodsmap() {
		return goodsmap;
	}


	public void setGoodsmap(String goodsmap) {
		this.goodsmap = goodsmap;
	}


	public String getGoodsimg() {
		return goodsimg;
	}


	public void setGoodsimg(String goodsimg) {
		this.goodsimg = goodsimg;
	}


	public String getGoodcount() {
		return goodcount;
	}


	public void setGoodcount(String goodcount) {
		this.goodcount = goodcount;
	}


	public String getGoodssail() {
		return goodssail;
	}


	public void setGoodssail(String goodssail) {
		this.goodssail = goodssail;
	}


	public String getGoodsdate() {
		return goodsdate;
	}


	public void setGoodsdate(String goodsdate) {
		this.goodsdate = goodsdate;
	}
	

	public String getGoodsdeldate() {
		return goodsdeldate;
	}


	public void setGoodsdeldate(String goodsdeldate) {
		this.goodsdeldate = goodsdeldate;
	}


	public String getGoodstypename() {
		return goodstypename;
	}


	public void setGoodstypename(String goodstypename) {
		this.goodstypename = goodstypename;
	}
	
	

}
