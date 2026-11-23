package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class CarouselLayoutManager extends RecyclerView.LayoutManager implements com.google.android.material.carousel.b, RecyclerView.SmoothScroller.ScrollVectorProvider {
    private static final String C = "CarouselLayoutManager";
    public static final int D = 0;
    public static final int E = 1;
    public static final int F = 0;
    public static final int G = 1;
    private int A;
    private int B;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @VisibleForTesting
    int f29805n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    int f29806o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @VisibleForTesting
    int f29807p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f29808q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final c f29809r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    private g f29810s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private l f29811t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private k f29812u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f29813v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private Map<Integer, k> f29814w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.google.android.material.carousel.e f29815x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final View.OnLayoutChangeListener f29816y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f29817z;

    class a extends LinearSmoothScroller {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDxToMakeVisible(View view, int i10) {
            if (CarouselLayoutManager.this.f29811t == null || !CarouselLayoutManager.this.d()) {
                return 0;
            }
            CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
            return carouselLayoutManager.s(carouselLayoutManager.getPosition(view));
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDyToMakeVisible(View view, int i10) {
            if (CarouselLayoutManager.this.f29811t == null || CarouselLayoutManager.this.d()) {
                return 0;
            }
            CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
            return carouselLayoutManager.s(carouselLayoutManager.getPosition(view));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        @Nullable
        public PointF computeScrollVectorForPosition(int i10) {
            return CarouselLayoutManager.this.computeScrollVectorForPosition(i10);
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final View f29819a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float f29820b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final float f29821c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final d f29822d;

        b(View view, float f10, float f11, d dVar) {
            this.f29819a = view;
            this.f29820b = f10;
            this.f29821c = f11;
            this.f29822d = dVar;
        }
    }

    private static class c extends RecyclerView.ItemDecoration {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Paint f29823e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<k.c> f29824f;

        c() {
            Paint paint = new Paint();
            this.f29823e = paint;
            this.f29824f = Collections.unmodifiableList(new ArrayList());
            paint.setStrokeWidth(5.0f);
            paint.setColor(-65281);
        }

        void a(List<k.c> list) {
            this.f29824f = Collections.unmodifiableList(list);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            super.onDrawOver(canvas, recyclerView, state);
            this.f29823e.setStrokeWidth(recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width));
            for (k.c cVar : this.f29824f) {
                this.f29823e.setColor(ColorUtils.blendARGB(-65281, -16776961, cVar.f29879c));
                if (((CarouselLayoutManager) recyclerView.getLayoutManager()).d()) {
                    canvas.drawLine(cVar.f29878b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).J(), cVar.f29878b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).E(), this.f29823e);
                } else {
                    canvas.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).G(), cVar.f29878b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).H(), cVar.f29878b, this.f29823e);
                }
            }
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final k.c f29825a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final k.c f29826b;

        d(k.c cVar, k.c cVar2) {
            Preconditions.checkArgument(cVar.f29877a <= cVar2.f29877a);
            this.f29825a = cVar;
            this.f29826b = cVar2;
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final int f29827a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final int f29828b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final int f29829c = Integer.MIN_VALUE;

        private e() {
        }
    }

    public CarouselLayoutManager() {
        this(new p());
    }

    private int A() {
        if (getClipToPadding() || !this.f29810s.f()) {
            return 0;
        }
        return getOrientation() == 1 ? getPaddingTop() : getPaddingLeft();
    }

    private float B(float f10, d dVar) {
        k.c cVar = dVar.f29825a;
        float f11 = cVar.f29880d;
        k.c cVar2 = dVar.f29826b;
        return com.google.android.material.animation.b.b(f11, cVar2.f29880d, cVar.f29878b, cVar2.f29878b, f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int E() {
        return this.f29815x.h();
    }

    private int F() {
        return this.f29815x.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int G() {
        return this.f29815x.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int H() {
        return this.f29815x.k();
    }

    private int I() {
        return this.f29815x.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int J() {
        return this.f29815x.m();
    }

    private int K() {
        if (getClipToPadding() || !this.f29810s.f()) {
            return 0;
        }
        return getOrientation() == 1 ? getPaddingBottom() : getPaddingRight();
    }

    private int L(int i10, k kVar) {
        return O() ? (int) (((w() - kVar.h().f29877a) - (i10 * kVar.f())) - (kVar.f() / 2.0f)) : (int) (((i10 * kVar.f()) - kVar.a().f29877a) + (kVar.f() / 2.0f));
    }

    private int M(int i10, @NonNull k kVar) {
        int i11 = Integer.MAX_VALUE;
        for (k.c cVar : kVar.e()) {
            float f10 = (i10 * kVar.f()) + (kVar.f() / 2.0f);
            int iW = (O() ? (int) ((w() - cVar.f29877a) - f10) : (int) (f10 - cVar.f29877a)) - this.f29805n;
            if (Math.abs(i11) > Math.abs(iW)) {
                i11 = iW;
            }
        }
        return i11;
    }

    private static d N(List<k.c> list, float f10, boolean z10) {
        float f11 = Float.MAX_VALUE;
        float f12 = Float.MAX_VALUE;
        float f13 = Float.MAX_VALUE;
        float f14 = -3.4028235E38f;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < list.size(); i14++) {
            k.c cVar = list.get(i14);
            float f15 = z10 ? cVar.f29878b : cVar.f29877a;
            float fAbs = Math.abs(f15 - f10);
            if (f15 <= f10 && fAbs <= f11) {
                i10 = i14;
                f11 = fAbs;
            }
            if (f15 > f10 && fAbs <= f12) {
                i12 = i14;
                f12 = fAbs;
            }
            if (f15 <= f13) {
                i11 = i14;
                f13 = f15;
            }
            if (f15 > f14) {
                i13 = i14;
                f14 = f15;
            }
        }
        if (i10 == -1) {
            i10 = i11;
        }
        if (i12 == -1) {
            i12 = i13;
        }
        return new d(list.get(i10), list.get(i12));
    }

    private boolean P(float f10, d dVar) {
        float fL = l(f10, B(f10, dVar) / 2.0f);
        if (O()) {
            if (fL < 0.0f) {
                return true;
            }
        } else if (fL > w()) {
            return true;
        }
        return false;
    }

    private boolean Q(float f10, d dVar) {
        float fK = k(f10, B(f10, dVar) / 2.0f);
        if (O()) {
            if (fK > w()) {
                return true;
            }
        } else if (fK < 0.0f) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (i10 == i14 && i11 == i15 && i12 == i16 && i13 == i17) {
            return;
        }
        view.post(new Runnable() { // from class: com.google.android.material.carousel.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f29846b.W();
            }
        });
    }

    private void S() {
        if (this.f29808q && Log.isLoggable(C, 3)) {
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                float fX = x(childAt);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("item position ");
                sb2.append(getPosition(childAt));
                sb2.append(", center:");
                sb2.append(fX);
                sb2.append(", child index:");
                sb2.append(i10);
            }
        }
    }

    private b T(RecyclerView.Recycler recycler, float f10, int i10) {
        View viewForPosition = recycler.getViewForPosition(i10);
        measureChildWithMargins(viewForPosition, 0, 0);
        float fK = k(f10, this.f29812u.f() / 2.0f);
        d dVarN = N(this.f29812u.g(), fK, false);
        return new b(viewForPosition, fK, p(viewForPosition, fK, dVarN), dVarN);
    }

    private float U(View view, float f10, float f11, Rect rect) {
        float fK = k(f10, f11);
        d dVarN = N(this.f29812u.g(), fK, false);
        float fP = p(view, fK, dVarN);
        super.getDecoratedBoundsWithMargins(view, rect);
        d0(view, fK, dVarN);
        this.f29815x.p(view, rect, f11, fP);
        return fP;
    }

    private void V(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(0);
        measureChildWithMargins(viewForPosition, 0, 0);
        k kVarG = this.f29810s.g(this, viewForPosition);
        if (O()) {
            kVarG = k.n(kVarG, w());
        }
        this.f29811t = l.f(this, kVarG, y(), A(), K());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        this.f29811t = null;
        requestLayout();
    }

    private void X(RecyclerView.Recycler recycler) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            float fX = x(childAt);
            if (!Q(fX, N(this.f29812u.g(), fX, true))) {
                break;
            } else {
                removeAndRecycleView(childAt, recycler);
            }
        }
        while (getChildCount() - 1 >= 0) {
            View childAt2 = getChildAt(getChildCount() - 1);
            float fX2 = x(childAt2);
            if (!P(fX2, N(this.f29812u.g(), fX2, true))) {
                return;
            } else {
                removeAndRecycleView(childAt2, recycler);
            }
        }
    }

    private void Y(RecyclerView recyclerView, int i10) {
        if (d()) {
            recyclerView.scrollBy(i10, 0);
        } else {
            recyclerView.scrollBy(0, i10);
        }
    }

    private void a0(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Carousel);
            Z(typedArrayObtainStyledAttributes.getInt(R.styleable.Carousel_carousel_alignment, 0));
            setOrientation(typedArrayObtainStyledAttributes.getInt(R.styleable.RecyclerView_android_orientation, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private int convertFocusDirectionToLayoutDirection(int i10) {
        int orientation = getOrientation();
        if (i10 == 1) {
            return -1;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 17) {
            if (orientation == 0) {
                return O() ? 1 : -1;
            }
            return Integer.MIN_VALUE;
        }
        if (i10 == 33) {
            return orientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 == 66) {
            if (orientation == 0) {
                return O() ? -1 : 1;
            }
            return Integer.MIN_VALUE;
        }
        if (i10 == 130) {
            return orientation == 1 ? 1 : Integer.MIN_VALUE;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unknown focus request:");
        sb2.append(i10);
        return Integer.MIN_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d0(View view, float f10, d dVar) {
        if (view instanceof m) {
            k.c cVar = dVar.f29825a;
            float f11 = cVar.f29879c;
            k.c cVar2 = dVar.f29826b;
            float fB = com.google.android.material.animation.b.b(f11, cVar2.f29879c, cVar.f29877a, cVar2.f29877a, f10);
            float height = view.getHeight();
            float width = view.getWidth();
            RectF rectFG = this.f29815x.g(height, width, com.google.android.material.animation.b.b(0.0f, height / 2.0f, 0.0f, 1.0f, fB), com.google.android.material.animation.b.b(0.0f, width / 2.0f, 0.0f, 1.0f, fB));
            float fP = p(view, f10, dVar);
            RectF rectF = new RectF(fP - (rectFG.width() / 2.0f), fP - (rectFG.height() / 2.0f), fP + (rectFG.width() / 2.0f), (rectFG.height() / 2.0f) + fP);
            RectF rectF2 = new RectF(G(), J(), H(), E());
            if (this.f29810s.f()) {
                this.f29815x.a(rectFG, rectF, rectF2);
            }
            this.f29815x.o(rectFG, rectF, rectF2);
            ((m) view).setMaskRectF(rectFG);
        }
    }

    private void e0(@NonNull l lVar) {
        int i10 = this.f29807p;
        int i11 = this.f29806o;
        if (i10 <= i11) {
            this.f29812u = O() ? lVar.h() : lVar.l();
        } else {
            this.f29812u = lVar.j(this.f29805n, i11, i10);
        }
        this.f29809r.a(this.f29812u.g());
    }

    private void f0() {
        int itemCount = getItemCount();
        int i10 = this.f29817z;
        if (itemCount == i10 || this.f29811t == null) {
            return;
        }
        if (this.f29810s.j(this, i10)) {
            W();
        }
        this.f29817z = itemCount;
    }

    private void g0() {
        if (!this.f29808q || getChildCount() < 1) {
            return;
        }
        int i10 = 0;
        while (i10 < getChildCount() - 1) {
            int position = getPosition(getChildAt(i10));
            int i11 = i10 + 1;
            int position2 = getPosition(getChildAt(i11));
            if (position > position2) {
                S();
                throw new IllegalStateException("Detected invalid child order. Child at index [" + i10 + "] had adapter position [" + position + "] and child at index [" + i11 + "] had adapter position [" + position2 + "].");
            }
            i10 = i11;
        }
    }

    private View getChildClosestToEnd() {
        return getChildAt(O() ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(O() ? getChildCount() - 1 : 0);
    }

    private void j(View view, int i10, b bVar) {
        float f10 = this.f29812u.f() / 2.0f;
        addView(view, i10);
        float f11 = bVar.f29821c;
        this.f29815x.n(view, (int) (f11 - f10), (int) (f11 + f10));
        d0(view, bVar.f29820b, bVar.f29822d);
    }

    private float k(float f10, float f11) {
        return O() ? f10 - f11 : f10 + f11;
    }

    private float l(float f10, float f11) {
        return O() ? f10 + f11 : f10 - f11;
    }

    private void m(@NonNull RecyclerView.Recycler recycler, int i10, int i11) {
        if (i10 < 0 || i10 >= getItemCount()) {
            return;
        }
        b bVarT = T(recycler, q(i10), i10);
        j(bVarT.f29819a, i11, bVarT);
    }

    private void n(RecyclerView.Recycler recycler, RecyclerView.State state, int i10) {
        float fQ = q(i10);
        while (i10 < state.getItemCount()) {
            b bVarT = T(recycler, fQ, i10);
            if (P(bVarT.f29821c, bVarT.f29822d)) {
                return;
            }
            fQ = k(fQ, this.f29812u.f());
            if (!Q(bVarT.f29821c, bVarT.f29822d)) {
                j(bVarT.f29819a, -1, bVarT);
            }
            i10++;
        }
    }

    private void o(RecyclerView.Recycler recycler, int i10) {
        float fQ = q(i10);
        while (i10 >= 0) {
            b bVarT = T(recycler, fQ, i10);
            if (Q(bVarT.f29821c, bVarT.f29822d)) {
                return;
            }
            fQ = l(fQ, this.f29812u.f());
            if (!P(bVarT.f29821c, bVarT.f29822d)) {
                j(bVarT.f29819a, 0, bVarT);
            }
            i10--;
        }
    }

    private float p(View view, float f10, d dVar) {
        k.c cVar = dVar.f29825a;
        float f11 = cVar.f29878b;
        k.c cVar2 = dVar.f29826b;
        float fB = com.google.android.material.animation.b.b(f11, cVar2.f29878b, cVar.f29877a, cVar2.f29877a, f10);
        if (dVar.f29826b != this.f29812u.c() && dVar.f29825a != this.f29812u.j()) {
            return fB;
        }
        float f12 = this.f29815x.f((RecyclerView.LayoutParams) view.getLayoutParams()) / this.f29812u.f();
        k.c cVar3 = dVar.f29826b;
        return fB + ((f10 - cVar3.f29877a) * ((1.0f - cVar3.f29879c) + f12));
    }

    private float q(int i10) {
        return k(I() - this.f29805n, this.f29812u.f() * i10);
    }

    private int r(RecyclerView.State state, l lVar) {
        boolean zO = O();
        k kVarL = zO ? lVar.l() : lVar.h();
        k.c cVarA = zO ? kVarL.a() : kVarL.h();
        int itemCount = (int) (((((state.getItemCount() - 1) * kVarL.f()) * (zO ? -1.0f : 1.0f)) - (cVarA.f29877a - I())) + (F() - cVarA.f29877a) + (zO ? -cVarA.f29883g : cVarA.f29884h));
        return zO ? Math.min(0, itemCount) : Math.max(0, itemCount);
    }

    private int scrollBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        if (this.f29811t == null) {
            V(recycler);
        }
        int iT = t(i10, this.f29805n, this.f29806o, this.f29807p);
        this.f29805n += iT;
        e0(this.f29811t);
        float f10 = this.f29812u.f() / 2.0f;
        float fQ = q(getPosition(getChildAt(0)));
        Rect rect = new Rect();
        float f11 = O() ? this.f29812u.h().f29878b : this.f29812u.a().f29878b;
        float f12 = Float.MAX_VALUE;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            float fAbs = Math.abs(f11 - U(childAt, fQ, f10, rect));
            if (childAt != null && fAbs < f12) {
                this.A = getPosition(childAt);
                f12 = fAbs;
            }
            fQ = k(fQ, this.f29812u.f());
        }
        v(recycler, state);
        return iT;
    }

    private static int t(int i10, int i11, int i12, int i13) {
        int i14 = i11 + i10;
        if (i14 < i12) {
            return i12 - i11;
        }
        return i14 > i13 ? i13 - i11 : i10;
    }

    private int u(@NonNull l lVar) {
        boolean zO = O();
        k kVarH = zO ? lVar.h() : lVar.l();
        return (int) (I() - l((zO ? kVarH.h() : kVarH.a()).f29877a, kVarH.f() / 2.0f));
    }

    private void v(RecyclerView.Recycler recycler, RecyclerView.State state) {
        X(recycler);
        if (getChildCount() == 0) {
            o(recycler, this.f29813v - 1);
            n(recycler, state, this.f29813v);
        } else {
            int position = getPosition(getChildAt(0));
            int position2 = getPosition(getChildAt(getChildCount() - 1));
            o(recycler, position - 1);
            n(recycler, state, position2 + 1);
        }
        g0();
    }

    private int w() {
        return d() ? getContainerWidth() : getContainerHeight();
    }

    private float x(View view) {
        Rect rect = new Rect();
        super.getDecoratedBoundsWithMargins(view, rect);
        return d() ? rect.centerX() : rect.centerY();
    }

    private int y() {
        int i10;
        int i11;
        if (getChildCount() <= 0) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) getChildAt(0).getLayoutParams();
        if (this.f29815x.f29848a == 0) {
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            i11 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        } else {
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            i11 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return i10 + i11;
    }

    private k z(int i10) {
        k kVar;
        Map<Integer, k> map = this.f29814w;
        return (map == null || (kVar = map.get(Integer.valueOf(MathUtils.clamp(i10, 0, Math.max(0, getItemCount() + (-1)))))) == null) ? this.f29811t.g() : kVar;
    }

    int C(int i10, @NonNull k kVar) {
        return L(i10, kVar) - this.f29805n;
    }

    int D(int i10, boolean z10) {
        int iC = C(i10, this.f29811t.k(this.f29805n, this.f29806o, this.f29807p, true));
        int iC2 = this.f29814w != null ? C(i10, z(i10)) : iC;
        return (!z10 || Math.abs(iC2) >= Math.abs(iC)) ? iC : iC2;
    }

    boolean O() {
        return d() && getLayoutDirection() == 1;
    }

    public void Z(int i10) {
        this.B = i10;
        W();
    }

    public void b0(@NonNull g gVar) {
        this.f29810s = gVar;
        W();
    }

    @Override // com.google.android.material.carousel.b
    public int c() {
        return this.B;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void c0(@NonNull RecyclerView recyclerView, boolean z10) {
        this.f29808q = z10;
        recyclerView.removeItemDecoration(this.f29809r);
        if (z10) {
            recyclerView.addItemDecoration(this.f29809r);
        }
        recyclerView.invalidateItemDecorations();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return !d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(@NonNull RecyclerView.State state) {
        if (getChildCount() == 0 || this.f29811t == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getWidth() * (this.f29811t.g().f() / computeHorizontalScrollRange(state)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(@NonNull RecyclerView.State state) {
        return this.f29805n;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(@NonNull RecyclerView.State state) {
        return this.f29807p - this.f29806o;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    @Nullable
    public PointF computeScrollVectorForPosition(int i10) {
        if (this.f29811t == null) {
            return null;
        }
        int iC = C(i10, z(i10));
        return d() ? new PointF(iC, 0.0f) : new PointF(0.0f, iC);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(@NonNull RecyclerView.State state) {
        if (getChildCount() == 0 || this.f29811t == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getHeight() * (this.f29811t.g().f() / computeVerticalScrollRange(state)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(@NonNull RecyclerView.State state) {
        return this.f29805n;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(@NonNull RecyclerView.State state) {
        return this.f29807p - this.f29806o;
    }

    @Override // com.google.android.material.carousel.b
    public boolean d() {
        return this.f29815x.f29848a == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // com.google.android.material.carousel.b
    public int getContainerHeight() {
        return getHeight();
    }

    @Override // com.google.android.material.carousel.b
    public int getContainerWidth() {
        return getWidth();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        float fCenterY = rect.centerY();
        if (d()) {
            fCenterY = rect.centerX();
        }
        float fB = B(fCenterY, N(this.f29812u.g(), fCenterY, true));
        float fWidth = d() ? (rect.width() - fB) / 2.0f : 0.0f;
        float fHeight = d() ? 0.0f : (rect.height() - fB) / 2.0f;
        rect.set((int) (rect.left + fWidth), (int) (rect.top + fHeight), (int) (rect.right - fWidth), (int) (rect.bottom - fHeight));
    }

    public int getOrientation() {
        return this.f29815x.f29848a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void measureChildWithMargins(@NonNull View view, int i10, int i11) {
        if (!(view instanceof m)) {
            throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        Rect rect = new Rect();
        calculateItemDecorationsForChild(view, rect);
        int i12 = i10 + rect.left + rect.right;
        int i13 = i11 + rect.top + rect.bottom;
        l lVar = this.f29811t;
        float f10 = (lVar == null || this.f29815x.f29848a != 0) ? ((ViewGroup.MarginLayoutParams) layoutParams).width : lVar.g().f();
        l lVar2 = this.f29811t;
        view.measure(RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i12, (int) f10, canScrollHorizontally()), RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i13, (int) ((lVar2 == null || this.f29815x.f29848a != 1) ? ((ViewGroup.MarginLayoutParams) layoutParams).height : lVar2.g().f()), canScrollVertically()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f29810s.e(recyclerView.getContext());
        W();
        recyclerView.addOnLayoutChangeListener(this.f29816y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        recyclerView.removeOnLayoutChangeListener(this.f29816y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @Nullable
    public View onFocusSearchFailed(@NonNull View view, int i10, @NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state) {
        int iConvertFocusDirectionToLayoutDirection;
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            if (getPosition(view) == 0) {
                return null;
            }
            m(recycler, getPosition(getChildAt(0)) - 1, 0);
            return getChildClosestToStart();
        }
        if (getPosition(view) == getItemCount() - 1) {
            return null;
        }
        m(recycler, getPosition(getChildAt(getChildCount() - 1)) + 1, -1);
        return getChildClosestToEnd();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(@NonNull RecyclerView recyclerView, int i10, int i11) {
        super.onItemsAdded(recyclerView, i10, i11);
        f0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i10, int i11) {
        super.onItemsRemoved(recyclerView, i10, i11);
        f0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() <= 0 || w() <= 0.0f) {
            removeAndRecycleAllViews(recycler);
            this.f29813v = 0;
            return;
        }
        boolean zO = O();
        boolean z10 = this.f29811t == null;
        if (z10) {
            V(recycler);
        }
        int iU = u(this.f29811t);
        int iR = r(state, this.f29811t);
        this.f29806o = zO ? iR : iU;
        if (zO) {
            iR = iU;
        }
        this.f29807p = iR;
        if (z10) {
            this.f29805n = iU;
            this.f29814w = this.f29811t.i(getItemCount(), this.f29806o, this.f29807p, O());
            int i10 = this.A;
            if (i10 != -1) {
                this.f29805n = L(i10, z(i10));
            }
        }
        int i11 = this.f29805n;
        this.f29805n = i11 + t(0, i11, this.f29806o, this.f29807p);
        this.f29813v = MathUtils.clamp(this.f29813v, 0, state.getItemCount());
        e0(this.f29811t);
        detachAndScrapAttachedViews(recycler);
        v(recycler, state);
        this.f29817z = getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        if (getChildCount() == 0) {
            this.f29813v = 0;
        } else {
            this.f29813v = getPosition(getChildAt(0));
        }
        g0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z10, boolean z11) {
        int iM;
        if (this.f29811t == null || (iM = M(getPosition(view), z(getPosition(view)))) == 0) {
            return false;
        }
        Y(recyclerView, M(getPosition(view), this.f29811t.j(this.f29805n + t(iM, this.f29805n, this.f29806o, this.f29807p), this.f29806o, this.f29807p)));
        return true;
    }

    int s(int i10) {
        return (int) (this.f29805n - L(i10, z(i10)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (canScrollHorizontally()) {
            return scrollBy(i10, recycler, state);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        this.A = i10;
        if (this.f29811t == null) {
            return;
        }
        this.f29805n = L(i10, z(i10));
        this.f29813v = MathUtils.clamp(i10, 0, Math.max(0, getItemCount() - 1));
        e0(this.f29811t);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (canScrollVertically()) {
            return scrollBy(i10, recycler, state);
        }
        return 0;
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i10);
        }
        assertNotInLayoutOrScroll(null);
        com.google.android.material.carousel.e eVar = this.f29815x;
        if (eVar == null || i10 != eVar.f29848a) {
            this.f29815x = com.google.android.material.carousel.e.c(this, i10);
            W();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        a aVar = new a(recyclerView.getContext());
        aVar.setTargetPosition(i10);
        startSmoothScroll(aVar);
    }

    public CarouselLayoutManager(@NonNull g gVar) {
        this(gVar, 0);
    }

    public CarouselLayoutManager(@NonNull g gVar, int i10) {
        this.f29808q = false;
        this.f29809r = new c();
        this.f29813v = 0;
        this.f29816y = new View.OnLayoutChangeListener() { // from class: com.google.android.material.carousel.d
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                this.f29847a.R(view, i11, i12, i13, i14, i15, i16, i17, i18);
            }
        };
        this.A = -1;
        this.B = 0;
        b0(gVar);
        setOrientation(i10);
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f29808q = false;
        this.f29809r = new c();
        this.f29813v = 0;
        this.f29816y = new View.OnLayoutChangeListener() { // from class: com.google.android.material.carousel.d
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                this.f29847a.R(view, i12, i13, i14, i15, i16, i17, i18, i19);
            }
        };
        this.A = -1;
        this.B = 0;
        b0(new p());
        a0(context, attributeSet);
    }
}
