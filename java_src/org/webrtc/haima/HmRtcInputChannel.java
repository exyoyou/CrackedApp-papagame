package org.webrtc.haima;

import org.hmwebrtc.DataChannel;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcInputChannel {
    private long nativeHandle = nativeCreate();

    private native long nativeCreate();

    private native boolean nativeCreateInputChannel(long j10);

    private native void nativeDestroyInputChannel(long j10);

    private native void nativeDispose(long j10);

    private native String nativeGetLocalVersion(long j10);

    private native boolean nativeIsCanCreateInputChannel(long j10);

    private native boolean nativeIsInputChannelDataChannel(long j10, DataChannel dataChannel);

    private native boolean nativeIsValid(long j10);

    private native boolean nativeSendInput(long j10, boolean z10, byte[] bArr, boolean z11);

    private native boolean nativeSetDataChannel(long j10, DataChannel dataChannel);

    private native void nativeSetRemoteVersion(long j10, String str);

    public String GetLocalVersion() {
        return nativeGetLocalVersion(this.nativeHandle);
    }

    public boolean createInputChannel() {
        return nativeCreateInputChannel(this.nativeHandle);
    }

    public void destroyInputChannel() {
        nativeDestroyInputChannel(this.nativeHandle);
    }

    public void dispose() {
        nativeDispose(this.nativeHandle);
    }

    public boolean isCanCreateInputChannel() {
        return nativeIsCanCreateInputChannel(this.nativeHandle);
    }

    public boolean isInputChannelDataChannel(DataChannel dataChannel) {
        return nativeIsInputChannelDataChannel(this.nativeHandle, dataChannel);
    }

    public boolean isValid() {
        return nativeIsValid(this.nativeHandle);
    }

    public boolean sendInput(boolean z10, byte[] bArr, boolean z11) {
        return nativeSendInput(this.nativeHandle, z10, bArr, z11);
    }

    public boolean setDataChannel(DataChannel dataChannel) {
        return nativeSetDataChannel(this.nativeHandle, dataChannel);
    }

    public void setRemoteVersion(String str) {
        nativeSetRemoteVersion(this.nativeHandle, str);
    }
}
