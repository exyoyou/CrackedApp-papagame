package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class d implements e, n, com.airbnb.lottie.animation.keyframe.a.b, com.airbnb.lottie.model.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f5374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f5375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f5376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Path f5377d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f5378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f5379f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f5380g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<c> f5381h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final LottieDrawable f5382i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private List<n> f5383j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.p f5384k;

    public d(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, com.airbnb.lottie.model.content.l lVar, com.airbnb.lottie.j jVar) {
        this(lottieDrawable, bVar, lVar.c(), lVar.d(), b(lottieDrawable, jVar, bVar, lVar.b()), i(lVar.b()));
    }

    private static List<c> b(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar, List<com.airbnb.lottie.model.content.c> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVarA = list.get(i10).a(lottieDrawable, jVar, bVar);
            if (cVarA != null) {
                arrayList.add(cVarA);
            }
        }
        return arrayList;
    }

    @Nullable
    static com.airbnb.lottie.model.animatable.l i(List<com.airbnb.lottie.model.content.c> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.airbnb.lottie.model.content.c cVar = list.get(i10);
            if (cVar instanceof com.airbnb.lottie.model.animatable.l) {
                return (com.airbnb.lottie.model.animatable.l) cVar;
            }
        }
        return null;
    }

    private boolean m() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f5381h.size(); i11++) {
            if ((this.f5381h.get(i11) instanceof e) && (i10 = i10 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        this.f5376c.set(matrix);
        com.airbnb.lottie.animation.keyframe.p pVar = this.f5384k;
        if (pVar != null) {
            this.f5376c.preConcat(pVar.f());
        }
        this.f5378e.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f5381h.size() - 1; size >= 0; size--) {
            c cVar = this.f5381h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).a(this.f5378e, this.f5376c, z10);
                rectF.union(this.f5378e);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void c(Canvas canvas, Matrix matrix, int i10) {
        if (this.f5380g) {
            return;
        }
        this.f5376c.set(matrix);
        com.airbnb.lottie.animation.keyframe.p pVar = this.f5384k;
        if (pVar != null) {
            this.f5376c.preConcat(pVar.f());
            i10 = (int) (((((this.f5384k.h() == null ? 100 : this.f5384k.h().h().intValue()) / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        boolean z10 = this.f5382i.n0() && m() && i10 != 255;
        if (z10) {
            this.f5375b.set(0.0f, 0.0f, 0.0f, 0.0f);
            a(this.f5375b, this.f5376c, true);
            this.f5374a.setAlpha(i10);
            com.airbnb.lottie.utils.l.n(canvas, this.f5375b, this.f5374a);
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.f5381h.size() - 1; size >= 0; size--) {
            c cVar = this.f5381h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).c(canvas, this.f5376c, i10);
            }
        }
        if (z10) {
            canvas.restore();
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        this.f5382i.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f5381h.size());
        arrayList.addAll(list);
        for (int size = this.f5381h.size() - 1; size >= 0; size--) {
            c cVar = this.f5381h.get(size);
            cVar.e(arrayList, this.f5381h.subList(0, size));
            arrayList.add(cVar);
        }
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        com.airbnb.lottie.animation.keyframe.p pVar = this.f5384k;
        if (pVar != null) {
            pVar.c(t10, jVar);
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5379f;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        this.f5376c.reset();
        com.airbnb.lottie.animation.keyframe.p pVar = this.f5384k;
        if (pVar != null) {
            this.f5376c.set(pVar.f());
        }
        this.f5377d.reset();
        if (this.f5380g) {
            return this.f5377d;
        }
        for (int size = this.f5381h.size() - 1; size >= 0; size--) {
            c cVar = this.f5381h.get(size);
            if (cVar instanceof n) {
                this.f5377d.addPath(((n) cVar).getPath(), this.f5376c);
            }
        }
        return this.f5377d;
    }

    @Override // com.airbnb.lottie.model.e
    public void h(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        if (dVar.h(getName(), i10) || "__container".equals(getName())) {
            if (!"__container".equals(getName())) {
                dVar2 = dVar2.a(getName());
                if (dVar.c(getName(), i10)) {
                    list.add(dVar2.j(this));
                }
            }
            if (dVar.i(getName(), i10)) {
                int iE = i10 + dVar.e(getName(), i10);
                for (int i11 = 0; i11 < this.f5381h.size(); i11++) {
                    c cVar = this.f5381h.get(i11);
                    if (cVar instanceof com.airbnb.lottie.model.e) {
                        ((com.airbnb.lottie.model.e) cVar).h(dVar, iE, list, dVar2);
                    }
                }
            }
        }
    }

    public List<c> j() {
        return this.f5381h;
    }

    List<n> k() {
        if (this.f5383j == null) {
            this.f5383j = new ArrayList();
            for (int i10 = 0; i10 < this.f5381h.size(); i10++) {
                c cVar = this.f5381h.get(i10);
                if (cVar instanceof n) {
                    this.f5383j.add((n) cVar);
                }
            }
        }
        return this.f5383j;
    }

    Matrix l() {
        com.airbnb.lottie.animation.keyframe.p pVar = this.f5384k;
        if (pVar != null) {
            return pVar.f();
        }
        this.f5376c.reset();
        return this.f5376c;
    }

    d(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, String str, boolean z10, List<c> list, @Nullable com.airbnb.lottie.model.animatable.l lVar) {
        this.f5374a = new com.airbnb.lottie.animation.a();
        this.f5375b = new RectF();
        this.f5376c = new Matrix();
        this.f5377d = new Path();
        this.f5378e = new RectF();
        this.f5379f = str;
        this.f5382i = lottieDrawable;
        this.f5380g = z10;
        this.f5381h = list;
        if (lVar != null) {
            com.airbnb.lottie.animation.keyframe.p pVarB = lVar.b();
            this.f5384k = pVarB;
            pVarB.a(bVar);
            this.f5384k.b(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof j) {
                arrayList.add((j) cVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((j) arrayList.get(size2)).b(list.listIterator(list.size()));
        }
    }
}
