package ua.com.feiron.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.com.feiron.domain.Profnastil;

import java.util.List;

@Repository
@Transactional
public class ProfnastilRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void addProfnastil(Profnastil profnastil) {
        this.sessionFactory.getCurrentSession().save(profnastil);
    }

    public List<Profnastil> listAll() {
        return this.sessionFactory.getCurrentSession().createQuery("from Profnastil").list();
    }

    public void removeProfnastil(Integer iD) {
        Profnastil profnastil = (Profnastil) this.sessionFactory.getCurrentSession().load(Profnastil.class, iD);
        if (null != profnastil) {
            this.sessionFactory.getCurrentSession().delete(profnastil);
        }
    }

    public  void edit(Profnastil profnastil){
        Session session = sessionFactory.getCurrentSession();
        Profnastil existingProfnastil1 = (Profnastil)session.get(Profnastil.class, profnastil.getId());

        existingProfnastil1.setName(profnastil.getName());
        existingProfnastil1.setObshayaB(profnastil.getObshayaB());
        existingProfnastil1.setWorkB(profnastil.getWorkB());

        session.save(existingProfnastil1);
    }


}
