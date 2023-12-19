package models;

import java.math.BigDecimal;
import java.util.Date;

public class Pet {
    private int id;
    private String petName;
    private String petType;
    private String petGender;
    private int categoryId;
    private BigDecimal price;
    private String description;
    private Date birthDate;
    private String image;
    private int quantity;

    public Pet() {
    }

    public Pet(int id, String petName, String petType, String petGender, int categoryId, BigDecimal price, String description, Date birthDate, String image, int quantity) {
        this.id = id;
        this.petName = petName;
        this.petType = petType;
        this.petGender = petGender;
        this.categoryId = categoryId;
        this.price = price;
        this.description = description;
        this.birthDate = birthDate;
        this.image = image;
        this.quantity = quantity;
    }

    public Pet(int id){
        this.id=id;
    }

    public Pet(String petName, String petType, String petGender, int categoryId, BigDecimal price, String description, Date birthDate, String image, int quantity) {
        this.petName = petName;
        this.petType = petType;
        this.petGender = petGender;
        this.categoryId = categoryId;
        this.price = price;
        this.description = description;
        this.birthDate = birthDate;
        this.image = image;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    public String getPetType() {
        return petType;
    }

    public void setPetType(String petType) {
        this.petType = petType;
    }

    public String getPetGender() {
        return petGender;
    }

    public void setPetGender(String petGender) {
        this.petGender = petGender;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Pet{" +
                "id=" + id +
                ", petName='" + petName + '\'' +
                ", petType='" + petType + '\'' +
                ", petGender='" + petGender + '\'' +
                ", categoryId=" + categoryId +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", birthDate=" + birthDate +
                ", image='" + image + '\'' +
                ", quantity=" + quantity +
                '}';
    }
}

