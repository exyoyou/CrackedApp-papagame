package io.netty.handler.codec.socksx.v4;

/* JADX INFO: loaded from: classes.dex */
public interface Socks4CommandRequest extends Socks4Message {
    String dstAddr();

    int dstPort();

    Socks4CommandType type();

    String userId();
}
