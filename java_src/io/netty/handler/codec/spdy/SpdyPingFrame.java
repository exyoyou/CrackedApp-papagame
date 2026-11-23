package io.netty.handler.codec.spdy;

/* JADX INFO: loaded from: classes.dex */
public interface SpdyPingFrame extends SpdyFrame {
    int id();

    SpdyPingFrame setId(int i10);
}
