package io.netty.bootstrap;

import io.netty.channel.Channel;
import io.netty.resolver.AddressResolverGroup;
import java.net.SocketAddress;

/* JADX INFO: loaded from: classes5.dex */
public final class BootstrapConfig extends AbstractBootstrapConfig<Bootstrap, Channel> {
    BootstrapConfig(Bootstrap bootstrap) {
        super(bootstrap);
    }

    public SocketAddress remoteAddress() {
        return ((Bootstrap) this.bootstrap).remoteAddress();
    }

    public AddressResolverGroup<?> resolver() {
        return ((Bootstrap) this.bootstrap).resolver();
    }

    @Override // io.netty.bootstrap.AbstractBootstrapConfig
    public String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        sb2.setLength(sb2.length() - 1);
        sb2.append(", resolver: ");
        sb2.append(resolver());
        SocketAddress socketAddressRemoteAddress = remoteAddress();
        if (socketAddressRemoteAddress != null) {
            sb2.append(", remoteAddress: ");
            sb2.append(socketAddressRemoteAddress);
        }
        sb2.append(')');
        return sb2.toString();
    }
}
