package org.webrtc.haima;

/* JADX INFO: loaded from: classes10.dex */
public class HaimaDataChannel {

    public interface Handler {
        public static final int SEND_FLAG_BINARY = 1;
        public static final int SEND_FLAG_ORDERED = 3;
        public static final int SEND_RET_BLOCK = 1;
        public static final int SEND_RET_FAILED = -1;
        public static final int SEND_RET_OK = 0;

        void dispose();

        int getId();

        long getMaxBufferSize();

        boolean isConnected();

        int sendData(byte[] bArr, int i10, int i11, int i12);
    }

    public interface Listener {
        public static final int CONNECTED = 0;
        public static final int DISCONNECTED = 1;
        public static final int WRITEABLE = 2;

        void onReceivedData(int i10, byte[] bArr, int i11, int i12);

        void onSent(long j10, long j11);

        void onStateChange(int i10, int i11, long j10);
    }

    public static class Propertys {
        private boolean mIsCreater;
        private long mParameter;

        public Propertys(boolean z10, long j10) {
            this.mIsCreater = z10;
            this.mParameter = j10;
        }

        public long getParameter() {
            return this.mParameter;
        }

        public boolean isCreater() {
            return this.mIsCreater;
        }
    }
}
