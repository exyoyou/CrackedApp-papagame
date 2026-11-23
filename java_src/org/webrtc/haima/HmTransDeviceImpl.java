package org.webrtc.haima;

import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.concurrent.atomic.AtomicBoolean;
import org.hmwebrtc.DataChannel;
import org.hmwebrtc.Logging;
import org.hmwebrtc.PeerConnection;
import org.hmwebrtc.RtcCountlyConstants;
import org.webrtc.haima.countly.RtcCountlyUtil;

/* JADX INFO: loaded from: classes10.dex */
public class HmTransDeviceImpl implements HmTransDevice, DataChannel.Observer {
    private static final byte DATA_TYPE_RAW_INPUT = 1;
    private static final byte MESSAGE_TYPE_BINARY = 1;
    private static final byte MESSAGE_TYPE_TEXT = 0;
    private static final String TAG = "HmTransDeviceImpl";
    private int mFlag;
    private HmTransDevice.Observer mObserver;
    private DataChannel mReliableDC;
    private String mReliableDCName;
    byte[] mSendDataBuf;
    byte[] mSendTextBuf;
    private boolean mSentFirstFrame;
    private AtomicBoolean mEmitOnOpen = new AtomicBoolean(false);
    private Object mSendTextLock = new Object();
    private Object mSendDataLock = new Object();

    public boolean init(PeerConnection peerConnection, String str, int i10, HmTransDevice.Observer observer) {
        DataChannel.Init init = new DataChannel.Init();
        this.mReliableDCName = str;
        this.mObserver = observer;
        DataChannel dataChannelCreateDataChannel = peerConnection.createDataChannel(str, init);
        this.mReliableDC = dataChannelCreateDataChannel;
        if (dataChannelCreateDataChannel == null) {
            Logging.e(TAG, "Failed to create reliable data channel.");
            return false;
        }
        dataChannelCreateDataChannel.registerObserver(this);
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_TRANS_DEVICE_CREATED, "name:" + this.mReliableDCName);
        Logging.d(TAG, "Initialize transport device, name:" + str + ", flag:" + i10);
        if (this.mReliableDC.state() == DataChannel.State.OPEN && this.mObserver != null && this.mEmitOnOpen.compareAndSet(false, true)) {
            this.mObserver.onOpen();
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_TRANS_DEVICE_ON_OPEN, "name:" + this.mReliableDCName);
            Logging.d(TAG, "onOpen1");
        }
        return true;
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public void onBufferedAmountChange(long j10) {
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public void onMessage(DataChannel.Buffer buffer) {
        ByteBuffer byteBuffer = buffer.data;
        if (byteBuffer == null || byteBuffer.capacity() == 0) {
            Logging.e(TAG, "DataChannel data is null!");
            return;
        }
        byte[] bArr = new byte[buffer.data.capacity()];
        buffer.data.get(bArr);
        HmTransDevice.Observer observer = this.mObserver;
        if (observer != null) {
            observer.onMessage(bArr, buffer.binary);
        }
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public void onStateChange() {
        try {
            DataChannel.State state = this.mReliableDC.state();
            Logging.d(TAG, "Data channel " + this.mReliableDCName + " state changed: " + state);
            if (state == DataChannel.State.OPEN && this.mObserver != null && this.mEmitOnOpen.compareAndSet(false, true)) {
                this.mObserver.onOpen();
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_TRANS_DEVICE_ON_OPEN, "name:" + this.mReliableDCName);
                Logging.d(TAG, "onOpen2");
                return;
            }
            if (state == DataChannel.State.CLOSED || state == DataChannel.State.CLOSING) {
                HmTransDevice.Observer observer = this.mObserver;
                if (observer != null) {
                    observer.onClose();
                }
                this.mReliableDC = null;
                this.mObserver = null;
                this.mEmitOnOpen.set(false);
            }
        } catch (Exception e10) {
            this.mReliableDC = null;
            this.mObserver = null;
            this.mEmitOnOpen.set(false);
            Logging.d(TAG, "Data channel " + this.mReliableDCName + " state exception: " + e10);
        }
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public /* synthetic */ void onWritableState(boolean z10) {
        org.hmwebrtc.g.a(this, z10);
    }

    public void release() {
        try {
            DataChannel dataChannel = this.mReliableDC;
            if (dataChannel != null) {
                dataChannel.unregisterObserver();
                this.mReliableDC.dispose();
            }
            Logging.d(TAG, "Release transport device, name:" + this.mReliableDCName);
        } catch (Exception e10) {
            Logging.e(TAG, "Release transport device, name:" + this.mReliableDCName, e10);
        }
        this.mReliableDC = null;
        this.mObserver = null;
    }

    @Override // org.webrtc.haima.HmTransDevice
    public boolean sendData(byte[] bArr, int i10) {
        boolean zSend;
        if (bArr == null || bArr.length == 0) {
            Logging.e(TAG, "The sent buffer is null.");
            return false;
        }
        try {
            int length = bArr.length + 2;
            synchronized (this.mSendDataLock) {
                byte[] bArr2 = this.mSendDataBuf;
                if (bArr2 == null || bArr2.length < length) {
                    this.mSendDataBuf = new byte[length];
                }
                byte[] bArr3 = this.mSendDataBuf;
                bArr3[0] = 1;
                bArr3[1] = 0;
                System.arraycopy(bArr, 0, bArr3, 2, bArr.length);
                DataChannel dataChannel = this.mReliableDC;
                zSend = dataChannel != null ? dataChannel.send(new DataChannel.Buffer(ByteBuffer.wrap(this.mSendDataBuf, 0, length), true)) : false;
            }
            if (zSend && !this.mSentFirstFrame) {
                this.mSentFirstFrame = true;
                Logging.d(TAG, "Sent the first data message.");
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_TRANS_DEVICE_SENT_FIRST_FRAME);
            }
            return zSend;
        } catch (Exception e10) {
            Logging.e(TAG, "Failed to send message.", e10);
            return false;
        }
    }

    @Override // org.webrtc.haima.HmTransDevice
    public boolean sendText(String str, int i10) {
        boolean zSend;
        if (TextUtils.isEmpty(str)) {
            Logging.e(TAG, "The sent message is null.");
            return false;
        }
        try {
            byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
            int length = bytes.length + 2;
            synchronized (this.mSendTextLock) {
                byte[] bArr = this.mSendTextBuf;
                if (bArr == null || bArr.length < length) {
                    this.mSendTextBuf = new byte[length];
                }
                byte[] bArr2 = this.mSendTextBuf;
                bArr2[0] = 1;
                bArr2[1] = 0;
                System.arraycopy(bytes, 0, bArr2, 2, bytes.length);
                DataChannel dataChannel = this.mReliableDC;
                zSend = dataChannel != null ? dataChannel.send(new DataChannel.Buffer(ByteBuffer.wrap(this.mSendTextBuf, 0, length), true)) : false;
            }
            if (zSend && !this.mSentFirstFrame) {
                this.mSentFirstFrame = true;
                Logging.d(TAG, "Sent the first text message.");
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_TRANS_DEVICE_SENT_FIRST_FRAME);
            }
            return zSend;
        } catch (Exception e10) {
            Logging.e(TAG, "Failed to send message.", e10);
            return false;
        }
    }
}
