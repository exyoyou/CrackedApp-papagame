package org.webrtc.haima;

import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.hmwebrtc.DataChannel;
import org.hmwebrtc.Logging;
import org.hmwebrtc.RtcCountlyConstants;
import org.json.JSONObject;
import org.webrtc.haima.countly.RtcCountlyUtil;
import org.webrtc.haima.util.RtcConstants;

/* JADX INFO: loaded from: classes10.dex */
public class HmDCDevice implements DataChannel.Observer {
    private static final String BITRATE = "bitrate";
    protected static final String CLOSE = "close";
    protected static final String DISPOSE = "dispose";
    private static final String MTU = "mtu";
    protected static final String OPEN = "open";
    protected static final String TAG = "HmDCDevice";
    protected boolean isRecvdFirstBinary;
    protected boolean isRecvdFirstText;
    protected boolean isSentFirstBinary;
    protected boolean isSentFirstText;
    protected int mBitrate;
    protected DataChannel mDataChannel;
    protected String mDeviceName;
    protected int mMtu;
    private Thread mSender;
    protected long mTotalBytesFromRom;
    protected long mTotalBytesToRom;
    protected BlockingDeque<DataToROM> mSendDataQ = new LinkedBlockingDeque();
    private AtomicBoolean started = new AtomicBoolean(false);
    private AtomicBoolean isDisposed = new AtomicBoolean(false);
    private final Runnable mSenderRunnable = new Runnable() { // from class: org.webrtc.haima.HmDCDevice.1
        @Override // java.lang.Runnable
        public void run() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            while (true) {
                try {
                    DataToROM dataToROMPoll = HmDCDevice.this.mSendDataQ.poll(1L, TimeUnit.SECONDS);
                    if (dataToROMPoll != null) {
                        if (dataToROMPoll.isBinary) {
                            if (dataToROMPoll.addHeader) {
                                byte[] bArrC = a.c(dataToROMPoll.length);
                                byte[] bArr = new byte[dataToROMPoll.length + 4];
                                System.arraycopy(bArrC, 0, bArr, 0, 4);
                                System.arraycopy(dataToROMPoll.byteBuffer, 0, bArr, 4, dataToROMPoll.length);
                                HmDCDevice.this.mDataChannel.send(new DataChannel.Buffer(ByteBuffer.wrap(bArr), true));
                            } else {
                                int i10 = dataToROMPoll.length;
                                byte[] bArr2 = new byte[i10];
                                System.arraycopy(dataToROMPoll.byteBuffer, 0, bArr2, 0, i10);
                                HmDCDevice.this.mDataChannel.send(new DataChannel.Buffer(ByteBuffer.wrap(bArr2), true));
                            }
                            try {
                                Thread.sleep(4L);
                            } catch (Exception unused) {
                            }
                            HmDCDevice hmDCDevice = HmDCDevice.this;
                            if (!hmDCDevice.isSentFirstBinary) {
                                hmDCDevice.isSentFirstBinary = true;
                                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DC_SEND_FIRST_BINARY, HmDCDevice.this.mDeviceName + "|" + dataToROMPoll.length);
                            }
                        } else {
                            if (RtcConstants.IS_DEBUG) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("Data2ROM: ");
                                sb2.append(dataToROMPoll.isBinary);
                                sb2.append(", length: ");
                                sb2.append(dataToROMPoll.length);
                                sb2.append(", content: ");
                                sb2.append(new String(dataToROMPoll.byteBuffer));
                                sb2.append(", dc connect state: ");
                                sb2.append(HmDCDevice.this.mDataChannel.state());
                            }
                            HmDCDevice.this.mDataChannel.send(new DataChannel.Buffer(ByteBuffer.wrap(dataToROMPoll.byteBuffer), false));
                            HmDCDevice hmDCDevice2 = HmDCDevice.this;
                            if (!hmDCDevice2.isSentFirstText) {
                                hmDCDevice2.isSentFirstText = true;
                                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DC_SEND_FIRST_TEXT, HmDCDevice.this.mDeviceName + "|" + new String(dataToROMPoll.byteBuffer, Charset.forName("UTF-8")));
                            }
                        }
                        HmDCDevice.this.mTotalBytesToRom += (long) dataToROMPoll.length;
                        if (System.currentTimeMillis() - jCurrentTimeMillis >= 5000) {
                            jCurrentTimeMillis = System.currentTimeMillis();
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("send data to rom, total: ");
                            sb3.append(HmDCDevice.this.mTotalBytesToRom);
                        }
                    } else if (HmDCDevice.this.isDisposed.get() || Thread.currentThread().isInterrupted()) {
                        break;
                    }
                } catch (Exception e10) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("poll data2Rom from queue error: ");
                    sb4.append(e10);
                    HmDataChannelManager.getInstance().destroyDCDevice(HmDCDevice.this.mDeviceName);
                    return;
                }
            }
            StringBuilder sb5 = new StringBuilder();
            sb5.append(HmDCDevice.this.mDeviceName);
            sb5.append(" is disposed, sender stop.");
        }
    };

    public HmDCDevice(DataChannel dataChannel) {
        this.mDataChannel = dataChannel;
        String strLabel = dataChannel.label();
        this.mDeviceName = strLabel;
        this.mMtu = 1200;
        this.mBitrate = 2400000;
        this.isSentFirstBinary = false;
        this.isSentFirstText = false;
        this.isRecvdFirstText = false;
        this.isRecvdFirstBinary = false;
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DC_DEVICE_CREATED, strLabel);
    }

    private void startSender() {
        if (this.started.getAndSet(true)) {
            return;
        }
        Thread thread = new Thread(this.mSenderRunnable);
        this.mSender = thread;
        thread.start();
    }

    public void dispose(boolean z10) {
        if (this.isDisposed.getAndSet(true)) {
            Logging.e(TAG, " DC device: " + this.mDeviceName + " already disposed.");
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(z10 ? "Close" : "Dispose");
        sb2.append(" DC device: ");
        sb2.append(this.mDeviceName);
        sb2.append(", recved bytes from rom:");
        sb2.append(this.mTotalBytesFromRom);
        sb2.append(", send bytes to rom: ");
        sb2.append(this.mTotalBytesToRom);
        Logging.e(TAG, sb2.toString());
        try {
            this.mSendDataQ.clear();
            this.started.set(false);
            this.mTotalBytesToRom = 0L;
            this.mTotalBytesFromRom = 0L;
            Thread thread = this.mSender;
            if (thread != null) {
                thread.interrupt();
            }
            if (z10) {
                this.mDataChannel.unregisterObserver();
                this.mDataChannel.dispose();
                Logging.e(TAG, "Destroy DC device: " + this.mDeviceName);
            }
        } catch (Exception unused) {
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DC_DESTROY, this.mDeviceName + "|" + this.mTotalBytesFromRom + "|" + this.mTotalBytesToRom);
    }

    protected JSONObject genSignalJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", "3.0.2.8.5396d74.12041040");
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    protected boolean onBinary(byte[] bArr) {
        if (!this.isRecvdFirstBinary) {
            this.isRecvdFirstBinary = true;
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DC_RECVED_FIRST_BINARY, this.mDeviceName);
        }
        return true;
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public void onBufferedAmountChange(long j10) {
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public void onMessage(DataChannel.Buffer buffer) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.mDeviceName);
        sb2.append(" recved data, lenth:");
        sb2.append(buffer.data.capacity());
        ByteBuffer byteBuffer = buffer.data;
        byte[] bArr = new byte[byteBuffer.capacity()];
        byteBuffer.get(bArr);
        this.mTotalBytesFromRom += (long) byteBuffer.capacity();
        if (buffer.binary) {
            onBinary(bArr);
            return;
        }
        String str = new String(bArr, Charset.forName("UTF-8"));
        onText(str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.mDeviceName);
        sb3.append(" recved data:");
        sb3.append(str);
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public void onStateChange() {
        try {
            DataChannel.State state = this.mDataChannel.state();
            if (state == DataChannel.State.CLOSED || state == DataChannel.State.CLOSING) {
                HmDataChannelManager.getInstance().destroyDCDevice(this.mDeviceName);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Data channel ");
            sb2.append(this.mDeviceName);
            sb2.append(" state changed: ");
            sb2.append(state);
        } catch (Exception e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Data channel ");
            sb3.append(this.mDeviceName);
            sb3.append(" state exception: ");
            sb3.append(e10);
        }
    }

    protected boolean onText(String str) {
        try {
            if (!this.isRecvdFirstText) {
                this.isRecvdFirstText = true;
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DC_RECVED_FIRST_TEXT, this.mDeviceName + "|" + str);
            }
            JSONObject jSONObject = new JSONObject(str);
            if (!"open".equals(jSONObject.optString(HmDataChannelManager.BEHAVIOR))) {
                return false;
            }
            this.mBitrate = jSONObject.optInt("bitrate", this.mBitrate);
            this.mMtu = jSONObject.optInt(MTU, this.mMtu);
            this.isDisposed.getAndSet(false);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // org.hmwebrtc.DataChannel.Observer
    public /* synthetic */ void onWritableState(boolean z10) {
        org.hmwebrtc.g.a(this, z10);
    }

    public boolean send(String str) {
        if (TextUtils.isEmpty(str)) {
            Logging.e(TAG, "The text what send over rtc data channel is null.");
            return false;
        }
        if (this.isDisposed.get()) {
            Logging.e(TAG, "Device is disposed.");
            return false;
        }
        startSender();
        byte[] bytes = str.getBytes();
        try {
            this.mSendDataQ.put(new DataToROM(bytes, bytes.length, false));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    static class DataToROM {
        boolean addHeader;
        byte[] byteBuffer;
        boolean isBinary;
        int length;

        public DataToROM(byte[] bArr, int i10, boolean z10) {
            this.byteBuffer = bArr;
            this.length = i10;
            this.isBinary = z10;
            this.addHeader = true;
        }

        public DataToROM(byte[] bArr, int i10, boolean z10, boolean z11) {
            this.byteBuffer = bArr;
            this.length = i10;
            this.isBinary = z10;
            this.addHeader = z11;
        }
    }

    public boolean send(byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            if (this.isDisposed.get()) {
                Logging.e(TAG, "Device is disposed.");
                return false;
            }
            startSender();
            try {
                this.mSendDataQ.put(new DataToROM(bArr, bArr.length, true));
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        Logging.e(TAG, "The byte buffer what send over rtc data channel is null.");
        return false;
    }

    public boolean send(byte[] bArr, boolean z10) {
        if (bArr != null && bArr.length > 0) {
            if (this.isDisposed.get()) {
                Logging.e(TAG, "Device is disposed.");
                return false;
            }
            startSender();
            try {
                this.mSendDataQ.put(new DataToROM(bArr, bArr.length, true, z10));
                return true;
            } catch (Exception e10) {
                Logging.e(TAG, "put data to mSendDataQ exception, msg:" + e10.toString());
                return false;
            }
        }
        Logging.e(TAG, "The byte buffer what send over rtc data channel is null.");
        return false;
    }
}
