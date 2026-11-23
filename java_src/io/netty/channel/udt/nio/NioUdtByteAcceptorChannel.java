package io.netty.channel.udt.nio;

import com.barchart.udt.TypeUDT;
import com.barchart.udt.nio.SocketChannelUDT;
import io.netty.channel.udt.UdtChannel;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NioUdtByteAcceptorChannel extends NioUdtAcceptorChannel {
    public NioUdtByteAcceptorChannel() {
        super(TypeUDT.STREAM);
    }

    @Override // io.netty.channel.udt.nio.NioUdtAcceptorChannel
    protected UdtChannel newConnectorChannel(SocketChannelUDT socketChannelUDT) {
        return new NioUdtByteConnectorChannel(this, socketChannelUDT);
    }
}
