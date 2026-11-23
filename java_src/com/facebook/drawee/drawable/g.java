package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class g extends a {

    @VisibleForTesting
    public static final int A = 1;

    @VisibleForTesting
    public static final int B = 2;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @VisibleForTesting
    public static final int f27183z = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Drawable[] f27184j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f27185k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f27186l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f27187m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @VisibleForTesting
    int f27188n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    int f27189o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @VisibleForTesting
    long f27190p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @VisibleForTesting
    int[] f27191q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @VisibleForTesting
    int[] f27192r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @VisibleForTesting
    int f27193s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @VisibleForTesting
    boolean[] f27194t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @VisibleForTesting
    int f27195u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private b4.i f27196v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f27197w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f27198x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f27199y;

    public g(Drawable[] layers) {
        this(layers, false, -1);
    }

    private void A() {
        if (this.f27198x && this.f27188n == 2 && this.f27194t[this.f27187m]) {
            b4.i iVar = this.f27196v;
            if (iVar != null) {
                iVar.c();
            }
            this.f27198x = false;
        }
    }

    private void C() {
        this.f27188n = 2;
        Arrays.fill(this.f27191q, this.f27186l);
        this.f27191q[0] = 255;
        Arrays.fill(this.f27192r, this.f27186l);
        this.f27192r[0] = 255;
        Arrays.fill(this.f27194t, this.f27185k);
        this.f27194t[0] = true;
    }

    private boolean H(float ratio) {
        boolean z10 = true;
        for (int i10 = 0; i10 < this.f27184j.length; i10++) {
            boolean z11 = this.f27194t[i10];
            int i11 = z11 ? 1 : -1;
            int[] iArr = this.f27192r;
            int i12 = (int) (this.f27191q[i10] + (i11 * 255 * ratio));
            iArr[i10] = i12;
            if (i12 < 0) {
                iArr[i10] = 0;
            }
            if (iArr[i10] > 255) {
                iArr[i10] = 255;
            }
            if (z11 && iArr[i10] < 255) {
                z10 = false;
            }
            if (!z11 && iArr[i10] > 0) {
                z10 = false;
            }
        }
        return z10;
    }

    private void h(Canvas canvas, Drawable drawable, int alpha) {
        if (drawable == null || alpha <= 0) {
            return;
        }
        this.f27195u++;
        if (this.f27199y) {
            drawable.mutate();
        }
        drawable.setAlpha(alpha);
        this.f27195u--;
        drawable.draw(canvas);
    }

    private void y() {
        if (this.f27197w) {
            this.f27197w = false;
            b4.i iVar = this.f27196v;
            if (iVar != null) {
                iVar.a();
            }
        }
    }

    private void z() {
        int i10;
        if (!this.f27197w && (i10 = this.f27187m) >= 0) {
            boolean[] zArr = this.f27194t;
            if (i10 < zArr.length && zArr[i10]) {
                this.f27197w = true;
                b4.i iVar = this.f27196v;
                if (iVar != null) {
                    iVar.b();
                }
            }
        }
    }

    public void B() {
        C();
        invalidateSelf();
    }

    public void D(boolean mutateDrawables) {
        this.f27199y = mutateDrawables;
    }

    public void E(@Nullable b4.i onFadeListener) {
        this.f27196v = onFadeListener;
    }

    public void F(int durationMs) {
        this.f27189o = durationMs;
        if (this.f27188n == 1) {
            this.f27188n = 0;
        }
    }

    public void G(int index) {
        this.f27194t[index] = true;
        this.f27192r[index] = 255;
        if (index == this.f27187m) {
            this.f27198x = true;
        }
        invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0056 A[LOOP:0: B:25:0x0051->B:27:0x0056, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x0074  */
    /* JADX WARN: Code duplicated, block: B:30:0x007b  */
    /* JADX WARN: Code duplicated, block: B:32:0x0072 A[EDGE_INSN: B:32:0x0072->B:28:0x0072 BREAK  A[LOOP:0: B:25:0x0051->B:27:0x0056], SYNTHETIC] */
    @Override // com.facebook.drawee.drawable.a, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean zH;
        Drawable[] drawableArr;
        int i10 = this.f27188n;
        int i11 = 0;
        boolean z10 = true;
        if (i10 != 0) {
            if (i10 == 1) {
                com.facebook.common.internal.i.o(this.f27189o > 0);
                zH = H((s() - this.f27190p) / this.f27189o);
                this.f27188n = zH ? 2 : 1;
            }
            while (true) {
                drawableArr = this.f27184j;
                if (i11 < drawableArr.length) {
                    break;
                }
                h(canvas, drawableArr[i11], (int) Math.ceil(((double) (this.f27192r[i11] * this.f27193s)) / 255.0d));
                i11++;
            }
            if (z10) {
                invalidateSelf();
            } else {
                y();
                A();
            }
        }
        System.arraycopy(this.f27192r, 0, this.f27191q, 0, this.f27184j.length);
        this.f27190p = s();
        zH = H(this.f27189o == 0 ? 1.0f : 0.0f);
        z();
        this.f27188n = zH ? 2 : 1;
        z10 = zH;
        while (true) {
            drawableArr = this.f27184j;
            if (i11 < drawableArr.length) {
                break;
                break;
            } else {
                h(canvas, drawableArr[i11], (int) Math.ceil(((double) (this.f27192r[i11] * this.f27193s)) / 255.0d));
                i11++;
            }
        }
        if (z10) {
            invalidateSelf();
        } else {
            y();
            A();
        }
    }

    public void g() {
        this.f27195u++;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f27193s;
    }

    public void i() {
        this.f27195u--;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f27195u == 0) {
            super.invalidateSelf();
        }
    }

    public void j() {
        this.f27188n = 0;
        Arrays.fill(this.f27194t, true);
        invalidateSelf();
    }

    public void k(int index) {
        this.f27188n = 0;
        this.f27194t[index] = true;
        invalidateSelf();
    }

    public void m() {
        this.f27188n = 0;
        Arrays.fill(this.f27194t, false);
        invalidateSelf();
    }

    public void n(int index) {
        this.f27188n = 0;
        this.f27194t[index] = false;
        invalidateSelf();
    }

    public void p(int index) {
        this.f27188n = 0;
        Arrays.fill(this.f27194t, false);
        this.f27194t[index] = true;
        invalidateSelf();
    }

    public void q(int index) {
        this.f27188n = 0;
        int i10 = index + 1;
        Arrays.fill(this.f27194t, 0, i10, true);
        Arrays.fill(this.f27194t, i10, this.f27184j.length, false);
        invalidateSelf();
    }

    public void r() {
        this.f27188n = 2;
        for (int i10 = 0; i10 < this.f27184j.length; i10++) {
            this.f27192r[i10] = this.f27194t[i10] ? 255 : 0;
        }
        invalidateSelf();
    }

    protected long s() {
        return SystemClock.uptimeMillis();
    }

    @Override // com.facebook.drawee.drawable.a, android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        if (this.f27193s != alpha) {
            this.f27193s = alpha;
            invalidateSelf();
        }
    }

    public int t() {
        return this.f27189o;
    }

    @VisibleForTesting
    public int u() {
        return this.f27188n;
    }

    public void v(int index) {
        this.f27194t[index] = false;
        this.f27192r[index] = 0;
        invalidateSelf();
    }

    public boolean w() {
        return this.f27185k;
    }

    public boolean x(int index) {
        return this.f27194t[index];
    }

    public g(Drawable[] layers, boolean allLayersVisible, int actualImageLayer) {
        super(layers);
        this.f27199y = true;
        com.facebook.common.internal.i.p(layers.length >= 1, "At least one layer required!");
        this.f27184j = layers;
        this.f27191q = new int[layers.length];
        this.f27192r = new int[layers.length];
        this.f27193s = 255;
        this.f27194t = new boolean[layers.length];
        this.f27195u = 0;
        this.f27185k = allLayersVisible;
        this.f27186l = allLayersVisible ? 255 : 0;
        this.f27187m = actualImageLayer;
        C();
    }
}
