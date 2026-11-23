package io.netty.channel;

import io.netty.util.concurrent.EventExecutor;

/* JADX INFO: loaded from: classes.dex */
final class SucceededChannelFuture extends CompleteChannelFuture {
    SucceededChannelFuture(Channel channel, EventExecutor eventExecutor) {
        super(channel, eventExecutor);
    }

    @Override // io.netty.util.concurrent.Future
    public Throwable cause() {
        return null;
    }

    @Override // io.netty.util.concurrent.Future
    public boolean isSuccess() {
        return true;
    }
}
