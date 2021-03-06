/*
 * Copyright 2002-2007 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.sishuok.es.common.web.bind.annotation;

import java.lang.annotation.*;

/**
 * <p>默认的查询参数数据，先从参数找，参数找不到从方法上找</p>
 * <pre>
 *     格式如下：
 *     value = {"baseInfo.age_lt=123", "name_like=abc", "id_in=1,2,3,4"}
 * </pre>
 * @author Zhang Kaitao
 *
 */
@Target({ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface SearchableDefaults {

    /**
     * 默认查询参数字符串
     * @return
     */
    String[] value() default {};

    /**
     * 是否需要分页
     * @return
     */
    boolean needPage() default true;

    /**
     * 是否需要排序
     * @return
     */
    boolean needSort() default true;
}
