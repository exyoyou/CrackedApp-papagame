package io.netty.handler.codec.http2;

import io.netty.channel.Channel;

/* JADX INFO: loaded from: classes.dex */
public interface Http2StreamChannel extends Channel {
    Http2FrameStream stream();
}
