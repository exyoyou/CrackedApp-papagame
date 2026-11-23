package com.bykv.vk.component.ttvideo.player;

import android.annotation.TargetApi;
import com.byazt.nr.m;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
@Keep
@TargetApi(16)
public class AJMediaCodecFrame implements Cloneable {

    @Keep
    public ByteBuffer data;

    @Keep
    public int flags;

    @Keep
    public int index;

    @Keep
    public long pts = -269488145;

    @Keep
    public int size;

    @Keep
    public AJMediaCodecFrame() {
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AJMediaCodecFrame m20clone() {
        try {
            return (AJMediaCodecFrame) super.clone();
        } catch (Throwable th) {
            m.c(th);
            return null;
        }
    }
}
