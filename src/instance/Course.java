package instance;


/**
 * @author 53564
 *
 * date:Jul 9, 2018 time:9:16:04 AM
 */
public class Course {
	private String courseid;//课程id
	private String labelage;//年级标签
	private String labelsubject;//科目标签
	private String updatetime;//上传时间
	private String videopath;//视频路径
	private String coursename;//课程名字
	private String courseinfo;//课程简介
	private String homeworkpath;//作业路径
	private String photopath;//缩略图路径
	 
	 public Course() {}
	 
	 

	/**
	 * @param courseid
	 * @param labelage
	 * @param labelsubject
	 * @param updatetime
	 * @param videopath
	 * @param coursename
	 * @param courseinfo
	 * @param homeworkpath
	 * @param photopath
	 */
	public Course(String courseid, String labelage, String labelsubject, String updatetime, String videopath,
			String coursename, String courseinfo, String homeworkpath, String photopath) {
		super();
		this.courseid = courseid;
		this.labelage = labelage;
		this.labelsubject = labelsubject;
		this.updatetime = updatetime;
		this.videopath = videopath;
		this.coursename = coursename;
		this.courseinfo = courseinfo;
		this.homeworkpath = homeworkpath;
		this.photopath = photopath;
	}



	public String getCourseid() {
		return courseid;
	}

	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}

	public String getLabelage() {
		return labelage;
	}

	public void setLabelage(String labelage) {
		this.labelage = labelage;
	}

	public String getLabelsubject() {
		return labelsubject;
	}

	public void setLabelsubject(String labelsubject) {
		this.labelsubject = labelsubject;
	}

	public String getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}

	public String getVideopath() {
		return videopath;
	}

	public void setVideopath(String videopath) {
		this.videopath = videopath;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getCourseinfo() {
		return courseinfo;
	}

	public void setCourseinfo(String courseinfo) {
		this.courseinfo = courseinfo;
	}

	public String getHomeworkpath() {
		return homeworkpath;
	}

	public void setHomeworkpath(String homeworkpath) {
		this.homeworkpath = homeworkpath;
	}

	public String getPhotopath() {
		return photopath;
	}

	public void setPhotopath(String photopath) {
		this.photopath = photopath;
	}
	
	 
	 

}

/* 
 * 
    courseid char(5) primary key,
    labelage varchar(20),
    labelsubject  varchar(20),
    uptime varchar(15),
    vediopath varchar(200),
    coursename char(10),
    courseintro varchar(180),
    homeworkpath varchar(200),
    photopath varchar(200)
 *
 */