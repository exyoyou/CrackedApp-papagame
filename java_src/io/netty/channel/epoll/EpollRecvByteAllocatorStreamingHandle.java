package io.netty.channel.epoll;

import io.netty.channel.RecvByteBufAllocator;

/* JADX INFO: loaded from: classes.dex */
final class EpollRecvByteAllocatorStreamingHandle extends EpollRecvByteAllocatorHandle {
    EpollRecvByteAllocatorStreamingHandle(RecvByteBufAllocator.ExtendedHandle extendedHandle) {
        super(extendedHandle);
    }

    @Override // io.netty.channel.epoll.EpollRecvByteAllocatorHandle
    boolean maybeMoreDataToRead() {
        return lastBytesRead() == attemptedBytesRead() || isReceivedRdHup();
    }
}
