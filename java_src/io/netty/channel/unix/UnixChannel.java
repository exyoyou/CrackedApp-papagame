package io.netty.channel.unix;

import io.netty.channel.Channel;

/* JADX INFO: loaded from: classes.dex */
public interface UnixChannel extends Channel {
    FileDescriptor fd();
}
