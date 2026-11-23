package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.q;
import com.airbnb.lottie.b1;
import com.airbnb.lottie.j;
import com.airbnb.lottie.utils.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c extends b {

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> H;
    private final List<b> I;
    private final RectF J;
    private final RectF K;
    private final Paint L;

    @Nullable
    private Boolean M;

    @Nullable
    private Boolean N;
    private float O;
    private boolean P;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5915a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f5915a = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5915a[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public c(LottieDrawable lottieDrawable, Layer layer, List<Layer> list, j jVar) {
        int i10;
        b bVar;
        super(lottieDrawable, layer);
        this.I = new ArrayList();
        this.J = new RectF();
        this.K = new RectF();
        this.L = new Paint();
        this.P = true;
        com.airbnb.lottie.model.animatable.b bVarV = layer.v();
        if (bVarV != null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = bVarV.a();
            this.H = aVarA;
            i(aVarA);
            this.H.a(this);
        } else {
            this.H = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(jVar.k().size());
        int size = list.size() - 1;
        b bVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            Layer layer2 = list.get(size);
            b bVarU = b.u(this, layer2, lottieDrawable, jVar);
            if (bVarU != null) {
                longSparseArray.put(bVarU.z().e(), bVarU);
                if (bVar2 != null) {
                    bVar2.J(bVarU);
                    bVar2 = null;
                } else {
                    this.I.add(0, bVarU);
                    int i11 = a.f5915a[layer2.i().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        bVar2 = bVarU;
                    }
                }
            }
            size--;
        }
        for (i10 = 0; i10 < longSparseArray.size(); i10++) {
            b bVar3 = (b) longSparseArray.get(longSparseArray.keyAt(i10));
            if (bVar3 != null && (bVar = (b) longSparseArray.get(bVar3.z().k())) != null) {
                bVar3.L(bVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.b
    protected void I(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        for (int i11 = 0; i11 < this.I.size(); i11++) {
            this.I.get(i11).h(dVar, i10, list, dVar2);
        }
    }

    @Override // com.airbnb.lottie.model.layer.b
    public void K(boolean z10) {
        super.K(z10);
        Iterator<b> it2 = this.I.iterator();
        while (it2.hasNext()) {
            it2.next().K(z10);
        }
    }

    @Override // com.airbnb.lottie.model.layer.b
    public void M(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        com.airbnb.lottie.e.b("CompositionLayer#setProgress");
        this.O = f10;
        super.M(f10);
        if (this.H != null) {
            f10 = ((this.H.h().floatValue() * this.f5903q.c().i()) - this.f5903q.c().r()) / (this.f5902p.Q().e() + 0.01f);
        }
        if (this.H == null) {
            f10 -= this.f5903q.s();
        }
        if (this.f5903q.w() != 0.0f && !"__container".equals(this.f5903q.j())) {
            f10 /= this.f5903q.w();
        }
        for (int size = this.I.size() - 1; size >= 0; size--) {
            this.I.get(size).M(f10);
        }
        com.airbnb.lottie.e.c("CompositionLayer#setProgress");
    }

    public float P() {
        return this.O;
    }

    public boolean Q() {
        if (this.N == null) {
            for (int size = this.I.size() - 1; size >= 0; size--) {
                b bVar = this.I.get(size);
                if (bVar instanceof f) {
                    if (bVar.A()) {
                        this.N = Boolean.TRUE;
                        return true;
                    }
                } else if ((bVar instanceof c) && ((c) bVar).Q()) {
                    this.N = Boolean.TRUE;
                    return true;
                }
            }
            this.N = Boolean.FALSE;
        }
        return this.N.booleanValue();
    }

    public boolean R() {
        if (this.M == null) {
            if (B()) {
                this.M = Boolean.TRUE;
                return true;
            }
            for (int size = this.I.size() - 1; size >= 0; size--) {
                if (this.I.get(size).B()) {
                    this.M = Boolean.TRUE;
                    return true;
                }
            }
            this.M = Boolean.FALSE;
        }
        return this.M.booleanValue();
    }

    public void S(boolean z10) {
        this.P = z10;
    }

    @Override // com.airbnb.lottie.model.layer.b, com.airbnb.lottie.animation.content.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        super.a(rectF, matrix, z10);
        for (int size = this.I.size() - 1; size >= 0; size--) {
            this.J.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.I.get(size).a(this.J, this.f5901o, true);
            rectF.union(this.J);
        }
    }

    @Override // com.airbnb.lottie.model.layer.b, com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        super.g(t10, jVar);
        if (t10 == b1.E) {
            if (jVar == null) {
                com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar = this.H;
                if (aVar != null) {
                    aVar.n(null);
                    return;
                }
                return;
            }
            q qVar = new q(jVar);
            this.H = qVar;
            qVar.a(this);
            i(this.H);
        }
    }

    @Override // com.airbnb.lottie.model.layer.b
    void t(Canvas canvas, Matrix matrix, int i10) {
        com.airbnb.lottie.e.b("CompositionLayer#draw");
        this.K.set(0.0f, 0.0f, this.f5903q.m(), this.f5903q.l());
        matrix.mapRect(this.K);
        boolean z10 = this.f5902p.n0() && this.I.size() > 1 && i10 != 255;
        if (z10) {
            this.L.setAlpha(i10);
            l.n(canvas, this.K, this.L);
        } else {
            canvas.save();
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.I.size() - 1; size >= 0; size--) {
            if (((!this.P && "__container".equals(this.f5903q.j())) || this.K.isEmpty()) ? true : canvas.clipRect(this.K)) {
                this.I.get(size).c(canvas, matrix, i10);
            }
        }
        canvas.restore();
        com.airbnb.lottie.e.c("CompositionLayer#draw");
    }
}
