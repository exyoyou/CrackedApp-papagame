package com.kongzue.dialogx.dialogs;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.KeyEvent;
import android.view.RoundedCorner;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.WindowInsets;
import android.view.animation.DecelerateInterpolator;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.interfaces.DialogXStyle;
import com.kongzue.dialogx.interfaces.c0;
import com.kongzue.dialogx.interfaces.p;
import com.kongzue.dialogx.interfaces.q;
import com.kongzue.dialogx.interfaces.r;
import com.kongzue.dialogx.interfaces.z;
import com.kongzue.dialogx.util.views.ActivityScreenShotImageView;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class d extends BaseDialog implements com.kongzue.dialogx.interfaces.h {

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static final int f73786i1 = -2;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public static final int f73787l1 = -1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public static int f73788p1 = -1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public static int f73789q1 = -1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public static BaseDialog.BOOLEAN f73790r1;
    protected r<d> M;
    protected p<d> N;
    protected BaseDialog.BOOLEAN O;
    protected boolean P;
    protected com.kongzue.dialogx.interfaces.g<d> T;
    protected boolean V;
    protected com.kongzue.dialogx.interfaces.f<d> X;
    protected q<d> Y;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    protected boolean f73791b1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private Integer f73792f1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    protected e f73793p0;
    protected float Q = DialogX.O;
    protected float R = -1.0f;
    protected boolean S = true;
    protected boolean U = false;
    protected Integer W = null;
    protected d Z = this;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = d.this.f73793p0;
            if (eVar != null) {
                eVar.b();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = d.this.f73793p0;
            if (eVar == null) {
                return;
            }
            eVar.a(null);
        }
    }

    class c extends com.kongzue.dialogx.interfaces.f<d> {
        c() {
        }
    }

    /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.d$d, reason: collision with other inner class name */
    class RunnableC0766d implements Runnable {
        RunnableC0766d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.C() != null) {
                d.this.C().setVisibility(8);
            }
        }
    }

    public class e implements com.kongzue.dialogx.interfaces.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.kongzue.dialogx.util.h f73798a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ActivityScreenShotImageView f73799b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public DialogXBaseRelativeLayout f73800c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RelativeLayout f73801d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public MaxRelativeLayout f73802e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public RelativeLayout f73803f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public c0 f73804g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        protected int f73806i;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f73805h = -1.0f;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Rect f73807j = new Rect(0, 0, 0, 0);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f73808k = true;

        class a implements ValueAnimator.AnimatorUpdateListener {
            a() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                e.this.f73800c.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        }

        class b extends com.kongzue.dialogx.interfaces.g<d> {

            class a implements ValueAnimator.AnimatorUpdateListener {
                a() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    e.this.f73800c.k(fFloatValue);
                    e.this.f73808k = fFloatValue != 1.0f;
                }
            }

            b() {
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void a(d dVar, ViewGroup viewGroup) {
                long jN = e.this.n();
                MaxRelativeLayout maxRelativeLayout = e.this.f73802e;
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(maxRelativeLayout, "y", maxRelativeLayout.getY(), e.this.f73801d.getHeight());
                objectAnimatorOfFloat.setDuration(jN);
                objectAnimatorOfFloat.start();
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                valueAnimatorOfFloat.setDuration(jN);
                valueAnimatorOfFloat.addUpdateListener(new a());
                valueAnimatorOfFloat.start();
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(d dVar, ViewGroup viewGroup) {
                e.this.q();
                e eVar = e.this;
                float safeHeight = eVar.f73800c.getSafeHeight();
                e eVar2 = e.this;
                eVar.f73805h = safeHeight - eVar2.f73806i;
                if (eVar2.f73805h < 0.0f) {
                    eVar2.f73805h = 0.0f;
                }
                eVar2.j(eVar2.f73800c.getHeight(), (int) e.this.f73805h, false);
            }
        }

        class c extends DialogXBaseRelativeLayout.c {
            c() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void a() {
                ((BaseDialog) d.this).f74071r = false;
                d.this.H1().a(d.this.Z);
                d dVar = d.this;
                dVar.U1(dVar.Z);
                d.this.J0(Lifecycle.State.DESTROYED);
                e.this.f73798a = null;
                d dVar2 = d.this;
                dVar2.f73793p0 = null;
                dVar2.X = null;
                System.gc();
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void b() {
                ((BaseDialog) d.this).f74071r = true;
                ((BaseDialog) d.this).E = false;
                d.this.J0(Lifecycle.State.CREATED);
                d.this.s0();
                d.this.H1().b(d.this.Z);
                d dVar = d.this;
                dVar.W1(dVar.Z);
            }
        }

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.d$e$d, reason: collision with other inner class name */
        class C0767d implements DialogXBaseRelativeLayout.d {
            C0767d() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.d
            public boolean onBackPressed() {
                d dVar = d.this;
                p<d> pVar = dVar.N;
                if (pVar != null) {
                    if (!pVar.a(dVar.Z)) {
                        return true;
                    }
                    d.this.A1();
                    return true;
                }
                if (!dVar.f0()) {
                    return true;
                }
                d.this.A1();
                return true;
            }
        }

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.d$e$e, reason: collision with other inner class name */
        class RunnableC0768e implements Runnable {
            RunnableC0768e() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e eVar = e.this;
                eVar.f73802e.setY(eVar.f73800c.getHeight());
                com.kongzue.dialogx.interfaces.g<d> gVarK = e.this.k();
                e eVar2 = e.this;
                gVarK.b(d.this.Z, eVar2.f73802e);
                d.this.J0(Lifecycle.State.RESUMED);
            }
        }

        class f implements z {
            f() {
            }

            @Override // com.kongzue.dialogx.interfaces.z
            public void a(Rect rect) {
                e.this.f73807j.set(rect);
                e.this.q();
                if (e.this.f73808k || e.this.m() == 0.0f) {
                    return;
                }
                e eVar = e.this;
                eVar.f73802e.setY(eVar.m());
            }
        }

        class g implements MaxRelativeLayout.b {
            g() {
            }

            @Override // com.kongzue.dialogx.util.views.MaxRelativeLayout.b
            public void a(float f10) {
                float top = f10 + e.this.f73802e.getTop();
                float height = 1.0f - ((e.this.f73800c.getHeight() - top) * 2.0E-5f);
                float f11 = height <= 1.0f ? height : 1.0f;
                e eVar = e.this;
                if (d.this.P) {
                    return;
                }
                eVar.f73799b.setScale(f11);
                e eVar2 = e.this;
                ActivityScreenShotImageView activityScreenShotImageView = eVar2.f73799b;
                d dVar = d.this;
                activityScreenShotImageView.setRadius(dVar.C1(dVar.F1(), d.this.B1(), (e.this.f73800c.getHeight() - top) / e.this.f73800c.getHeight()));
            }
        }

        class h implements View.OnLayoutChangeListener {
            h() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                if (i17 - i15 == i13 - i11 || e.this.f73808k || e.this.f73800c.getFitSystemBarUtils().y()) {
                    return;
                }
                e.this.q();
                float safeHeight = e.this.f73800c.getSafeHeight() - e.this.f73807j.bottom;
                e eVar = e.this;
                float f10 = (safeHeight - eVar.f73806i) - eVar.f73800c.getUnsafePlace().top;
                if (f10 < 0.0f) {
                    f10 = 0.0f;
                }
                e eVar2 = e.this;
                if (f10 == eVar2.f73805h || eVar2.f73802e.getY() == f10) {
                    if (e.this.f73802e.getY() == f10 || f10 == 0.0f) {
                        return;
                    }
                    e.this.f73802e.setY(f10);
                    return;
                }
                e eVar3 = e.this;
                float f11 = eVar3.f73805h;
                eVar3.f73805h = f10;
                eVar3.j((int) f11, (int) f10, true);
            }
        }

        class i implements View.OnClickListener {
            i() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d dVar = d.this;
                q<d> qVar = dVar.Y;
                if (qVar == null || !qVar.a(dVar.Z, view)) {
                    e.this.a(view);
                }
            }
        }

        class j extends ViewOutlineProvider {
            j() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                int width = view.getWidth();
                float height = view.getHeight();
                float f10 = d.this.Q;
                outline.setRoundRect(0, 0, width, (int) (height + f10), f10);
            }
        }

        class k implements Runnable {
            k() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DialogXBaseRelativeLayout dialogXBaseRelativeLayout = e.this.f73800c;
                if (dialogXBaseRelativeLayout != null) {
                    dialogXBaseRelativeLayout.setVisibility(8);
                }
                BaseDialog.p(d.this.C());
            }
        }

        public e(View view) {
            if (view == null) {
                return;
            }
            d.this.H0(view);
            this.f73799b = (ActivityScreenShotImageView) view.findViewById(R.id.img_zoom_activity);
            this.f73800c = (DialogXBaseRelativeLayout) view.findViewById(R.id.box_root);
            this.f73801d = (RelativeLayout) view.findViewById(R.id.box_bkg);
            this.f73802e = (MaxRelativeLayout) view.findViewById(R.id.bkg);
            this.f73803f = (RelativeLayout) view.findViewById(R.id.box_custom);
            ActivityScreenShotImageView activityScreenShotImageView = this.f73799b;
            activityScreenShotImageView.f74226b = d.this.V;
            activityScreenShotImageView.a(d.this);
            if (d.this.P) {
                view.setBackgroundResource(R.color.black20);
                this.f73799b.setVisibility(8);
            } else {
                view.setBackgroundResource(R.color.black);
                this.f73799b.setVisibility(0);
            }
            init();
            d.this.f73793p0 = this;
            b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(int i10, final int i11, boolean z10) {
            this.f73808k = true;
            long jL = l();
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, i11);
            valueAnimatorOfInt.setDuration(jL);
            valueAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kongzue.dialogx.dialogs.e
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f73822b.p(i11, valueAnimator);
                }
            });
            valueAnimatorOfInt.start();
            this.f73802e.setVisibility(0);
            if (z10) {
                return;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setDuration(jL);
            valueAnimatorOfFloat.addUpdateListener(new a());
            valueAnimatorOfFloat.start();
        }

        private boolean o() {
            ViewGroup.LayoutParams layoutParams;
            r<d> rVar = d.this.M;
            return (rVar == null || rVar.getCustomView() == null || (layoutParams = d.this.M.getCustomView().getLayoutParams()) == null || layoutParams.height != -1) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(int i10, ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            this.f73802e.setY(iIntValue);
            q();
            float safeHeight = this.f73800c.getSafeHeight() - this.f73806i;
            if (safeHeight < 0.0f) {
                safeHeight = 0.0f;
            }
            if (safeHeight != this.f73805h) {
                this.f73805h = safeHeight;
                valueAnimator.cancel();
                j(iIntValue, (int) safeHeight, true);
            } else if (iIntValue >= i10) {
                this.f73808k = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q() {
            int height = this.f73803f.getHeight();
            if (height == 0 || o()) {
                height = (int) this.f73800c.getSafeHeight();
            }
            this.f73806i = height;
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void a(View view) {
            BaseDialog baseDialog = d.this;
            if (baseDialog.t0(baseDialog)) {
                return;
            }
            if (view != null) {
                view.setEnabled(false);
            }
            if (d.this.N() == null || ((BaseDialog) d.this).D || k() == null) {
                return;
            }
            ((BaseDialog) d.this).D = true;
            k().a(d.this.Z, this.f73802e);
            BaseDialog.E0(new k(), n());
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void b() {
            GradientDrawable gradientDrawable;
            if (this.f73800c == null || d.this.N() == null) {
                return;
            }
            this.f73800c.j(d.this.g0());
            this.f73800c.setRootPadding(((BaseDialog) d.this).C[0], ((BaseDialog) d.this).C[1], ((BaseDialog) d.this).C[2], ((BaseDialog) d.this).C[3]);
            if (((BaseDialog) d.this).f74075v != null) {
                d dVar = d.this;
                dVar.R0(this.f73802e, ((BaseDialog) dVar).f74075v.intValue());
            }
            this.f73802e.j(d.this.K());
            this.f73802e.i(d.this.J());
            this.f73802e.setMinimumWidth(d.this.M());
            this.f73802e.setMinimumHeight(d.this.L());
            if (d.this.f0()) {
                this.f73800c.setOnClickListener(new i());
            } else {
                this.f73800c.setOnClickListener(null);
            }
            if (d.this.Q > -1.0f) {
                if ((this.f73802e.getBackground() instanceof GradientDrawable) && (gradientDrawable = (GradientDrawable) this.f73802e.getBackground()) != null) {
                    float f10 = d.this.Q;
                    gradientDrawable.setCornerRadii(new float[]{f10, f10, f10, f10, 0.0f, 0.0f, 0.0f, 0.0f});
                }
                this.f73802e.setOutlineProvider(new j());
                this.f73802e.setClipToOutline(true);
            }
            Integer num = d.this.W;
            if (num != null) {
                this.f73800c.setBackgroundColor(num.intValue());
            }
            d dVar2 = d.this;
            r<d> rVar = dVar2.M;
            if (rVar != null) {
                rVar.bindParent(this.f73803f, dVar2.Z);
                if (d.this.M.getCustomView() instanceof c0) {
                    this.f73804g = (c0) d.this.M.getCustomView();
                } else {
                    KeyEvent.Callback callbackFindViewWithTag = d.this.M.getCustomView().findViewWithTag("ScrollController");
                    if (callbackFindViewWithTag instanceof c0) {
                        this.f73804g = (c0) callbackFindViewWithTag;
                    }
                }
            }
            d dVar3 = d.this;
            if (dVar3.P) {
                dVar3.C().setBackgroundResource(R.color.black20);
                this.f73799b.setVisibility(8);
            } else {
                dVar3.C().setBackgroundResource(R.color.black);
                this.f73799b.setVisibility(0);
            }
            this.f73798a.i(d.this.Z, this);
            d.this.r0();
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void init() {
            this.f73800c.p(d.this.Z);
            d.this.C().setTranslationZ(d.this.W());
            this.f73800c.n(new c());
            this.f73800c.m(new C0767d());
            d dVar = d.this;
            this.f73798a = new com.kongzue.dialogx.util.h(dVar.Z, dVar.f73793p0);
            this.f73800c.k(0.0f);
            this.f73800c.post(new RunnableC0768e());
            this.f73800c.o(new f());
            this.f73802e.k(new g());
            this.f73803f.addOnLayoutChangeListener(new h());
            d.this.q0();
        }

        protected com.kongzue.dialogx.interfaces.g<d> k() {
            d dVar = d.this;
            if (dVar.T == null) {
                dVar.T = new b();
            }
            return d.this.T;
        }

        public long l() {
            int i10 = d.f73788p1;
            return ((BaseDialog) d.this).f74076w >= 0 ? ((BaseDialog) d.this).f74076w : i10 >= 0 ? i10 : 300L;
        }

        public float m() {
            return Math.max(0.0f, this.f73800c.getSafeHeight() - this.f73806i);
        }

        public long n() {
            int i10 = d.f73789q1;
            return ((BaseDialog) d.this).f74077x != -1 ? ((BaseDialog) d.this).f74077x : i10 >= 0 ? i10 : 300L;
        }

        public void r() {
            if (d.this.f0()) {
                a(this.f73800c);
                return;
            }
            int i10 = d.f73789q1;
            long j10 = i10 >= 0 ? i10 : 300L;
            if (((BaseDialog) d.this).f74077x >= 0) {
                j10 = ((BaseDialog) d.this).f74077x;
            }
            MaxRelativeLayout maxRelativeLayout = this.f73802e;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(maxRelativeLayout, "y", maxRelativeLayout.getY(), this.f73805h);
            objectAnimatorOfFloat.setDuration(j10);
            objectAnimatorOfFloat.start();
        }

        public e s(c0 c0Var) {
            this.f73804g = c0Var;
            return this;
        }
    }

    protected d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float C1(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    public static d D2(r<d> rVar) {
        d dVar = new d(rVar);
        dVar.M0();
        return dVar;
    }

    public static d w1() {
        return new d();
    }

    public static d x1(r<d> rVar) {
        return new d(rVar);
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void A0() {
        if (C() != null) {
            BaseDialog.p(C());
            this.f74071r = false;
        }
        if (G1().f73803f != null) {
            G1().f73803f.removeAllViews();
        }
        this.f74076w = 0L;
        View viewM = m(i0() ? R.layout.layout_dialogx_fullscreen : R.layout.layout_dialogx_fullscreen_dark);
        this.f73793p0 = new e(viewM);
        if (viewM != null) {
            viewM.setTag(this.Z);
        }
        BaseDialog.O0(viewM);
    }

    public void A1() {
        BaseDialog.C0(new b());
    }

    public d A2(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    public float B1() {
        int iO;
        float f10 = this.R;
        if (f10 >= 0.0f) {
            return f10;
        }
        if (f10 == -2.0f) {
            iO = F1();
        } else {
            if (N1() >= 0.0f) {
                return N1();
            }
            iO = o(15.0f);
        }
        return iO;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: B2, reason: merged with bridge method [inline-methods] */
    public d L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: C2, reason: merged with bridge method [inline-methods] */
    public d M0() {
        if (this.F && C() != null && this.f74071r) {
            if (!this.f73791b1 || G1() == null) {
                C().setVisibility(0);
            } else {
                C().setVisibility(0);
                G1().k().b(this.Z, G1().f73802e);
            }
            return this;
        }
        super.e();
        if (C() == null) {
            View viewM = m(i0() ? R.layout.layout_dialogx_fullscreen : R.layout.layout_dialogx_fullscreen_dark);
            this.f73793p0 = new e(viewM);
            if (viewM != null) {
                viewM.setTag(this.Z);
            }
            BaseDialog.O0(viewM);
        } else {
            BaseDialog.O0(C());
        }
        return this;
    }

    public int D1() {
        return this.f74075v.intValue();
    }

    public View E1() {
        r<d> rVar = this.M;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    public void E2(Activity activity) {
        super.e();
        if (C() != null) {
            BaseDialog.N0(activity, C());
            return;
        }
        View viewM = m(i0() ? R.layout.layout_dialogx_fullscreen : R.layout.layout_dialogx_fullscreen_dark);
        this.f73793p0 = new e(viewM);
        if (viewM != null) {
            viewM.setTag(this.Z);
        }
        BaseDialog.N0(activity, viewM);
    }

    public int F1() {
        if (this.f73792f1 == null) {
            this.f73792f1 = 0;
            if (Build.VERSION.SDK_INT >= 31) {
                WindowInsets windowInsetsV0 = P() == null ? BaseDialog.v0() : P().getRootWindowInsets();
                if (windowInsetsV0 != null) {
                    RoundedCorner roundedCorner = windowInsetsV0.getRoundedCorner(0);
                    RoundedCorner roundedCorner2 = windowInsetsV0.getRoundedCorner(1);
                    if (roundedCorner != null && roundedCorner2 != null) {
                        this.f73792f1 = Integer.valueOf(Math.max(roundedCorner.getRadius(), roundedCorner2.getRadius()));
                    }
                }
            }
            if (this.f73792f1.intValue() == 0 && MediationConstant.ADN_XIAOMI.equals(Build.MANUFACTURER.toLowerCase())) {
                try {
                    this.f73792f1 = Integer.valueOf(((Integer) Class.forName("android.os.SystemProperties").getMethod("getInt", String.class, Integer.TYPE).invoke(null, "ro.miui.notch.radius", 0)).intValue());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (this.f73792f1.intValue() == 0) {
                try {
                    int identifier = this.Z.getResources().getIdentifier("rounded_corner_radius", "dimen", "android");
                    if (identifier > 0) {
                        this.f73792f1 = Integer.valueOf(this.Z.getResources().getDimensionPixelSize(identifier));
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        return this.f73792f1.intValue();
    }

    public e G1() {
        return this.f73793p0;
    }

    public com.kongzue.dialogx.interfaces.f<d> H1() {
        com.kongzue.dialogx.interfaces.f<d> fVar = this.X;
        return fVar == null ? new c() : fVar;
    }

    public com.kongzue.dialogx.interfaces.g<d> I1() {
        return this.T;
    }

    public long J1() {
        return this.f74076w;
    }

    public long K1() {
        return this.f74077x;
    }

    public p<d> L1() {
        return this.N;
    }

    public q<d> M1() {
        return this.Y;
    }

    public float N1() {
        return this.Q;
    }

    public void O1() {
        this.F = true;
        this.f73791b1 = false;
        if (C() != null) {
            C().setVisibility(8);
        }
    }

    public d P1(boolean z10) {
        this.V = z10;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    protected void Q0() {
        A1();
    }

    public void Q1() {
        this.f73791b1 = true;
        this.F = true;
        if (G1() != null) {
            G1().k().a(this.Z, G1().f73802e);
            BaseDialog.E0(new RunnableC0766d(), G1().n());
        }
    }

    public boolean R1() {
        return this.S;
    }

    public boolean S1() {
        return this.P;
    }

    public d T1(com.kongzue.dialogx.interfaces.i<d> iVar) {
        this.f74066m = iVar;
        return this;
    }

    protected void U1(d dVar) {
    }

    public d V1(com.kongzue.dialogx.interfaces.i<d> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    protected void W1(d dVar) {
    }

    public d X1() {
        this.M.clean();
        x0();
        return this;
    }

    public d Y1(int i10, com.kongzue.dialogx.interfaces.i<d> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    public d Z1(float f10) {
        this.R = f10;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.h
    public boolean a() {
        return this.U;
    }

    public d a2(boolean z10) {
        this.S = z10;
        x0();
        return this;
    }

    public d b2(@ColorInt int i10) {
        this.f74075v = Integer.valueOf(i10);
        x0();
        return this;
    }

    public d c2(@ColorRes int i10) {
        this.f74075v = Integer.valueOf(v(i10));
        x0();
        return this;
    }

    public d d2(boolean z10) {
        this.U = z10;
        return this;
    }

    public d e2(boolean z10) {
        this.O = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        BaseDialog.BOOLEAN r10 = this.O;
        if (r10 != null) {
            return r10 == BaseDialog.BOOLEAN.TRUE;
        }
        BaseDialog.BOOLEAN r11 = f73790r1;
        if (r11 != null) {
            return r11 == BaseDialog.BOOLEAN.TRUE;
        }
        return this.f74070q;
    }

    public d f2(r<d> rVar) {
        this.M = rVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: g2, reason: merged with bridge method [inline-methods] */
    public d F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        A1();
    }

    public d h2(int i10) {
        this.f73792f1 = Integer.valueOf(i10);
        return this;
    }

    public d i2(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    public d j2(com.kongzue.dialogx.interfaces.f<d> fVar) {
        this.X = fVar;
        if (this.f74071r) {
            fVar.b(this.Z);
        }
        return this;
    }

    public d k2(com.kongzue.dialogx.interfaces.g<d> gVar) {
        this.T = gVar;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: l2, reason: merged with bridge method [inline-methods] */
    public d I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    public d m2(long j10) {
        this.f74076w = j10;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public d n2(long j10) {
        this.f74077x = j10;
        return this;
    }

    public d o2(boolean z10) {
        this.P = z10;
        x0();
        return this;
    }

    public d p2(@ColorInt int i10) {
        this.W = Integer.valueOf(i10);
        x0();
        return this;
    }

    public d q2(int i10) {
        this.f74079z = i10;
        x0();
        return this;
    }

    public d r2(int i10) {
        this.f74078y = i10;
        x0();
        return this;
    }

    public d s2(int i10) {
        this.B = i10;
        x0();
        return this;
    }

    public d t2(int i10) {
        this.A = i10;
        x0();
        return this;
    }

    public d u1(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    public d u2(p<d> pVar) {
        this.N = pVar;
        x0();
        return this;
    }

    public d v1() {
        L0(F());
        return this;
    }

    public d v2(q<d> qVar) {
        this.Y = qVar;
        return this;
    }

    public d w2(float f10) {
        this.Q = f10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void x0() {
        if (G1() == null) {
            return;
        }
        BaseDialog.C0(new a());
    }

    public d x2(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    public d y1(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    public d y2(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    public d z1() {
        this.f74069p.clear();
        return this;
    }

    public d z2(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    public d(r<d> rVar) {
        this.M = rVar;
    }
}
