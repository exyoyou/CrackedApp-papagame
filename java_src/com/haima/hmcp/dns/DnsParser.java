package com.haima.hmcp.dns;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.Utils;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DnsParser {
    private static final String TAG = "DnsParser";

    protected List<String> getIpFromCache(@NonNull DnsCache dnsCache, @NonNull String str) {
        List<String> ipListForHost = null;
        if (dnsCache == null || TextUtils.isEmpty(str)) {
            return null;
        }
        if (!DnsManager.getInstance().isIPV4Priority()) {
            ipListForHost = dnsCache.getIpListForHost(DnsManager.DnsIpType.IPV6, str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getIpFromCache : isIPV4Priority() is false and choose IPV6,IPV6-listIp is ");
            sb2.append((ipListForHost == null || ipListForHost.size() == 0) ? "empty" : "not empty");
            LogUtils.d(TAG, sb2.toString());
        }
        if (ipListForHost != null && !ipListForHost.isEmpty()) {
            return ipListForHost;
        }
        List<String> ipListForHost2 = dnsCache.getIpListForHost(DnsManager.DnsIpType.IPV4, str);
        return (ipListForHost2 == null || ipListForHost2.isEmpty()) ? dnsCache.getIpListForHost(DnsManager.DnsIpType.IPV6, str) : ipListForHost2;
    }

    protected void uploadException(String str, Exception exc) {
        try {
            String str2 = String.format(Locale.US, "%s got Exception: %s", str, Utils.exceptionStackTrace(exc));
            LogUtils.e(TAG, str2);
            CountlyUtil.recordEvent(Constants.COUNTLY_DNS_ERROR, str2);
        } catch (Exception unused) {
            LogUtils.e(TAG, "uploadException got Exception: " + exc.toString());
        }
    }
}
