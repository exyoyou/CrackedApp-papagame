package com.airbnb.lottie.parser;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.umeng.analytics.pro.bm;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes7.dex */
class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f6055a = 100.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static SparseArrayCompat<WeakReference<Interpolator>> f6057c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Interpolator f6056b = new LinearInterpolator();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static JsonReader.a f6058d = JsonReader.a.a(bm.aM, "s", "e", "o", "i", "h", "to", "ti");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static JsonReader.a f6059e = JsonReader.a.a("x", "y");

    t() {
    }

    @Nullable
    private static WeakReference<Interpolator> a(int i10) {
        WeakReference<Interpolator> weakReference;
        synchronized (t.class) {
            weakReference = g().get(i10);
        }
        return weakReference;
    }

    private static Interpolator b(PointF pointF, PointF pointF2) {
        Interpolator interpolatorCreate;
        pointF.x = com.airbnb.lottie.utils.k.c(pointF.x, -1.0f, 1.0f);
        pointF.y = com.airbnb.lottie.utils.k.c(pointF.y, -100.0f, 100.0f);
        pointF2.x = com.airbnb.lottie.utils.k.c(pointF2.x, -1.0f, 1.0f);
        float fC = com.airbnb.lottie.utils.k.c(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fC;
        int i10 = com.airbnb.lottie.utils.l.i(pointF.x, pointF.y, pointF2.x, fC);
        WeakReference<Interpolator> weakReferenceA = com.airbnb.lottie.e.e() ? null : a(i10);
        Interpolator interpolator = weakReferenceA != null ? weakReferenceA.get() : null;
        if (weakReferenceA == null || interpolator == null) {
            try {
                interpolatorCreate = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e10) {
                interpolatorCreate = "The Path cannot loop back on itself.".equals(e10.getMessage()) ? PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            interpolator = interpolatorCreate;
            if (!com.airbnb.lottie.e.e()) {
                try {
                    h(i10, new WeakReference(interpolator));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        return interpolator;
    }

    static <T> com.airbnb.lottie.value.a<T> c(JsonReader jsonReader, com.airbnb.lottie.j jVar, float f10, n0<T> n0Var, boolean z10, boolean z11) throws IOException {
        if (z10 && z11) {
            return e(jVar, jsonReader, f10, n0Var);
        }
        return z10 ? d(jVar, jsonReader, f10, n0Var) : f(jsonReader, f10, n0Var);
    }

    private static <T> com.airbnb.lottie.value.a<T> d(com.airbnb.lottie.j jVar, JsonReader jsonReader, float f10, n0<T> n0Var) throws IOException {
        Interpolator interpolatorB;
        T t10;
        jsonReader.d();
        PointF pointFE = null;
        PointF pointFE2 = null;
        T tA = null;
        T tA2 = null;
        PointF pointFE3 = null;
        PointF pointFE4 = null;
        boolean z10 = false;
        float fJ = 0.0f;
        while (jsonReader.g()) {
            switch (jsonReader.t(f6058d)) {
                case 0:
                    fJ = (float) jsonReader.j();
                    break;
                case 1:
                    tA2 = n0Var.a(jsonReader, f10);
                    break;
                case 2:
                    tA = n0Var.a(jsonReader, f10);
                    break;
                case 3:
                    pointFE = s.e(jsonReader, 1.0f);
                    break;
                case 4:
                    pointFE2 = s.e(jsonReader, 1.0f);
                    break;
                case 5:
                    z10 = jsonReader.k() == 1;
                    break;
                case 6:
                    pointFE3 = s.e(jsonReader, f10);
                    break;
                case 7:
                    pointFE4 = s.e(jsonReader, f10);
                    break;
                default:
                    jsonReader.y();
                    break;
            }
        }
        jsonReader.f();
        if (z10) {
            interpolatorB = f6056b;
            t10 = tA2;
        } else {
            interpolatorB = (pointFE == null || pointFE2 == null) ? f6056b : b(pointFE, pointFE2);
            t10 = tA;
        }
        com.airbnb.lottie.value.a<T> aVar = new com.airbnb.lottie.value.a<>(jVar, tA2, t10, interpolatorB, fJ, null);
        aVar.f6146o = pointFE3;
        aVar.f6147p = pointFE4;
        return aVar;
    }

    /* JADX WARN: Code duplicated, block: B:93:0x01ed  */
    private static <T> com.airbnb.lottie.value.a<T> e(com.airbnb.lottie.j jVar, JsonReader jsonReader, float f10, n0<T> n0Var) throws IOException {
        Interpolator interpolatorB;
        Interpolator interpolatorB2;
        Interpolator interpolatorB3;
        T t10;
        com.airbnb.lottie.value.a<T> aVar;
        PointF pointF;
        float f11;
        PointF pointF2;
        jsonReader.d();
        PointF pointFE = null;
        boolean z10 = false;
        PointF pointFE2 = null;
        PointF pointFE3 = null;
        PointF pointF3 = null;
        T tA = null;
        PointF pointF4 = null;
        PointF pointF5 = null;
        PointF pointF6 = null;
        float fJ = 0.0f;
        PointF pointFE4 = null;
        T tA2 = null;
        while (jsonReader.g()) {
            switch (jsonReader.t(f6058d)) {
                case 0:
                    pointF = pointFE;
                    fJ = (float) jsonReader.j();
                    pointFE = pointF;
                    break;
                case 1:
                    pointF = pointFE;
                    tA = n0Var.a(jsonReader, f10);
                    pointFE = pointF;
                    break;
                case 2:
                    pointF = pointFE;
                    tA2 = n0Var.a(jsonReader, f10);
                    pointFE = pointF;
                    break;
                case 3:
                    pointF = pointFE;
                    f11 = fJ;
                    PointF pointF7 = pointFE4;
                    if (jsonReader.q() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.d();
                        float fJ2 = 0.0f;
                        float fJ3 = 0.0f;
                        float fJ4 = 0.0f;
                        float fJ5 = 0.0f;
                        while (jsonReader.g()) {
                            int iT = jsonReader.t(f6059e);
                            if (iT == 0) {
                                JsonReader.Token tokenQ = jsonReader.q();
                                JsonReader.Token token = JsonReader.Token.NUMBER;
                                if (tokenQ == token) {
                                    fJ4 = (float) jsonReader.j();
                                    fJ2 = fJ4;
                                } else {
                                    jsonReader.b();
                                    fJ2 = (float) jsonReader.j();
                                    fJ4 = jsonReader.q() == token ? (float) jsonReader.j() : fJ2;
                                    jsonReader.e();
                                }
                            } else if (iT != 1) {
                                jsonReader.y();
                            } else {
                                JsonReader.Token tokenQ2 = jsonReader.q();
                                JsonReader.Token token2 = JsonReader.Token.NUMBER;
                                if (tokenQ2 == token2) {
                                    fJ5 = (float) jsonReader.j();
                                    fJ3 = fJ5;
                                } else {
                                    jsonReader.b();
                                    fJ3 = (float) jsonReader.j();
                                    fJ5 = jsonReader.q() == token2 ? (float) jsonReader.j() : fJ3;
                                    jsonReader.e();
                                }
                            }
                        }
                        PointF pointF8 = new PointF(fJ2, fJ3);
                        PointF pointF9 = new PointF(fJ4, fJ5);
                        jsonReader.f();
                        pointF4 = pointF9;
                        pointF3 = pointF8;
                        pointFE4 = pointF7;
                        fJ = f11;
                    } else {
                        pointFE2 = s.e(jsonReader, f10);
                        fJ = f11;
                        pointFE4 = pointF7;
                    }
                    pointFE = pointF;
                    break;
                case 4:
                    if (jsonReader.q() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.d();
                        float fJ6 = 0.0f;
                        float f12 = 0.0f;
                        float fJ7 = 0.0f;
                        float fJ8 = 0.0f;
                        while (jsonReader.g()) {
                            pointFE4 = pointFE4;
                            int iT2 = jsonReader.t(f6059e);
                            if (iT2 != 0) {
                                pointF2 = pointFE;
                                if (iT2 != 1) {
                                    jsonReader.y();
                                } else {
                                    JsonReader.Token tokenQ3 = jsonReader.q();
                                    JsonReader.Token token3 = JsonReader.Token.NUMBER;
                                    if (tokenQ3 == token3) {
                                        fJ8 = (float) jsonReader.j();
                                        fJ = fJ;
                                        f12 = fJ8;
                                    } else {
                                        float f13 = fJ;
                                        jsonReader.b();
                                        float fJ9 = (float) jsonReader.j();
                                        float fJ10 = jsonReader.q() == token3 ? (float) jsonReader.j() : fJ9;
                                        jsonReader.e();
                                        fJ = f13;
                                        pointFE = pointF2;
                                        fJ8 = fJ10;
                                        f12 = fJ9;
                                    }
                                }
                            } else {
                                pointF2 = pointFE;
                                float f14 = fJ;
                                JsonReader.Token tokenQ4 = jsonReader.q();
                                JsonReader.Token token4 = JsonReader.Token.NUMBER;
                                if (tokenQ4 == token4) {
                                    fJ7 = (float) jsonReader.j();
                                    fJ = f14;
                                    fJ6 = fJ7;
                                } else {
                                    jsonReader.b();
                                    fJ6 = (float) jsonReader.j();
                                    fJ7 = jsonReader.q() == token4 ? (float) jsonReader.j() : fJ6;
                                    jsonReader.e();
                                    fJ = f14;
                                }
                            }
                            pointFE = pointF2;
                        }
                        pointF = pointFE;
                        f11 = fJ;
                        PointF pointF10 = new PointF(fJ6, f12);
                        PointF pointF11 = new PointF(fJ7, fJ8);
                        jsonReader.f();
                        pointF6 = pointF11;
                        pointF5 = pointF10;
                        fJ = f11;
                    } else {
                        pointF = pointFE;
                        pointFE3 = s.e(jsonReader, f10);
                    }
                    pointFE = pointF;
                    break;
                case 5:
                    z10 = jsonReader.k() == 1;
                    break;
                case 6:
                    pointFE4 = s.e(jsonReader, f10);
                    break;
                case 7:
                    pointFE = s.e(jsonReader, f10);
                    break;
                default:
                    pointF = pointFE;
                    jsonReader.y();
                    pointFE = pointF;
                    break;
            }
        }
        PointF pointF12 = pointFE;
        float f15 = fJ;
        PointF pointF13 = pointFE4;
        jsonReader.f();
        if (z10) {
            interpolatorB = f6056b;
            t10 = tA;
        } else {
            if (pointFE2 == null || pointFE3 == null) {
                if (pointF3 == null || pointF4 == null || pointF5 == null || pointF6 == null) {
                    interpolatorB = f6056b;
                } else {
                    interpolatorB2 = b(pointF3, pointF5);
                    interpolatorB3 = b(pointF4, pointF6);
                    t10 = tA2;
                    interpolatorB = null;
                }
                if (interpolatorB2 != null || interpolatorB3 == null) {
                    aVar = new com.airbnb.lottie.value.a<>(jVar, tA, t10, interpolatorB, f15, null);
                } else {
                    aVar = new com.airbnb.lottie.value.a<>(jVar, tA, t10, interpolatorB2, interpolatorB3, f15, null);
                }
                aVar.f6146o = pointF13;
                aVar.f6147p = pointF12;
                return aVar;
            }
            interpolatorB = b(pointFE2, pointFE3);
            t10 = tA2;
        }
        interpolatorB2 = null;
        interpolatorB3 = null;
        if (interpolatorB2 != null) {
            aVar = new com.airbnb.lottie.value.a<>(jVar, tA, t10, interpolatorB, f15, null);
        } else {
            aVar = new com.airbnb.lottie.value.a<>(jVar, tA, t10, interpolatorB, f15, null);
        }
        aVar.f6146o = pointF13;
        aVar.f6147p = pointF12;
        return aVar;
    }

    private static <T> com.airbnb.lottie.value.a<T> f(JsonReader jsonReader, float f10, n0<T> n0Var) throws IOException {
        return new com.airbnb.lottie.value.a<>(n0Var.a(jsonReader, f10));
    }

    private static SparseArrayCompat<WeakReference<Interpolator>> g() {
        if (f6057c == null) {
            f6057c = new SparseArrayCompat<>();
        }
        return f6057c;
    }

    private static void h(int i10, WeakReference<Interpolator> weakReference) {
        synchronized (t.class) {
            f6057c.put(i10, weakReference);
        }
    }
}
