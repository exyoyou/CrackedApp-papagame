package com.haima.hmcp.dns.interfaces;

import com.haima.hmcp.dns.entity.DnsRequestIpResult;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface OnDnsRequestServiceIpListener {
    void dnsRequestIpError(String str, String str2);

    void dnsRequestIpResult(List<DnsRequestIpResult.Result> list);
}
