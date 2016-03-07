package org.appfuse.service.impl;

import java.util.List;

import org.appfuse.dao.RobotDao;
import org.appfuse.model.Robot;
import org.appfuse.service.RobotManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service(value = "robotManager")
public class RobotManagerImp implements RobotManager {
	@Autowired
	RobotDao dao;

	public void setRobotDao(RobotDao robot) {
		this.dao = robot;
	}

	public List getRobots() {
		return dao.getRobots();
	}

	public Robot getRobot(Long robotId) {
		return dao.getRobot(robotId);
	}

	public void saveRobot(Robot robot) {
		dao.saveRobot(robot);

	}

	public void removeRobot(Long robotId) {
		dao.removeRobot(robotId);
	}

}
