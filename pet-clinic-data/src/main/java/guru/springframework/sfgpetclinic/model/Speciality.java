package guru.springframework.sfgpetclinic.model;

public class Speciality extends BaseEntity{
    private String descritpion;

    public String getDescritpion() {
        return descritpion;
    }

    public void setDescritpion(String descritpion) {
        this.descritpion = descritpion;
    }
}
