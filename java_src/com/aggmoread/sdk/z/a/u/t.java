package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.AttributeSet;
import android.util.Pair;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class t extends q {
    private static final int[] F = {1, 0, 3, 2, 5, 4};
    private int A;
    private int B;
    private boolean C;
    private long D;
    private int E;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f4211n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private s f4212o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f4213p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private AtomicBoolean f4214q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private double f4215r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private double f4216s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private double f4217t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int[] f4218u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float[] f4219v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private SensorEventListener f4220w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean[] f4221x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean[] f4222y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f4223z;

    class a implements SensorEventListener {
        a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (t.this.f4213p || t.this.f4214q.get() || sensorEvent.sensor.getType() != 4) {
                return;
            }
            try {
                if (t.this.f4211n == 0) {
                    t.this.f4211n = sensorEvent.timestamp;
                    return;
                }
                long j10 = sensorEvent.timestamp;
                float f10 = (j10 - t.this.f4211n) * 1.0E-9f;
                t.this.f4211n = j10;
                double d10 = t.this.f4215r;
                float[] fArr = sensorEvent.values;
                t.this.f4219v = fArr;
                double d11 = fArr[0] * f10;
                Double.isNaN(d11);
                double d12 = d10 + d11;
                t.this.f4215r = d12;
                double d13 = t.this.f4216s;
                double d14 = fArr[1] * f10;
                Double.isNaN(d14);
                t.this.f4216s = d13 + d14;
                double d15 = t.this.f4217t;
                double d16 = fArr[2] * f10;
                Double.isNaN(d16);
                t.this.f4217t = d15 + d16;
                t.this.f4218u[0] = t.this.d(((int) Math.toDegrees(d12)) % MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL);
                int[] iArr = t.this.f4218u;
                t tVar = t.this;
                iArr[1] = tVar.d(((int) Math.toDegrees(tVar.f4216s)) % MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL);
                int[] iArr2 = t.this.f4218u;
                t tVar2 = t.this;
                iArr2[2] = tVar2.d(((int) Math.toDegrees(tVar2.f4217t)) % MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL);
                t.this.g();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.a.d.d("tw_svTAG", "shake err " + e10.getMessage());
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Context applicationContext = t.this.getContext().getApplicationContext();
            int iA = com.aggmoread.sdk.z.a.m.b.a(applicationContext, 6.0d);
            int iMin = Math.min(t.this.getLayoutParams().width - iA, t.this.getLayoutParams().height - iA);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iMin, iMin);
            t.this.f4212o = new s(applicationContext, iMin);
            t tVar = t.this;
            tVar.addView(tVar.f4212o, layoutParams);
            f fVar = new f(applicationContext, iMin);
            fVar.setScaleX(0.6f);
            fVar.setScaleY(0.6f);
            t.this.addView(fVar, layoutParams);
        }
    }

    public t(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f4213p || this.f4214q.get()) {
            com.aggmoread.sdk.z.a.d.d("tw_svTAG", "cd return #1 ");
            return;
        }
        int[] iArr = this.f4218u;
        com.aggmoread.sdk.z.a.d.d("tw_svTAG", " data " + Arrays.toString(iArr));
        Pair<Integer, Integer> pairA = a(iArr[0], iArr[1], iArr[2]);
        com.aggmoread.sdk.z.a.d.d("tw_svTAG", "pair data " + pairA);
        int iIntValue = ((Integer) pairA.first).intValue();
        int iIntValue2 = ((Integer) pairA.second).intValue();
        if (iIntValue < 5 && !this.C) {
            h();
        }
        com.aggmoread.sdk.z.a.d.d("tw_svTAG", "v " + iIntValue + ", obj " + this.f4212o);
        if (this.f4212o != null) {
            float fA = a(iIntValue);
            int[] iArr2 = this.f4218u;
            this.f4212o.a(iArr2[0], iArr2[1], iArr2[2], this.f4223z, fA);
        }
        boolean z10 = iIntValue >= (this.C ? this.A : this.f4223z);
        long jCurrentTimeMillis = System.currentTimeMillis() - this.D;
        boolean zA = a(z10, jCurrentTimeMillis);
        if (z10 && !this.C) {
            e(iIntValue2);
            Arrays.fill(this.f4218u, 0);
        }
        if (z10) {
            com.aggmoread.sdk.z.a.d.b("tw_svTAG", "z  " + z10 + ", a2 " + zA + ", ct " + this.f4213p + ", v " + iIntValue);
        }
        if (!zA || this.f4212o == null) {
            return;
        }
        this.f4213p = true;
        c(0);
        s sVar = this.f4212o;
        if (sVar != null) {
            int[] iArr3 = this.f4218u;
            sVar.a(iArr3[0], iArr3[1], iArr3[2], this.f4223z, jCurrentTimeMillis);
        }
    }

    private void h() {
        this.D = System.currentTimeMillis();
    }

    public t(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private float a(int i10) {
        int i11 = this.A;
        if (i11 <= 0) {
            return Math.min((i10 * 1.0f) / this.f4223z, 1.0f);
        }
        float f10 = i10 * 1.0f;
        return !this.C ? Math.min(f10 / this.f4223z, 1.0f) * 0.5f : (Math.min(f10 / i11, 1.0f) * 0.5f) + 0.5f;
    }

    public int d(int i10) {
        if (i10 > 180) {
            return i10 - 360;
        }
        return i10 <= -180 ? i10 + MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL : i10;
    }

    @Override // com.aggmoread.sdk.z.a.u.q
    public void e() {
        super.e();
        com.aggmoread.sdk.z.a.d.d("tw_svTAG", "start ");
        AtomicBoolean atomicBoolean = this.f4214q;
        if (atomicBoolean != null) {
            atomicBoolean.set(false);
        }
    }

    @Override // com.aggmoread.sdk.z.a.u.q
    protected void f() {
        if (this.f4187a == null || this.f4220w == null || !this.f4188b.compareAndSet(true, false)) {
            return;
        }
        this.f4187a.unregisterListener(this.f4220w);
    }

    public t(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f4211n = 0L;
        this.f4213p = false;
        this.f4214q = new AtomicBoolean(true);
        this.f4215r = 0.0d;
        this.f4216s = 0.0d;
        this.f4217t = 0.0d;
        this.f4218u = new int[3];
        this.f4219v = new float[3];
        this.f4220w = new a();
        this.f4221x = new boolean[]{false, false, false, false, true, true};
        this.f4222y = new boolean[]{false, false, false, false, false, false};
        this.f4223z = 105;
        this.A = 105;
        this.B = -1;
        this.C = false;
        this.D = 0L;
        this.E = -1;
        a();
    }

    private void b(int i10) {
        for (int i11 = 0; i11 < 6; i11++) {
            boolean[] zArr = this.f4222y;
            boolean z10 = true;
            if (((1 << i11) & i10) == 0) {
                z10 = false;
            }
            zArr[i11] = z10;
        }
    }

    private void e(int i10) {
        this.C = true;
        if (this.A <= 0 || this.B > -1) {
            return;
        }
        this.B = i10;
        b(1 << F[i10]);
        c(1);
    }

    @Override // com.aggmoread.sdk.z.a.u.q
    public void c() {
        super.c();
        com.aggmoread.sdk.z.a.d.d("tw_svTAG", "pause ");
        AtomicBoolean atomicBoolean = this.f4214q;
        if (atomicBoolean != null) {
            atomicBoolean.set(true);
        }
    }

    @Override // com.aggmoread.sdk.z.a.u.q
    protected void d() {
        try {
            if (this.f4187a == null || this.f4220w == null || !this.f4188b.compareAndSet(false, true)) {
                return;
            }
            this.f4187a.registerListener(this.f4220w, this.f4187a.getDefaultSensor(4), 1);
        } catch (Exception unused) {
        }
    }

    private Pair<Integer, Integer> a(int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        boolean[] zArr = this.C ? this.f4222y : this.f4221x;
        int i17 = 0;
        if (!zArr[0] || i10 <= 0) {
            i13 = -1;
        } else {
            i17 = i10;
            i13 = 0;
        }
        if (zArr[1] && i10 < 0 && (i16 = -i10) > i17) {
            i17 = i16;
            i13 = 1;
        }
        if (zArr[2] && i11 > i17) {
            i17 = i11;
            i13 = 2;
        }
        if (zArr[3] && i11 < 0 && (i15 = -i11) > i17) {
            i17 = i15;
            i13 = 3;
        }
        if (zArr[4] && i12 > i17) {
            i17 = i12;
            i13 = 4;
        }
        if (zArr[5] && i12 < 0 && (i14 = -i12) > i17) {
            i17 = i14;
            i13 = 5;
        }
        return new Pair<>(Integer.valueOf(i17), Integer.valueOf(i13));
    }

    private void c(int i10) {
        q.b bVar;
        com.aggmoread.sdk.z.a.d.d("tw_svTAG", "f " + i10);
        if (i10 != 0 || (bVar = this.f4197k) == null) {
            return;
        }
        bVar.a(this.f4219v);
    }

    private void a() {
        this.f4187a = (SensorManager) getContext().getSystemService("sensor");
        setTag(com.aggmoread.sdk.z.a.i.c.f3495a);
        post(new b());
    }

    @Override // com.aggmoread.sdk.z.a.u.q
    public void a(double d10) {
        com.aggmoread.sdk.z.a.d.d("tw_svTAG", "ss " + d10);
        if (d10 > 0.0d) {
            this.f4223z = (int) (((double) this.f4223z) / d10);
            this.A = (int) (((double) this.A) / d10);
        }
    }

    private boolean a(boolean z10, long j10) {
        int i10 = this.E;
        if (i10 > 0) {
            z10 = z10 && j10 >= ((long) i10);
        }
        if (this.A > 0) {
            return z10 && this.C;
        }
        return z10;
    }
}
