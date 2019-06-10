package com.icss.oa.process.pojo;

import java.util.Date;

public class ReimFlowLog {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column REIM_FLOW_LOG.ID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column REIM_FLOW_LOG.USERID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    private String userid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column REIM_FLOW_LOG.ACTION
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    private Integer action;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column REIM_FLOW_LOG.LOGTIME
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    private Date logtime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column REIM_FLOW_LOG.OPINION
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    private String opinion;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column REIM_FLOW_LOG.TASKID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    private String taskid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column REIM_FLOW_LOG.DEFINEID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    private String defineid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column REIM_FLOW_LOG.PROCINSID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    private String procinsid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column REIM_FLOW_LOG.RECORDID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    private String recordid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column REIM_FLOW_LOG.USERNAME
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    private String username;

    public ReimFlowLog() {
	}

	public ReimFlowLog(Integer id, String userid, Integer action, Date logtime,
			String opinion, String taskid, String defineid, String procinsid,
			String recordid, String username) {
		this.id = id;
		this.userid = userid;
		this.action = action;
		this.logtime = logtime;
		this.opinion = opinion;
		this.taskid = taskid;
		this.defineid = defineid;
		this.procinsid = procinsid;
		this.recordid = recordid;
		this.username = username;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column REIM_FLOW_LOG.ID
     *
     * @return the value of REIM_FLOW_LOG.ID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column REIM_FLOW_LOG.ID
     *
     * @param id the value for REIM_FLOW_LOG.ID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column REIM_FLOW_LOG.USERID
     *
     * @return the value of REIM_FLOW_LOG.USERID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public String getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column REIM_FLOW_LOG.USERID
     *
     * @param userid the value for REIM_FLOW_LOG.USERID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column REIM_FLOW_LOG.ACTION
     *
     * @return the value of REIM_FLOW_LOG.ACTION
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public Integer getAction() {
        return action;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column REIM_FLOW_LOG.ACTION
     *
     * @param action the value for REIM_FLOW_LOG.ACTION
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public void setAction(Integer action) {
        this.action = action;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column REIM_FLOW_LOG.LOGTIME
     *
     * @return the value of REIM_FLOW_LOG.LOGTIME
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public Date getLogtime() {
        return logtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column REIM_FLOW_LOG.LOGTIME
     *
     * @param logtime the value for REIM_FLOW_LOG.LOGTIME
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public void setLogtime(Date logtime) {
        this.logtime = logtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column REIM_FLOW_LOG.OPINION
     *
     * @return the value of REIM_FLOW_LOG.OPINION
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public String getOpinion() {
        return opinion;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column REIM_FLOW_LOG.OPINION
     *
     * @param opinion the value for REIM_FLOW_LOG.OPINION
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public void setOpinion(String opinion) {
        this.opinion = opinion == null ? null : opinion.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column REIM_FLOW_LOG.TASKID
     *
     * @return the value of REIM_FLOW_LOG.TASKID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public String getTaskid() {
        return taskid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column REIM_FLOW_LOG.TASKID
     *
     * @param taskid the value for REIM_FLOW_LOG.TASKID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public void setTaskid(String taskid) {
        this.taskid = taskid == null ? null : taskid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column REIM_FLOW_LOG.DEFINEID
     *
     * @return the value of REIM_FLOW_LOG.DEFINEID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public String getDefineid() {
        return defineid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column REIM_FLOW_LOG.DEFINEID
     *
     * @param defineid the value for REIM_FLOW_LOG.DEFINEID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public void setDefineid(String defineid) {
        this.defineid = defineid == null ? null : defineid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column REIM_FLOW_LOG.PROCINSID
     *
     * @return the value of REIM_FLOW_LOG.PROCINSID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public String getProcinsid() {
        return procinsid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column REIM_FLOW_LOG.PROCINSID
     *
     * @param procinsid the value for REIM_FLOW_LOG.PROCINSID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public void setProcinsid(String procinsid) {
        this.procinsid = procinsid == null ? null : procinsid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column REIM_FLOW_LOG.RECORDID
     *
     * @return the value of REIM_FLOW_LOG.RECORDID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public String getRecordid() {
        return recordid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column REIM_FLOW_LOG.RECORDID
     *
     * @param recordid the value for REIM_FLOW_LOG.RECORDID
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public void setRecordid(String recordid) {
        this.recordid = recordid == null ? null : recordid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column REIM_FLOW_LOG.USERNAME
     *
     * @return the value of REIM_FLOW_LOG.USERNAME
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column REIM_FLOW_LOG.USERNAME
     *
     * @param username the value for REIM_FLOW_LOG.USERNAME
     *
     * @mbggenerated Thu Jul 23 08:38:25 CST 2015
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

	@Override
	public String toString() {
		return "ReimFlowLog [id=" + id + ", userid=" + userid + ", action="
				+ action + ", logtime=" + logtime + ", opinion=" + opinion
				+ ", taskid=" + taskid + ", defineid=" + defineid
				+ ", procinsid=" + procinsid + ", recordid=" + recordid
				+ ", username=" + username + "]";
	}
}