package com.vebinar.entity;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @Column (name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column (nullable = false)
    private String title;

    @Column(nullable = false)
    private String body;
    @Column
    private String city;

    @Column
    private String price;

    @Column (nullable = false)
    private Date created = new Date();

    @OneToMany (mappedBy = "order",cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
    private List<Scan> filenames = new ArrayList<>();

    @OneToMany (mappedBy = "order",orphanRemoval=true, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Filter> filters = new ArrayList<>();

    @Enumerated(EnumType.STRING)
    private Status status;

    public Order() {
    }

    public List<Scan> getFilenames() {
        return filenames;
    }

    public List<Filter> getFilters() {
        return filters;
    }

    public void setFilters(List<Filter> filters) {
        this.filters = filters;
    }

    public void setFilenames(List<Scan> filenames) {
        this.filenames = filenames;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    @ManyToOne (fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;





    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setUser(User user) {
        if (sameAsFormer(user))
            return;
        //set new facebook account
        User olduser = this.user;
        this.user = user;
        //remove from the old facebook account
       // if (olduser!=null)
         //   olduser.setOwner(null);
        //set myself into new facebook account
      //  if (user!=null)
       //     user.(this);
    }


    private boolean sameAsFormer(User u) {
        return user == null ?
                u == null : user.equals(u);
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }


}


//