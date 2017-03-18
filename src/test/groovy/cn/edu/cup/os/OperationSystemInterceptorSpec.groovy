package cn.edu.cup.os


import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(OperationSystemInterceptor)
class OperationSystemInterceptorSpec extends Specification {

    def setup() {
    }

    def cleanup() {

    }

    void "Test operationSystem interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"operationSystem")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
