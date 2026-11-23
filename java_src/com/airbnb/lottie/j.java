package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, List<Layer>> f5664c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, x0> f5665d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, com.airbnb.lottie.model.b> f5666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<com.airbnb.lottie.model.g> f5667f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SparseArrayCompat<com.airbnb.lottie.model.c> f5668g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LongSparseArray<Layer> f5669h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<Layer> f5670i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Rect f5671j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f5672k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f5673l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f5674m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f5675n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h1 f5662a = new h1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet<String> f5663b = new HashSet<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f5676o = 0;

    @Deprecated
    public static class b {

        private static final class a implements y0<j>, com.airbnb.lottie.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final g1 f5677a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f5678b;

            @Override // com.airbnb.lottie.y0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onResult(j jVar) {
                if (this.f5678b) {
                    return;
                }
                this.f5677a.a(jVar);
            }

            @Override // com.airbnb.lottie.a
            public void cancel() {
                this.f5678b = true;
            }

            private a(g1 g1Var) {
                this.f5678b = false;
                this.f5677a = g1Var;
            }
        }

        private b() {
        }

        @Deprecated
        public static com.airbnb.lottie.a a(Context context, String str, g1 g1Var) {
            a aVar = new a(g1Var);
            d0.v(context, str).d(aVar);
            return aVar;
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static j b(Context context, String str) {
            return d0.x(context, str).b();
        }

        @Deprecated
        public static com.airbnb.lottie.a c(InputStream inputStream, g1 g1Var) {
            a aVar = new a(g1Var);
            d0.A(inputStream, null).d(aVar);
            return aVar;
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static j d(InputStream inputStream) {
            return d0.C(inputStream, null).b();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static j e(InputStream inputStream, boolean z10) {
            if (z10) {
                com.airbnb.lottie.utils.f.e("Lottie now auto-closes input stream!");
            }
            return d0.C(inputStream, null).b();
        }

        @Deprecated
        public static com.airbnb.lottie.a f(JsonReader jsonReader, g1 g1Var) {
            a aVar = new a(g1Var);
            d0.E(jsonReader, null).d(aVar);
            return aVar;
        }

        @Deprecated
        public static com.airbnb.lottie.a g(String str, g1 g1Var) {
            a aVar = new a(g1Var);
            d0.I(str, null).d(aVar);
            return aVar;
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static j h(Resources resources, JSONObject jSONObject) {
            return d0.K(jSONObject, null).b();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static j i(JsonReader jsonReader) {
            return d0.F(jsonReader, null).b();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static j j(String str) {
            return d0.J(str, null).b();
        }

        @Deprecated
        public static com.airbnb.lottie.a k(Context context, @RawRes int i10, g1 g1Var) {
            a aVar = new a(g1Var);
            d0.L(context, i10).d(aVar);
            return aVar;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void a(String str) {
        com.airbnb.lottie.utils.f.e(str);
        this.f5663b.add(str);
    }

    public Rect b() {
        return this.f5671j;
    }

    public SparseArrayCompat<com.airbnb.lottie.model.c> c() {
        return this.f5668g;
    }

    public float d() {
        return (long) ((e() / this.f5674m) * 1000.0f);
    }

    public float e() {
        return this.f5673l - this.f5672k;
    }

    public float f() {
        return this.f5673l;
    }

    public Map<String, com.airbnb.lottie.model.b> g() {
        return this.f5666e;
    }

    public float h(float f10) {
        return com.airbnb.lottie.utils.k.k(this.f5672k, this.f5673l, f10);
    }

    public float i() {
        return this.f5674m;
    }

    public Map<String, x0> j() {
        return this.f5665d;
    }

    public List<Layer> k() {
        return this.f5670i;
    }

    @Nullable
    public com.airbnb.lottie.model.g l(String str) {
        int size = this.f5667f.size();
        for (int i10 = 0; i10 < size; i10++) {
            com.airbnb.lottie.model.g gVar = this.f5667f.get(i10);
            if (gVar.d(str)) {
                return gVar;
            }
        }
        return null;
    }

    public List<com.airbnb.lottie.model.g> m() {
        return this.f5667f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int n() {
        return this.f5676o;
    }

    public h1 o() {
        return this.f5662a;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public List<Layer> p(String str) {
        return this.f5664c.get(str);
    }

    public float q(float f10) {
        float f11 = this.f5672k;
        return (f10 - f11) / (this.f5673l - f11);
    }

    public float r() {
        return this.f5672k;
    }

    public ArrayList<String> s() {
        HashSet<String> hashSet = this.f5663b;
        return new ArrayList<>(Arrays.asList((String[]) hashSet.toArray(new String[hashSet.size()])));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean t() {
        return this.f5675n;
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        Iterator<Layer> it2 = this.f5670i.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().z("\t"));
        }
        return sb2.toString();
    }

    public boolean u() {
        return !this.f5665d.isEmpty();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void v(int i10) {
        this.f5676o += i10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void w(Rect rect, float f10, float f11, float f12, List<Layer> list, LongSparseArray<Layer> longSparseArray, Map<String, List<Layer>> map, Map<String, x0> map2, SparseArrayCompat<com.airbnb.lottie.model.c> sparseArrayCompat, Map<String, com.airbnb.lottie.model.b> map3, List<com.airbnb.lottie.model.g> list2) {
        this.f5671j = rect;
        this.f5672k = f10;
        this.f5673l = f11;
        this.f5674m = f12;
        this.f5670i = list;
        this.f5669h = longSparseArray;
        this.f5664c = map;
        this.f5665d = map2;
        this.f5668g = sparseArrayCompat;
        this.f5666e = map3;
        this.f5667f = list2;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Layer x(long j10) {
        return this.f5669h.get(j10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void y(boolean z10) {
        this.f5675n = z10;
    }

    public void z(boolean z10) {
        this.f5662a.g(z10);
    }
}
