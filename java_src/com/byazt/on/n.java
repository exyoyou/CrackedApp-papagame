package com.byazt.on;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_HARDWARE_DECODE, 46})
public class n implements a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f18163c;

    public n(a aVar) {
        this.f18163c = aVar;
    }

    @Override // com.byazt.on.a
    public long c(long j10) throws IOException {
        return this.f18163c.c(j10);
    }

    @Override // com.byazt.on.a
    public byte c_() throws IOException {
        return this.f18163c.c_();
    }

    @Override // com.byazt.on.a
    public void d_() throws IOException {
        this.f18163c.d_();
    }

    @Override // com.byazt.on.a
    public InputStream n() throws IOException {
        d_();
        return this.f18163c.n();
    }

    @Override // com.byazt.on.a
    public int uj() throws IOException {
        return this.f18163c.uj();
    }

    @Override // com.byazt.on.a
    public int ve() {
        return this.f18163c.ve();
    }

    @Override // com.byazt.on.a
    public int c(byte[] bArr, int i10, int i11) throws IOException {
        return this.f18163c.c(bArr, i10, i11);
    }
}
