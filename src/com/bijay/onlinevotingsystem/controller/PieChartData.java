package com.bijay.onlinevotingsystem.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bijay.onlinevotingsystem.dao.BallotDao;
import com.bijay.onlinevotingsystem.dao.BallotDaoImpl;

public class PieChartData {
	private static VoteCounter voteCounter = new VoteCounter();

	private static final List<PieChartData.KeyValue> pieDataList;

	static {
		pieDataList = new ArrayList<PieChartData.KeyValue>();
		BallotDao ballotDao = new BallotDaoImpl();
		List<Integer> count;
		try {
			count = voteCounter.getVotesCount(ballotDao.getAllBallotBlobInfo());
			pieDataList.add(new KeyValue("Nepal Communist Party", count.get(0).toString()));
			pieDataList.add(new KeyValue("Nepali Congress", count.get(1).toString()));
			pieDataList.add(new KeyValue("RaPraPa Nepal", count.get(2).toString()));
			pieDataList.add(new KeyValue("Naya Shakti", count.get(3).toString()));
//			pieDataList.add(new KeyValue("Rastriya Janta Party", count.get(4).toString()));
//			pieDataList.add(new KeyValue("Madheshi Loktantric Forum", count.get(5).toString()));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static List<KeyValue> getPieDataList() {
		return pieDataList;
	}

	public static class KeyValue {
		String key;
		String value;

		public KeyValue(String key, String value) {
			super();
			this.key = key;
			this.value = value;
		}

		public String getKey() {
			return key;
		}

		public void setKey(String key) {
			this.key = key;
		}

		public String getValue() {
			return value;
		}

		public void setValue(String value) {
			this.value = value;
		}
	}
}
