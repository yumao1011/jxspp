package com.jxspp.controller.person;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jxspp.common.exception.JxsppException;
import com.jxspp.model.person.Address;
import com.jxspp.service.person.AddressService;

@RequestMapping("/address")
@Controller("addressController")
public class AddressController {
	
	/** 用户地址服务 */
	@Resource(name="addressService")
	private AddressService addressService = null;
	
	@RequestMapping(value="/address",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView toAddress(String userName) throws JxsppException {
		ModelAndView view = new ModelAndView();
		System.out.println("userName:"+userName);
		List<Address> addressList = addressService.searchAddress(userName);
		if (addressList != null) {
			view.addObject("addressList",addressList);
		}
		view.setViewName("person/address");
		return view;
	}
	
	/**
	 * 查询用户地址信息列表
	 * @return
	 * @throws JxsppException 
	 */
	@RequestMapping(value="/searchAddress",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView searchAddress(String userName) throws JxsppException {
		ModelAndView view = new ModelAndView();
		List<Address> addressList = addressService.searchAddress(userName);
		if (addressList != null) {
			view.addObject("addressList",addressList);
		}
		view.setViewName("person/address");
		return view;
	}
	
	/**
	 * 添加用户地址信息
	 * @param address
	 * @return
	 * @throws JxsppException
	 */
	@RequestMapping(value="/addAddress",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addAddress(Address address) throws JxsppException{
		ModelAndView view = new ModelAndView();
		if (address != null) {
			addressService.addAddress(address);
			List<Address> addressList = addressService.searchAddress(address.getUserName());
			if (addressList != null) {
				view.addObject("addressList",addressList);
			}
		}
		view.setViewName("person/address");
		return view;
	}
	
	/**
	 * 删除用户收货地址信息
	 * @param userName
	 * @param id
	 * @return
	 * @throws JxsppException
	 */
	@RequestMapping(value="/deleteAddress",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView deleleAddress(String userName,Integer id)throws JxsppException {
		ModelAndView view = new ModelAndView();
		if (userName!= null && id != null) {
			addressService.deleteAddress(userName, id);
			List<Address> addressList = addressService.searchAddress(userName);
			if (addressList != null) {
				view.addObject("addressList",addressList);
			}
		}
		view.setViewName("person/address");
		return view;
	}
}
