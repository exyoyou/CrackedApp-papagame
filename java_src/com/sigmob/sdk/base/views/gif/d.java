package com.sigmob.sdk.base.views.gif;

import com.czhj.sdk.logger.SigmobLog;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80071a = "GifHeaderParser";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f80072b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f80073c = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f80074d = 256;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f80075e = new byte[256];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f80076f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f80077g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ByteBuffer f80078h;

    d() {
    }

    private void b(int maxFrames) {
        boolean z10 = false;
        while (!z10 && !d() && this.f80077g.f80061d <= maxFrames) {
            int iE = e();
            if (iE == 33) {
                int iE2 = e();
                if (iE2 != 1) {
                    if (iE2 == 249) {
                        this.f80077g.f80060c = new b();
                        i();
                    } else if (iE2 != 254 && iE2 == 255) {
                        g();
                        String str = "";
                        for (int i10 = 0; i10 < 11; i10++) {
                            str = str + ((char) this.f80075e[i10]);
                        }
                        if (str.equals("NETSCAPE2.0")) {
                            l();
                        }
                    }
                }
                o();
            } else if (iE == 44) {
                c cVar = this.f80077g;
                if (cVar.f80060c == null) {
                    cVar.f80060c = new b();
                }
                f();
            } else if (iE != 59) {
                this.f80077g.f80069l = 1;
            } else {
                z10 = true;
            }
        }
    }

    private boolean d() {
        return this.f80077g.f80069l != 0;
    }

    private int e() {
        try {
            return this.f80078h.get() & 255;
        } catch (Exception unused) {
            this.f80077g.f80069l = 1;
            return 0;
        }
    }

    private void f() {
        this.f80077g.f80060c.f80051e = m();
        this.f80077g.f80060c.f80052f = m();
        this.f80077g.f80060c.f80053g = m();
        this.f80077g.f80060c.f80054h = m();
        int iE = e();
        boolean z10 = (iE & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (iE & 7) + 1);
        b bVar = this.f80077g.f80060c;
        bVar.f80050d = (iE & 64) != 0;
        if (z10) {
            bVar.f80055i = a(iPow);
        } else {
            bVar.f80055i = null;
        }
        this.f80077g.f80060c.f80047a = this.f80078h.position();
        p();
        if (d()) {
            return;
        }
        c cVar = this.f80077g;
        cVar.f80061d++;
        cVar.f80062e.add(cVar.f80060c);
    }

    private int g() {
        int iE = e();
        this.f80076f = iE;
        int i10 = 0;
        if (iE > 0) {
            while (true) {
                try {
                    int i11 = this.f80076f;
                    if (i10 >= i11) {
                        break;
                    }
                    int i12 = i11 - i10;
                    this.f80078h.get(this.f80075e, i10, i12);
                    i10 += i12;
                } catch (Exception unused) {
                    this.f80077g.f80069l = 1;
                }
            }
        }
        return i10;
    }

    private void h() {
        b(Integer.MAX_VALUE);
    }

    private void i() {
        e();
        int iE = e();
        b bVar = this.f80077g.f80060c;
        int i10 = (iE & 28) >> 2;
        bVar.f80049c = i10;
        if (i10 == 0) {
            bVar.f80049c = 1;
        }
        bVar.f80057k = (iE & 1) != 0;
        int iM = m();
        if (iM < 2) {
            iM = 10;
        }
        b bVar2 = this.f80077g.f80060c;
        bVar2.f80048b = iM * 10;
        bVar2.f80056j = e();
        e();
    }

    private void j() {
        String str = "";
        for (int i10 = 0; i10 < 6; i10++) {
            str = str + ((char) e());
        }
        if (!str.startsWith("GIF")) {
            this.f80077g.f80069l = 1;
            return;
        }
        k();
        if (!this.f80077g.f80064g || d()) {
            return;
        }
        c cVar = this.f80077g;
        cVar.f80063f = a(cVar.f80065h);
        c cVar2 = this.f80077g;
        cVar2.f80058a = cVar2.f80063f[cVar2.f80059b];
    }

    private void k() {
        this.f80077g.f80070m = m();
        this.f80077g.f80066i = m();
        int iE = e();
        c cVar = this.f80077g;
        cVar.f80064g = (iE & 128) != 0;
        cVar.f80065h = 2 << (iE & 7);
        cVar.f80059b = e();
        this.f80077g.f80068k = e();
    }

    private void l() {
        do {
            g();
            byte[] bArr = this.f80075e;
            if (bArr[0] == 1) {
                int i10 = bArr[1] & 255;
                int i11 = bArr[2] & 255;
                c cVar = this.f80077g;
                int i12 = (i11 << 8) | i10;
                cVar.f80067j = i12;
                if (i12 == 0) {
                    cVar.f80067j = -1;
                }
            }
            if (this.f80076f <= 0) {
                return;
            }
        } while (!d());
    }

    private int m() {
        return this.f80078h.getShort();
    }

    private void n() {
        this.f80078h = null;
        Arrays.fill(this.f80075e, (byte) 0);
        this.f80077g = new c();
        this.f80076f = 0;
    }

    private void o() {
        int iE;
        do {
            try {
                iE = e();
                ByteBuffer byteBuffer = this.f80078h;
                byteBuffer.position(byteBuffer.position() + iE);
            } catch (IllegalArgumentException unused) {
                return;
            }
        } while (iE > 0);
    }

    private void p() {
        e();
        o();
    }

    public d a(ByteBuffer data) {
        n();
        ByteBuffer byteBufferAsReadOnlyBuffer = data.asReadOnlyBuffer();
        this.f80078h = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.f80078h.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    c c() {
        if (this.f80078h == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (d()) {
            return this.f80077g;
        }
        j();
        if (!d()) {
            h();
            c cVar = this.f80077g;
            if (cVar.f80061d < 0) {
                cVar.f80069l = 1;
            }
        }
        return this.f80077g;
    }

    public d a(byte[] data) {
        if (data != null) {
            a(ByteBuffer.wrap(data));
        } else {
            this.f80078h = null;
            this.f80077g.f80069l = 2;
        }
        return this;
    }

    public boolean b() {
        j();
        if (!d()) {
            b(2);
        }
        return this.f80077g.f80061d > 1;
    }

    public void a() {
        this.f80078h = null;
        this.f80077g = null;
    }

    private int[] a(int ncolors) {
        byte[] bArr = new byte[ncolors * 3];
        int[] iArr = null;
        try {
            this.f80078h.get(bArr);
            iArr = new int[256];
            int i10 = 0;
            int i11 = 0;
            while (i10 < ncolors) {
                int i12 = i11 + 1;
                int i13 = i12 + 1;
                int i14 = i13 + 1;
                int i15 = i10 + 1;
                iArr[i10] = ((bArr[i11] & 255) << 16) | (-16777216) | ((bArr[i12] & 255) << 8) | (bArr[i13] & 255);
                i11 = i14;
                i10 = i15;
            }
        } catch (BufferUnderflowException e10) {
            SigmobLog.d("Format Error Reading Color Table", e10);
            this.f80077g.f80069l = 1;
        }
        return iArr;
    }
}
