package SpringMySQL.models;

import javax.persistence.*;
import java.util.List;

public class Role {


    @Id
    @Column(name = "role_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "role_name")
    private String role;

    @OneToMany(mappedBy = "role", cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    private List<Lecture> users;

    public Role() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public List<Lecture> getUsers() {
        return users;
    }

    public void setUsers(List<Lecture> users) {
        this.users = users;
    }

    public Role(String role) {
        this.role = role;
    }
}


