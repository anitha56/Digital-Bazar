package com.niit.dao;

import java.util.List;

import com.niit.model.CartItem;
import com.niit.model.OrderDetail;


public interface OrderDAO {


	public boolean insertOrderDetail(OrderDetail orderDetail);
	public List<OrderDetail> retrieveOrderDetail(String username) ;
}
