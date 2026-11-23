package com.haima.hmcp.dns;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.haima.hmcp.utils.Utils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class DnsCache {
    private final ConcurrentHashMap<String, ArrayList<String>> mIPV4Cache = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, ArrayList<String>> mIPV6Cache = new ConcurrentHashMap<>();

    public synchronized void addIp(DnsManager.DnsIpType dnsIpType, @NonNull String str, @NonNull List<String> list) {
        if (!TextUtils.isEmpty(str) && list != null && !list.isEmpty()) {
            ConcurrentHashMap<String, ArrayList<String>> concurrentHashMap = dnsIpType == DnsManager.DnsIpType.IPV4 ? this.mIPV4Cache : dnsIpType == DnsManager.DnsIpType.IPV6 ? this.mIPV6Cache : null;
            ArrayList<String> arrayList = concurrentHashMap != null ? concurrentHashMap.get(str) : null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                concurrentHashMap.put(str, arrayList);
            }
            for (String str2 : list) {
                if (dnsIpType != DnsManager.DnsIpType.IPV4 || Utils.isIpv4Address(str2)) {
                    if (dnsIpType != DnsManager.DnsIpType.IPV6 || Utils.isIpv6Address(str2)) {
                        if (!arrayList.contains(str2)) {
                            arrayList.add(str2);
                        }
                    }
                }
            }
        }
    }

    public synchronized List<String> getIpListForHost(DnsManager.DnsIpType dnsIpType, @NonNull String str) {
        ConcurrentHashMap<String, ArrayList<String>> concurrentHashMap;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (dnsIpType == DnsManager.DnsIpType.IPV4) {
            concurrentHashMap = this.mIPV4Cache;
        } else {
            concurrentHashMap = dnsIpType == DnsManager.DnsIpType.IPV6 ? this.mIPV6Cache : null;
        }
        if (concurrentHashMap != null) {
            return concurrentHashMap.get(str);
        }
        return null;
    }

    public synchronized void release() {
        ConcurrentHashMap<String, ArrayList<String>> concurrentHashMap = this.mIPV4Cache;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
        ConcurrentHashMap<String, ArrayList<String>> concurrentHashMap2 = this.mIPV6Cache;
        if (concurrentHashMap2 != null) {
            concurrentHashMap2.clear();
        }
    }

    public synchronized void removeIp(DnsManager.DnsIpType dnsIpType, @NonNull String str, @NonNull String str2) {
        ConcurrentHashMap<String, ArrayList<String>> concurrentHashMap;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (dnsIpType == DnsManager.DnsIpType.IPV4) {
                concurrentHashMap = this.mIPV4Cache;
            } else {
                concurrentHashMap = dnsIpType == DnsManager.DnsIpType.IPV6 ? this.mIPV6Cache : null;
            }
            ArrayList<String> arrayList = concurrentHashMap != null ? concurrentHashMap.get(str) : null;
            if (arrayList != null) {
                arrayList.remove(str2);
                if (arrayList.isEmpty()) {
                    concurrentHashMap.remove(str);
                }
            }
        }
    }

    public String toString() {
        return "DnsCache{mIPV4Cache=" + this.mIPV4Cache + ", mIPV6Cache=" + this.mIPV6Cache + '}';
    }
}
