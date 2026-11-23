package com.bykv.vk.component.ttvideo.player;

/* JADX INFO: loaded from: classes9.dex */
@JNINamespace("PLAYER")
public class NativeObject {
    protected long mNativeObj = 0;

    @CalledByNative
    private long getNativeObj() {
        return this.mNativeObj;
    }

    private native void nativeRelease(long j10);

    protected void finalize() throws Throwable {
    }

    public synchronized void release() {
        long j10 = this.mNativeObj;
        if (j10 != 0) {
            nativeRelease(j10);
            this.mNativeObj = 0L;
        }
    }

    protected void setNativeObj(long j10) {
        this.mNativeObj = j10;
    }
}
