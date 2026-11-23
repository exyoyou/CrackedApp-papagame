package com.kwad.sdk.core.g;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.kwad.sdk.utils.bk;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    @Nullable
    private com.kwad.sdk.core.g.a aXY;

    @Nullable
    private a aXZ;
    private AdMatrixInfo.RotateInfo rotateInfo;
    private volatile boolean aXN = true;
    private long aXO = 0;
    private double aXP = 9.999999717180685E-10d;
    private double[] aXQ = {0.0d, 0.0d, 0.0d};
    private double[] aXR = {0.0d, 0.0d, 0.0d};
    boolean aXS = false;
    boolean aXT = false;
    boolean aXU = false;
    boolean aXV = false;
    boolean aXW = false;
    boolean aXX = false;
    private final bk.b aYa = new bk.b() { // from class: com.kwad.sdk.core.g.c.1
        @Override // com.kwad.sdk.utils.bk.b
        public final void onFailed() {
            if (c.this.aXY != null) {
                c.this.aXY.ck();
            }
        }
    };

    class a implements SensorEventListener {
        private a() {
        }

        @Override // android.hardware.SensorEventListener
        public final void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public final void onSensorChanged(SensorEvent sensorEvent) {
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            if (c.this.aXO != 0) {
                double d10 = (sensorEvent.timestamp - c.this.aXO) * c.this.aXP;
                double[] dArr = c.this.aXR;
                dArr[0] = dArr[0] + Math.toDegrees(((double) f10) * d10);
                double[] dArr2 = c.this.aXR;
                dArr2[1] = dArr2[1] + Math.toDegrees(((double) f11) * d10);
                double[] dArr3 = c.this.aXR;
                dArr3[2] = dArr3[2] + Math.toDegrees(((double) f12) * d10);
                c.this.NK();
                c.this.NL();
            }
            c.this.aXO = sensorEvent.timestamp;
        }

        /* synthetic */ a(c cVar, byte b10) {
            this();
        }
    }

    public c(AdMatrixInfo.RotateInfo rotateInfo) {
        this.rotateInfo = rotateInfo;
    }

    private void NI() {
        Arrays.fill(this.aXQ, 0.0d);
        Arrays.fill(this.aXR, 0.0d);
        this.aXO = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void NK() {
        if (this.aXN) {
            if (Math.abs(this.aXR[0]) > Math.abs(this.aXQ[0])) {
                this.aXQ[0] = this.aXR[0];
            }
            if (Math.abs(this.aXR[1]) > Math.abs(this.aXQ[1])) {
                this.aXQ[1] = this.aXR[1];
            }
            if (Math.abs(this.aXR[2]) > Math.abs(this.aXQ[2])) {
                this.aXQ[2] = this.aXR[2];
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void NL() {
        AdMatrixInfo.RotateInfo rotateInfo;
        boolean zC;
        if (this.aXN && (rotateInfo = this.rotateInfo) != null) {
            try {
                zC = rotateInfo.bidirectionalSwitch ? c(rotateInfo) : true;
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            }
            if (this.aXY != null) {
                AdMatrixInfo.RotateDegreeInfo rotateDegreeInfo = this.rotateInfo.f75320x;
                if (!a(0, rotateDegreeInfo.rotateDegree, rotateDegreeInfo.direction)) {
                    AdMatrixInfo.RotateDegreeInfo rotateDegreeInfo2 = this.rotateInfo.f75321y;
                    if (!a(1, rotateDegreeInfo2.rotateDegree, rotateDegreeInfo2.direction)) {
                        AdMatrixInfo.RotateDegreeInfo rotateDegreeInfo3 = this.rotateInfo.f75322z;
                        if (!a(2, rotateDegreeInfo3.rotateDegree, rotateDegreeInfo3.direction)) {
                            return;
                        }
                    }
                }
                if (zC) {
                    this.aXN = false;
                    this.aXY.t(NM());
                }
            }
        }
    }

    private String NM() {
        return "{\"x\": " + this.aXQ[0] + ",\"y\":" + this.aXQ[1] + ",\"z\":" + this.aXQ[2] + "}";
    }

    private void NN() {
        this.aXS = false;
        this.aXT = false;
        this.aXU = false;
        this.aXV = false;
        this.aXW = false;
        this.aXX = false;
    }

    public final synchronized void NJ() {
        NI();
        this.aXN = true;
    }

    public final void cb(Context context) {
        try {
            if (this.rotateInfo.enable && context != null) {
                NI();
                this.aXN = true;
                if (this.aXZ == null) {
                    this.aXZ = new a(this, (byte) 0);
                }
                bk.Wo().a(2, 2, this.aXZ, this.aYa);
            }
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
        }
    }

    public final synchronized void cc(Context context) {
        if (context != null) {
            if (this.aXZ != null) {
                bk.Wo().a(this.aXZ);
                this.aXZ = null;
            }
        }
    }

    private boolean c(AdMatrixInfo.RotateInfo rotateInfo) {
        double d10 = this.aXR[0];
        if (d10 > 0.0d && !this.aXS) {
            this.aXS = a(0, rotateInfo.f75320x.rotateDegree, this.rotateInfo.f75320x.direction);
        } else if (d10 < 0.0d && !this.aXV) {
            this.aXV = a(0, rotateInfo.f75320x.rotateDegree, this.rotateInfo.f75320x.direction);
        }
        double d11 = this.aXR[1];
        if (d11 > 0.0d && !this.aXT) {
            this.aXT = a(1, rotateInfo.f75321y.rotateDegree, this.rotateInfo.f75321y.direction);
        } else if (d11 < 0.0d && !this.aXW) {
            this.aXW = a(1, rotateInfo.f75321y.rotateDegree, this.rotateInfo.f75321y.direction);
        }
        double d12 = this.aXR[2];
        if (d12 > 0.0d && !this.aXU) {
            this.aXU = a(2, rotateInfo.f75322z.rotateDegree, this.rotateInfo.f75322z.direction);
        } else if (d12 < 0.0d && !this.aXX) {
            this.aXX = a(2, rotateInfo.f75322z.rotateDegree, this.rotateInfo.f75322z.direction);
        }
        boolean z10 = (this.aXS && this.aXV) || (this.aXT && this.aXW) || (this.aXU && this.aXX);
        if (z10) {
            NN();
        }
        return z10;
    }

    public final void b(AdMatrixInfo.RotateInfo rotateInfo) {
        this.rotateInfo = rotateInfo;
    }

    public final void a(AdMatrixInfo.RotateInfo rotateInfo) {
        this.rotateInfo = rotateInfo;
    }

    public final void a(@Nullable com.kwad.sdk.core.g.a aVar) {
        this.aXY = aVar;
    }

    private boolean a(int i10, double d10, int i11) {
        if (d10 <= 0.0d || Math.abs(this.aXR[i10]) < d10) {
            return false;
        }
        double d11 = this.aXR[i10];
        return (d11 <= 0.0d || i11 != 1) && (d11 >= 0.0d || i11 != 2);
    }
}
