package io.netty.handler.ssl;

import io.netty.util.internal.SuppressJava6Requirement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SNIMatcher;
import javax.net.ssl.SNIServerName;
import javax.net.ssl.SSLParameters;

/* JADX INFO: loaded from: classes.dex */
@SuppressJava6Requirement(reason = "Usage guarded by java version check")
final class Java8SslUtils {
    private Java8SslUtils() {
    }

    static boolean checkSniHostnameMatch(Collection<?> collection, byte[] bArr) {
        if (collection == null || collection.isEmpty()) {
            return true;
        }
        SNIHostName sNIHostNameA = f.a(bArr);
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            SNIMatcher sNIMatcherA = n.a(it2.next());
            if (sNIMatcherA.getType() == 0 && sNIMatcherA.matches(sNIHostNameA)) {
                return true;
            }
        }
        return false;
    }

    static List getSniHostName(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? Collections.emptyList() : Collections.singletonList(f.a(bArr));
    }

    static List<String> getSniHostNames(SSLParameters sSLParameters) {
        List serverNames = sSLParameters.getServerNames();
        if (serverNames == null || serverNames.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(serverNames.size());
        Iterator it2 = serverNames.iterator();
        while (it2.hasNext()) {
            SNIServerName sNIServerNameA = h.a(it2.next());
            if (!i.a(sNIServerNameA)) {
                throw new IllegalArgumentException("Only " + l.a().getName() + " instances are supported, but found: " + sNIServerNameA);
            }
            arrayList.add(j.a(sNIServerNameA).getAsciiName());
        }
        return arrayList;
    }

    static boolean getUseCipherSuitesOrder(SSLParameters sSLParameters) {
        return sSLParameters.getUseCipherSuitesOrder();
    }

    static void setSNIMatchers(SSLParameters sSLParameters, Collection<?> collection) {
        sSLParameters.setSNIMatchers(collection);
    }

    static void setSniHostNames(SSLParameters sSLParameters, List<String> list) {
        sSLParameters.setServerNames(getSniHostNames(list));
    }

    static void setUseCipherSuitesOrder(SSLParameters sSLParameters, boolean z10) {
        sSLParameters.setUseCipherSuitesOrder(z10);
    }

    static List getSniHostNames(List<String> list) {
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(h2.c.a(it2.next()));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }
}
