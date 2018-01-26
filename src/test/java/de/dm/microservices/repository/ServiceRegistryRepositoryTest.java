package de.dm.microservices.repository;

import com.fasterxml.jackson.databind.ObjectMapper;
import de.dm.microservices.business.DefaultNodeContentFactory;
import de.dm.microservices.business.MicroserviceDtoFactory;
import de.dm.microservices.business.ServiceRegistryProperties;
import org.junit.Before;
import org.junit.Test;
import org.springframework.test.web.client.MockRestServiceServer;
import org.springframework.web.client.RestTemplate;

import java.util.Set;

import static org.hamcrest.CoreMatchers.hasItem;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.mockito.Mockito.mock;

public class ServiceRegistryRepositoryTest {

    private ServiceRegistryRepository serviceRegistryRepository;

    private MockRestServiceServer mockRestServiceServer;
    private DefaultNodeContentFactory defaultNodeContentFactory;
    private String offlineMode;
    private MicroserviceDtoFactory microserviceDtoFactory;
    private ServiceRegistryProperties serviceRegistryProperties;
    private ObjectMapper mapper = new ObjectMapper();

    @Before
    public void setup() {
        RestTemplate restTemplate = new RestTemplate();
        mockRestServiceServer = MockRestServiceServer.bindTo(restTemplate).build();

        defaultNodeContentFactory = mock(DefaultNodeContentFactory.class);
        offlineMode = "false";
        microserviceDtoFactory = mock(MicroserviceDtoFactory.class);
        serviceRegistryProperties = new ServiceRegistryProperties();

        serviceRegistryRepository = new ServiceRegistryRepository(restTemplate, defaultNodeContentFactory, offlineMode, microserviceDtoFactory, serviceRegistryProperties, mapper);
    }

    @Test
    public void getAllStageNames() {

        serviceRegistryProperties.getUrl().put("foo", "bar");
        serviceRegistryProperties.getUrl().put("hello", "world");

        Set<String> allStageNames = serviceRegistryRepository.getAllStageNames();

        assertThat(allStageNames.size(), is(2));
        assertThat(allStageNames, hasItem("foo"));
        assertThat(allStageNames, hasItem("hello"));
    }

    @Test(expected = InvalidStageNameException.class)
    public void requestServicesThrowsExceptionWhenStageIsInvalid() {

        serviceRegistryProperties.getUrl().put("foo", "bar");
        serviceRegistryProperties.getUrl().put("hello", "world");

        serviceRegistryRepository.findAllServices("i_am_an_invalid_stage");
    }
}
