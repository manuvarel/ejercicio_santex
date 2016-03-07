package org.appfuse.model;

import java.util.Date;

public class Robot extends BaseObject{

	private static final long serialVersionUID = -4415255963725111514L;

	private Long id;
    private String designation;
    private Date dateOfBuild;
    private boolean qualityCheckPassed;
    private User owner;
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public Date getDateOfBuild() {
		return dateOfBuild;
	}
	public void setDateOfBuild(Date dateOfBuild) {
		this.dateOfBuild = dateOfBuild;
	}
	public boolean isQualityCheckPassed() {
		return qualityCheckPassed;
	}
	public void setQualityCheckPassed(boolean qualityCheckPassed) {
		this.qualityCheckPassed = qualityCheckPassed;
	}
	public User getOwner() {
		return owner;
	}
	public void setOwner(User owner) {
		this.owner = owner;
	}
    
	/**
	 * @return the id, designation and owner. 
	 */
	public String toString(){
		return "id: " + id + "- designation: " + designation +"- Owner: " + owner;
	}
    

}
