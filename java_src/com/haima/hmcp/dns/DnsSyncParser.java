package com.haima.hmcp.dns;

import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.Utils;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class DnsSyncParser extends DnsParser {
    private static final String TAG = "DnsSyncParser";

    private void doResloveHost(String str) throws UnknownHostException {
        LogUtils.ifmt(TAG, "doResloveHost start for host: %s", str);
        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RESOLVE_START, str);
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (InetAddress inetAddress : InetAddress.getAllByName(str)) {
            if (inetAddress instanceof Inet4Address) {
                arrayList.add(inetAddress.getHostAddress());
            } else if (inetAddress instanceof Inet6Address) {
                arrayList2.add(inetAddress.getHostAddress());
            }
        }
        String str2 = "";
        String str3 = "";
        synchronized (this) {
            if (arrayList.size() > 0) {
                DnsManager.getInstance().getDnsCache().addIp(DnsManager.DnsIpType.IPV4, str, arrayList);
                str2 = (String) arrayList.get(0);
            }
            if (arrayList2.size() > 0) {
                DnsManager.getInstance().getDnsCache().addIp(DnsManager.DnsIpType.IPV6, str, arrayList);
                str3 = (String) arrayList2.get(0);
            }
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        Locale locale = Locale.US;
        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RESOLVE_DONE, URLEncoder.encode(String.format(locale, "host: %s, ipv4Address: %s, ipv6: %s, usedTime: %d", str, str2, str3, Long.valueOf(jCurrentTimeMillis2))));
        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RESOLVE_DONE, String.format(locale, "host: %s, ipv4: %s, ipv6: %s, usedTime: %d", str, str2, str3, Long.valueOf(jCurrentTimeMillis2)));
        LogUtils.ifmt(TAG, "doResloveHost done host: %s, ipv4: %s, ipv6: %s, usedTime: %d", str, str2, str3, Long.valueOf(jCurrentTimeMillis2));
    }

    private List<String> getHostAddress(List<String> list) {
        LogUtils.ifmt(TAG, "getHostAddress start for hosts: %s, isInMainThread: %s", list, Boolean.valueOf(Utils.isInMainThread()));
        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_GET_START, URLEncoder.encode(String.format("hosts: %s, isInMainThread: %s", list.toString(), Boolean.valueOf(Utils.isInMainThread()))));
        HashSet hashSet = new HashSet();
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        boolean z10 = true;
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            List<String> ipFromCache = getIpFromCache(DnsManager.getInstance().getDnsCache(), str);
            if (ipFromCache == null || ipFromCache.size() == 0) {
                arrayList.add(null);
                if (!hashSet.contains(str)) {
                    hashSet.add(str);
                    resolveHost(str);
                }
                z10 = false;
            } else {
                arrayList.add(ipFromCache.get(0));
            }
        }
        if (!z10) {
            while (DnsManager.mGetTimeOut + jCurrentTimeMillis > System.currentTimeMillis()) {
                sleepInterval(DnsManager.mCheckInterval);
                boolean z11 = true;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    List<String> ipFromCache2 = getIpFromCache(DnsManager.getInstance().getDnsCache(), list.get(i11));
                    if (ipFromCache2 != null && ipFromCache2.size() != 0) {
                        arrayList.set(i11, ipFromCache2.get(0));
                    } else if (arrayList.get(i11) == null) {
                        z11 = false;
                    }
                }
                if (z11) {
                    break;
                }
            }
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        for (int i12 = 0; i12 < list.size(); i12++) {
            String str2 = list.get(i12);
            if (TextUtils.isEmpty((CharSequence) arrayList.get(i12))) {
                arrayList.set(i12, str2);
                CountlyUtil.recordEvent(Constants.COUNTLY_DNS_GET_FAILED, URLEncoder.encode(String.format(Locale.US, "host: %s, usedTime: %d", str2, Long.valueOf(jCurrentTimeMillis2))));
            } else if (Utils.isIpv4Address((String) arrayList.get(i12))) {
                CountlyUtil.recordEvent(Constants.COUNTLY_DNS_GET_IPV4_SUCCEED, String.format(Locale.US, "host: %s -> ip: %s, usedTime: %d", str2, arrayList.get(i12), Long.valueOf(jCurrentTimeMillis2)));
            } else {
                CountlyUtil.recordEvent(Constants.COUNTLY_DNS_GET_IPV6_SUCCEED, URLEncoder.encode(String.format(Locale.US, "host: %s -> ip: %s, usedTime: %d", str2, arrayList.get(i12), Long.valueOf(jCurrentTimeMillis2))));
            }
        }
        LogUtils.ifmt(TAG, "getHostAddress DONE for hosts: %s, resultList: %s, usedTime: %d", list, arrayList, Long.valueOf(jCurrentTimeMillis2));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveHost$0(String str) {
        try {
            doResloveHost(str);
        } catch (Exception e10) {
            uploadException(String.format(Locale.US, "resolveHost %s", str), e10);
        }
    }

    private void resolveHost(final String str) {
        new Thread(new Runnable() { // from class: com.haima.hmcp.dns.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f34055b.lambda$resolveHost$0(str);
            }
        }).start();
    }

    private void sleepInterval(long j10) {
        try {
            Thread.sleep(j10);
        } catch (Exception e10) {
            uploadException("DnsMainThread sleep", e10);
        }
    }

    public List<String> getHostAddressListSync(List<String> list) {
        try {
            if (!DnsManager.getInstance().dnsFunctionEnabled()) {
                return list;
            }
            List<String> hostAddress = getHostAddress(list);
            if (hostAddress.size() == list.size()) {
                return hostAddress;
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_DNS_ERROR, String.format(Locale.US, "getHostAddress bad ret: %s, %s", list, hostAddress));
            return list;
        } catch (Exception e10) {
            uploadException("getHostAddressListSync", e10);
            return list;
        }
    }

    public String getHostAddressSync(String str) {
        try {
            if (!DnsManager.getInstance().dnsFunctionEnabled()) {
                return str;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            List<String> hostAddress = getHostAddress(arrayList);
            if (hostAddress.size() == 1) {
                return hostAddress.get(0);
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_DNS_ERROR, URLEncoder.encode(String.format(Locale.US, "getHostAddress bad ret: %s, %s", str, hostAddress)));
            return str;
        } catch (Exception e10) {
            uploadException("getHostAddressSync", e10);
            return str;
        }
    }
}
