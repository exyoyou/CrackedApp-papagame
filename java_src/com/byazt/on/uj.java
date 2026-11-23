package com.byazt.on;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.archives.tar.d;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_HARDWARE_DECODE, 15})
public class uj implements sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteBuffer f18164c;

    public uj() {
        ve(d.f78732b);
    }

    public void c(byte b10) {
        this.f18164c.put(b10);
    }

    public byte[] tt() {
        return this.f18164c.array();
    }

    public void uj(int i10) {
        this.f18164c.position(i10 + c());
    }

    public void ve(int i10) {
        ByteBuffer byteBuffer = this.f18164c;
        if (byteBuffer == null || i10 > byteBuffer.capacity()) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
            this.f18164c = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        }
        this.f18164c.clear();
    }

    public void c(byte[] bArr) {
        this.f18164c.put(bArr);
    }

    public int c() {
        return this.f18164c.position();
    }
}
