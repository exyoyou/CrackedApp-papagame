package com.haima.hmcp.beans;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class RetryErrorcodeConfig {
    public static List<RetryErrorcodeBean> requestRetryConfigList;

    public static class RetryErrorcodeBean {
        public int actionId;
        public int currentRetryTimes = 0;
        public String errorCode;
        public int retryDelayTime;
        public int retryMaxTimes;
    }

    public static void reset() {
        List<RetryErrorcodeBean> list = requestRetryConfigList;
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<RetryErrorcodeBean> it2 = requestRetryConfigList.iterator();
        while (it2.hasNext()) {
            it2.next().currentRetryTimes = 0;
        }
    }
}
