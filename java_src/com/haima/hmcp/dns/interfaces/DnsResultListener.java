package com.haima.hmcp.dns.interfaces;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public interface DnsResultListener {
    void dnsAsyncResult(ConcurrentHashMap<String, String> concurrentHashMap);
}
