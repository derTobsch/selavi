package de.dm.personsearch;

import de.dm.selavi.personrepositorycore.Person;
import de.dm.selavi.personrepositorycore.PersonRepository;

import java.util.Collections;
import java.util.List;

public class InMemoryPersonSearchService implements PersonRepository {


    @Override
    public List<Person> findByName(String name) {

        return Collections.singletonList(Person.builder().displayName("user").build());
    }
}
