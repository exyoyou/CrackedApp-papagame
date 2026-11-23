package com.bykv.vk.component.ttvideo.mediakit.net;

import com.byazt.nr.m;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class AVMDLDNSManager {
    public static Map<Integer, CreateConstructor> dnsMap;
    private static AVMDLDNSManager mInstance;

    private AVMDLDNSManager() throws Exception {
        dnsMap = new HashMap();
        initDnsMap();
    }

    public static AVMDLDNSManager getInstance() {
        if (mInstance == null) {
            synchronized (AVMDLDNSManager.class) {
                if (mInstance == null) {
                    try {
                        mInstance = new AVMDLDNSManager();
                    } catch (Exception e10) {
                        m.c(e10);
                        mInstance = null;
                    }
                }
            }
        }
        return mInstance;
    }

    private void initDnsMap() throws Exception {
        DefaultConstructor defaultConstructor = new DefaultConstructor();
        dnsMap.put(1, defaultConstructor);
        dnsMap.put(2, defaultConstructor);
        dnsMap.put(3, defaultConstructor);
    }

    public synchronized CreateConstructor getCreateConstructor(int i10) throws Exception {
        if (!dnsMap.containsKey(Integer.valueOf(i10))) {
            return null;
        }
        return dnsMap.get(Integer.valueOf(i10));
    }

    public synchronized void registerDnsConstructor(int i10, CreateConstructor createConstructor) {
        try {
            dnsMap.put(Integer.valueOf(i10), createConstructor);
        } catch (Exception e10) {
            m.c(e10);
        }
    }
}
