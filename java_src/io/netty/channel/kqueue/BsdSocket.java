package io.netty.channel.kqueue;

import io.netty.channel.DefaultFileRegion;
import io.netty.channel.unix.Errors;
import io.netty.channel.unix.PeerCredentials;
import io.netty.channel.unix.Socket;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class BsdSocket extends Socket {
    private static final int APPLE_SND_LOW_AT_MAX = 131072;
    static final int BSD_SND_LOW_AT_MAX = Math.min(131072, 32768);
    private static final int FREEBSD_SND_LOW_AT_MAX = 32768;

    BsdSocket(int i10) {
        super(i10);
    }

    private static native String[] getAcceptFilter(int i10) throws IOException;

    private static native PeerCredentials getPeerCredentials(int i10) throws IOException;

    private static native int getSndLowAt(int i10) throws IOException;

    private static native int getTcpNoPush(int i10) throws IOException;

    public static BsdSocket newSocketDgram() {
        return new BsdSocket(Socket.newSocketDgram0());
    }

    public static BsdSocket newSocketDomain() {
        return new BsdSocket(Socket.newSocketDomain0());
    }

    public static BsdSocket newSocketStream() {
        return new BsdSocket(Socket.newSocketStream0());
    }

    private static native long sendFile(int i10, DefaultFileRegion defaultFileRegion, long j10, long j11, long j12) throws IOException;

    private static native void setAcceptFilter(int i10, String str, String str2) throws IOException;

    private static native void setSndLowAt(int i10, int i11) throws IOException;

    private static native void setTcpNoPush(int i10, int i11) throws IOException;

    AcceptFilter getAcceptFilter() throws IOException {
        String[] acceptFilter = getAcceptFilter(intValue());
        return acceptFilter == null ? AcceptFilter.PLATFORM_UNSUPPORTED : new AcceptFilter(acceptFilter[0], acceptFilter[1]);
    }

    PeerCredentials getPeerCredentials() throws IOException {
        return getPeerCredentials(intValue());
    }

    int getSndLowAt() throws IOException {
        return getSndLowAt(intValue());
    }

    boolean isTcpNoPush() throws IOException {
        return getTcpNoPush(intValue()) != 0;
    }

    long sendFile(DefaultFileRegion defaultFileRegion, long j10, long j11, long j12) throws IOException {
        defaultFileRegion.open();
        long jSendFile = sendFile(intValue(), defaultFileRegion, j10, j11, j12);
        return jSendFile >= 0 ? jSendFile : Errors.ioResult("sendfile", (int) jSendFile);
    }

    void setAcceptFilter(AcceptFilter acceptFilter) throws IOException {
        setAcceptFilter(intValue(), acceptFilter.filterName(), acceptFilter.filterArgs());
    }

    void setSndLowAt(int i10) throws IOException {
        setSndLowAt(intValue(), i10);
    }

    void setTcpNoPush(boolean z10) throws IOException {
        setTcpNoPush(intValue(), z10 ? 1 : 0);
    }
}
