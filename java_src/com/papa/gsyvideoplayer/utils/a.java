package com.papa.gsyvideoplayer.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f76903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f76904b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f76908f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected OutputStream f76912j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected Bitmap f76913k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected byte[] f76914l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected byte[] f76915m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected int f76916n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected byte[] f76917o;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f76905c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f76906d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f76907e = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f76909g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f76910h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected boolean f76911i = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean[] f76918p = new boolean[256];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected int f76919q = 7;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f76920r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected boolean f76921s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f76922t = true;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f76923u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected int f76924v = 10;

    public boolean a(Bitmap bitmap) {
        if (bitmap == null || !this.f76911i) {
            return false;
        }
        try {
            if (!this.f76923u) {
                m(bitmap.getWidth(), bitmap.getHeight());
            }
            this.f76913k = bitmap;
            f();
            b();
            if (this.f76922t) {
                r();
                t();
                if (this.f76909g >= 0) {
                    s();
                }
            }
            p();
            q();
            if (!this.f76922t) {
                t();
            }
            u();
            this.f76922t = false;
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    protected void b() {
        byte[] bArr = this.f76914l;
        int length = bArr.length;
        int i10 = length / 3;
        this.f76915m = new byte[i10];
        l lVar = new l(bArr, length, this.f76924v);
        this.f76917o = lVar.h();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            byte[] bArr2 = this.f76917o;
            if (i12 >= bArr2.length) {
                break;
            }
            byte b10 = bArr2[i12];
            int i13 = i12 + 2;
            bArr2[i12] = bArr2[i13];
            bArr2[i13] = b10;
            this.f76918p[i12 / 3] = false;
            i12 += 3;
        }
        int i14 = 0;
        while (i11 < i10) {
            byte[] bArr3 = this.f76914l;
            int i15 = i14 + 1;
            int i16 = i15 + 1;
            int iG = lVar.g(bArr3[i14] & 255, bArr3[i15] & 255, bArr3[i16] & 255);
            this.f76918p[iG] = true;
            this.f76915m[i11] = (byte) iG;
            i11++;
            i14 = i16 + 1;
        }
        this.f76914l = null;
        this.f76916n = 8;
        this.f76919q = 7;
        int i17 = this.f76907e;
        if (i17 != -1) {
            this.f76908f = c(i17);
        }
    }

    protected int c(int i10) {
        byte[] bArr = this.f76917o;
        if (bArr == null) {
            return -1;
        }
        int i11 = (i10 >> 16) & 255;
        int i12 = (i10 >> 8) & 255;
        int i13 = 0;
        int i14 = (i10 >> 0) & 255;
        int length = bArr.length;
        int i15 = 0;
        int i16 = 16777216;
        while (i13 < length) {
            byte[] bArr2 = this.f76917o;
            int i17 = i13 + 1;
            int i18 = i11 - (bArr2[i13] & 255);
            int i19 = i17 + 1;
            int i20 = i12 - (bArr2[i17] & 255);
            int i21 = i14 - (bArr2[i19] & 255);
            int i22 = (i18 * i18) + (i20 * i20) + (i21 * i21);
            int i23 = i19 / 3;
            if (this.f76918p[i23] && i22 < i16) {
                i16 = i22;
                i15 = i23;
            }
            i13 = i19 + 1;
        }
        return i15;
    }

    public boolean d() {
        boolean z10;
        if (!this.f76911i) {
            return false;
        }
        this.f76911i = false;
        try {
            this.f76912j.write(59);
            this.f76912j.flush();
            if (this.f76921s) {
                this.f76912j.close();
            }
            z10 = true;
        } catch (IOException unused) {
            z10 = false;
        }
        this.f76908f = 0;
        this.f76912j = null;
        this.f76913k = null;
        this.f76914l = null;
        this.f76915m = null;
        this.f76917o = null;
        this.f76921s = false;
        this.f76922t = true;
        return z10;
    }

    protected int[] e(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return iArr;
    }

    protected void f() {
        int width = this.f76913k.getWidth();
        int height = this.f76913k.getHeight();
        int i10 = this.f76903a;
        if (width != i10 || height != this.f76904b) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, this.f76904b, Bitmap.Config.RGB_565);
            new Canvas(bitmapCreateBitmap).drawBitmap(this.f76913k, 0.0f, 0.0f, new Paint());
            this.f76913k = bitmapCreateBitmap;
        }
        int[] iArrE = e(this.f76913k);
        this.f76914l = new byte[iArrE.length * 3];
        for (int i11 = 0; i11 < iArrE.length; i11++) {
            int i12 = iArrE[i11];
            int i13 = i11 * 3;
            byte[] bArr = this.f76914l;
            int i14 = i13 + 1;
            bArr[i13] = (byte) ((i12 >> 0) & 255);
            bArr[i14] = (byte) ((i12 >> 8) & 255);
            bArr[i14 + 1] = (byte) ((i12 >> 16) & 255);
        }
    }

    public void g(int i10) {
        this.f76910h = i10 / 10;
    }

    public void h(int i10) {
        if (i10 >= 0) {
            this.f76920r = i10;
        }
    }

    public void i(float f10) {
        if (f10 != 0.0f) {
            this.f76910h = (int) (100.0f / f10);
        }
    }

    public void j(int i10, int i11) {
        this.f76905c = i10;
        this.f76906d = i11;
    }

    public void k(int i10) {
        if (i10 < 1) {
            i10 = 1;
        }
        this.f76924v = i10;
    }

    public void l(int i10) {
        if (i10 >= 0) {
            this.f76909g = i10;
        }
    }

    public void m(int i10, int i11) {
        this.f76903a = i10;
        this.f76904b = i11;
        if (i10 < 1) {
            this.f76903a = 320;
        }
        if (i11 < 1) {
            this.f76904b = MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
        }
        this.f76923u = true;
    }

    public void n(int i10) {
        this.f76907e = i10;
    }

    public boolean o(OutputStream outputStream) {
        boolean z10 = false;
        if (outputStream == null) {
            return false;
        }
        this.f76921s = false;
        this.f76912j = outputStream;
        try {
            w("GIF89a");
            z10 = true;
        } catch (IOException unused) {
        }
        this.f76911i = z10;
        return z10;
    }

    protected void p() throws IOException {
        int i10;
        int i11;
        this.f76912j.write(33);
        this.f76912j.write(249);
        this.f76912j.write(4);
        if (this.f76907e == -1) {
            i10 = 0;
            i11 = 0;
        } else {
            i10 = 1;
            i11 = 2;
        }
        int i12 = this.f76920r;
        if (i12 >= 0) {
            i11 = i12 & 7;
        }
        this.f76912j.write(i10 | (i11 << 2) | 0 | 0);
        v(this.f76910h);
        this.f76912j.write(this.f76908f);
        this.f76912j.write(0);
    }

    protected void q() throws IOException {
        this.f76912j.write(44);
        v(this.f76905c);
        v(this.f76906d);
        v(this.f76903a);
        v(this.f76904b);
        if (this.f76922t) {
            this.f76912j.write(0);
        } else {
            this.f76912j.write(this.f76919q | 128);
        }
    }

    protected void r() throws IOException {
        v(this.f76903a);
        v(this.f76904b);
        this.f76912j.write(this.f76919q | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
        this.f76912j.write(0);
        this.f76912j.write(0);
    }

    protected void s() throws IOException {
        this.f76912j.write(33);
        this.f76912j.write(255);
        this.f76912j.write(11);
        w("NETSCAPE2.0");
        this.f76912j.write(3);
        this.f76912j.write(1);
        v(this.f76909g);
        this.f76912j.write(0);
    }

    protected void t() throws IOException {
        OutputStream outputStream = this.f76912j;
        byte[] bArr = this.f76917o;
        outputStream.write(bArr, 0, bArr.length);
        int length = 768 - this.f76917o.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f76912j.write(0);
        }
    }

    protected void u() throws IOException {
        new h(this.f76903a, this.f76904b, this.f76915m, this.f76916n).f(this.f76912j);
    }

    protected void v(int i10) throws IOException {
        this.f76912j.write(i10 & 255);
        this.f76912j.write((i10 >> 8) & 255);
    }

    protected void w(String str) throws IOException {
        for (int i10 = 0; i10 < str.length(); i10++) {
            this.f76912j.write((byte) str.charAt(i10));
        }
    }
}
