package cn.edu.cup.lims

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ProgressStatusServiceSpec extends Specification {

    ProgressStatusService progressStatusService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ProgressStatus(...).save(flush: true, failOnError: true)
        //new ProgressStatus(...).save(flush: true, failOnError: true)
        //ProgressStatus progressStatus = new ProgressStatus(...).save(flush: true, failOnError: true)
        //new ProgressStatus(...).save(flush: true, failOnError: true)
        //new ProgressStatus(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //progressStatus.id
    }

    void "test get"() {
        setupData()

        expect:
        progressStatusService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ProgressStatus> progressStatusList = progressStatusService.list(max: 2, offset: 2)

        then:
        progressStatusList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        progressStatusService.count() == 5
    }

    void "test delete"() {
        Long progressStatusId = setupData()

        expect:
        progressStatusService.count() == 5

        when:
        progressStatusService.delete(progressStatusId)
        sessionFactory.currentSession.flush()

        then:
        progressStatusService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ProgressStatus progressStatus = new ProgressStatus()
        progressStatusService.save(progressStatus)

        then:
        progressStatus.id != null
    }
}
