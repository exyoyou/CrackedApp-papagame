package com.kongzue.dialogx.dialogs;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.interfaces.DialogXStyle;
import com.kongzue.dialogx.interfaces.p;
import com.kongzue.dialogx.interfaces.q;
import com.kongzue.dialogx.interfaces.r;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class CustomDialog extends BaseDialog {
    public static int L1 = -1;
    public static int R1 = 0;
    public static int V1 = 0;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    public static BaseDialog.BOOLEAN f73615a2 = null;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public static int f73616v1 = -1;
    protected r<CustomDialog> M;
    protected com.kongzue.dialogx.interfaces.f<CustomDialog> N;
    protected p<CustomDialog> O;
    protected CustomDialog P;
    protected f Q;
    protected int R;
    protected int S;
    protected ALIGN T;
    protected int U;
    protected BaseDialog.BOOLEAN V;
    protected boolean W;
    protected q<CustomDialog> X;
    protected com.kongzue.dialogx.interfaces.g<CustomDialog> Y;
    protected WeakReference<View> Z;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    protected int f73617b1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    protected int f73618f1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    protected int[] f73619i1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    protected int[] f73620l1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    protected int f73621p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private ViewTreeObserver f73622p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private ViewTreeObserver.OnPreDrawListener f73623q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    protected boolean f73624r1;

    public enum ALIGN {
        CENTER,
        TOP,
        TOP_CENTER,
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM,
        BOTTOM_CENTER,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        LEFT,
        LEFT_CENTER,
        LEFT_TOP,
        LEFT_BOTTOM,
        RIGHT,
        RIGHT_CENTER,
        RIGHT_TOP,
        RIGHT_BOTTOM
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = CustomDialog.this.Q;
            if (fVar != null) {
                fVar.b();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = CustomDialog.this.Q;
            if (fVar == null) {
                return;
            }
            fVar.a(null);
        }
    }

    class c extends com.kongzue.dialogx.interfaces.f<CustomDialog> {
        c() {
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CustomDialog.this.C() != null) {
                CustomDialog.this.C().setVisibility(8);
            }
        }
    }

    static /* synthetic */ class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f73629a;

        static {
            int[] iArr = new int[ALIGN.values().length];
            f73629a = iArr;
            try {
                iArr[ALIGN.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73629a[ALIGN.LEFT_TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73629a[ALIGN.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73629a[ALIGN.TOP_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f73629a[ALIGN.TOP_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f73629a[ALIGN.RIGHT_TOP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f73629a[ALIGN.BOTTOM_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f73629a[ALIGN.LEFT_BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f73629a[ALIGN.BOTTOM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f73629a[ALIGN.BOTTOM_CENTER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f73629a[ALIGN.BOTTOM_RIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f73629a[ALIGN.RIGHT_BOTTOM.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f73629a[ALIGN.CENTER.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f73629a[ALIGN.LEFT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f73629a[ALIGN.LEFT_CENTER.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f73629a[ALIGN.RIGHT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f73629a[ALIGN.RIGHT_CENTER.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public class f implements com.kongzue.dialogx.interfaces.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public DialogXBaseRelativeLayout f73630a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MaxRelativeLayout f73631b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f73632c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ALIGN f73633d;

        class a extends DialogXBaseRelativeLayout.c {
            a() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void a() {
                ((BaseDialog) CustomDialog.this).f74071r = false;
                CustomDialog.this.P1().a(CustomDialog.this.P);
                CustomDialog customDialog = CustomDialog.this;
                customDialog.h2(customDialog.P);
                CustomDialog.this.J0(Lifecycle.State.DESTROYED);
                CustomDialog customDialog2 = CustomDialog.this;
                customDialog2.Q = null;
                customDialog2.N = null;
                System.gc();
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void b() {
                ((BaseDialog) CustomDialog.this).f74071r = true;
                ((BaseDialog) CustomDialog.this).E = false;
                CustomDialog.this.J0(Lifecycle.State.CREATED);
                CustomDialog.this.P1().b(CustomDialog.this.P);
                CustomDialog customDialog = CustomDialog.this;
                customDialog.k2(customDialog.P);
                CustomDialog.this.s0();
                f.this.f73631b.setVisibility(8);
            }
        }

        class b implements DialogXBaseRelativeLayout.d {
            b() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.d
            public boolean onBackPressed() {
                CustomDialog customDialog = CustomDialog.this;
                p<CustomDialog> pVar = customDialog.O;
                if (pVar != null) {
                    if (!pVar.a(customDialog.P)) {
                        return true;
                    }
                    CustomDialog.this.E1();
                    return true;
                }
                if (!customDialog.f0()) {
                    return true;
                }
                CustomDialog.this.E1();
                return true;
            }
        }

        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (f.this.c() != null) {
                    com.kongzue.dialogx.interfaces.g<CustomDialog> gVarC = f.this.c();
                    f fVar = f.this;
                    gVarC.b(CustomDialog.this, fVar.f73631b);
                }
                if (CustomDialog.this.O1() != null && CustomDialog.this.O1().f73631b != null) {
                    CustomDialog.this.O1().f73631b.setVisibility(0);
                }
                CustomDialog.this.J0(Lifecycle.State.RESUMED);
            }
        }

        class d implements Runnable {
            d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = f.this;
                int x10 = CustomDialog.this.f73619i1[0] - ((int) fVar.f73630a.getX());
                f fVar2 = f.this;
                int y10 = CustomDialog.this.f73619i1[1] - ((int) fVar2.f73630a.getY());
                CustomDialog customDialog = CustomDialog.this;
                if (customDialog.f73621p0 != -1) {
                    int measuredHeight = customDialog.d2(16) ? ((CustomDialog.this.w1().getMeasuredHeight() / 2) + y10) - (f.this.f73631b.getHeight() / 2) : 0;
                    int measuredWidth = CustomDialog.this.d2(1) ? ((CustomDialog.this.w1().getMeasuredWidth() / 2) + x10) - (f.this.f73631b.getWidth() / 2) : 0;
                    if (CustomDialog.this.d2(17)) {
                        measuredWidth = ((CustomDialog.this.w1().getMeasuredWidth() / 2) + x10) - (f.this.f73631b.getWidth() / 2);
                        measuredHeight = ((CustomDialog.this.w1().getMeasuredHeight() / 2) + y10) - (f.this.f73631b.getHeight() / 2);
                    }
                    if (CustomDialog.this.d2(48)) {
                        measuredHeight = (y10 - f.this.f73631b.getHeight()) - CustomDialog.this.f73620l1[3];
                    }
                    if (CustomDialog.this.d2(3)) {
                        measuredWidth = (x10 - f.this.f73631b.getWidth()) - CustomDialog.this.f73620l1[2];
                    }
                    if (CustomDialog.this.d2(5)) {
                        measuredWidth = x10 + CustomDialog.this.w1().getWidth() + CustomDialog.this.f73620l1[0];
                    }
                    if (CustomDialog.this.d2(80)) {
                        measuredHeight = CustomDialog.this.f73620l1[1] + y10 + CustomDialog.this.w1().getHeight();
                    }
                    CustomDialog customDialog2 = CustomDialog.this;
                    int width = customDialog2.f73617b1;
                    if (width == 0) {
                        width = customDialog2.w1().getWidth();
                    }
                    CustomDialog customDialog3 = CustomDialog.this;
                    int height = customDialog3.f73618f1;
                    if (height == 0) {
                        height = customDialog3.w1().getHeight();
                    }
                    f fVar3 = f.this;
                    int[] iArr = CustomDialog.this.f73619i1;
                    if (width <= 0) {
                        width = iArr[2];
                    }
                    iArr[2] = width;
                    if (height <= 0) {
                        height = iArr[3];
                    }
                    iArr[3] = height;
                    if (measuredWidth != 0) {
                        float f10 = measuredWidth;
                        if (f10 != fVar3.f73631b.getX()) {
                            f.this.f73631b.setX(f10);
                        }
                    }
                    if (measuredHeight != 0) {
                        float f11 = measuredHeight;
                        if (f11 != f.this.f73631b.getY()) {
                            f.this.f73631b.setY(f11);
                        }
                    }
                    CustomDialog customDialog4 = CustomDialog.this;
                    customDialog4.i2(customDialog4.f73619i1);
                }
            }
        }

        class e implements ViewTreeObserver.OnPreDrawListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Runnable f73639b;

            e(Runnable runnable) {
                this.f73639b = runnable;
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                int[] iArr = new int[2];
                if (CustomDialog.this.w1() != null) {
                    CustomDialog.this.w1().getLocationInWindow(iArr);
                    if (CustomDialog.this.O1() != null && ((BaseDialog) CustomDialog.this).f74071r && CustomDialog.this.w1().getVisibility() == 0) {
                        int i10 = iArr[0];
                        if (i10 != 0) {
                            CustomDialog.this.f73619i1[0] = i10;
                        }
                        int i11 = iArr[1];
                        if (i11 != 0) {
                            CustomDialog.this.f73619i1[1] = i11;
                        }
                        this.f73639b.run();
                    }
                } else {
                    CustomDialog customDialog = CustomDialog.this;
                    customDialog.m2(customDialog.f73622p1, this);
                    CustomDialog.this.f73622p1 = null;
                    CustomDialog.this.f73623q1 = null;
                }
                return true;
            }
        }

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.CustomDialog$f$f, reason: collision with other inner class name */
        class ViewOnClickListenerC0757f implements View.OnClickListener {
            ViewOnClickListenerC0757f() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CustomDialog customDialog = CustomDialog.this;
                q<CustomDialog> qVar = customDialog.X;
                if (qVar == null || !qVar.a(customDialog.P, view)) {
                    f.this.a(view);
                }
            }
        }

        class g implements Runnable {

            class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    DialogXBaseRelativeLayout dialogXBaseRelativeLayout = f.this.f73630a;
                    if (dialogXBaseRelativeLayout != null) {
                        dialogXBaseRelativeLayout.setVisibility(8);
                    }
                    if (CustomDialog.this.f73623q1 != null) {
                        if (CustomDialog.this.f73622p1 != null) {
                            CustomDialog customDialog = CustomDialog.this;
                            customDialog.m2(customDialog.f73622p1, CustomDialog.this.f73623q1);
                        } else {
                            f fVar = f.this;
                            MaxRelativeLayout maxRelativeLayout = fVar.f73631b;
                            if (maxRelativeLayout != null) {
                                CustomDialog.this.m2(maxRelativeLayout.getViewTreeObserver(), CustomDialog.this.f73623q1);
                            }
                        }
                        CustomDialog.this.f73623q1 = null;
                        CustomDialog.this.f73622p1 = null;
                    }
                    BaseDialog.p(CustomDialog.this.C());
                }
            }

            g() {
            }

            @Override // java.lang.Runnable
            public void run() {
                com.kongzue.dialogx.interfaces.g<CustomDialog> gVarC = f.this.c();
                f fVar = f.this;
                gVarC.a(CustomDialog.this, fVar.f73631b);
                BaseDialog.E0(new a(), f.this.e(null));
            }
        }

        class h extends com.kongzue.dialogx.interfaces.g<CustomDialog> {

            class a implements ValueAnimator.AnimatorUpdateListener {
                a() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    f.this.f73630a.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }

            class b implements ValueAnimator.AnimatorUpdateListener {
                b() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    f.this.f73630a.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }

            h() {
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void a(CustomDialog customDialog, ViewGroup viewGroup) {
                long jE;
                if (CustomDialog.this.O1() == null || CustomDialog.this.O1().f73631b == null) {
                    return;
                }
                int i10 = R.anim.anim_dialogx_default_exit;
                int i11 = CustomDialog.V1;
                if (i11 != 0) {
                    i10 = i11;
                }
                f fVar = f.this;
                CustomDialog customDialog2 = CustomDialog.this;
                int i12 = customDialog2.S;
                if (i12 != 0) {
                    i10 = i12;
                }
                if (fVar.f73631b != null) {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(customDialog2.N() == null ? f.this.f73631b.getContext() : CustomDialog.this.N(), i10);
                    jE = f.this.e(animationLoadAnimation);
                    animationLoadAnimation.setDuration(jE);
                    f.this.f73631b.startAnimation(animationLoadAnimation);
                } else {
                    jE = fVar.e(null);
                }
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                valueAnimatorOfFloat.setDuration(jE);
                valueAnimatorOfFloat.addUpdateListener(new b());
                valueAnimatorOfFloat.start();
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(CustomDialog customDialog, ViewGroup viewGroup) {
                if (CustomDialog.this.O1() == null || CustomDialog.this.O1().f73631b == null) {
                    return;
                }
                Animation animationT1 = CustomDialog.this.T1();
                long jD = f.this.d(animationT1);
                animationT1.setDuration(jD);
                MaxRelativeLayout maxRelativeLayout = f.this.f73631b;
                if (maxRelativeLayout != null) {
                    maxRelativeLayout.setVisibility(0);
                    f.this.f73631b.startAnimation(animationT1);
                }
                f fVar = f.this;
                int i10 = CustomDialog.this.U;
                if (i10 != 0) {
                    fVar.f73630a.setBackgroundColor(i10);
                }
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.setDuration(jD);
                valueAnimatorOfFloat.addUpdateListener(new a());
                valueAnimatorOfFloat.start();
            }
        }

        public f(View view) {
            if (view == null) {
                return;
            }
            CustomDialog.this.H0(view);
            this.f73630a = (DialogXBaseRelativeLayout) view.findViewById(R.id.box_root);
            this.f73631b = (MaxRelativeLayout) view.findViewById(R.id.box_custom);
            init();
            CustomDialog.this.Q = this;
            b();
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void a(View view) {
            BaseDialog baseDialog = CustomDialog.this;
            if (baseDialog.t0(baseDialog)) {
                return;
            }
            if (view != null) {
                view.setEnabled(false);
            }
            if (((BaseDialog) CustomDialog.this).D || this.f73631b == null) {
                return;
            }
            ((BaseDialog) CustomDialog.this).D = true;
            this.f73631b.post(new g());
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void b() {
            ALIGN align;
            MaxRelativeLayout maxRelativeLayout;
            if (this.f73630a == null || CustomDialog.this.N() == null) {
                return;
            }
            this.f73631b.j(CustomDialog.this.K());
            this.f73631b.i(CustomDialog.this.J());
            this.f73631b.setMinimumWidth(CustomDialog.this.M());
            this.f73631b.setMinimumHeight(CustomDialog.this.L());
            this.f73630a.j(CustomDialog.this.g0());
            this.f73630a.setRootPadding(((BaseDialog) CustomDialog.this).C[0], ((BaseDialog) CustomDialog.this).C[1], ((BaseDialog) CustomDialog.this).C[2], ((BaseDialog) CustomDialog.this).C[3]);
            if (CustomDialog.this.w1() == null) {
                MaxRelativeLayout maxRelativeLayout2 = this.f73631b;
                if (maxRelativeLayout2 != null) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) maxRelativeLayout2.getLayoutParams();
                    if (layoutParams == null || ((align = this.f73633d) != null && align != CustomDialog.this.T)) {
                        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    }
                    switch (e.f73629a[CustomDialog.this.T.ordinal()]) {
                        case 1:
                        case 2:
                            layoutParams.removeRule(13);
                            layoutParams.addRule(10);
                            layoutParams.addRule(9);
                            break;
                        case 3:
                        case 4:
                            layoutParams.removeRule(13);
                            layoutParams.addRule(10);
                            layoutParams.addRule(14);
                            break;
                        case 5:
                        case 6:
                            layoutParams.removeRule(13);
                            layoutParams.addRule(10);
                            layoutParams.addRule(11);
                            break;
                        case 7:
                        case 8:
                            layoutParams.removeRule(13);
                            layoutParams.addRule(12);
                            break;
                        case 9:
                        case 10:
                            layoutParams.removeRule(13);
                            layoutParams.addRule(12);
                            layoutParams.addRule(14);
                            break;
                        case 11:
                        case 12:
                            layoutParams.removeRule(13);
                            layoutParams.addRule(12);
                            layoutParams.addRule(11);
                            break;
                        case 13:
                            layoutParams.removeRule(10);
                            layoutParams.removeRule(12);
                            layoutParams.addRule(13);
                            break;
                        case 14:
                        case 15:
                            layoutParams.removeRule(13);
                            layoutParams.addRule(5);
                            layoutParams.addRule(15);
                            break;
                        case 16:
                        case 17:
                            layoutParams.removeRule(13);
                            layoutParams.addRule(11);
                            layoutParams.addRule(15);
                            break;
                    }
                    this.f73633d = CustomDialog.this.T;
                    this.f73631b.setLayoutParams(layoutParams);
                }
            } else if (!this.f73632c) {
                if (this.f73631b != null) {
                    this.f73631b.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
                }
                d dVar = new d();
                CustomDialog.this.f73622p1 = this.f73631b.getViewTreeObserver();
                CustomDialog.this.f73622p1.addOnPreDrawListener(CustomDialog.this.f73623q1 = new e(dVar));
                this.f73632c = true;
            }
            CustomDialog customDialog = CustomDialog.this;
            if (!customDialog.W) {
                this.f73630a.setClickable(false);
            } else if (customDialog.f0()) {
                this.f73630a.setOnClickListener(new ViewOnClickListenerC0757f());
            } else {
                this.f73630a.setOnClickListener(null);
            }
            r<CustomDialog> rVar = CustomDialog.this.M;
            if (rVar != null && rVar.getCustomView() != null && (maxRelativeLayout = this.f73631b) != null) {
                CustomDialog customDialog2 = CustomDialog.this;
                customDialog2.M.bindParent(maxRelativeLayout, customDialog2.P);
            }
            MaxRelativeLayout maxRelativeLayout3 = this.f73631b;
            if (maxRelativeLayout3 != null) {
                int i10 = CustomDialog.this.f73617b1;
                if (i10 != -1) {
                    maxRelativeLayout3.j(i10);
                    this.f73631b.setMinimumWidth(CustomDialog.this.f73617b1);
                }
                int i11 = CustomDialog.this.f73618f1;
                if (i11 != -1) {
                    this.f73631b.i(i11);
                    this.f73631b.setMinimumHeight(CustomDialog.this.f73618f1);
                }
            }
            this.f73630a.setBackgroundColor(CustomDialog.this.X1());
            CustomDialog.this.r0();
        }

        protected com.kongzue.dialogx.interfaces.g<CustomDialog> c() {
            CustomDialog customDialog = CustomDialog.this;
            if (customDialog.Y == null) {
                customDialog.Y = new h();
            }
            return CustomDialog.this.Y;
        }

        public long d(@Nullable Animation animation) {
            if (animation == null && this.f73631b.getAnimation() != null) {
                animation = this.f73631b.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 300L : animation.getDuration();
            int i10 = CustomDialog.f73616v1;
            if (i10 >= 0) {
                duration = i10;
            }
            return ((BaseDialog) CustomDialog.this).f74076w >= 0 ? ((BaseDialog) CustomDialog.this).f74076w : duration;
        }

        public long e(@Nullable Animation animation) {
            if (animation == null && this.f73631b.getAnimation() != null) {
                animation = this.f73631b.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 300L : animation.getDuration();
            int i10 = CustomDialog.L1;
            if (i10 >= 0) {
                duration = i10;
            }
            return ((BaseDialog) CustomDialog.this).f74077x != -1 ? ((BaseDialog) CustomDialog.this).f74077x : duration;
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void init() {
            CustomDialog customDialog = CustomDialog.this;
            if (customDialog.f73619i1 == null && customDialog.w1() != null) {
                CustomDialog customDialog2 = CustomDialog.this;
                customDialog2.f73619i1 = new int[4];
                customDialog2.w1().getLocationInWindow(CustomDialog.this.f73619i1);
                CustomDialog customDialog3 = CustomDialog.this;
                customDialog3.f73619i1[2] = customDialog3.w1().getWidth();
                CustomDialog customDialog4 = CustomDialog.this;
                customDialog4.f73619i1[3] = customDialog4.w1().getHeight();
            }
            CustomDialog.this.C().setTranslationZ(CustomDialog.this.W());
            this.f73630a.p(CustomDialog.this.P);
            this.f73630a.n(new a());
            this.f73630a.m(new b());
            this.f73630a.post(new c());
            CustomDialog.this.q0();
        }
    }

    protected CustomDialog() {
        this.P = this;
        this.R = R.anim.anim_dialogx_default_enter;
        this.S = R.anim.anim_dialogx_default_exit;
        this.T = ALIGN.CENTER;
        this.U = 0;
        this.W = true;
        this.f73621p0 = -1;
        this.f73617b1 = -1;
        this.f73618f1 = -1;
        this.f73620l1 = new int[4];
    }

    public static CustomDialog A1() {
        return new CustomDialog();
    }

    public static CustomDialog B1(r<CustomDialog> rVar) {
        return new CustomDialog().D2(rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animation T1() {
        Animation animationLoadAnimation;
        int i10 = this.R;
        int i11 = R.anim.anim_dialogx_default_enter;
        if (i10 == i11 && this.S == R.anim.anim_dialogx_default_exit && w1() == null) {
            switch (e.f73629a[this.T.ordinal()]) {
                case 1:
                case 3:
                case 4:
                case 5:
                    this.R = R.anim.anim_dialogx_top_enter;
                    this.S = R.anim.anim_dialogx_top_exit;
                    break;
                case 2:
                case 8:
                case 14:
                case 15:
                    this.R = R.anim.anim_dialogx_left_enter;
                    this.S = R.anim.anim_dialogx_left_exit;
                    break;
                case 6:
                case 12:
                case 16:
                case 17:
                    this.R = R.anim.anim_dialogx_right_enter;
                    this.S = R.anim.anim_dialogx_right_exit;
                    break;
                case 7:
                case 9:
                case 10:
                case 11:
                    this.R = R.anim.anim_dialogx_bottom_enter;
                    this.S = R.anim.anim_dialogx_bottom_exit;
                    break;
            }
            animationLoadAnimation = AnimationUtils.loadAnimation(N(), this.R);
            animationLoadAnimation.setInterpolator(new DecelerateInterpolator(2.0f));
        } else {
            int i12 = R1;
            if (i12 != 0) {
                i11 = i12;
            }
            int i13 = this.R;
            if (i13 != 0) {
                i11 = i13;
            }
            animationLoadAnimation = AnimationUtils.loadAnimation(N(), i11);
        }
        long duration = animationLoadAnimation.getDuration();
        int i14 = f73616v1;
        if (i14 >= 0) {
            duration = i14;
        }
        long j10 = this.f74076w;
        if (j10 >= 0) {
            duration = j10;
        }
        animationLoadAnimation.setDuration(duration);
        return animationLoadAnimation;
    }

    public static CustomDialog e3(r<CustomDialog> rVar) {
        CustomDialog customDialog = new CustomDialog(rVar);
        customDialog.M0();
        return customDialog;
    }

    public static CustomDialog f3(r<CustomDialog> rVar, ALIGN align) {
        CustomDialog customDialog = new CustomDialog(rVar);
        customDialog.T = align;
        customDialog.M0();
        return customDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m2(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        if (viewTreeObserver == null || onPreDrawListener == null || !viewTreeObserver.isAlive()) {
            return;
        }
        try {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
        } catch (Exception unused) {
        }
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void A0() {
        ViewTreeObserver.OnPreDrawListener onPreDrawListener;
        if (C() != null) {
            if (O1() != null && O1().f73631b != null && (onPreDrawListener = this.f73623q1) != null) {
                ViewTreeObserver viewTreeObserver = this.f73622p1;
                if (viewTreeObserver != null) {
                    m2(viewTreeObserver, onPreDrawListener);
                } else if (O1().f73631b != null) {
                    m2(O1().f73631b.getViewTreeObserver(), this.f73623q1);
                }
                this.f73623q1 = null;
                this.f73622p1 = null;
            }
            BaseDialog.p(C());
            this.f74071r = false;
        }
        if (O1() != null && O1().f73631b != null) {
            O1().f73631b.removeAllViews();
        }
        this.f74076w = 0L;
        View viewM = m(R.layout.layout_dialogx_custom);
        this.Q = new f(viewM);
        if (viewM != null) {
            viewM.setTag(this.P);
        }
        BaseDialog.O0(viewM);
    }

    public CustomDialog A2(int i10) {
        this.f73620l1[1] = i10;
        x0();
        return this;
    }

    public CustomDialog B2(boolean z10) {
        this.W = z10;
        x0();
        return this;
    }

    public CustomDialog C1(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    public CustomDialog C2(boolean z10) {
        this.V = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        x0();
        return this;
    }

    public CustomDialog D1() {
        this.f74069p.clear();
        return this;
    }

    public CustomDialog D2(r<CustomDialog> rVar) {
        this.M = rVar;
        x0();
        return this;
    }

    public void E1() {
        BaseDialog.C0(new b());
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: E2, reason: merged with bridge method [inline-methods] */
    public CustomDialog F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    public ALIGN F1() {
        return this.T;
    }

    public CustomDialog F2(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    public int G1() {
        return this.f73621p0;
    }

    public CustomDialog G2(com.kongzue.dialogx.interfaces.f<CustomDialog> fVar) {
        this.N = fVar;
        if (this.f74071r) {
            fVar.b(this.P);
        }
        return this;
    }

    public View H1() {
        return w1();
    }

    public CustomDialog H2(com.kongzue.dialogx.interfaces.g<CustomDialog> gVar) {
        this.Y = gVar;
        return this;
    }

    public int[] I1() {
        return this.f73620l1;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: I2, reason: merged with bridge method [inline-methods] */
    public CustomDialog I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    public int J1(int i10) {
        return this.f73620l1[3];
    }

    public CustomDialog J2(long j10) {
        this.f74076w = j10;
        return this;
    }

    public int K1(int i10) {
        return this.f73620l1[0];
    }

    public CustomDialog K2(int i10) {
        this.R = i10;
        return this;
    }

    public int L1(int i10) {
        return this.f73620l1[2];
    }

    public CustomDialog L2(long j10) {
        this.f74077x = j10;
        return this;
    }

    public int M1(int i10) {
        return this.f73620l1[1];
    }

    public CustomDialog M2(int i10) {
        this.S = i10;
        return this;
    }

    public View N1() {
        r<CustomDialog> rVar = this.M;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    @Deprecated
    public CustomDialog N2(boolean z10) {
        I0(!z10);
        return this;
    }

    public f O1() {
        return this.Q;
    }

    public CustomDialog O2(int i10) {
        this.f73618f1 = i10;
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.f<CustomDialog> P1() {
        com.kongzue.dialogx.interfaces.f<CustomDialog> fVar = this.N;
        return fVar == null ? new c() : fVar;
    }

    public CustomDialog P2(@ColorInt int i10) {
        this.U = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    protected void Q0() {
        E1();
    }

    public com.kongzue.dialogx.interfaces.g<CustomDialog> Q1() {
        return this.Y;
    }

    public CustomDialog Q2(int i10) {
        this.f74079z = i10;
        x0();
        return this;
    }

    public long R1() {
        return this.f74076w;
    }

    public CustomDialog R2(int i10) {
        this.f74078y = i10;
        x0();
        return this;
    }

    public int S1() {
        return this.R;
    }

    public CustomDialog S2(int i10) {
        this.B = i10;
        x0();
        return this;
    }

    public CustomDialog T2(int i10) {
        this.A = i10;
        x0();
        return this;
    }

    public long U1() {
        return this.f74077x;
    }

    public CustomDialog U2(p<CustomDialog> pVar) {
        this.O = pVar;
        x0();
        return this;
    }

    public int V1() {
        return this.S;
    }

    public CustomDialog V2(q<CustomDialog> qVar) {
        this.X = qVar;
        return this;
    }

    public int W1() {
        return this.f73618f1;
    }

    public CustomDialog W2(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    public int X1() {
        return this.U;
    }

    public CustomDialog X2(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    public p<CustomDialog> Y1() {
        return this.O;
    }

    public CustomDialog Y2(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    public q<CustomDialog> Z1() {
        return this.X;
    }

    public CustomDialog Z2(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    public int a2() {
        return this.f73617b1;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: a3, reason: merged with bridge method [inline-methods] */
    public CustomDialog L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    public void b2() {
        this.F = true;
        this.f73624r1 = false;
        if (C() != null) {
            C().setVisibility(8);
        }
    }

    public CustomDialog b3(int i10) {
        this.f73617b1 = i10;
        x0();
        return this;
    }

    public void c2() {
        this.f73624r1 = true;
        this.F = true;
        if (O1() != null) {
            O1().c().a(this, O1().f73631b);
            BaseDialog.E0(new d(), O1().e(null));
        }
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: c3, reason: merged with bridge method [inline-methods] */
    public CustomDialog M0() {
        if (this.F && C() != null && this.f74071r) {
            if (!this.f73624r1 || O1() == null || O1().f73631b == null) {
                C().setVisibility(0);
            } else {
                C().setVisibility(0);
                O1().c().b(this, O1().f73631b);
                O1().f73631b.setVisibility(0);
                O1().f73631b.startAnimation(T1());
            }
            return this;
        }
        super.e();
        if (C() == null) {
            View viewM = m(R.layout.layout_dialogx_custom);
            this.Q = new f(viewM);
            if (viewM != null) {
                viewM.setTag(this.P);
            }
            BaseDialog.O0(viewM);
        } else {
            BaseDialog.O0(C());
        }
        return this;
    }

    public boolean d2(int i10) {
        return (this.f73621p0 & i10) == i10;
    }

    public CustomDialog d3(Activity activity) {
        super.e();
        if (C() == null) {
            View viewM = m(R.layout.layout_dialogx_custom);
            this.Q = new f(viewM);
            if (viewM != null) {
                viewM.setTag(this.P);
            }
            BaseDialog.N0(activity, viewM);
        } else {
            BaseDialog.N0(activity, C());
        }
        return this;
    }

    public boolean e2() {
        return g0();
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        BaseDialog.BOOLEAN r10 = this.V;
        if (r10 != null) {
            return r10 == BaseDialog.BOOLEAN.TRUE;
        }
        BaseDialog.BOOLEAN r11 = f73615a2;
        if (r11 != null) {
            return r11 == BaseDialog.BOOLEAN.TRUE;
        }
        return this.f74070q;
    }

    public boolean f2() {
        return this.W;
    }

    public CustomDialog g2(com.kongzue.dialogx.interfaces.i<CustomDialog> iVar) {
        this.f74066m = iVar;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        E1();
    }

    protected void h2(CustomDialog customDialog) {
    }

    protected void i2(int[] iArr) {
    }

    public CustomDialog j2(com.kongzue.dialogx.interfaces.i<CustomDialog> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    protected void k2(CustomDialog customDialog) {
    }

    public CustomDialog l2() {
        this.M.clean();
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public CustomDialog n2(int i10, com.kongzue.dialogx.interfaces.i<CustomDialog> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    public CustomDialog o2(ALIGN align) {
        this.T = align;
        x0();
        return this;
    }

    public CustomDialog p2(View view) {
        x1(view);
        int[] iArr = new int[4];
        this.f73619i1 = iArr;
        view.getLocationInWindow(iArr);
        N2(true);
        return this;
    }

    public CustomDialog q2(int i10) {
        this.f73621p0 = i10;
        if (w1() != null) {
            this.f73619i1 = new int[4];
            w1().getLocationInWindow(this.f73619i1);
        }
        N2(true);
        return this;
    }

    public CustomDialog r2(View view, int i10) {
        x1(view);
        this.f73621p0 = i10;
        int[] iArr = new int[4];
        this.f73619i1 = iArr;
        view.getLocationInWindow(iArr);
        N2(true);
        return this;
    }

    public CustomDialog s2(View view, int i10, int i11, int i12, int i13, int i14) {
        this.f73620l1 = new int[]{i11, i12, i13, i14};
        x0();
        return r2(view, i10);
    }

    public CustomDialog t2(int i10, int i11) {
        this.R = i10;
        this.S = i11;
        return this;
    }

    @Deprecated
    public CustomDialog u2(boolean z10) {
        I0(z10);
        return this;
    }

    public CustomDialog v2(int i10, int i11, int i12, int i13) {
        this.f73620l1 = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    protected View w1() {
        WeakReference<View> weakReference = this.Z;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public CustomDialog w2(int[] iArr) {
        this.f73620l1 = iArr;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void x0() {
        if (O1() == null) {
            return;
        }
        BaseDialog.C0(new a());
    }

    protected CustomDialog x1(View view) {
        WeakReference<View> weakReference;
        if (view != null || (weakReference = this.Z) == null) {
            this.Z = new WeakReference<>(view);
        } else {
            weakReference.clear();
            this.Z = null;
        }
        return this;
    }

    public CustomDialog x2(int i10) {
        this.f73620l1[3] = i10;
        x0();
        return this;
    }

    public CustomDialog y1(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    public CustomDialog y2(int i10) {
        this.f73620l1[0] = i10;
        x0();
        return this;
    }

    public CustomDialog z1() {
        L0(F());
        return this;
    }

    public CustomDialog z2(int i10) {
        this.f73620l1[2] = i10;
        x0();
        return this;
    }

    public CustomDialog(r<CustomDialog> rVar) {
        this.P = this;
        this.R = R.anim.anim_dialogx_default_enter;
        this.S = R.anim.anim_dialogx_default_exit;
        this.T = ALIGN.CENTER;
        this.U = 0;
        this.W = true;
        this.f73621p0 = -1;
        this.f73617b1 = -1;
        this.f73618f1 = -1;
        this.f73620l1 = new int[4];
        this.M = rVar;
    }
}
