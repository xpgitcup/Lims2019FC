package cn.edu.cup.lims

import grails.gorm.services.Service

@Service(ProgressStatus)
interface ProgressStatusService {

    ProgressStatus get(Serializable id)

    List<ProgressStatus> list(Map args)

    Long count()

    void delete(Serializable id)

    ProgressStatus save(ProgressStatus progressStatus)

}