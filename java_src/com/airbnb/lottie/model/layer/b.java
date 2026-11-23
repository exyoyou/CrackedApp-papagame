package com.airbnb.lottie.model.layer;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.p;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.j;
import com.airbnb.lottie.utils.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b implements com.airbnb.lottie.animation.content.e, com.airbnb.lottie.animation.keyframe.a.b, com.airbnb.lottie.model.e {
    private static final int D = 2;
    private static final int E = 16;
    private static final int F = 1;
    private static final int G = 19;

    @Nullable
    private Paint A;
    float B;

    @Nullable
    BlurMaskFilter C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f5887a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Matrix f5888b = new Matrix();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f5889c = new Matrix();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f5890d = new com.airbnb.lottie.animation.a(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f5891e = new com.airbnb.lottie.animation.a(1, PorterDuff.Mode.DST_IN);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Paint f5892f = new com.airbnb.lottie.animation.a(1, PorterDuff.Mode.DST_OUT);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f5893g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f5894h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final RectF f5895i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final RectF f5896j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final RectF f5897k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final RectF f5898l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final RectF f5899m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final String f5900n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Matrix f5901o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final LottieDrawable f5902p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final Layer f5903q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.h f5904r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.d f5905s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private b f5906t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private b f5907u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List<b> f5908v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final List<com.airbnb.lottie.animation.keyframe.a<?, ?>> f5909w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final p f5910x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f5911y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f5912z;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5913a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f5914b;

        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            f5914b = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5914b[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5914b[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5914b[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            f5913a = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5913a[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f5913a[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f5913a[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f5913a[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f5913a[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f5913a[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    b(LottieDrawable lottieDrawable, Layer layer) {
        com.airbnb.lottie.animation.a aVar = new com.airbnb.lottie.animation.a(1);
        this.f5893g = aVar;
        this.f5894h = new com.airbnb.lottie.animation.a(PorterDuff.Mode.CLEAR);
        this.f5895i = new RectF();
        this.f5896j = new RectF();
        this.f5897k = new RectF();
        this.f5898l = new RectF();
        this.f5899m = new RectF();
        this.f5901o = new Matrix();
        this.f5909w = new ArrayList();
        this.f5911y = true;
        this.B = 0.0f;
        this.f5902p = lottieDrawable;
        this.f5903q = layer;
        this.f5900n = layer.j() + "#draw";
        if (layer.i() == Layer.MatteType.INVERT) {
            aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        p pVarB = layer.x().b();
        this.f5910x = pVarB;
        pVarB.b(this);
        if (layer.h() != null && !layer.h().isEmpty()) {
            com.airbnb.lottie.animation.keyframe.h hVar = new com.airbnb.lottie.animation.keyframe.h(layer.h());
            this.f5904r = hVar;
            Iterator<com.airbnb.lottie.animation.keyframe.a<j, Path>> it2 = hVar.a().iterator();
            while (it2.hasNext()) {
                it2.next().a(this);
            }
            for (com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2 : this.f5904r.c()) {
                i(aVar2);
                aVar2.a(this);
            }
        }
        O();
    }

    private void C(RectF rectF, Matrix matrix) {
        this.f5897k.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (A()) {
            int size = this.f5904r.b().size();
            for (int i10 = 0; i10 < size; i10++) {
                Mask mask = this.f5904r.b().get(i10);
                Path pathH = this.f5904r.a().get(i10).h();
                if (pathH != null) {
                    this.f5887a.set(pathH);
                    this.f5887a.transform(matrix);
                    int i11 = a.f5914b[mask.a().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        return;
                    }
                    if ((i11 == 3 || i11 == 4) && mask.d()) {
                        return;
                    }
                    this.f5887a.computeBounds(this.f5899m, false);
                    if (i10 == 0) {
                        this.f5897k.set(this.f5899m);
                    } else {
                        RectF rectF2 = this.f5897k;
                        rectF2.set(Math.min(rectF2.left, this.f5899m.left), Math.min(this.f5897k.top, this.f5899m.top), Math.max(this.f5897k.right, this.f5899m.right), Math.max(this.f5897k.bottom, this.f5899m.bottom));
                    }
                }
            }
            if (rectF.intersect(this.f5897k)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void D(RectF rectF, Matrix matrix) {
        if (B() && this.f5903q.i() != Layer.MatteType.INVERT) {
            this.f5898l.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f5906t.a(this.f5898l, matrix, true);
            if (rectF.intersect(this.f5898l)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void E() {
        this.f5902p.invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        N(this.f5905s.p() == 1.0f);
    }

    private void G(float f10) {
        this.f5902p.Q().o().e(this.f5903q.j(), f10);
    }

    private void N(boolean z10) {
        if (z10 != this.f5911y) {
            this.f5911y = z10;
            E();
        }
    }

    private void O() {
        if (this.f5903q.f().isEmpty()) {
            N(true);
            return;
        }
        com.airbnb.lottie.animation.keyframe.d dVar = new com.airbnb.lottie.animation.keyframe.d(this.f5903q.f());
        this.f5905s = dVar;
        dVar.l();
        this.f5905s.a(new com.airbnb.lottie.animation.keyframe.a.b() { // from class: com.airbnb.lottie.model.layer.a
            @Override // com.airbnb.lottie.animation.keyframe.a.b
            public final void d() {
                this.f5886a.F();
            }
        });
        N(this.f5905s.h().floatValue() == 1.0f);
        i(this.f5905s);
    }

    private void j(Canvas canvas, Matrix matrix, com.airbnb.lottie.animation.keyframe.a<j, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        this.f5887a.set(aVar.h());
        this.f5887a.transform(matrix);
        this.f5890d.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f5887a, this.f5890d);
    }

    private void k(Canvas canvas, Matrix matrix, com.airbnb.lottie.animation.keyframe.a<j, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        l.n(canvas, this.f5895i, this.f5891e);
        this.f5887a.set(aVar.h());
        this.f5887a.transform(matrix);
        this.f5890d.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f5887a, this.f5890d);
        canvas.restore();
    }

    private void l(Canvas canvas, Matrix matrix, com.airbnb.lottie.animation.keyframe.a<j, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        l.n(canvas, this.f5895i, this.f5890d);
        canvas.drawRect(this.f5895i, this.f5890d);
        this.f5887a.set(aVar.h());
        this.f5887a.transform(matrix);
        this.f5890d.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f5887a, this.f5892f);
        canvas.restore();
    }

    private void m(Canvas canvas, Matrix matrix, com.airbnb.lottie.animation.keyframe.a<j, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        l.n(canvas, this.f5895i, this.f5891e);
        canvas.drawRect(this.f5895i, this.f5890d);
        this.f5892f.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        this.f5887a.set(aVar.h());
        this.f5887a.transform(matrix);
        canvas.drawPath(this.f5887a, this.f5892f);
        canvas.restore();
    }

    private void n(Canvas canvas, Matrix matrix, com.airbnb.lottie.animation.keyframe.a<j, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        l.n(canvas, this.f5895i, this.f5892f);
        canvas.drawRect(this.f5895i, this.f5890d);
        this.f5892f.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        this.f5887a.set(aVar.h());
        this.f5887a.transform(matrix);
        canvas.drawPath(this.f5887a, this.f5892f);
        canvas.restore();
    }

    private void o(Canvas canvas, Matrix matrix) {
        com.airbnb.lottie.e.b("Layer#saveLayer");
        l.o(canvas, this.f5895i, this.f5891e, 19);
        if (Build.VERSION.SDK_INT < 28) {
            s(canvas);
        }
        com.airbnb.lottie.e.c("Layer#saveLayer");
        for (int i10 = 0; i10 < this.f5904r.b().size(); i10++) {
            Mask mask = this.f5904r.b().get(i10);
            com.airbnb.lottie.animation.keyframe.a<j, Path> aVar = this.f5904r.a().get(i10);
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2 = this.f5904r.c().get(i10);
            int i11 = a.f5914b[mask.a().ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == 0) {
                        this.f5890d.setColor(-16777216);
                        this.f5890d.setAlpha(255);
                        canvas.drawRect(this.f5895i, this.f5890d);
                    }
                    if (mask.d()) {
                        n(canvas, matrix, aVar, aVar2);
                    } else {
                        p(canvas, matrix, aVar);
                    }
                } else if (i11 != 3) {
                    if (i11 == 4) {
                        if (mask.d()) {
                            l(canvas, matrix, aVar, aVar2);
                        } else {
                            j(canvas, matrix, aVar, aVar2);
                        }
                    }
                } else if (mask.d()) {
                    m(canvas, matrix, aVar, aVar2);
                } else {
                    k(canvas, matrix, aVar, aVar2);
                }
            } else if (q()) {
                this.f5890d.setAlpha(255);
                canvas.drawRect(this.f5895i, this.f5890d);
            }
        }
        com.airbnb.lottie.e.b("Layer#restoreLayer");
        canvas.restore();
        com.airbnb.lottie.e.c("Layer#restoreLayer");
    }

    private void p(Canvas canvas, Matrix matrix, com.airbnb.lottie.animation.keyframe.a<j, Path> aVar) {
        this.f5887a.set(aVar.h());
        this.f5887a.transform(matrix);
        canvas.drawPath(this.f5887a, this.f5892f);
    }

    private boolean q() {
        if (this.f5904r.a().isEmpty()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f5904r.b().size(); i10++) {
            if (this.f5904r.b().get(i10).a() != Mask.MaskMode.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void r() {
        if (this.f5908v != null) {
            return;
        }
        if (this.f5907u == null) {
            this.f5908v = Collections.emptyList();
            return;
        }
        this.f5908v = new ArrayList();
        for (b bVar = this.f5907u; bVar != null; bVar = bVar.f5907u) {
            this.f5908v.add(bVar);
        }
    }

    private void s(Canvas canvas) {
        com.airbnb.lottie.e.b("Layer#clearLayer");
        RectF rectF = this.f5895i;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f5894h);
        com.airbnb.lottie.e.c("Layer#clearLayer");
    }

    @Nullable
    static b u(c cVar, Layer layer, LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar) {
        switch (a.f5913a[layer.g().ordinal()]) {
            case 1:
                return new f(lottieDrawable, layer, cVar, jVar);
            case 2:
                return new c(lottieDrawable, layer, jVar.p(layer.n()), jVar);
            case 3:
                return new g(lottieDrawable, layer);
            case 4:
                return new d(lottieDrawable, layer);
            case 5:
                return new e(lottieDrawable, layer);
            case 6:
                return new h(lottieDrawable, layer);
            default:
                com.airbnb.lottie.utils.f.e("Unknown layer type " + layer.g());
                return null;
        }
    }

    boolean A() {
        com.airbnb.lottie.animation.keyframe.h hVar = this.f5904r;
        return (hVar == null || hVar.a().isEmpty()) ? false : true;
    }

    boolean B() {
        return this.f5906t != null;
    }

    public void H(com.airbnb.lottie.animation.keyframe.a<?, ?> aVar) {
        this.f5909w.remove(aVar);
    }

    void I(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
    }

    void J(@Nullable b bVar) {
        this.f5906t = bVar;
    }

    void K(boolean z10) {
        if (z10 && this.A == null) {
            this.A = new com.airbnb.lottie.animation.a();
        }
        this.f5912z = z10;
    }

    void L(@Nullable b bVar) {
        this.f5907u = bVar;
    }

    void M(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        com.airbnb.lottie.e.b("BaseLayer#setProgress");
        com.airbnb.lottie.e.b("BaseLayer#setProgress.transform");
        this.f5910x.j(f10);
        com.airbnb.lottie.e.c("BaseLayer#setProgress.transform");
        if (this.f5904r != null) {
            com.airbnb.lottie.e.b("BaseLayer#setProgress.mask");
            for (int i10 = 0; i10 < this.f5904r.a().size(); i10++) {
                this.f5904r.a().get(i10).m(f10);
            }
            com.airbnb.lottie.e.c("BaseLayer#setProgress.mask");
        }
        if (this.f5905s != null) {
            com.airbnb.lottie.e.b("BaseLayer#setProgress.inout");
            this.f5905s.m(f10);
            com.airbnb.lottie.e.c("BaseLayer#setProgress.inout");
        }
        if (this.f5906t != null) {
            com.airbnb.lottie.e.b("BaseLayer#setProgress.matte");
            this.f5906t.M(f10);
            com.airbnb.lottie.e.c("BaseLayer#setProgress.matte");
        }
        com.airbnb.lottie.e.b("BaseLayer#setProgress.animations." + this.f5909w.size());
        for (int i11 = 0; i11 < this.f5909w.size(); i11++) {
            this.f5909w.get(i11).m(f10);
        }
        com.airbnb.lottie.e.c("BaseLayer#setProgress.animations." + this.f5909w.size());
        com.airbnb.lottie.e.c("BaseLayer#setProgress");
    }

    @Override // com.airbnb.lottie.animation.content.e
    @CallSuper
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        this.f5895i.set(0.0f, 0.0f, 0.0f, 0.0f);
        r();
        this.f5901o.set(matrix);
        if (z10) {
            List<b> list = this.f5908v;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f5901o.preConcat(this.f5908v.get(size).f5910x.f());
                }
            } else {
                b bVar = this.f5907u;
                if (bVar != null) {
                    this.f5901o.preConcat(bVar.f5910x.f());
                }
            }
        }
        this.f5901o.preConcat(this.f5910x.f());
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void c(Canvas canvas, Matrix matrix, int i10) {
        Paint paint;
        Integer numH;
        com.airbnb.lottie.e.b(this.f5900n);
        if (!this.f5911y || this.f5903q.y()) {
            com.airbnb.lottie.e.c(this.f5900n);
            return;
        }
        r();
        com.airbnb.lottie.e.b("Layer#parentMatrix");
        this.f5888b.reset();
        this.f5888b.set(matrix);
        for (int size = this.f5908v.size() - 1; size >= 0; size--) {
            this.f5888b.preConcat(this.f5908v.get(size).f5910x.f());
        }
        com.airbnb.lottie.e.c("Layer#parentMatrix");
        com.airbnb.lottie.animation.keyframe.a<?, Integer> aVarH = this.f5910x.h();
        int iIntValue = (int) ((((i10 / 255.0f) * ((aVarH == null || (numH = aVarH.h()) == null) ? 100 : numH.intValue())) / 100.0f) * 255.0f);
        if (!B() && !A()) {
            this.f5888b.preConcat(this.f5910x.f());
            com.airbnb.lottie.e.b("Layer#drawLayer");
            t(canvas, this.f5888b, iIntValue);
            com.airbnb.lottie.e.c("Layer#drawLayer");
            G(com.airbnb.lottie.e.c(this.f5900n));
            return;
        }
        com.airbnb.lottie.e.b("Layer#computeBounds");
        a(this.f5895i, this.f5888b, false);
        D(this.f5895i, matrix);
        this.f5888b.preConcat(this.f5910x.f());
        C(this.f5895i, this.f5888b);
        this.f5896j.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        canvas.getMatrix(this.f5889c);
        if (!this.f5889c.isIdentity()) {
            Matrix matrix2 = this.f5889c;
            matrix2.invert(matrix2);
            this.f5889c.mapRect(this.f5896j);
        }
        if (!this.f5895i.intersect(this.f5896j)) {
            this.f5895i.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        com.airbnb.lottie.e.c("Layer#computeBounds");
        if (this.f5895i.width() >= 1.0f && this.f5895i.height() >= 1.0f) {
            com.airbnb.lottie.e.b("Layer#saveLayer");
            this.f5890d.setAlpha(255);
            l.n(canvas, this.f5895i, this.f5890d);
            com.airbnb.lottie.e.c("Layer#saveLayer");
            s(canvas);
            com.airbnb.lottie.e.b("Layer#drawLayer");
            t(canvas, this.f5888b, iIntValue);
            com.airbnb.lottie.e.c("Layer#drawLayer");
            if (A()) {
                o(canvas, this.f5888b);
            }
            if (B()) {
                com.airbnb.lottie.e.b("Layer#drawMatte");
                com.airbnb.lottie.e.b("Layer#saveLayer");
                l.o(canvas, this.f5895i, this.f5893g, 19);
                com.airbnb.lottie.e.c("Layer#saveLayer");
                s(canvas);
                this.f5906t.c(canvas, matrix, iIntValue);
                com.airbnb.lottie.e.b("Layer#restoreLayer");
                canvas.restore();
                com.airbnb.lottie.e.c("Layer#restoreLayer");
                com.airbnb.lottie.e.c("Layer#drawMatte");
            }
            com.airbnb.lottie.e.b("Layer#restoreLayer");
            canvas.restore();
            com.airbnb.lottie.e.c("Layer#restoreLayer");
        }
        if (this.f5912z && (paint = this.A) != null) {
            paint.setStyle(Paint.Style.STROKE);
            this.A.setColor(-251901);
            this.A.setStrokeWidth(4.0f);
            canvas.drawRect(this.f5895i, this.A);
            this.A.setStyle(Paint.Style.FILL);
            this.A.setColor(1357638635);
            canvas.drawRect(this.f5895i, this.A);
        }
        G(com.airbnb.lottie.e.c(this.f5900n));
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        E();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<com.airbnb.lottie.animation.content.c> list, List<com.airbnb.lottie.animation.content.c> list2) {
    }

    @Override // com.airbnb.lottie.model.e
    @CallSuper
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        this.f5910x.c(t10, jVar);
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5903q.j();
    }

    @Override // com.airbnb.lottie.model.e
    public void h(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        b bVar = this.f5906t;
        if (bVar != null) {
            com.airbnb.lottie.model.d dVarA = dVar2.a(bVar.getName());
            if (dVar.c(this.f5906t.getName(), i10)) {
                list.add(dVarA.j(this.f5906t));
            }
            if (dVar.i(getName(), i10)) {
                this.f5906t.I(dVar, dVar.e(this.f5906t.getName(), i10) + i10, list, dVarA);
            }
        }
        if (dVar.h(getName(), i10)) {
            if (!"__container".equals(getName())) {
                dVar2 = dVar2.a(getName());
                if (dVar.c(getName(), i10)) {
                    list.add(dVar2.j(this));
                }
            }
            if (dVar.i(getName(), i10)) {
                I(dVar, i10 + dVar.e(getName(), i10), list, dVar2);
            }
        }
    }

    public void i(@Nullable com.airbnb.lottie.animation.keyframe.a<?, ?> aVar) {
        if (aVar == null) {
            return;
        }
        this.f5909w.add(aVar);
    }

    abstract void t(Canvas canvas, Matrix matrix, int i10);

    public LBlendMode v() {
        return this.f5903q.a();
    }

    @Nullable
    public com.airbnb.lottie.model.content.a w() {
        return this.f5903q.b();
    }

    public BlurMaskFilter x(float f10) {
        if (this.B == f10) {
            return this.C;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f10 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.C = blurMaskFilter;
        this.B = f10;
        return blurMaskFilter;
    }

    @Nullable
    public com.airbnb.lottie.parser.j y() {
        return this.f5903q.d();
    }

    Layer z() {
        return this.f5903q;
    }
}
