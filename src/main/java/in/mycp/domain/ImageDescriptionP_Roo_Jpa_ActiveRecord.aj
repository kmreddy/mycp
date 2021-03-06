// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.mycp.domain;

import in.mycp.domain.ImageDescriptionP;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ImageDescriptionP_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ImageDescriptionP.entityManager;
    
    public static final EntityManager ImageDescriptionP.entityManager() {
        EntityManager em = new ImageDescriptionP().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ImageDescriptionP.countImageDescriptionPs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ImageDescriptionP o", Long.class).getSingleResult();
    }
    
    public static List<ImageDescriptionP> ImageDescriptionP.findAllImageDescriptionPs() {
        return entityManager().createQuery("SELECT o FROM ImageDescriptionP o", ImageDescriptionP.class).getResultList();
    }
    
    public static ImageDescriptionP ImageDescriptionP.findImageDescriptionP(Integer id) {
        if (id == null) return null;
        return entityManager().find(ImageDescriptionP.class, id);
    }
    
    public static List<ImageDescriptionP> ImageDescriptionP.findImageDescriptionPEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ImageDescriptionP o", ImageDescriptionP.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ImageDescriptionP.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ImageDescriptionP.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ImageDescriptionP attached = ImageDescriptionP.findImageDescriptionP(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ImageDescriptionP.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ImageDescriptionP.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ImageDescriptionP ImageDescriptionP.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ImageDescriptionP merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
