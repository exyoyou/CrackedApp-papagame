package com.bykv.vk.component.ttvideo.player;

import android.util.AndroidRuntimeException;

/* JADX INFO: loaded from: classes9.dex */
@JNINamespace("PLAYER")
public class NativeMediaTransport extends MediaTransport {
    @CalledByNative
    private static boolean isNativeMediaTransport(MediaTransport mediaTransport) {
        return mediaTransport instanceof NativeMediaTransport;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MediaTransport
    protected void sendPacket(MediaTransport.MediaPacket mediaPacket) {
        throw new AndroidRuntimeException("Should not be here");
    }
}
