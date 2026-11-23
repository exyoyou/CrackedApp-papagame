package com.airbnb.lottie.model.layer;

import androidx.annotation.Nullable;
import com.airbnb.lottie.j;
import com.airbnb.lottie.model.animatable.k;
import com.airbnb.lottie.model.animatable.l;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class Layer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<com.airbnb.lottie.model.content.c> f5861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f5862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5863c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f5864d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LayerType f5865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f5866f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final String f5867g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<Mask> f5868h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final l f5869i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f5870j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f5871k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f5872l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f5873m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final float f5874n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float f5875o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float f5876p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.model.animatable.j f5877q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private final k f5878r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.model.animatable.b f5879s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final List<com.airbnb.lottie.value.a<Float>> f5880t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final MatteType f5881u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final boolean f5882v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.model.content.a f5883w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.parser.j f5884x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final LBlendMode f5885y;

    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public Layer(List<com.airbnb.lottie.model.content.c> list, j jVar, String str, long j10, LayerType layerType, long j11, @Nullable String str2, List<Mask> list2, l lVar, int i10, int i11, int i12, float f10, float f11, float f12, float f13, @Nullable com.airbnb.lottie.model.animatable.j jVar2, @Nullable k kVar, List<com.airbnb.lottie.value.a<Float>> list3, MatteType matteType, @Nullable com.airbnb.lottie.model.animatable.b bVar, boolean z10, @Nullable com.airbnb.lottie.model.content.a aVar, @Nullable com.airbnb.lottie.parser.j jVar3, LBlendMode lBlendMode) {
        this.f5861a = list;
        this.f5862b = jVar;
        this.f5863c = str;
        this.f5864d = j10;
        this.f5865e = layerType;
        this.f5866f = j11;
        this.f5867g = str2;
        this.f5868h = list2;
        this.f5869i = lVar;
        this.f5870j = i10;
        this.f5871k = i11;
        this.f5872l = i12;
        this.f5873m = f10;
        this.f5874n = f11;
        this.f5875o = f12;
        this.f5876p = f13;
        this.f5877q = jVar2;
        this.f5878r = kVar;
        this.f5880t = list3;
        this.f5881u = matteType;
        this.f5879s = bVar;
        this.f5882v = z10;
        this.f5883w = aVar;
        this.f5884x = jVar3;
        this.f5885y = lBlendMode;
    }

    @Nullable
    public LBlendMode a() {
        return this.f5885y;
    }

    @Nullable
    public com.airbnb.lottie.model.content.a b() {
        return this.f5883w;
    }

    j c() {
        return this.f5862b;
    }

    @Nullable
    public com.airbnb.lottie.parser.j d() {
        return this.f5884x;
    }

    public long e() {
        return this.f5864d;
    }

    List<com.airbnb.lottie.value.a<Float>> f() {
        return this.f5880t;
    }

    public LayerType g() {
        return this.f5865e;
    }

    List<Mask> h() {
        return this.f5868h;
    }

    MatteType i() {
        return this.f5881u;
    }

    public String j() {
        return this.f5863c;
    }

    long k() {
        return this.f5866f;
    }

    float l() {
        return this.f5876p;
    }

    float m() {
        return this.f5875o;
    }

    @Nullable
    public String n() {
        return this.f5867g;
    }

    List<com.airbnb.lottie.model.content.c> o() {
        return this.f5861a;
    }

    int p() {
        return this.f5872l;
    }

    int q() {
        return this.f5871k;
    }

    int r() {
        return this.f5870j;
    }

    float s() {
        return this.f5874n / this.f5862b.e();
    }

    @Nullable
    com.airbnb.lottie.model.animatable.j t() {
        return this.f5877q;
    }

    public String toString() {
        return z("");
    }

    @Nullable
    k u() {
        return this.f5878r;
    }

    @Nullable
    com.airbnb.lottie.model.animatable.b v() {
        return this.f5879s;
    }

    float w() {
        return this.f5873m;
    }

    l x() {
        return this.f5869i;
    }

    public boolean y() {
        return this.f5882v;
    }

    public String z(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(j());
        sb2.append("\n");
        Layer layerX = this.f5862b.x(k());
        if (layerX != null) {
            sb2.append("\t\tParents: ");
            sb2.append(layerX.j());
            Layer layerX2 = this.f5862b.x(layerX.k());
            while (layerX2 != null) {
                sb2.append("->");
                sb2.append(layerX2.j());
                layerX2 = this.f5862b.x(layerX2.k());
            }
            sb2.append(str);
            sb2.append("\n");
        }
        if (!h().isEmpty()) {
            sb2.append(str);
            sb2.append("\tMasks: ");
            sb2.append(h().size());
            sb2.append("\n");
        }
        if (r() != 0 && q() != 0) {
            sb2.append(str);
            sb2.append("\tBackground: ");
            sb2.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(r()), Integer.valueOf(q()), Integer.valueOf(p())));
        }
        if (!this.f5861a.isEmpty()) {
            sb2.append(str);
            sb2.append("\tShapes:\n");
            for (com.airbnb.lottie.model.content.c cVar : this.f5861a) {
                sb2.append(str);
                sb2.append("\t\t");
                sb2.append(cVar);
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }
}
