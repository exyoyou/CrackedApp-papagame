package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.u;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class ShapeStroke implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.model.animatable.b f5774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<com.airbnb.lottie.model.animatable.b> f5775c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.a f5776d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.d f5777e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5778f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final LineCapType f5779g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final LineJoinType f5780h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f5781i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f5782j;

    public enum LineCapType {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i10 = a.f5783a[ordinal()];
            if (i10 != 1) {
                return i10 != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    public enum LineJoinType {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i10 = a.f5784b[ordinal()];
            if (i10 == 1) {
                return Paint.Join.BEVEL;
            }
            if (i10 == 2) {
                return Paint.Join.MITER;
            }
            if (i10 != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5783a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f5784b;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            f5784b = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5784b[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5784b[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            f5783a = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5783a[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5783a[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ShapeStroke(String str, @Nullable com.airbnb.lottie.model.animatable.b bVar, List<com.airbnb.lottie.model.animatable.b> list, com.airbnb.lottie.model.animatable.a aVar, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.b bVar2, LineCapType lineCapType, LineJoinType lineJoinType, float f10, boolean z10) {
        this.f5773a = str;
        this.f5774b = bVar;
        this.f5775c = list;
        this.f5776d = aVar;
        this.f5777e = dVar;
        this.f5778f = bVar2;
        this.f5779g = lineCapType;
        this.f5780h = lineJoinType;
        this.f5781i = f10;
        this.f5782j = z10;
    }

    @Override // com.airbnb.lottie.model.content.c
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new u(lottieDrawable, bVar, this);
    }

    public LineCapType b() {
        return this.f5779g;
    }

    public com.airbnb.lottie.model.animatable.a c() {
        return this.f5776d;
    }

    public com.airbnb.lottie.model.animatable.b d() {
        return this.f5774b;
    }

    public LineJoinType e() {
        return this.f5780h;
    }

    public List<com.airbnb.lottie.model.animatable.b> f() {
        return this.f5775c;
    }

    public float g() {
        return this.f5781i;
    }

    public String h() {
        return this.f5773a;
    }

    public com.airbnb.lottie.model.animatable.d i() {
        return this.f5777e;
    }

    public com.airbnb.lottie.model.animatable.b j() {
        return this.f5778f;
    }

    public boolean k() {
        return this.f5782j;
    }
}
