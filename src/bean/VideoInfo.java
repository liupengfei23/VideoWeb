package bean;

import java.util.Date;

public class VideoInfo {
	//video name
	String name;
	//video summary
	String summary;
	//video type
	String typeClass;
	//video area
	String area;
	//video time
	Date time;
	//video language
	String language;
	//the number of click, default 0
	String property;
	int click;
	//video add time
	Date addtime;
	//image directory and name
	String image;
	//video directory and name
	String video;
	//video Daoyan
	String daoyan;
	//video actors
	String actors;
	//video Zimu
	String zimu;
	//video current number
	int curnum;
	//video all number, default 1
	int allnum;
	/*
	Date date=new Date();
　　SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
　　System.out.println(df.format(date));
	 */
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getTypeClass() {
		return typeClass;
	}
	public void setTypeClass(String typeClass) {
		this.typeClass = typeClass;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
	public int getClick() {
		return click;
	}
	public void setClick(int click) {
		this.click = click;
	}
	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	public String getDaoyan() {
		return daoyan;
	}
	public void setDaoyan(String daoyan) {
		this.daoyan = daoyan;
	}
	public String getActors() {
		return actors;
	}
	public void setActors(String actors) {
		this.actors = actors;
	}
	public String getZimu() {
		return zimu;
	}
	public void setZimu(String zimu) {
		this.zimu = zimu;
	}
	public int getCurnum() {
		return curnum;
	}
	public void setCurnum(int curnum) {
		this.curnum = curnum;
	}
	public int getAllnum() {
		return allnum;
	}
	public void setAllnum(int allnum) {
		this.allnum = allnum;
	}
	
}
