package dd;

import java.net.SocketAddress;
import java.util.Set;
import org.jboss.netty.channel.e;

/* JADX INFO: loaded from: classes10.dex */
public interface a extends Set<e>, Comparable<a> {
    b I();

    b J(int i10);

    b P(boolean z10);

    b Q(Object obj, SocketAddress socketAddress);

    e R(Integer num);

    b close();

    b disconnect();

    String getName();

    b write(Object obj);
}
