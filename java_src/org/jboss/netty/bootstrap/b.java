package org.jboss.netty.bootstrap;

import java.net.SocketAddress;
import org.jboss.netty.channel.ChannelPipelineException;
import org.jboss.netty.channel.e;
import org.jboss.netty.channel.i;
import org.jboss.netty.channel.j;

/* JADX INFO: loaded from: classes10.dex */
public class b extends a {
    public b() {
    }

    public j p(SocketAddress socketAddress) {
        if (socketAddress != null) {
            return q(socketAddress, (SocketAddress) d("localAddress"));
        }
        throw new NullPointerException("remoteAddress");
    }

    public j q(SocketAddress socketAddress, SocketAddress socketAddress2) {
        if (socketAddress == null) {
            throw new NullPointerException("remoteAddress");
        }
        try {
            e eVarB = c().b(h().getPipeline());
            try {
                eVarB.getConfig().setOptions(e());
                if (socketAddress2 != null) {
                    eVarB.bind(socketAddress2);
                }
                return eVarB.connect(socketAddress);
            } catch (Throwable th) {
                eVarB.close();
                throw th;
            }
        } catch (Exception e10) {
            throw new ChannelPipelineException("Failed to initialize a pipeline.", e10);
        }
    }

    public b(i iVar) {
        super(iVar);
    }
}
