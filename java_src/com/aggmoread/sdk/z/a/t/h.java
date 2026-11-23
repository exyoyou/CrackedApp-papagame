package com.aggmoread.sdk.z.a.t;

import android.content.Context;
import android.view.OrientationEventListener;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f4064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private OrientationEventListener f4065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4066c = 20;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4067d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f4068e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f4069f = b.f4073b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f4070g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private c f4071h;

    class a extends OrientationEventListener {
        a(Context context, int i10) {
            super(context, i10);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i10) {
            b bVarA = h.this.a(i10);
            if (bVarA == null) {
                return;
            }
            int i11 = 0;
            if (bVarA != h.this.f4069f) {
                h.this.d();
                h.this.f4069f = bVarA;
                String.format("方向改变, 开始计时, 当前是方向为%s", bVarA);
                return;
            }
            h.this.a();
            if (h.this.f4067d > 1500) {
                if (bVarA == b.f4075d) {
                    if (h.this.f4070g == 0) {
                        return;
                    }
                    h.this.f4070g = 0;
                    if (h.this.f4071h == null) {
                        return;
                    }
                } else {
                    if (bVarA == b.f4073b) {
                        if (h.this.f4070g != 1) {
                            h.this.f4070g = 1;
                            if (h.this.f4071h != null) {
                                h.this.f4071h.a(1, bVarA);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (bVarA == b.f4074c) {
                        i11 = 9;
                        if (h.this.f4070g == 9) {
                            return;
                        }
                        h.this.f4070g = 9;
                        if (h.this.f4071h == null) {
                            return;
                        }
                    } else {
                        if (bVarA != b.f4076e) {
                            return;
                        }
                        i11 = 8;
                        if (h.this.f4070g == 8) {
                            return;
                        }
                        h.this.f4070g = 8;
                        if (h.this.f4071h == null) {
                            return;
                        }
                    }
                }
                h.this.f4071h.a(i11, bVarA);
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f4073b = new b("PORTRAIT", 0);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f4074c = new b("REVERSE_PORTRAIT", 1);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final b f4075d = new b("LANDSCAPE", 2);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final b f4076e = new b("REVERSE_LANDSCAPE", 3);

        private b(String str, int i10) {
            super(str, i10);
        }
    }

    public interface c {
        void a(int i10, b bVar);
    }

    public h(Context context) {
        this.f4064a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b a(int i10) {
        int i11 = this.f4066c;
        if (i10 <= i11 || i10 >= 360 - i11) {
            return b.f4073b;
        }
        if (Math.abs(i10 - 180) <= this.f4066c) {
            return b.f4074c;
        }
        if (Math.abs(i10 - 90) <= this.f4066c) {
            return b.f4076e;
        }
        if (Math.abs(i10 - 270) <= this.f4066c) {
            return b.f4075d;
        }
        return null;
    }

    public void c() {
        if (this.f4065b == null) {
            this.f4065b = new a(this.f4064a, 2);
        }
        this.f4065b.enable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f4068e = 0L;
        this.f4067d = 0L;
    }

    public void b() {
        OrientationEventListener orientationEventListener = this.f4065b;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.f4068e == 0) {
            this.f4068e = jCurrentTimeMillis;
        }
        this.f4067d += jCurrentTimeMillis - this.f4068e;
        this.f4068e = jCurrentTimeMillis;
    }

    public void a(c cVar) {
        this.f4071h = cVar;
    }
}
