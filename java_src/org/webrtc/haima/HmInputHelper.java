package org.webrtc.haima;

import java.util.concurrent.ExecutorService;
import org.hmwebrtc.DataChannel;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
class HmInputHelper {
    public static final String SDP_ATTRIBUTE_NAME = "input";
    private static final String TAG = "input_chn";
    private long mFallbackMsgCount;
    private Object mLock = new Object();
    private HmRtcInputChannel mHmRtcInputChannel = null;
    private String mRemoteInputVersion = null;
    private long mMsgCount = 0;
    private long mMsgSuccessCount = 0;
    private long mMsgFailedCount = 0;
    private long mLastPrintLogTimeMs = System.currentTimeMillis();

    public HmInputHelper() {
        Logging.d(TAG, "HmInputHelper ctor");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: internalDeleteInputchannel, reason: merged with bridge method [inline-methods] */
    public boolean lambda$deleteInputchannel$2() {
        Logging.d(TAG, "internalDeleteInputchannel");
        try {
            synchronized (this.mLock) {
                HmRtcInputChannel hmRtcInputChannel = this.mHmRtcInputChannel;
                if (hmRtcInputChannel != null) {
                    hmRtcInputChannel.destroyInputChannel();
                    this.mHmRtcInputChannel.dispose();
                    this.mHmRtcInputChannel = null;
                    this.mRemoteInputVersion = null;
                }
            }
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: internalDestroyInputChannel, reason: merged with bridge method [inline-methods] */
    public void lambda$destroyInputChannel$4() {
        Logging.d(TAG, "internalDestroyInputChannel");
        HmRtcInputChannel hmRtcInputChannel = this.mHmRtcInputChannel;
        if (hmRtcInputChannel != null) {
            hmRtcInputChannel.destroyInputChannel();
        }
    }

    private String internalGetInputValidVersion() {
        Logging.d(TAG, "internalGetInputValidVersion");
        HmRtcInputChannel hmRtcInputChannel = this.mHmRtcInputChannel;
        if (hmRtcInputChannel != null) {
            return hmRtcInputChannel.GetLocalVersion();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: internalNewInputchannel, reason: merged with bridge method [inline-methods] */
    public boolean lambda$newInputchannel$0() {
        Logging.d(TAG, "internalNewInputchannel");
        String str = this.mRemoteInputVersion;
        if (str == null || str.length() == 0) {
            return false;
        }
        if (this.mHmRtcInputChannel != null) {
            lambda$deleteInputchannel$2();
        }
        HmRtcInputChannel hmRtcInputChannel = new HmRtcInputChannel();
        this.mHmRtcInputChannel = hmRtcInputChannel;
        hmRtcInputChannel.setRemoteVersion(this.mRemoteInputVersion);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: internalSetRemoteVersion, reason: merged with bridge method [inline-methods] */
    public void lambda$setRemoteVersion$1(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("internalSetRemoteVersion  version:");
        sb2.append(str == null ? "null" : str);
        Logging.d(TAG, sb2.toString());
        this.mRemoteInputVersion = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: internalTryCreateInputChannel, reason: merged with bridge method [inline-methods] */
    public void lambda$tryCreateInputChannel$3(DataChannel dataChannel) {
        Logging.d(TAG, "internalTryCreateInputChannel");
        HmRtcInputChannel hmRtcInputChannel = this.mHmRtcInputChannel;
        if (hmRtcInputChannel == null) {
            return;
        }
        if (dataChannel != null && hmRtcInputChannel.isInputChannelDataChannel(dataChannel)) {
            Logging.d(TAG, "internalTryCreateInputChannel set dc label:" + dataChannel.label());
            this.mHmRtcInputChannel.setDataChannel(dataChannel);
        }
        if (this.mHmRtcInputChannel.isCanCreateInputChannel()) {
            Logging.d(TAG, "internalTryCreateInputChannel createInputChannel");
            this.mHmRtcInputChannel.createInputChannel();
        }
    }

    public boolean deleteInputchannel(ExecutorService executorService) {
        if (executorService == null) {
            return lambda$deleteInputchannel$2();
        }
        executorService.execute(new Runnable() { // from class: org.webrtc.haima.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f96109b.lambda$deleteInputchannel$2();
            }
        });
        return true;
    }

    public void destroyInputChannel(ExecutorService executorService) {
        if (executorService != null) {
            executorService.execute(new Runnable() { // from class: org.webrtc.haima.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96097b.lambda$destroyInputChannel$4();
                }
            });
        } else {
            lambda$destroyInputChannel$4();
        }
    }

    public String getInputValidVersion(ExecutorService executorService) {
        return internalGetInputValidVersion();
    }

    public boolean isValidInputChannel() {
        boolean z10;
        synchronized (this.mLock) {
            HmRtcInputChannel hmRtcInputChannel = this.mHmRtcInputChannel;
            z10 = hmRtcInputChannel != null && hmRtcInputChannel.isValid();
        }
        return z10;
    }

    public boolean newInputchannel(ExecutorService executorService) {
        if (executorService == null) {
            return lambda$newInputchannel$0();
        }
        executorService.execute(new Runnable() { // from class: org.webrtc.haima.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f96093b.lambda$newInputchannel$0();
            }
        });
        return true;
    }

    public int sendToRemoteInput(ExecutorService executorService, int i10, byte[] bArr) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis >= this.mLastPrintLogTimeMs + 10000) {
                this.mLastPrintLogTimeMs = jCurrentTimeMillis;
                Logging.d(TAG, "sendToRemoteInput msg=" + this.mMsgCount + ",succ=" + this.mMsgSuccessCount + ",fail=" + this.mMsgFailedCount + ",fallbackMsg=" + this.mFallbackMsgCount);
            }
            this.mMsgCount++;
            synchronized (this.mLock) {
                HmRtcInputChannel hmRtcInputChannel = this.mHmRtcInputChannel;
                if (hmRtcInputChannel != null && hmRtcInputChannel.isValid()) {
                    boolean z10 = true;
                    boolean z11 = i10 == 1 || i10 == 3;
                    if (i10 != 1 && i10 != 2) {
                        z10 = false;
                    }
                    if (this.mHmRtcInputChannel.sendInput(z11, bArr, z10)) {
                        this.mMsgSuccessCount++;
                        return 0;
                    }
                    this.mMsgFailedCount++;
                }
                return -1;
            }
        } catch (Exception e10) {
            Logging.e(TAG, "sendToRemoteInput ex:" + e10.toString());
            return -1;
        }
    }

    public void setRemoteVersion(ExecutorService executorService, final String str) {
        if (executorService != null) {
            executorService.execute(new Runnable() { // from class: org.webrtc.haima.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96113b.lambda$setRemoteVersion$1(str);
                }
            });
        } else {
            lambda$setRemoteVersion$1(str);
        }
    }

    public void tryCreateInputChannel(ExecutorService executorService, final DataChannel dataChannel) {
        if (executorService != null) {
            executorService.execute(new Runnable() { // from class: org.webrtc.haima.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96104b.lambda$tryCreateInputChannel$3(dataChannel);
                }
            });
        } else {
            lambda$tryCreateInputChannel$3(dataChannel);
        }
    }
}
