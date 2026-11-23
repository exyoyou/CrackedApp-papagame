package com.bykv.vk.component.ttvideo.player;

/* JADX INFO: loaded from: classes9.dex */
@JNINamespace("UTILS")
class AVClassLoad {
    AVClassLoad() {
    }

    @CalledByNative
    static Object getClassLoader() {
        return AVClassLoad.class.getClassLoader();
    }
}
