package com.botacademy.emaillist.test;

import java.util.List;

import com.bitacademy.emailist.dao.EmaillistDao;
import com.bitacademy.emiallist.vo.EmaillistVo;

public class EmaillistDaoTest {

	public static void main(String[] args) {
		testFindAll();
	}

	private static void testFindAll() {
		List<EmaillistVo> list = new EmaillistDao().findAll();
		for(EmaillistVo vo : list) {
			System.out.println(vo);
		}
	}
	
	

}
