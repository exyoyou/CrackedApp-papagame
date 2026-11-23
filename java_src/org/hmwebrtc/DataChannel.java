package org.hmwebrtc;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
public class DataChannel {
    private long nativeDataChannel;
    private long nativeObserver;

    public static class Buffer {
        public final boolean binary;
        public final ByteBuffer data;

        @CalledByNative("Buffer")
        public Buffer(ByteBuffer byteBuffer, boolean z10) {
            this.data = byteBuffer;
            this.binary = z10;
        }
    }

    public static class Init {
        public boolean negotiated;
        public boolean ordered = true;
        public int maxRetransmitTimeMs = -1;
        public int maxRetransmits = -1;
        public String protocol = "";

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public int f95353id = -1;

        @CalledByNative("Init")
        int getId() {
            return this.f95353id;
        }

        @CalledByNative("Init")
        int getMaxRetransmitTimeMs() {
            return this.maxRetransmitTimeMs;
        }

        @CalledByNative("Init")
        int getMaxRetransmits() {
            return this.maxRetransmits;
        }

        @CalledByNative("Init")
        boolean getNegotiated() {
            return this.negotiated;
        }

        @CalledByNative("Init")
        boolean getOrdered() {
            return this.ordered;
        }

        @CalledByNative("Init")
        String getProtocol() {
            return this.protocol;
        }
    }

    public interface Observer {
        @CalledByNative("Observer")
        void onBufferedAmountChange(long j10);

        @CalledByNative("Observer")
        void onMessage(Buffer buffer);

        @CalledByNative("Observer")
        void onStateChange();

        @CalledByNative("Observer")
        void onWritableState(boolean z10);
    }

    public static class SendOptoins {
        long maxBufferBytesSize;

        public SendOptoins(long j10) {
            this.maxBufferBytesSize = j10;
        }

        @CalledByNative("SendOptoins")
        long getMaxBufferBytesSize() {
            return this.maxBufferBytesSize;
        }
    }

    public static class SendResult {
        public static final int SEND_BLOCK = 2;
        public static final int SEND_FAILED = 1;
        public static final int SEND_SUCCESS = 0;
        public long bufferedSize;
        public int result;

        @CalledByNative("SendResult")
        SendResult(int i10, long j10) {
            this.result = i10;
            this.bufferedSize = j10;
        }
    }

    public enum State {
        CONNECTING,
        OPEN,
        CLOSING,
        CLOSED;

        @CalledByNative("State")
        static State fromNativeIndex(int i10) {
            return values()[i10];
        }
    }

    @CalledByNative
    public DataChannel(long j10) {
        this.nativeDataChannel = j10;
    }

    private void checkDataChannelExists() {
        if (this.nativeDataChannel == 0) {
            throw new IllegalStateException("DataChannel has been disposed.");
        }
    }

    private native long nativeBufferedAmount();

    private native void nativeClose();

    private native int nativeId();

    private native String nativeLabel();

    private native long nativeRegisterObserver(Observer observer);

    private native boolean nativeSend(byte[] bArr, boolean z10);

    private native SendResult nativeSendEx(byte[] bArr, boolean z10, SendOptoins sendOptoins);

    private native State nativeState();

    private native void nativeUnregisterObserver(long j10);

    public long bufferedAmount() {
        checkDataChannelExists();
        return nativeBufferedAmount();
    }

    public void close() {
        checkDataChannelExists();
        nativeClose();
    }

    public void dispose() {
        checkDataChannelExists();
        JniCommon.nativeReleaseRef(this.nativeDataChannel);
        this.nativeDataChannel = 0L;
    }

    @CalledByNative
    public long getNativeDataChannel() {
        return this.nativeDataChannel;
    }

    public int id() {
        checkDataChannelExists();
        return nativeId();
    }

    public String label() {
        checkDataChannelExists();
        return nativeLabel();
    }

    public void registerObserver(Observer observer) {
        checkDataChannelExists();
        long j10 = this.nativeObserver;
        if (j10 != 0) {
            nativeUnregisterObserver(j10);
        }
        this.nativeObserver = nativeRegisterObserver(observer);
    }

    public boolean send(Buffer buffer) {
        checkDataChannelExists();
        byte[] bArr = new byte[buffer.data.remaining()];
        buffer.data.get(bArr);
        return nativeSend(bArr, buffer.binary);
    }

    public State state() {
        checkDataChannelExists();
        return nativeState();
    }

    public void unregisterObserver() {
        checkDataChannelExists();
        nativeUnregisterObserver(this.nativeObserver);
        this.nativeObserver = 0L;
    }

    public boolean send(byte[] bArr, boolean z10) {
        checkDataChannelExists();
        return nativeSend(bArr, z10);
    }

    public SendResult send(Buffer buffer, SendOptoins sendOptoins) {
        checkDataChannelExists();
        byte[] bArr = new byte[buffer.data.remaining()];
        buffer.data.get(bArr);
        return nativeSendEx(bArr, buffer.binary, sendOptoins);
    }
}
