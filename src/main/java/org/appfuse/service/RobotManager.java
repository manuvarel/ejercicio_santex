package org.appfuse.service;

import java.util.List;

import org.appfuse.model.Robot;

public interface RobotManager {
	public List getRobots();

	public Robot getRobot(Long robotId);

	public void saveRobot(Robot robot);

	public void removeRobot(Long robotId);

}
