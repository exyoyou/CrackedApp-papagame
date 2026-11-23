package com.kwad.sdk.core.g;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import androidx.annotation.Nullable;
import com.kwad.sdk.components.DevelopMangerComponents;
import com.kwad.sdk.utils.bk;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    private static float aYd = 9.81f;
    private static double aYe = 0.05d;
    private float aYc;

    @Nullable
    private b aYf;

    @Nullable
    private a aYg;
    private boolean enable;
    private boolean bidirectionalSwitch = false;
    private volatile boolean aXN = true;
    private final bk.b aYa = new bk.b() { // from class: com.kwad.sdk.core.g.d.1
        @Override // com.kwad.sdk.utils.bk.b
        public final void onFailed() {
            if (d.this.aYf != null) {
                d.this.aYf.cj();
            }
        }
    };

    class a implements SensorEventListener {
        private Random aUi;
        private boolean aYj;
        private final float[] aYi = {0.0f, 0.0f, 9.8f};
        private final float[] aYk = {0.0f, 0.0f, 0.0f};
        boolean aXS = false;
        boolean aXT = false;
        boolean aXU = false;
        boolean aYl = false;
        boolean aYm = false;
        boolean aYn = false;
        private int aYo = 0;

        public a() {
            this.aYj = false;
            if (((DevelopMangerComponents) com.kwad.sdk.components.d.f(DevelopMangerComponents.class)) != null) {
                this.aYj = false;
            }
        }

        private void NN() {
            this.aXS = false;
            this.aXT = false;
            this.aXU = false;
            this.aYl = false;
            this.aYm = false;
            this.aYn = false;
        }

        private void NQ() {
            if (this.aUi == null) {
                this.aUi = new Random();
            }
            if (this.aUi.nextInt(100) == 1) {
                a(this.aYi);
            }
        }

        private void a(float[] fArr) {
            c(fArr);
            float f10 = fArr[0];
            boolean zD = true;
            float f11 = fArr[1];
            float f12 = fArr[2];
            double dAbs = Math.abs(Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12)));
            if (b(fArr)) {
                dAbs = Math.abs(dAbs - ((double) d.aYd));
            }
            if (d.this.bidirectionalSwitch) {
                dAbs = Math.max(Math.max(Math.abs(f10), Math.abs(f11)), Math.abs(f12));
                zD = d(fArr);
            }
            if (!d.this.aXN || !zD || dAbs < d.this.aYc || d.this.aYf == null) {
                return;
            }
            d.a(d.this, false);
            d.this.aYf.a(dAbs);
        }

        private static boolean b(float[] fArr) {
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            return Math.abs(Math.abs(Math.sqrt((double) (((f10 * f10) + (f11 * f11)) + (f12 * f12)))) - ((double) d.aYd)) <= d.aYe;
        }

        private void c(float[] fArr) {
            float[] fArr2 = this.aYk;
            float f10 = fArr2[0];
            float f11 = (f10 == 0.0f && fArr2[1] == 0.0f && fArr2[2] == 0.0f) ? 1.0f : 0.6f;
            float f12 = 1.0f - f11;
            fArr[0] = (fArr[0] * f11) + (f10 * f12);
            fArr[1] = (fArr[1] * f11) + (fArr2[1] * f12);
            fArr[2] = (f11 * fArr[2]) + (f12 * fArr2[2]);
            System.arraycopy(fArr, 0, fArr2, 0, 3);
        }

        private boolean d(float[] fArr) {
            float f10 = fArr[0];
            if (f10 > 0.0f && !this.aXS) {
                this.aXS = n(f10);
            } else if (f10 < 0.0f && !this.aYl) {
                this.aYl = n(f10);
            }
            float f11 = fArr[1];
            if (f11 > 0.0f && !this.aXT) {
                this.aXT = n(f11);
            } else if (f11 < 0.0f && !this.aYm) {
                this.aYm = n(f11);
            }
            float f12 = fArr[2];
            if (f12 > 0.0f && !this.aXU) {
                this.aXU = n(f12);
            } else if (f12 < 0.0f && !this.aYn) {
                this.aYn = n(f12);
            }
            if ((this.aXS && this.aYl) || (this.aXT && this.aYm) || (this.aXU && this.aYn)) {
                this.aYo++;
                NN();
            }
            if (this.aYo <= 2) {
                return false;
            }
            this.aYo = 0;
            return true;
        }

        private boolean n(float f10) {
            return Math.abs(f10) >= d.this.aYc && ((double) Math.abs(f10 - d.aYd)) >= d.aYe;
        }

        @Override // android.hardware.SensorEventListener
        public final void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public final void onSensorChanged(SensorEvent sensorEvent) {
            a(sensorEvent.values);
            if (this.aYj) {
                NQ();
            }
        }
    }

    public d(boolean z10, float f10) {
        this.enable = false;
        this.enable = z10;
        if (f10 <= 0.0f) {
            this.aYc = 5.0f;
        } else {
            this.aYc = f10;
        }
    }

    public final synchronized void NJ() {
        this.aXN = true;
    }

    public final void bG(boolean z10) {
        this.bidirectionalSwitch = z10;
    }

    public final void cb(Context context) {
        if (this.enable) {
            if (context == null) {
                com.kwad.sdk.core.d.c.d("ShakeDetector", "startDetect context is null");
                return;
            }
            this.aXN = true;
            if (this.aYg == null) {
                this.aYg = new a();
            }
            bk.Wo().a(1, 2, this.aYg, this.aYa);
        }
    }

    public final synchronized void cc(Context context) {
        if (context != null) {
            if (this.aYg != null) {
                bk.Wo().a(this.aYg);
                this.aYg = null;
            }
        }
    }

    public final void m(float f10) {
        this.aYc = f10;
    }

    static /* synthetic */ boolean a(d dVar, boolean z10) {
        dVar.aXN = false;
        return false;
    }

    public final void a(@Nullable b bVar) {
        this.aYf = bVar;
    }
}
