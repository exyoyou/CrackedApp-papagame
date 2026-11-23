package io.netty.handler.codec.spdy;

import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class DefaultSpdyPingFrame implements SpdyPingFrame {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f91650id;

    public DefaultSpdyPingFrame(int i10) {
        setId(i10);
    }

    @Override // io.netty.handler.codec.spdy.SpdyPingFrame
    public int id() {
        return this.f91650id;
    }

    @Override // io.netty.handler.codec.spdy.SpdyPingFrame
    public SpdyPingFrame setId(int i10) {
        this.f91650id = i10;
        return this;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + StringUtil.NEWLINE + "--> ID = " + id();
    }
}
