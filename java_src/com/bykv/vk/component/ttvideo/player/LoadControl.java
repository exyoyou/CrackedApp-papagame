package com.bykv.vk.component.ttvideo.player;

/* JADX INFO: loaded from: classes9.dex */
@JNINamespace("PLAYER")
public abstract class LoadControl extends NativeObject {
    @CalledByNative
    protected abstract int onCodecStackSelected(int i10);

    @CalledByNative
    protected abstract int onFilterStackSelected(int i10);

    @CalledByNative
    protected abstract int onTrackSelected(int i10);

    @CalledByNative
    protected abstract boolean shouldStartPlayback(long j10, float f10, boolean z10);
}
