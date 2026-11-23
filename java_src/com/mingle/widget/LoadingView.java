package com.mingle.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.mingle.shapeloading.R;
import com.nineoldandroids.animation.l;

/* JADX INFO: loaded from: classes2.dex */
public class LoadingView extends FrameLayout {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f75404j = 500;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static float f75405k = 200.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ShapeLoadingView f75406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f75407c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f75408d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f75409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f75410f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.nineoldandroids.animation.d f75411g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Runnable f75412h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f75413i;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingView.this.c();
        }
    }

    class b implements com.nineoldandroids.animation.a.InterfaceC0985a {
        b() {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationCancel(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationEnd(com.nineoldandroids.animation.a aVar) {
            LoadingView.this.c();
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationRepeat(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationStart(com.nineoldandroids.animation.a aVar) {
        }
    }

    class c implements com.nineoldandroids.animation.a.InterfaceC0985a {
        c() {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationCancel(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationEnd(com.nineoldandroids.animation.a aVar) {
            LoadingView.this.f75406b.a();
            LoadingView.this.g();
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationRepeat(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationStart(com.nineoldandroids.animation.a aVar) {
        }
    }

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f75417a;

        static {
            int[] iArr = new int[ShapeLoadingView.Shape.values().length];
            f75417a = iArr;
            try {
                iArr[ShapeLoadingView.Shape.SHAPE_RECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f75417a[ShapeLoadingView.Shape.SHAPE_CIRCLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f75417a[ShapeLoadingView.Shape.SHAPE_TRIANGLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public LoadingView(Context context) {
        super(context);
        this.f75411g = null;
        this.f75412h = new a();
        this.f75413i = 1.2f;
    }

    private void d(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LoadingView);
        this.f75410f = typedArrayObtainStyledAttributes.getString(R.styleable.LoadingView_loadingText);
        this.f75409e = typedArrayObtainStyledAttributes.getResourceId(R.styleable.LoadingView_loadingTextAppearance, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void e(long j10) {
        com.nineoldandroids.animation.d dVar = this.f75411g;
        if (dVar == null || !dVar.h()) {
            removeCallbacks(this.f75412h);
            if (j10 > 0) {
                postDelayed(this.f75412h, j10);
            } else {
                post(this.f75412h);
            }
        }
    }

    private void f() {
        com.nineoldandroids.animation.d dVar = this.f75411g;
        if (dVar != null) {
            if (dVar.h()) {
                this.f75411g.cancel();
            }
            this.f75411g = null;
        }
        removeCallbacks(this.f75412h);
    }

    public int b(float f10) {
        return (int) ((f10 * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void c() {
        l lVarS0 = l.s0(this.f75406b, "translationY", 0.0f, f75405k);
        l lVarS1 = l.s0(this.f75407c, "scaleX", 1.0f, 0.2f);
        lVarS0.l(500L);
        lVarS0.m(new AccelerateInterpolator(this.f75413i));
        com.nineoldandroids.animation.d dVar = new com.nineoldandroids.animation.d();
        dVar.l(500L);
        dVar.D(lVarS0, lVarS1);
        dVar.a(new c());
        dVar.r();
    }

    public void g() {
        l lVarS0;
        l lVarS1 = l.s0(this.f75406b, "translationY", f75405k, 0.0f);
        l lVarS2 = l.s0(this.f75407c, "scaleX", 0.2f, 1.0f);
        int i10 = d.f75417a[this.f75406b.getShape().ordinal()];
        if (i10 != 1) {
            lVarS0 = (i10 == 2 || i10 == 3) ? l.s0(this.f75406b, "rotation", 0.0f, 180.0f) : null;
        } else {
            lVarS0 = l.s0(this.f75406b, "rotation", 0.0f, -120.0f);
        }
        lVarS1.l(500L);
        lVarS0.l(500L);
        lVarS1.m(new DecelerateInterpolator(this.f75413i));
        lVarS0.m(new DecelerateInterpolator(this.f75413i));
        com.nineoldandroids.animation.d dVar = new com.nineoldandroids.animation.d();
        dVar.l(500L);
        dVar.D(lVarS1, lVarS0, lVarS2);
        dVar.a(new b());
        dVar.r();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.load_view, (ViewGroup) null);
        f75405k = b(54.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f75406b = (ShapeLoadingView) viewInflate.findViewById(R.id.shapeLoadingView);
        this.f75407c = (ImageView) viewInflate.findViewById(R.id.indication);
        TextView textView = (TextView) viewInflate.findViewById(R.id.promptTV);
        this.f75408d = textView;
        if (this.f75409e != -1) {
            textView.setTextAppearance(getContext(), this.f75409e);
        }
        setLoadingText(this.f75410f);
        addView(viewInflate, layoutParams);
        e(900L);
    }

    public void setLoadingText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.f75408d.setVisibility(8);
        } else {
            this.f75408d.setVisibility(0);
        }
        this.f75408d.setText(charSequence);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        if (i10 == 0) {
            e(200L);
        } else {
            f();
        }
    }

    public LoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f75411g = null;
        this.f75412h = new a();
        this.f75413i = 1.2f;
        d(context, attributeSet);
    }

    public LoadingView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f75411g = null;
        this.f75412h = new a();
        this.f75413i = 1.2f;
        d(context, attributeSet);
    }

    @TargetApi(21)
    public LoadingView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f75411g = null;
        this.f75412h = new a();
        this.f75413i = 1.2f;
        d(context, attributeSet);
    }
}
