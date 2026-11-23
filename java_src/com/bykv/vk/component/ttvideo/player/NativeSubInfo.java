package com.bykv.vk.component.ttvideo.player;

import android.util.AndroidRuntimeException;

/* JADX INFO: loaded from: classes9.dex */
@JNINamespace("PLAYER")
public class NativeSubInfo extends SubInfo {
    @CalledByNative
    private static boolean isNativeSubInfo(SubInfo subInfo) {
        return subInfo instanceof NativeSubInfo;
    }

    @Override // com.bykv.vk.component.ttvideo.player.SubInfo
    protected void onSubInfoCallback(int i10, int i11, String str) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.bykv.vk.component.ttvideo.player.SubInfo
    protected void onSubInfoCallback2(int i10, String str) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.bykv.vk.component.ttvideo.player.SubInfo
    protected void onSubLoadFinished(int i10) {
        throw new AndroidRuntimeException("Should not be here");
    }

    @Override // com.bykv.vk.component.ttvideo.player.SubInfo
    protected void onSubSwitchCompleted(int i10, int i11) {
        throw new AndroidRuntimeException("Should not be here");
    }
}
