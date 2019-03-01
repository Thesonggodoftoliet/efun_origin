/**
 * 
 */
package serviceinterface;

import java.util.List;

import instance.Course;
import instance.Homework;
import instance.Posts;
import instance.Replies;
import instance.Time;
import instance.User;

/**
 * @author 李煜峰
 *
 * date:Jul 11, 2018 time:5:06:54 PM
 */
public interface ServiceInfa {
    User Zhuce(User user); // 注册
    boolean checkId(User tuser);
    User checkuser(User tuser);
    User getUserInfoById(String id);
    Posts getPostsInfoById(String postsid);
    Time getTimeById(String userid);
    int getPostsRows();
    int getRepliesRows(Posts post);
    int Reply(Replies reply);
    int Post(Posts post);
    List<Posts> getPostsList();
    List<Replies> getRepliesList(Posts post);
    List<Course> getCourseList(String str);
    Course getCourseById(Course course);
    Homework getHomework(Homework thome);
    int getHomeworkMax(Course course);
    int insertQuestion(String homeworkid,String index,String userid);
    int updateTime(Time time);
    Homework getSpeHomework(Homework homework);
}
