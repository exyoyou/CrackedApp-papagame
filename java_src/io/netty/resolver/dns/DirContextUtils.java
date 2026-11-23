package io.netty.resolver.dns;

import io.netty.util.internal.SocketUtils;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Hashtable;
import java.util.List;
import javax.naming.NamingException;
import javax.naming.directory.InitialDirContext;

/* JADX INFO: loaded from: classes.dex */
final class DirContextUtils {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) DirContextUtils.class);

    private DirContextUtils() {
    }

    static void addNameServers(List<InetSocketAddress> list, int i10) {
        Hashtable hashtable = new Hashtable();
        hashtable.put("java.naming.factory.initial", "com.sun.jndi.dns.DnsContextFactory");
        hashtable.put("java.naming.provider.url", "dns://");
        try {
            String str = (String) new InitialDirContext(hashtable).getEnvironment().get("java.naming.provider.url");
            if (str == null || str.isEmpty()) {
                return;
            }
            for (String str2 : str.split(" ")) {
                try {
                    URI uri = new URI(str2);
                    String host = new URI(str2).getHost();
                    if (host == null || host.isEmpty()) {
                        logger.debug("Skipping a nameserver URI as host portion could not be extracted: {}", str2);
                    } else {
                        int port = uri.getPort();
                        String host2 = uri.getHost();
                        if (port == -1) {
                            port = i10;
                        }
                        list.add(SocketUtils.socketAddress(host2, port));
                    }
                } catch (URISyntaxException e10) {
                    logger.debug("Skipping a malformed nameserver URI: {}", str2, e10);
                }
            }
        } catch (NamingException unused) {
        }
    }
}
