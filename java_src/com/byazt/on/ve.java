package com.byazt.on;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_HARDWARE_DECODE, 54})
public class ve implements a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteBuffer f18165c;

    public ve(ByteBuffer byteBuffer) {
        this.f18165c = byteBuffer;
        byteBuffer.position(0);
    }

    @Override // com.byazt.on.a
    public long c(long j10) throws IOException {
        ByteBuffer byteBuffer = this.f18165c;
        byteBuffer.position((int) (((long) byteBuffer.position()) + j10));
        return j10;
    }

    @Override // com.byazt.on.a
    public byte c_() throws IOException {
        return this.f18165c.get();
    }

    @Override // com.byazt.on.a
    public void d_() throws IOException {
        this.f18165c.position(0);
    }

    @Override // com.byazt.on.a
    public InputStream n() throws IOException {
        return new ByteArrayInputStream(this.f18165c.array());
    }

    @Override // com.byazt.on.a
    public int uj() throws IOException {
        return this.f18165c.limit() - this.f18165c.position();
    }

    @Override // com.byazt.on.a
    public int ve() {
        return this.f18165c.position();
    }

    @Override // com.byazt.on.a
    public int c(byte[] bArr, int i10, int i11) throws IOException {
        this.f18165c.get(bArr, i10, i11);
        return i11;
    }
}
