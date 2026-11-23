package io.netty.handler.timeout;

import io.netty.channel.ChannelException;

/* JADX INFO: loaded from: classes.dex */
public class TimeoutException extends ChannelException {
    private static final long serialVersionUID = 4673641882869672533L;

    TimeoutException() {
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    TimeoutException(boolean z10) {
        super(null, null, z10);
    }
}
