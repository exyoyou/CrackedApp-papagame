package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.b1;
import com.airbnb.lottie.model.content.GradientType;

/* JADX INFO: loaded from: classes7.dex */
public class i extends a {
    private static final int C = 32;
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> A;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.q B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f5429r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f5430s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final LongSparseArray<LinearGradient> f5431t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final LongSparseArray<RadialGradient> f5432u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final RectF f5433v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final GradientType f5434w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f5435x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.d, com.airbnb.lottie.model.content.d> f5436y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> f5437z;

    public i(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, com.airbnb.lottie.model.content.f fVar) {
        super(lottieDrawable, bVar, fVar.b().toPaintCap(), fVar.g().toPaintJoin(), fVar.i(), fVar.k(), fVar.m(), fVar.h(), fVar.c());
        this.f5431t = new LongSparseArray<>();
        this.f5432u = new LongSparseArray<>();
        this.f5433v = new RectF();
        this.f5429r = fVar.j();
        this.f5434w = fVar.f();
        this.f5430s = fVar.n();
        this.f5435x = (int) (lottieDrawable.Q().d() / 32.0f);
        com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.d, com.airbnb.lottie.model.content.d> aVarA = fVar.e().a();
        this.f5436y = aVarA;
        aVarA.a(this);
        bVar.i(aVarA);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA2 = fVar.l().a();
        this.f5437z = aVarA2;
        aVarA2.a(this);
        bVar.i(aVarA2);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA3 = fVar.d().a();
        this.A = aVarA3;
        aVarA3.a(this);
        bVar.i(aVarA3);
    }

    private int[] j(int[] iArr) {
        com.airbnb.lottie.animation.keyframe.q qVar = this.B;
        if (qVar != null) {
            Integer[] numArr = (Integer[]) qVar.h();
            int i10 = 0;
            if (iArr.length == numArr.length) {
                while (i10 < iArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i10 < numArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            }
        }
        return iArr;
    }

    private int k() {
        int iRound = Math.round(this.f5437z.f() * this.f5435x);
        int iRound2 = Math.round(this.A.f() * this.f5435x);
        int iRound3 = Math.round(this.f5436y.f() * this.f5435x);
        int i10 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private LinearGradient l() {
        long jK = k();
        LinearGradient linearGradient = this.f5431t.get(jK);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointFH = this.f5437z.h();
        PointF pointFH2 = this.A.h();
        com.airbnb.lottie.model.content.d dVarH = this.f5436y.h();
        LinearGradient linearGradient2 = new LinearGradient(pointFH.x, pointFH.y, pointFH2.x, pointFH2.y, j(dVarH.c()), dVarH.d(), Shader.TileMode.CLAMP);
        this.f5431t.put(jK, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient m() {
        long jK = k();
        RadialGradient radialGradient = this.f5432u.get(jK);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointFH = this.f5437z.h();
        PointF pointFH2 = this.A.h();
        com.airbnb.lottie.model.content.d dVarH = this.f5436y.h();
        int[] iArrJ = j(dVarH.c());
        float[] fArrD = dVarH.d();
        float f10 = pointFH.x;
        float f11 = pointFH.y;
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, (float) Math.hypot(pointFH2.x - f10, pointFH2.y - f11), iArrJ, fArrD, Shader.TileMode.CLAMP);
        this.f5432u.put(jK, radialGradient2);
        return radialGradient2;
    }

    @Override // com.airbnb.lottie.animation.content.a, com.airbnb.lottie.animation.content.e
    public void c(Canvas canvas, Matrix matrix, int i10) {
        if (this.f5430s) {
            return;
        }
        a(this.f5433v, matrix, false);
        Shader shaderL = this.f5434w == GradientType.LINEAR ? l() : m();
        shaderL.setLocalMatrix(matrix);
        this.f5362i.setShader(shaderL);
        super.c(canvas, matrix, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.animation.content.a, com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        super.g(t10, jVar);
        if (t10 == b1.L) {
            com.airbnb.lottie.animation.keyframe.q qVar = this.B;
            if (qVar != null) {
                this.f5359f.H(qVar);
            }
            if (jVar == null) {
                this.B = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.q qVar2 = new com.airbnb.lottie.animation.keyframe.q(jVar);
            this.B = qVar2;
            qVar2.a(this);
            this.f5359f.i(this.B);
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5429r;
    }
}
