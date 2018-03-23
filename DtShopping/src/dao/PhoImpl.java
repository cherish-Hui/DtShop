package dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import utils.TimeUtil;
import utils.odbcUtils;
import model.Address;
import model.CarCar;
import model.PhoPhoto;
import model.Ping;
import model.Pinglun;
import model.SecUser;
import model.User;

/**
 * 
 * @author wf
 *
 */
public class PhoImpl {
	public PhoPhoto selectPhoto(String id) {
		PhoPhoto phoPhoto = null;
		String sql = "SELECT a.*,b.* FROM dt_photo a LEFT JOIN dt_goods b ON a.goods_id = b.goods_id WHERE b.goods_id=?";
		ArrayList<HashMap<String, Object>> list1 = odbcUtils.executeQuery(sql,
				new Object[] { id });
		odbcUtils.close();
		if (list1.size() > 0) {
			phoPhoto = new PhoPhoto();
			HashMap map = list1.get(0);
			phoPhoto.setGoodsimg1(String.valueOf(map.get("goodsimg1")));
			phoPhoto.setGoodsimg2(String.valueOf(map.get("goodsimg2")));
			phoPhoto.setGoodsimg3(String.valueOf(map.get("goodsimg3")));
			phoPhoto.setGoodsimg4(String.valueOf(map.get("goodsimg4")));
			phoPhoto.setGoodsname(String.valueOf(map.get("goodsname")));
			phoPhoto.setGoodprice(String.valueOf(map.get("goodsprice")));
			phoPhoto.setGoodinfo(String.valueOf(map.get("goodsinfo")));
			phoPhoto.setGoodid(String.valueOf(map.get("goods_id")));
		}
		return phoPhoto;
	}

	public int addCar(CarCar car) {
		String sql = "insert into dt_shopping_car(user_id,goods_id,state,carcount,carprice,orderid,isping) values(?,?,?,?,?,?,?)";
		int i = odbcUtils.executeUpdate(sql, new Object[] { car.getUserid(),
				car.getGoodid(), 0,car.getCount(), car.getCarmoney(),0,0});
		return i;
	}

	public CarCar[] selectcar(String id) {
		CarCar car[] = null;
		String sql = "select a.*,b.* from dt_shopping_car a left JOIN dt_goods b on a.goods_id = b.goods_id where a.user_id=? and a.state=0 and a.orderid=0";
		ArrayList<HashMap<String, Object>> list1 = odbcUtils.executeQuery(sql,
				new Object[] { id });
		odbcUtils.close();
		if (list1.size() > 0) {
			car = new CarCar[list1.size()];
			for (int i = 0; i < list1.size(); i++) {
				HashMap map = list1.get(i);
				car[i] = new CarCar(String.valueOf(map.get("user_id")),
						String.valueOf(map.get("goodid")), String.valueOf(map
								.get("carcount")), String.valueOf(map
								.get("carprice")), String.valueOf(map
								.get("goodsname")), String.valueOf(map
								.get("goodsprice")), String.valueOf(map
								.get("goodsimg")), String.valueOf(map
								.get("car_id")));
			}
		}
		return car;
	}

	public CarCar[] selectcar1(String id) {
		CarCar car[] = null;
		String sql = "select a.*,b.* from dt_shopping_car a left JOIN dt_goods b on a.goods_id = b.goods_id where a.user_id=? and a.state=0";
		ArrayList<HashMap<String, Object>> list1 = odbcUtils.executeQuery(sql,
				new Object[] { id });
		odbcUtils.close();
		if (list1.size() > 0) {
			car = new CarCar[list1.size()];
			for (int i = 0; i < list1.size(); i++) {
				HashMap map = list1.get(i);
				car[i] = new CarCar(String.valueOf(map.get("user_id")),
						String.valueOf(map.get("goodid")), String.valueOf(map
								.get("carcount")), String.valueOf(map
								.get("carprice")), String.valueOf(map
								.get("goodsname")), String.valueOf(map
								.get("goodsprice")), String.valueOf(map
								.get("goodsimg")), String.valueOf(map
								.get("car_id")));
			}
		}
		return car;
	}

	public String[] selCar(String[] id) {
		String isHave[] = new String[2];
		String sql = "select * from dt_shopping_car where goods_id = ? and user_id=? and state=0";
		ArrayList<HashMap<String, Object>> list = odbcUtils.executeQuery(sql,
				new Object[] { id[0], id[1] });
		if (list.size() > 0) {
			HashMap map = list.get(0);
			isHave[0] = String.valueOf(map.get("carcount"));
			isHave[1] = String.valueOf(map.get("goods_id"));
		}
		return isHave;
	}

	public int updateCar(CarCar car) {
		String sql = "update dt_shopping_car SET carcount=?,carprice=? where goods_id=?";
		int i = odbcUtils.executeUpdate(
				sql,
				new Object[] { car.getCount(), car.getCarmoney(),
						car.getGoodid() });
		return i;
	}

	public String getString(String id) {
		String moneyString = null;
		String sql = "SELECT sum(carprice) s FROM dt_shopping_car WHERE user_id =? and state=0";
		ArrayList<HashMap<String, Object>> list = odbcUtils.executeQuery(sql,
				new Object[] { id });
		if (list.size() > 0) {
			HashMap map = list.get(0);
			moneyString = String.valueOf(map.get("s"));
		}
		return moneyString;
	}

	public String getString1(String id) {
		String moneyString = null;
		String sql = "SELECT sum(carcount) s FROM dt_shopping_car WHERE user_id =? and state=0";
		ArrayList<HashMap<String, Object>> list = odbcUtils.executeQuery(sql,
				new Object[] { id });
		if (list.size() > 0) {
			HashMap map = list.get(0);
			moneyString = String.valueOf(map.get("s"));
		}
		return moneyString;
	}

	public int delCar(String id) {
		String sql = "delete from dt_shopping_car where car_id=?";
		int i = odbcUtils.executeUpdate(sql, new Object[] { id });
		return i;
	}

	public int address(String id, SecUser secUser) {
		String sql = "insert into dt_address(userid,rec_pho,rec_name,address) values(?,?,?,?)";
		int i = odbcUtils.executeUpdate(
				sql,
				new Object[] { id, secUser.getPho(), secUser.getName(),
						secUser.getAddress() });
		return i;
	}

	public String getaddress(String id) {
		String addid = null;
		String sql1 = "select * from dt_address where  userid=?";
		ArrayList<HashMap<String, Object>> list = odbcUtils.executeQuery(sql1,
				new Object[] { id });
		if (list.size() > 0) {
			HashMap map = list.get(0);
			addid = String.valueOf(map.get("address_id"));
		}
		return addid;
	}

	public int addorder(String user_id, String add_id, String orderprice,
			String sum) {
		String sql = "insert into dt_goods_order(user_id,address_id,orderprice,state,payment,orderdate,orderstate,carcount) values(?,?,?,?,?,?,?,?)";
		int i = odbcUtils.executeUpdate(sql, new Object[] { user_id, add_id,
				orderprice, 0, "易支付", TimeUtil.changTime(new Date()), 0, sum });
		return i;
	}

	public String getsummon(String id) {
		String addid = null;
		String sql1 = "select * from dt_goods_order where  user_id=? and state=0";
		ArrayList<HashMap<String, Object>> list = odbcUtils.executeQuery(sql1,
				new Object[] { id });
		if (list.size() > 0) {
			HashMap map = list.get(0);
			addid = String.valueOf(map.get("orderprice"));
		}
		return addid;
	}

	public void updateCar(String id,String orderid,CarCar car[]) {
		String sql = "update dt_shopping_car set state = ? where user_id=?";
		String sql1 = "update dt_goods_order set state = ?, paydate =? where user_id=?";
		odbcUtils.executeUpdate(sql, new Object[]{ 1,id });
		odbcUtils.executeUpdate(sql1,
				new Object[] {1, TimeUtil.changTime(new Date()), id });
		for (int i = 0; i < car.length; i++) {
			String sql2= "update dt_shopping_car set orderid = ? where  car_id=?";
			odbcUtils.executeUpdate(sql2, new Object[]{ orderid,car[0].getCarid()});
		}
		
	}
	
	
	public Address getAddress(String id) {
		Address address = null;
		String sql = "select * from dt_address where userid =?";
		ArrayList<HashMap<String, Object>> list1 = odbcUtils.executeQuery(sql,
				new Object[] { id });
		odbcUtils.close();
		if (list1.size() > 0) {
			HashMap map = list1.get(0);
			address = new Address(String.valueOf(map.get("rec_name")),
					String.valueOf(map.get("rec_pho")), String.valueOf(map
							.get("address")));
		}
		return address;

	}

	public Ping[] getPing(String id){
		Ping ping[] =null;
		String sql="SELECT a.user_id,a.carprice,a.carcount,b.goodsname,b.goodsmap,d.paydate,d.order_id,b.goods_id FROM dt_shopping_car a LEFT JOIN dt_goods b ON b.goods_id = a.goods_id LEFT JOIN dt_address c ON a.user_id = c.userid LEFT JOIN dt_goods_order d ON a.orderid = d.order_id WHERE a.user_id = ? AND a.isping = 0 GROUP BY a.car_id ";
		ArrayList<HashMap<String, Object>> list1 = odbcUtils.executeQuery(sql,
				new Object[] {id});
		odbcUtils.close();
		if (list1.size() > 0) {
			ping = new Ping[list1.size()];
			for (int i = 0; i < list1.size(); i++) {
				HashMap map = list1.get(i);
				if (list1.get(i).get("order_id")!="") {
					ping[i] = new Ping(String.valueOf(map.get("goodsname")), String.valueOf(map.get("goodsmap")), String.valueOf(map.get("carcount")), String.valueOf(map.get("rec_name")), String.valueOf(map.get("paydate")),String.valueOf(map.get("carprice")),String.valueOf(map.get("order_id")),String.valueOf(map.get("goods_id")) );
				}	
		}
		
	}
		
		return ping;
}
	public Ping[] getPing1(String id,String goodid){
		Ping ping[] =null;
		String sql="SELECT a.user_id,a.carprice,a.carcount,b.goodsname,b.goodsmap,d.paydate,d.order_id,b.goods_id FROM dt_shopping_car a LEFT JOIN dt_goods b ON b.goods_id = a.goods_id LEFT JOIN dt_address c ON a.user_id = c.userid LEFT JOIN dt_goods_order d ON a.orderid = d.order_id WHERE a.user_id = ? and a.goods_id=? AND a.isping = 0 GROUP BY a.car_id";
		ArrayList<HashMap<String, Object>> list1 = odbcUtils.executeQuery(sql,
				new Object[] { id ,goodid});
		odbcUtils.close();
		if (list1.size() > 0) {
			ping = new Ping[list1.size()];
			for (int i = 0; i < list1.size(); i++) {
				HashMap map = list1.get(0);
			ping[0] = new Ping(String.valueOf(map.get("goodsname")), String.valueOf(map.get("goodsmap")), String.valueOf(map.get("carcount")), String.valueOf(map.get("rec_name")), String.valueOf(map.get("paydate")),String.valueOf(map.get("carprice")),String.valueOf(map.get("order_id")),String.valueOf(map.get("goods_id")) );
				
				
		}
		
	}
		return ping;
}
	
	public int updateping(String goodid,String userid){
		String sql = "update dt_shopping_car SET isping=? where goods_id=? and user_id=?";
		int i = odbcUtils.executeUpdate(
				sql,
				new Object[] {1,goodid,userid});
		return i;
	}
	
	public String getOrderid(String id) {
		String addid = null;
		String sql1 = "select * from dt_goods_order where  user_id=? ";
		ArrayList<HashMap<String,Object>> list = odbcUtils.executeQuery(sql1,
				new Object[] { id });
		if (list.size() > 0) {
			HashMap map = list.get(0);
			addid = String.valueOf(map.get("order_id"));
		}
		return addid;
	}
	public int addping(String id, String userid,String content) {
		String sql = "insert into dt_evaluate(user_id,content,good_id,pin_time) values(?,?,?,?)";
		int i = odbcUtils.executeUpdate(sql,new Object[]{userid,content,id,TimeUtil.changTime(new Date())});
		return i;
	}
	public Pinglun[] getPinglun(String goodsid){
		Pinglun[] pinglun =null;
		String sql="select * from dt_evaluate a left join dt_user b on a.user_id = b.user_id WHERE good_id=? ";
		ArrayList<HashMap<String, Object>> list1 = odbcUtils.executeQuery(sql,
				new Object[] {goodsid});
		odbcUtils.close();
		if (list1.size() > 0) {
			pinglun = new Pinglun[list1.size()];
			
			for (int i = 0; i < list1.size(); i++) {
				HashMap map = list1.get(i);
				pinglun[i]= new Pinglun(String.valueOf(map.get("username")),String.valueOf(map.get("picture")) ,String.valueOf(map.get("content")) , String.valueOf(map.get("pin_time")));
				
			}
		
		}
		return pinglun;
	}
}
