package com.bitruism.repositories;

import org.springframework.data.repository.CrudRepository;

import com.bitruism.models.Charity;

public interface CharityRepository extends CrudRepository<Charity, Long> {

}
