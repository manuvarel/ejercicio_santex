package org.appfuse.dao;

import java.util.List;

import org.appfuse.model.Robot;

public interface RobotDao {
	public List getRobots();

	public Robot getRobot(Long robotId);

	public void saveRobot(Robot robot);

	public void removeRobot(Long robotId);

}
