package io.netty.channel.epoll;

/* JADX INFO: loaded from: classes.dex */
final class NativeStaticallyReferencedJniMethods {
    private NativeStaticallyReferencedJniMethods() {
    }

    static native int epollerr();

    static native int epollet();

    static native int epollin();

    static native int epollout();

    static native int epollrdhup();

    static native int iovMax();

    static native boolean isSupportingRecvmmsg();

    static native boolean isSupportingSendmmsg();

    static native boolean isSupportingTcpFastopen();

    static native String kernelVersion();

    static native long ssizeMax();

    static native int tcpMd5SigMaxKeyLen();

    static native int uioMaxIov();
}
