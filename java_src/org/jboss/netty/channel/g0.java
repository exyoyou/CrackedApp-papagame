package org.jboss.netty.channel;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes10.dex */
public interface g0 extends org.jboss.netty.util.b {
    long getCount();

    long getPosition();

    long transferTo(WritableByteChannel writableByteChannel, long j10) throws IOException;
}
