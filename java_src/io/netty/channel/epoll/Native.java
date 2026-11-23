package io.netty.channel.epoll;

import io.netty.channel.unix.Errors;
import io.netty.channel.unix.FileDescriptor;
import io.netty.channel.unix.Socket;
import io.netty.util.internal.NativeLibraryLoader;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.ThrowableUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class Native {
    public static final int EPOLLERR;
    public static final int EPOLLET;
    public static final int EPOLLIN;
    public static final int EPOLLOUT;
    public static final int EPOLLRDHUP;
    static final boolean IS_SUPPORTING_RECVMMSG;
    public static final boolean IS_SUPPORTING_SENDMMSG;
    public static final boolean IS_SUPPORTING_TCP_FASTOPEN;
    public static final String KERNEL_VERSION;
    public static final int TCP_MD5SIG_MAXKEYLEN;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) Native.class);

    static {
        try {
            offsetofEpollData();
        } catch (UnsatisfiedLinkError unused) {
            loadNativeLibrary();
        }
        Socket.initialize();
        EPOLLIN = NativeStaticallyReferencedJniMethods.epollin();
        EPOLLOUT = NativeStaticallyReferencedJniMethods.epollout();
        EPOLLRDHUP = NativeStaticallyReferencedJniMethods.epollrdhup();
        EPOLLET = NativeStaticallyReferencedJniMethods.epollet();
        EPOLLERR = NativeStaticallyReferencedJniMethods.epollerr();
        IS_SUPPORTING_SENDMMSG = NativeStaticallyReferencedJniMethods.isSupportingSendmmsg();
        IS_SUPPORTING_RECVMMSG = NativeStaticallyReferencedJniMethods.isSupportingRecvmmsg();
        IS_SUPPORTING_TCP_FASTOPEN = NativeStaticallyReferencedJniMethods.isSupportingTcpFastopen();
        TCP_MD5SIG_MAXKEYLEN = NativeStaticallyReferencedJniMethods.tcpMd5SigMaxKeyLen();
        KERNEL_VERSION = NativeStaticallyReferencedJniMethods.kernelVersion();
    }

    private Native() {
    }

    public static int epollBusyWait(FileDescriptor fileDescriptor, EpollEventArray epollEventArray) throws IOException {
        int iEpollBusyWait0 = epollBusyWait0(fileDescriptor.intValue(), epollEventArray.memoryAddress(), epollEventArray.length());
        if (iEpollBusyWait0 >= 0) {
            return iEpollBusyWait0;
        }
        throw Errors.newIOException("epoll_wait", iEpollBusyWait0);
    }

    private static native int epollBusyWait0(int i10, long j10, int i11);

    private static native int epollCreate();

    public static void epollCtlAdd(int i10, int i11, int i12) throws IOException {
        int iEpollCtlAdd0 = epollCtlAdd0(i10, i11, i12);
        if (iEpollCtlAdd0 < 0) {
            throw Errors.newIOException("epoll_ctl", iEpollCtlAdd0);
        }
    }

    private static native int epollCtlAdd0(int i10, int i11, int i12);

    public static void epollCtlDel(int i10, int i11) throws IOException {
        int iEpollCtlDel0 = epollCtlDel0(i10, i11);
        if (iEpollCtlDel0 < 0) {
            throw Errors.newIOException("epoll_ctl", iEpollCtlDel0);
        }
    }

    private static native int epollCtlDel0(int i10, int i11);

    public static void epollCtlMod(int i10, int i11, int i12) throws IOException {
        int iEpollCtlMod0 = epollCtlMod0(i10, i11, i12);
        if (iEpollCtlMod0 < 0) {
            throw Errors.newIOException("epoll_ctl", iEpollCtlMod0);
        }
    }

    private static native int epollCtlMod0(int i10, int i11, int i12);

    private static native int epollWait(int i10, long j10, int i11, int i12);

    @Deprecated
    public static int epollWait(FileDescriptor fileDescriptor, EpollEventArray epollEventArray, FileDescriptor fileDescriptor2, int i10, int i11) throws IOException {
        int i12;
        int i13;
        if (i10 == 0 && i11 == 0) {
            return epollWait(fileDescriptor, epollEventArray, 0);
        }
        if (i10 == Integer.MAX_VALUE) {
            i12 = 0;
            i13 = 0;
        } else {
            i12 = i10;
            i13 = i11;
        }
        int iEpollWait0 = epollWait0(fileDescriptor.intValue(), epollEventArray.memoryAddress(), epollEventArray.length(), fileDescriptor2.intValue(), i12, i13);
        if (iEpollWait0 >= 0) {
            return iEpollWait0;
        }
        throw Errors.newIOException("epoll_wait", iEpollWait0);
    }

    private static native int epollWait0(int i10, long j10, int i11, int i12, int i13, int i14);

    private static native int eventFd();

    public static native void eventFdRead(int i10);

    public static native void eventFdWrite(int i10, long j10);

    private static void loadNativeLibrary() throws Throwable {
        if (!SystemPropertyUtil.get("os.name").toLowerCase(Locale.UK).trim().startsWith("linux")) {
            throw new IllegalStateException("Only supported on Linux");
        }
        String str = "netty_transport_native_epoll_" + PlatformDependent.normalizedArch();
        ClassLoader classLoader = PlatformDependent.getClassLoader(Native.class);
        try {
            NativeLibraryLoader.load(str, classLoader);
        } catch (UnsatisfiedLinkError e10) {
            try {
                NativeLibraryLoader.load("netty_transport_native_epoll", classLoader);
                logger.debug("Failed to load {}", str, e10);
            } catch (UnsatisfiedLinkError e11) {
                ThrowableUtil.addSuppressed(e10, e11);
                throw e10;
            }
        }
    }

    public static FileDescriptor newEpollCreate() {
        return new FileDescriptor(epollCreate());
    }

    public static FileDescriptor newEventFd() {
        return new FileDescriptor(eventFd());
    }

    public static FileDescriptor newTimerFd() {
        return new FileDescriptor(timerFd());
    }

    public static native int offsetofEpollData();

    static int recvmmsg(int i10, boolean z10, NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i11, int i12) throws IOException {
        int iRecvmmsg0 = recvmmsg0(i10, z10, nativeDatagramPacketArr, i11, i12);
        return iRecvmmsg0 >= 0 ? iRecvmmsg0 : Errors.ioResult("recvmmsg", iRecvmmsg0);
    }

    private static native int recvmmsg0(int i10, boolean z10, NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i11, int i12);

    @Deprecated
    public static int sendmmsg(int i10, NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i11, int i12) throws IOException {
        return sendmmsg(i10, Socket.isIPv6Preferred(), nativeDatagramPacketArr, i11, i12);
    }

    private static native int sendmmsg0(int i10, boolean z10, NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i11, int i12);

    public static native int sizeofEpollEvent();

    public static int splice(int i10, long j10, int i11, long j11, long j12) throws IOException {
        int iSplice0 = splice0(i10, j10, i11, j11, j12);
        return iSplice0 >= 0 ? iSplice0 : Errors.ioResult("splice", iSplice0);
    }

    private static native int splice0(int i10, long j10, int i11, long j11, long j12);

    private static native int timerFd();

    static native void timerFdRead(int i10);

    static native void timerFdSetTime(int i10, int i11, int i12) throws IOException;

    static int sendmmsg(int i10, boolean z10, NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArr, int i11, int i12) throws IOException {
        int iSendmmsg0 = sendmmsg0(i10, z10, nativeDatagramPacketArr, i11, i12);
        return iSendmmsg0 >= 0 ? iSendmmsg0 : Errors.ioResult("sendmmsg", iSendmmsg0);
    }

    static int epollWait(FileDescriptor fileDescriptor, EpollEventArray epollEventArray, boolean z10) throws IOException {
        return epollWait(fileDescriptor, epollEventArray, z10 ? 0 : -1);
    }

    static int epollWait(FileDescriptor fileDescriptor, EpollEventArray epollEventArray, int i10) throws IOException {
        int iEpollWait = epollWait(fileDescriptor.intValue(), epollEventArray.memoryAddress(), epollEventArray.length(), i10);
        if (iEpollWait >= 0) {
            return iEpollWait;
        }
        throw Errors.newIOException("epoll_wait", iEpollWait);
    }
}
