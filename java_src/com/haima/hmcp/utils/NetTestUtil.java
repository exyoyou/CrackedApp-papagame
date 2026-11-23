package com.haima.hmcp.utils;

import android.net.Uri;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes5.dex */
public class NetTestUtil {
    public static final String TAG = "NetTestUtil";

    private class DNSParse implements Runnable {
        private InetAddress address;
        private String error;
        private String hostname;

        public DNSParse(String str) {
            this.hostname = str;
        }

        public synchronized String get() {
            InetAddress inetAddress = this.address;
            if (inetAddress != null) {
                return inetAddress.toString();
            }
            return this.error;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                set(InetAddress.getByName(this.hostname));
            } catch (Exception e10) {
                setError(e10.getLocalizedMessage());
                LogUtils.e(NetTestUtil.TAG, "DNSParse: " + e10.getLocalizedMessage());
            }
        }

        public synchronized void set(InetAddress inetAddress) {
            this.address = inetAddress;
        }

        public synchronized void setError(String str) {
            this.error = str;
        }
    }

    private String getHostName(String str) {
        return Uri.parse(str).getHost();
    }

    @Deprecated
    public void isNetWorkAvailableOfDNS(String str, Comparable<String> comparable) {
        if (comparable != null) {
            comparable.compareTo("Deprecated api.");
        }
    }
}
