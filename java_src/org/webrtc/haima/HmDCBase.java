package org.webrtc.haima;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.hmwebrtc.DataChannel;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public abstract class HmDCBase {
    private DataChannel mDataChannel;
    private SimpleDcObserver mDataObserver;
    private String mName;
    private boolean mShared;

    private class SimpleDcObserver implements DataChannel.Observer {
        private SimpleDcObserver() {
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public void onBufferedAmountChange(long j10) {
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public void onMessage(DataChannel.Buffer buffer) {
            ByteBuffer byteBuffer;
            if (buffer.binary || (byteBuffer = buffer.data) == null || byteBuffer.capacity() == 0) {
                Logging.e(HmDCBase.this.mName, "DataChannel data is null!");
                return;
            }
            byte[] bArr = new byte[buffer.data.capacity()];
            buffer.data.get(bArr);
            HmDCBase.this.onReceiveMessage(new String(bArr, Charset.forName("UTF-8")));
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public void onStateChange() {
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public /* synthetic */ void onWritableState(boolean z10) {
            org.hmwebrtc.g.a(this, z10);
        }
    }

    public HmDCBase(String str, DataChannel dataChannel) {
        this(str, dataChannel, false);
    }

    public abstract void onReceiveMessage(String str);

    public void release() {
        DataChannel dataChannel = this.mDataChannel;
        if (dataChannel != null) {
            dataChannel.unregisterObserver();
            if (!this.mShared) {
                this.mDataChannel.dispose();
            }
        }
        this.mDataChannel = null;
        this.mDataObserver = null;
    }

    private HmDCBase(String str, DataChannel dataChannel, boolean z10) {
        this.mName = str;
        if (str == null || str.length() == 0) {
            this.mName = "dc_" + hashCode();
        }
        if (dataChannel == null) {
            throw new IllegalStateException(str + " dc is null");
        }
        this.mDataChannel = dataChannel;
        this.mShared = z10;
        SimpleDcObserver simpleDcObserver = new SimpleDcObserver();
        this.mDataObserver = simpleDcObserver;
        this.mDataChannel.registerObserver(simpleDcObserver);
    }
}
