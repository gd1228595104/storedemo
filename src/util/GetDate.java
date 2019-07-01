package util;
import java.text.SimpleDateFormat;
import java.util.Date;

public class GetDate{
	private long data=System.currentTimeMillis();
	private SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy年MM月dd日 HH:mm<ss");
	private Date date=new Date(data);
	public long getMyDate(){//获取时间戳
		return data;
	}

	public String myDate(long myDate){//获取日期
		String cdate=simpleDateFormat.format(myDate);
		String str=cdate.split(" ")[0];
		return str;
	}
	public String myTime(long myDate){
		String cdate=simpleDateFormat.format(myDate);
		String str=(cdate.split(" ")[1]).split("<")[0];
		return str;
	}
	public String allDate(long myDate){
		String cdate=simpleDateFormat.format(myDate);
		String str=cdate.split("<")[0];
		return str;
	}
	public String getTimeDate(String time)throws Exception{
		SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = format.parse(time);
		String datetime = String.valueOf(date.getTime());
		return datetime;
	}
	public String getNowTime(){
		SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(new Date());
	}
}
