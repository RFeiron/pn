package ua.com.feiron.domain;

import javax.persistence.*;

@Entity
@Table(name = "proflists")
public class Profnastil {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "WORKB")
    private Double workB;

    @Column(name = "OBSHAYAB")
    private Double obshayaB;

    @Column(name = "A")
    private Double a;

    @Column(name = "B")
    private Double b;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getWorkB() {
        return workB;
    }

    public void setWorkB(Double workB) {
        this.workB = workB;
    }

    public Double getObshayaB() {
        return obshayaB;
    }

    public void setObshayaB(Double obshayaB) {
        this.obshayaB = obshayaB;
    }

    public Double getA() {
        return a;
    }

    public void setA(Double a) {
        this.a = a;
    }

    public Double getB() {
        return b;
    }

    public void setB(Double b) {
        this.b = b;
    }
}
