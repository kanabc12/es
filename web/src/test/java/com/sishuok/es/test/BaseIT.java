package com.sishuok.es.test;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.transaction.TransactionConfiguration;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 13-1-14 下午4:25
 * <p>Version: 1.0
 */

@ContextConfiguration(locations = {
        "classpath:spring-common.xml",
        "classpath:spring-config.xml",
        "classpath:spring-shiro.xml"
        })
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
public class BaseIT extends AbstractTransactionalJUnit4SpringContextTests {

    @PersistenceContext
    protected EntityManager entityManager;

    protected String nextRandom() {
        return System.currentTimeMillis() + RandomStringUtils.randomNumeric(5);
    }

    protected void flush() {
        entityManager.flush();
    }
    protected void clear() {
        entityManager.flush();
        entityManager.clear();
    }
}

