package org.apache.http.impl.conn;

import android.util.Log;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.conn.DnsResolver;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
public class InMemoryDnsResolver implements DnsResolver {
    private static final String TAG = "HttpClient";
    private final Map<String, InetAddress[]> dnsMap = new ConcurrentHashMap();

    public void add(String str, InetAddress... inetAddressArr) {
        Args.notNull(str, "Host name");
        Args.notNull(inetAddressArr, "Array of IP addresses");
        this.dnsMap.put(str, inetAddressArr);
    }

    @Override // org.apache.http.conn.DnsResolver
    public InetAddress[] resolve(String str) throws UnknownHostException {
        InetAddress[] inetAddressArr = this.dnsMap.get(str);
        if (Log.isLoggable(TAG, 4)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Resolving ");
            sb2.append(str);
            sb2.append(" to ");
            sb2.append(Arrays.deepToString(inetAddressArr));
        }
        if (inetAddressArr != null) {
            return inetAddressArr;
        }
        throw new UnknownHostException(str + " cannot be resolved");
    }
}
