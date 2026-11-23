package io.netty.resolver.dns.macos;

import io.netty.channel.unix.NativeInetAddress;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes.dex */
final class DnsResolver {
    private final String domain;
    private final InetSocketAddress[] nameservers;
    private final String options;
    private final int port;
    private final int searchOrder;
    private final String[] searches;
    private final int timeout;

    DnsResolver(String str, byte[][] bArr, int i10, String[] strArr, String str2, int i11, int i12) {
        this.domain = str;
        if (bArr == null) {
            this.nameservers = new InetSocketAddress[0];
        } else {
            this.nameservers = new InetSocketAddress[bArr.length];
            for (int i13 = 0; i13 < bArr.length; i13++) {
                byte[] bArr2 = bArr[i13];
                this.nameservers[i13] = NativeInetAddress.address(bArr2, 0, bArr2.length);
            }
        }
        this.port = i10;
        this.searches = strArr;
        this.options = str2;
        this.timeout = i11;
        this.searchOrder = i12;
    }

    String domain() {
        return this.domain;
    }

    InetSocketAddress[] nameservers() {
        return this.nameservers;
    }

    String options() {
        return this.options;
    }

    int port() {
        return this.port;
    }

    int searchOrder() {
        return this.searchOrder;
    }

    String[] searches() {
        return this.searches;
    }

    int timeout() {
        return this.timeout;
    }
}
