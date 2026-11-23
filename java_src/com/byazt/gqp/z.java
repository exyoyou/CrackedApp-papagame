package com.byazt.gqp;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 133})
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f14722a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f14723c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte[] f14724n;
    public String tt;
    public String uj;
    public da ve;

    public enum c {
        STRING_TYPE,
        BYTE_ARRAY_TYPE,
        FILE_TYPE
    }

    public z() {
    }

    public String c() {
        return this.f14723c;
    }

    public String tt() {
        return this.tt;
    }

    public z(da daVar, String str, c cVar) {
        this.ve = daVar;
        this.uj = str;
        this.f14722a = cVar;
    }

    public static z c(da daVar, String str) {
        return new z(daVar, str, c.STRING_TYPE);
    }

    public static z c(da daVar, byte[] bArr) {
        return new z(daVar, bArr, c.BYTE_ARRAY_TYPE);
    }

    public static z c(da daVar, byte[] bArr, String str, String str2) {
        return new z(daVar, bArr, str, str2, c.FILE_TYPE);
    }

    public z(da daVar, byte[] bArr, String str, String str2, c cVar) {
        this.ve = daVar;
        this.f14724n = bArr;
        this.tt = str;
        this.f14723c = str2;
        this.f14722a = cVar;
    }

    public z(da daVar, byte[] bArr, c cVar) {
        this.ve = daVar;
        this.f14724n = bArr;
        this.f14722a = cVar;
    }
}
