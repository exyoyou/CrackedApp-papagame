package com.bykv.vk.component.ttvideo.player;

import android.util.AndroidRuntimeException;

/* JADX INFO: loaded from: classes9.dex */
@JNINamespace("PLAYER")
public class NativeLoadControl extends LoadControl {
    @CalledByNative
    private static boolean isNativeLoadControl(LoadControl loadControl) {
        return loadControl instanceof NativeLoadControl;
    }

    @Override // com.bykv.vk.component.ttvideo.player.LoadControl
    protected int onCodecStackSelected(int i10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.bykv.vk.component.ttvideo.player.LoadControl
    protected int onFilterStackSelected(int i10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.bykv.vk.component.ttvideo.player.LoadControl
    protected int onTrackSelected(int i10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.bykv.vk.component.ttvideo.player.LoadControl
    protected boolean shouldStartPlayback(long j10, float f10, boolean z10) {
        throw new AndroidRuntimeException("Should not be here");
    }
}
