package com.melnykov.fab;

import android.animation.AnimatorInflater;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ScrollView;
import androidx.annotation.IntDef;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class FloatingActionButton extends ImageView {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f75363m = 500;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f75364n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f75365o = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f75366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f75367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f75368d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f75369e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f75370f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f75371g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f75372h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f75373i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f75374j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f75375k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Interpolator f75376l;

    @IntDef({0, 1})
    @Retention(RetentionPolicy.SOURCE)
    public @interface TYPE {
    }

    class a implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f75377b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f75378c;

        a(boolean z10, boolean z11) {
            this.f75377b = z10;
            this.f75378c = z11;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver = FloatingActionButton.this.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            FloatingActionButton.this.C(this.f75377b, this.f75378c, true);
            return true;
        }
    }

    private class b extends com.melnykov.fab.a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.melnykov.fab.d f75380f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private AbsListView.OnScrollListener f75381g;

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(com.melnykov.fab.d dVar) {
            this.f75380f = dVar;
        }

        @Override // com.melnykov.fab.a
        public void d() {
            FloatingActionButton.this.t();
            com.melnykov.fab.d dVar = this.f75380f;
            if (dVar != null) {
                dVar.a();
            }
        }

        @Override // com.melnykov.fab.a
        public void e() {
            FloatingActionButton.this.t();
            com.melnykov.fab.d dVar = this.f75380f;
            if (dVar != null) {
                dVar.b();
            }
        }

        public void i(AbsListView.OnScrollListener onScrollListener) {
            this.f75381g = onScrollListener;
        }

        @Override // com.melnykov.fab.a, android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            AbsListView.OnScrollListener onScrollListener = this.f75381g;
            if (onScrollListener != null) {
                onScrollListener.onScroll(absListView, i10, i11, i12);
            }
            super.onScroll(absListView, i10, i11, i12);
        }

        @Override // com.melnykov.fab.a, android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            AbsListView.OnScrollListener onScrollListener = this.f75381g;
            if (onScrollListener != null) {
                onScrollListener.onScrollStateChanged(absListView, i10);
            }
            if (i10 == 0) {
                FloatingActionButton.this.A();
            }
            super.onScrollStateChanged(absListView, i10);
        }

        /* synthetic */ b(FloatingActionButton floatingActionButton, a aVar) {
            this();
        }
    }

    private class c extends com.melnykov.fab.c {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private com.melnykov.fab.d f75383u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private RecyclerView.OnScrollListener f75384v;

        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r(com.melnykov.fab.d dVar) {
            this.f75383u = dVar;
        }

        @Override // com.melnykov.fab.c
        public void m() {
            FloatingActionButton.this.A();
            com.melnykov.fab.d dVar = this.f75383u;
            if (dVar != null) {
                dVar.a();
            }
        }

        @Override // com.melnykov.fab.c
        public void n() {
            FloatingActionButton.this.t();
            com.melnykov.fab.d dVar = this.f75383u;
            if (dVar != null) {
                dVar.b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            RecyclerView.OnScrollListener onScrollListener = this.f75384v;
            if (onScrollListener != null) {
                onScrollListener.onScrollStateChanged(recyclerView, i10);
            }
            super.onScrollStateChanged(recyclerView, i10);
        }

        @Override // com.melnykov.fab.c, androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            RecyclerView.OnScrollListener onScrollListener = this.f75384v;
            if (onScrollListener != null) {
                onScrollListener.onScrolled(recyclerView, i10, i11);
            }
            super.onScrolled(recyclerView, i10, i11);
        }

        public void q(RecyclerView.OnScrollListener onScrollListener) {
            this.f75384v = onScrollListener;
        }

        /* synthetic */ c(FloatingActionButton floatingActionButton, a aVar) {
            this();
        }
    }

    private class d extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.melnykov.fab.d f75386c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ObservableScrollView.a f75387d;

        private d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(com.melnykov.fab.d dVar) {
            this.f75386c = dVar;
        }

        @Override // com.melnykov.fab.e, com.melnykov.fab.ObservableScrollView.a
        public void a(ScrollView scrollView, int i10, int i11, int i12, int i13) {
            ObservableScrollView.a aVar = this.f75387d;
            if (aVar != null) {
                aVar.a(scrollView, i10, i11, i12, i13);
            }
            super.a(scrollView, i10, i11, i12, i13);
        }

        @Override // com.melnykov.fab.e
        public void b() {
            FloatingActionButton.this.A();
            com.melnykov.fab.d dVar = this.f75386c;
            if (dVar != null) {
                dVar.a();
            }
        }

        @Override // com.melnykov.fab.e
        public void c() {
            FloatingActionButton.this.t();
            com.melnykov.fab.d dVar = this.f75386c;
            if (dVar != null) {
                dVar.b();
            }
        }

        public void f(ObservableScrollView.a aVar) {
            this.f75387d = aVar;
        }

        /* synthetic */ d(FloatingActionButton floatingActionButton, a aVar) {
            this();
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(boolean z10, boolean z11, boolean z12) {
        if (this.f75366b != z10 || z12) {
            this.f75366b = z10;
            if (getHeight() == 0 && !z12) {
                ViewTreeObserver viewTreeObserver = getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnPreDrawListener(new a(z10, z11));
                    return;
                }
            }
            int width = z10 ? 0 : (getWidth() / 2) + getMarginRight();
            if (z11) {
                com.nineoldandroids.view.b.c(this).r(this.f75376l).q(500L).v(width);
            } else {
                com.nineoldandroids.view.a.y(this, width);
            }
            if (p()) {
                return;
            }
            setClickable(z10);
        }
    }

    private void D() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, k(this.f75368d));
        stateListDrawable.addState(new int[]{-16842910}, k(this.f75370f));
        stateListDrawable.addState(new int[0], k(this.f75367c));
        setBackgroundCompat(stateListDrawable);
    }

    private int getMarginBottom() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return 0;
    }

    private int getMarginRight() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }
        return 0;
    }

    private Drawable k(int i10) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(i10);
        if (!this.f75371g || r()) {
            return shapeDrawable;
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{getResources().getDrawable(this.f75372h == 0 ? R.drawable.fab_shadow : R.drawable.fab_shadow_mini), shapeDrawable});
        int i11 = this.f75373i;
        layerDrawable.setLayerInset(1, i11, i11, i11, i11);
        return layerDrawable;
    }

    private static int l(int i10) {
        float[] fArr = new float[3];
        Color.colorToHSV(i10, fArr);
        fArr[2] = fArr[2] * 0.9f;
        return Color.HSVToColor(fArr);
    }

    private int m(int i10) {
        return getResources().getColor(i10);
    }

    private int n(int i10) {
        return getResources().getDimensionPixelSize(i10);
    }

    private TypedArray o(Context context, AttributeSet attributeSet, int[] iArr) {
        return context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    private boolean p() {
        return true;
    }

    private boolean q() {
        return true;
    }

    private boolean r() {
        return true;
    }

    @SuppressLint({"NewApi"})
    private void setBackgroundCompat(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @SuppressLint({"NewApi"})
    private void v(Context context, AttributeSet attributeSet) {
        this.f75366b = true;
        int iM = m(R.color.material_blue_500);
        this.f75367c = iM;
        this.f75368d = l(iM);
        this.f75369e = y(this.f75367c);
        this.f75370f = m(android.R.color.darker_gray);
        this.f75372h = 0;
        this.f75371g = true;
        this.f75374j = getResources().getDimensionPixelOffset(R.dimen.fab_scroll_threshold);
        this.f75373i = n(R.dimen.fab_shadow_size);
        if (r()) {
            setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, R.anim.fab_press_elevation));
        }
        if (attributeSet != null) {
            w(context, attributeSet);
        }
        D();
    }

    private void w(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayO = o(context, attributeSet, R.styleable.FloatingActionButton);
        if (typedArrayO != null) {
            try {
                int color = typedArrayO.getColor(R.styleable.FloatingActionButton_fab_colorNormal, m(R.color.material_blue_500));
                this.f75367c = color;
                this.f75368d = typedArrayO.getColor(R.styleable.FloatingActionButton_fab_colorPressed, l(color));
                this.f75369e = typedArrayO.getColor(R.styleable.FloatingActionButton_fab_colorRipple, y(this.f75367c));
                this.f75370f = typedArrayO.getColor(R.styleable.FloatingActionButton_fab_colorDisabled, this.f75370f);
                this.f75371g = typedArrayO.getBoolean(R.styleable.FloatingActionButton_fab_shadow, true);
                this.f75372h = typedArrayO.getInt(R.styleable.FloatingActionButton_fab_type, 0);
            } finally {
                typedArrayO.recycle();
            }
        }
    }

    private static int y(int i10) {
        float[] fArr = new float[3];
        Color.colorToHSV(i10, fArr);
        fArr[2] = fArr[2] * 1.1f;
        return Color.HSVToColor(fArr);
    }

    private void z() {
        if (this.f75375k || !(getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        int i10 = marginLayoutParams.leftMargin;
        int i11 = this.f75373i;
        marginLayoutParams.setMargins(i10 - i11, marginLayoutParams.topMargin - i11, marginLayoutParams.rightMargin - i11, marginLayoutParams.bottomMargin - i11);
        requestLayout();
        this.f75375k = true;
    }

    public void A() {
        B(true);
    }

    public void B(boolean z10) {
        C(true, z10, false);
    }

    public void b(@NonNull AbsListView absListView) {
        d(absListView, null, null);
    }

    public void c(@NonNull AbsListView absListView, com.melnykov.fab.d dVar) {
        d(absListView, dVar, null);
    }

    public void d(@NonNull AbsListView absListView, com.melnykov.fab.d dVar, AbsListView.OnScrollListener onScrollListener) {
        b bVar = new b(this, null);
        bVar.j(dVar);
        bVar.i(onScrollListener);
        bVar.f(absListView);
        bVar.g(this.f75374j);
        absListView.setOnScrollListener(bVar);
    }

    public void e(@NonNull RecyclerView recyclerView) {
        g(recyclerView, null, null);
    }

    public void f(@NonNull RecyclerView recyclerView, com.melnykov.fab.d dVar) {
        g(recyclerView, dVar, null);
    }

    public void g(@NonNull RecyclerView recyclerView, com.melnykov.fab.d dVar, RecyclerView.OnScrollListener onScrollListener) {
        c cVar = new c(this, null);
        cVar.r(dVar);
        cVar.q(onScrollListener);
        cVar.o(this.f75374j);
        recyclerView.addOnScrollListener(cVar);
    }

    public int getColorNormal() {
        return this.f75367c;
    }

    public int getColorPressed() {
        return this.f75368d;
    }

    public int getColorRipple() {
        return this.f75369e;
    }

    public int getType() {
        return this.f75372h;
    }

    public void h(@NonNull ObservableScrollView observableScrollView) {
        j(observableScrollView, null, null);
    }

    public void i(@NonNull ObservableScrollView observableScrollView, com.melnykov.fab.d dVar) {
        j(observableScrollView, dVar, null);
    }

    public void j(@NonNull ObservableScrollView observableScrollView, com.melnykov.fab.d dVar, ObservableScrollView.a aVar) {
        d dVar2 = new d(this, null);
        dVar2.g(dVar);
        dVar2.f(aVar);
        dVar2.d(this.f75374j);
        observableScrollView.setOnScrollChangedListener(dVar2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        n(this.f75372h == 0 ? R.dimen.fab_size_normal : R.dimen.fab_size_mini);
        setMeasuredDimension(i10, i10);
    }

    public boolean s() {
        return this.f75371g;
    }

    public void setColorNormal(int i10) {
        if (i10 != this.f75367c) {
            this.f75367c = i10;
            D();
        }
    }

    public void setColorNormalResId(int i10) {
        setColorNormal(m(i10));
    }

    public void setColorPressed(int i10) {
        if (i10 != this.f75368d) {
            this.f75368d = i10;
            D();
        }
    }

    public void setColorPressedResId(int i10) {
        setColorPressed(m(i10));
    }

    public void setColorRipple(int i10) {
        if (i10 != this.f75369e) {
            this.f75369e = i10;
            D();
        }
    }

    public void setColorRippleResId(int i10) {
        setColorRipple(m(i10));
    }

    public void setShadow(boolean z10) {
        if (z10 != this.f75371g) {
            this.f75371g = z10;
            D();
        }
    }

    public void setType(int i10) {
        if (i10 != this.f75372h) {
            this.f75372h = i10;
            D();
        }
    }

    public void t() {
        u(true);
    }

    public void u(boolean z10) {
        C(false, z10, false);
    }

    public boolean x() {
        return this.f75366b;
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f75376l = new AccelerateDecelerateInterpolator();
        v(context, attributeSet);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f75376l = new AccelerateDecelerateInterpolator();
        v(context, attributeSet);
    }
}
