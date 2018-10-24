package SpringMySQL.models;

import javax.persistence.*;
import java.util.Set;


@Entity
public class Lecture {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer lectureId;
    private String lecId;
    private String lectureName;
    private String designation;
    private String department;
    private String email;
    private String gender;
    private Integer phoneNo;
    private String password;


    @OneToMany( targetEntity = User.class,mappedBy ="lecture", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<User> users;


    public String getLecId() {
        return lecId;
    }

    public void setLecId(String lecId) {
        this.lecId = lecId;
    }

    public String getPassword() {
        return password;
    }

    public String setPassword(String password) {
        this.password = password;
        return password;
    }

    public Lecture(String lecId, String lectureName, String designation, String department, String email, String gender, Integer phoneNo, String password) {
        this.lecId = lecId;
        this.lectureName = lectureName;
        this.designation = designation;
        this.department = department;
        this.email = email;
        this.gender = gender;
        this.phoneNo = phoneNo;
        this.password = password;

    }

    public Lecture() {
    }


    public Integer getLectureId() {
        return lectureId;
    }

    public void setLectureId(Integer lectureId) {
        this.lectureId = lectureId;
    }

    public String getLectureName() {
        return lectureName;
    }

    public void setLectureName(String lectureName) {
        this.lectureName = lectureName;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getPhoneNo() {
        return phoneNo;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    public void setPhoneNo(Integer phoneNo) {
        this.phoneNo = phoneNo;


    }

    @Override
    public String toString() {
        return "Lecture{" +
                "lectureId=" + lectureId +
                ", lecId='" + lecId + '\'' +
                ", lectureName='" + lectureName + '\'' +
                ", designation='" + designation + '\'' +
                ", department='" + department + '\'' +
                ", email='" + email + '\'' +
                ", gender='" + gender + '\'' +
                ", phoneNo=" + phoneNo +
                ", password='" + password + '\'' +
                ", users=" + users +
                '}';
    }
}
