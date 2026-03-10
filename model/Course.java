package com.vcube.model;

public class Course {
	    private int cid;
	    private String cname;
	    private String ctype;
	    private String duration;
	    private double fee;

	    public int getCid() { return cid; }
	    public void setCid(int cid) { this.cid = cid; }

	    public String getCname() { return cname; }
	    public void setCname(String cname) { this.cname = cname; }

	    public String getCtype() { return ctype; }
	    public void setCtype(String ctype) { this.ctype = ctype; }

	    public String getDuration() { return duration; }
	    public Course(String cname, String ctype, String duration, double fee) {
			super();
			this.cname = cname;
			this.ctype = ctype;
			this.duration = duration;
			this.fee = fee;
		}
		public void setDuration(String duration) { this.duration = duration; }

	    public double getFee() { return fee; }
	    public void setFee(double fee) { this.fee = fee; }
		@Override
		public String toString() {
			return "Course [cid=" + cid + ", cname=" + cname + ", ctype=" + ctype + ", duration=" + duration + ", fee="
					+ fee + "]";
		}
		public Course() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Course(int cid, String cname, String ctype, String duration, double fee) {
			super();
			this.cid = cid;
			this.cname = cname;
			this.ctype = ctype;
			this.duration = duration;
			this.fee = fee;
		}
	}


