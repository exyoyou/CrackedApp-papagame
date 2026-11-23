package net.lucode.hackware.magicindicator;

import android.util.SparseArray;
import android.util.SparseBooleanArray;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SparseBooleanArray f94881a = new SparseBooleanArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SparseArray<Float> f94882b = new SparseArray<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f94883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f94884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f94885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f94886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f94887g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f94888h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f94889i;

    public interface a {
        void a(int i10, int i11, float f10, boolean z10);

        void b(int i10, int i11);

        void c(int i10, int i11);

        void d(int i10, int i11, float f10, boolean z10);
    }

    private void a(int i10) {
        a aVar = this.f94889i;
        if (aVar != null) {
            aVar.b(i10, this.f94883c);
        }
        this.f94881a.put(i10, true);
    }

    private void b(int i10, float f10, boolean z10, boolean z11) {
        if (this.f94888h || i10 == this.f94884d || this.f94887g == 1 || z11) {
            a aVar = this.f94889i;
            if (aVar != null) {
                aVar.a(i10, this.f94883c, f10, z10);
            }
            this.f94882b.put(i10, Float.valueOf(1.0f - f10));
        }
    }

    private void c(int i10, float f10, boolean z10, boolean z11) {
        if (!this.f94888h && i10 != this.f94885e && this.f94887g != 1) {
            int i11 = this.f94884d;
            if (((i10 != i11 - 1 && i10 != i11 + 1) || this.f94882b.get(i10, Float.valueOf(0.0f)).floatValue() == 1.0f) && !z11) {
                return;
            }
        }
        a aVar = this.f94889i;
        if (aVar != null) {
            aVar.d(i10, this.f94883c, f10, z10);
        }
        this.f94882b.put(i10, Float.valueOf(f10));
    }

    private void d(int i10) {
        a aVar = this.f94889i;
        if (aVar != null) {
            aVar.c(i10, this.f94883c);
        }
        this.f94881a.put(i10, false);
    }

    public int e() {
        return this.f94884d;
    }

    public int f() {
        return this.f94887g;
    }

    public int g() {
        return this.f94883c;
    }

    public void h(int i10) {
        this.f94887g = i10;
    }

    public void i(int i10, float f10, int i11) {
        boolean z10;
        float f11 = i10 + f10;
        float f12 = this.f94886f;
        boolean z11 = f12 <= f11;
        if (this.f94887g == 0) {
            for (int i12 = 0; i12 < this.f94883c; i12++) {
                if (i12 != this.f94884d) {
                    if (!this.f94881a.get(i12)) {
                        a(i12);
                    }
                    if (this.f94882b.get(i12, Float.valueOf(0.0f)).floatValue() != 1.0f) {
                        c(i12, 1.0f, false, true);
                    }
                }
            }
            b(this.f94884d, 1.0f, false, true);
            d(this.f94884d);
        } else {
            if (f11 == f12) {
                return;
            }
            int i13 = i10 + 1;
            if (f10 == 0.0f && z11) {
                i13 = i10 - 1;
                z10 = false;
            } else {
                z10 = true;
            }
            for (int i14 = 0; i14 < this.f94883c; i14++) {
                if (i14 != i10 && i14 != i13 && this.f94882b.get(i14, Float.valueOf(0.0f)).floatValue() != 1.0f) {
                    c(i14, 1.0f, z11, true);
                }
            }
            if (!z10) {
                float f13 = 1.0f - f10;
                c(i13, f13, true, false);
                b(i10, f13, true, false);
            } else if (z11) {
                c(i10, f10, true, false);
                b(i13, f10, true, false);
            } else {
                float f14 = 1.0f - f10;
                c(i13, f14, false, false);
                b(i10, f14, false, false);
            }
        }
        this.f94886f = f11;
    }

    public void j(int i10) {
        this.f94885e = this.f94884d;
        this.f94884d = i10;
        d(i10);
        for (int i11 = 0; i11 < this.f94883c; i11++) {
            if (i11 != this.f94884d && !this.f94881a.get(i11)) {
                a(i11);
            }
        }
    }

    public void k(a aVar) {
        this.f94889i = aVar;
    }

    public void l(boolean z10) {
        this.f94888h = z10;
    }

    public void m(int i10) {
        this.f94883c = i10;
        this.f94881a.clear();
        this.f94882b.clear();
    }
}
