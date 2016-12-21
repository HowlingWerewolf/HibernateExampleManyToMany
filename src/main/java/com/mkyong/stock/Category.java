package com.mkyong.stock;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class Category implements java.io.Serializable {

	private Integer categoryId;
	private String name;
	private String description;
	private Set<StockCategory> stockCategories = new HashSet<StockCategory>(0);

	public Category() {
	}

	public Category(String name, String desc) {
		this.name = name;
		this.description = desc;
	}

	public Category(String name, String description, Set<StockCategory> stockCategories) {
		this.name = name;
		this.description = description;
		this.stockCategories = stockCategories;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CATEGORY_ID_GENERATOR")
	@SequenceGenerator(name = "CATEGORY_ID_GENERATOR", sequenceName = "CATEGORY_SEQ")
	@Column(name = "CATEGORY_ID", unique = true, nullable = false)
	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	@Column(name = "NAME", nullable = false, length = 10)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "DESCRIPTION", nullable = false)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "pk.category")
	public Set<StockCategory> getStockCategories() {
		return this.stockCategories;
	}

	public void setStockCategories(Set<StockCategory> stockCategories) {
		this.stockCategories = stockCategories;
	}

}