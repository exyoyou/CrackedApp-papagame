package com.kongzue.dialogx.dialogs;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.interfaces.DialogXStyle;
import com.kongzue.dialogx.interfaces.c0;
import com.kongzue.dialogx.interfaces.p;
import com.kongzue.dialogx.interfaces.q;
import com.kongzue.dialogx.interfaces.r;
import com.kongzue.dialogx.interfaces.t;
import com.kongzue.dialogx.interfaces.w;
import com.kongzue.dialogx.util.TextInfo;
import com.kongzue.dialogx.util.views.DialogScrollView;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a extends BaseDialog implements com.kongzue.dialogx.interfaces.h {

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    public static int f73703h2 = -1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    public static int f73704i2 = -1;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    public static BaseDialog.BOOLEAN f73705j2;
    protected TextInfo L1;
    protected r<a> M;
    protected CharSequence N;
    protected CharSequence O;
    protected CharSequence P;
    protected CharSequence Q;
    protected CharSequence R;
    protected com.kongzue.dialogx.interfaces.a V;
    protected com.kongzue.dialogx.interfaces.a W;
    protected com.kongzue.dialogx.interfaces.a X;
    protected q<a> Y;
    protected p<a> Z;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.f<a> f73709c2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    protected e f73711e2;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    protected boolean f73713f2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    protected boolean f73714g2;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    protected Drawable f73715i1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.g<a> f73716l1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    protected BaseDialog.BOOLEAN f73717p0;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    protected TextInfo f73720r1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    protected TextInfo f73721v1;
    protected boolean S = true;
    protected boolean T = false;
    protected Integer U = null;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    protected boolean f73707b1 = true;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    protected float f73712f1 = DialogX.N;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    protected BaseDialog.BUTTON_SELECT_RESULT f73718p1 = BaseDialog.BUTTON_SELECT_RESULT.NONE;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    protected boolean f73719q1 = true;
    protected TextInfo R1 = new TextInfo().j(true);
    protected TextInfo V1 = new TextInfo().j(true);

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    protected TextInfo f73706a2 = new TextInfo().j(true);

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    protected float f73708b2 = 0.0f;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    protected a f73710d2 = this;

    /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.a$a, reason: collision with other inner class name */
    class RunnableC0761a implements Runnable {
        RunnableC0761a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = a.this.f73711e2;
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
            e eVar = a.this.f73711e2;
            if (eVar == null) {
                return;
            }
            eVar.a(null);
        }
    }

    class c extends com.kongzue.dialogx.interfaces.f<a> {
        c() {
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.C() != null) {
                a.this.C().setVisibility(8);
            }
        }
    }

    public class e implements com.kongzue.dialogx.interfaces.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.kongzue.dialogx.util.b f73726a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public DialogXBaseRelativeLayout f73727b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public RelativeLayout f73728c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public MaxRelativeLayout f73729d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ImageView f73730e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ViewGroup f73731f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f73732g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public c0 f73733h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public LinearLayout f73734i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f73735j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public View f73736k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ViewGroup f73737l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public RelativeLayout f73738m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public ViewGroup f73739n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public ImageView f73740o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public ImageView f73741p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public LinearLayout f73742q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public TextView f73743r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public TextView f73744s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public TextView f73745t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private List<View> f73746u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public float f73747v = -1.0f;

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.a$e$a, reason: collision with other inner class name */
        class C0762a extends ViewOutlineProvider {
            C0762a() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                int width = view.getWidth();
                float height = view.getHeight();
                float f10 = a.this.f73712f1;
                outline.setRoundRect(0, 0, width, (int) (height + f10), f10);
            }
        }

        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DialogXBaseRelativeLayout dialogXBaseRelativeLayout = e.this.f73727b;
                if (dialogXBaseRelativeLayout != null) {
                    dialogXBaseRelativeLayout.setVisibility(8);
                }
                BaseDialog.p(a.this.C());
            }
        }

        class c extends com.kongzue.dialogx.interfaces.g<a> {

            /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.a$e$c$a, reason: collision with other inner class name */
            class C0763a implements ValueAnimator.AnimatorUpdateListener {
                C0763a() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    e.this.f73727b.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }

            class b implements ValueAnimator.AnimatorUpdateListener {
                b() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    e.this.f73727b.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }

            c() {
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void a(a aVar, ViewGroup viewGroup) {
                long jH = e.this.h();
                RelativeLayout relativeLayout = e.this.f73728c;
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(relativeLayout, "y", relativeLayout.getY(), e.this.f73728c.getHeight());
                objectAnimatorOfFloat.setDuration(jH);
                objectAnimatorOfFloat.start();
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                valueAnimatorOfFloat.setDuration(jH);
                valueAnimatorOfFloat.addUpdateListener(new b());
                valueAnimatorOfFloat.start();
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(a aVar, ViewGroup viewGroup) {
                long jG = e.this.g();
                float height = 0.0f;
                if (aVar.C2()) {
                    e eVar = e.this;
                    float f10 = a.this.f73708b2;
                    if (f10 > 0.0f && f10 <= 1.0f) {
                        float height2 = eVar.f73728c.getHeight();
                        e eVar2 = e.this;
                        height = height2 - (a.this.f73708b2 * eVar2.f73728c.getHeight());
                    } else if (f10 > 1.0f) {
                        height = eVar.f73728c.getHeight() - a.this.f73708b2;
                    }
                } else {
                    e eVar3 = e.this;
                    float f11 = a.this.f73708b2;
                    if (f11 > 0.0f && f11 <= 1.0f) {
                        float height3 = eVar3.f73728c.getHeight();
                        e eVar4 = e.this;
                        height = height3 - (a.this.f73708b2 * eVar4.f73728c.getHeight());
                    } else if (f11 > 1.0f) {
                        height = eVar3.f73728c.getHeight() - a.this.f73708b2;
                    }
                    e.this.f73728c.setPadding(0, 0, 0, (int) height);
                }
                e eVar5 = e.this;
                RelativeLayout relativeLayout = eVar5.f73728c;
                float[] fArr = new float[2];
                fArr[0] = a.this.P() == null ? Resources.getSystem().getDisplayMetrics().heightPixels : a.this.P().getMeasuredHeight();
                e eVar6 = e.this;
                float f12 = eVar6.f73727b.getUnsafePlace().top + height;
                eVar6.f73747v = f12;
                fArr[1] = f12;
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(relativeLayout, "y", fArr);
                objectAnimatorOfFloat.setDuration(jG);
                objectAnimatorOfFloat.setAutoCancel(true);
                objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator(2.0f));
                objectAnimatorOfFloat.start();
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.setDuration(jG);
                valueAnimatorOfFloat.addUpdateListener(new C0763a());
                valueAnimatorOfFloat.start();
            }
        }

        class d extends DialogXBaseRelativeLayout.c {
            d() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void a() {
                ((BaseDialog) a.this).f74071r = false;
                a.this.k2().a(a.this.f73710d2);
                a aVar = a.this;
                aVar.G2(aVar.f73710d2);
                a.this.J0(Lifecycle.State.DESTROYED);
                e eVar = e.this;
                a.this.f73711e2 = null;
                eVar.f73726a = null;
                a.this.f73709c2 = null;
                System.gc();
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void b() {
                ((BaseDialog) a.this).f74071r = true;
                ((BaseDialog) a.this).E = false;
                a.this.J0(Lifecycle.State.CREATED);
                a.this.k2().b(a.this.f73710d2);
                a aVar = a.this;
                aVar.I2(aVar.f73710d2);
                a.this.s0();
                a.this.x0();
            }
        }

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.a$e$e, reason: collision with other inner class name */
        class ViewOnClickListenerC0764e implements View.OnClickListener {
            ViewOnClickListenerC0764e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.Z(view);
                a aVar = a.this;
                aVar.f73718p1 = BaseDialog.BUTTON_SELECT_RESULT.BUTTON_CANCEL;
                com.kongzue.dialogx.interfaces.a aVar2 = aVar.V;
                if (aVar2 == null) {
                    aVar.b2();
                    return;
                }
                if (aVar2 instanceof t) {
                    if (((t) aVar2).a(aVar.f73710d2, view)) {
                        return;
                    }
                    a.this.b2();
                } else {
                    if (!(aVar2 instanceof w) || ((w) aVar2).a(aVar.f73710d2, view)) {
                        return;
                    }
                    a.this.b2();
                }
            }
        }

        class f implements View.OnClickListener {
            f() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.Z(view);
                a aVar = a.this;
                aVar.f73718p1 = BaseDialog.BUTTON_SELECT_RESULT.BUTTON_OTHER;
                com.kongzue.dialogx.interfaces.a aVar2 = aVar.X;
                if (aVar2 == null) {
                    aVar.b2();
                    return;
                }
                if (aVar2 instanceof t) {
                    if (((t) aVar2).a(aVar.f73710d2, view)) {
                        return;
                    }
                    a.this.b2();
                } else {
                    if (!(aVar2 instanceof w) || ((w) aVar2).a(aVar.f73710d2, view)) {
                        return;
                    }
                    a.this.b2();
                }
            }
        }

        class g implements View.OnClickListener {
            g() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.Z(view);
                a aVar = a.this;
                aVar.f73718p1 = BaseDialog.BUTTON_SELECT_RESULT.BUTTON_OK;
                com.kongzue.dialogx.interfaces.a aVar2 = aVar.W;
                if (aVar2 == null) {
                    aVar.b2();
                    return;
                }
                if (aVar2 instanceof t) {
                    if (((t) aVar2).a(aVar.f73710d2, view)) {
                        return;
                    }
                    a.this.b2();
                } else {
                    if (!(aVar2 instanceof w) || ((w) aVar2).a(aVar.f73710d2, view)) {
                        return;
                    }
                    a.this.b2();
                }
            }
        }

        class h implements DialogXBaseRelativeLayout.d {
            h() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.d
            public boolean onBackPressed() {
                a aVar = a.this;
                p<a> pVar = aVar.Z;
                if (pVar != null) {
                    if (!pVar.a(aVar.f73710d2)) {
                        return true;
                    }
                    a.this.b2();
                    return true;
                }
                if (!aVar.f0()) {
                    return true;
                }
                a.this.b2();
                return true;
            }
        }

        class i implements Runnable {
            i() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Integer numW;
                Float fD;
                com.kongzue.dialogx.interfaces.g<a> gVarF = e.this.f();
                e eVar = e.this;
                gVarF.b(a.this, eVar.f73729d);
                if (((BaseDialog) a.this).f74072s.e() != null) {
                    a aVar = a.this;
                    numW = aVar.w(aVar.G(Integer.valueOf(((BaseDialog) aVar).f74072s.e().c(a.this.i0()))));
                    a aVar2 = a.this;
                    fD = aVar2.D(Float.valueOf(((BaseDialog) aVar2).f74072s.e().b()));
                } else {
                    numW = null;
                    fD = null;
                }
                if (e.this.f73746u != null) {
                    Iterator it2 = e.this.f73746u.iterator();
                    while (it2.hasNext()) {
                        com.kongzue.dialogx.interfaces.b bVar = (com.kongzue.dialogx.interfaces.b) ((View) it2.next());
                        bVar.b(((BaseDialog) a.this).f74075v == null ? numW : ((BaseDialog) a.this).f74075v);
                        bVar.a(fD);
                    }
                }
            }
        }

        class j implements Runnable {
            j() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e eVar = e.this;
                a aVar = a.this;
                eVar.f73726a = new com.kongzue.dialogx.util.b(aVar.f73710d2, aVar.f73711e2);
            }
        }

        class k implements View.OnClickListener {
            k() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a aVar = a.this;
                q<a> qVar = aVar.Y;
                if (qVar == null || !qVar.a(aVar.f73710d2, view)) {
                    e.this.a(view);
                }
            }
        }

        class l implements View.OnClickListener {
            l() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.f73727b.callOnClick();
            }
        }

        public e(View view) {
            if (view == null) {
                return;
            }
            a.this.H0(view);
            this.f73727b = (DialogXBaseRelativeLayout) view.findViewById(R.id.box_root);
            this.f73728c = (RelativeLayout) view.findViewById(R.id.box_bkg);
            this.f73729d = (MaxRelativeLayout) view.findViewById(R.id.bkg);
            this.f73730e = (ImageView) view.findViewById(R.id.img_tab);
            this.f73731f = (ViewGroup) view.findViewById(R.id.box_body);
            this.f73732g = (TextView) view.findViewById(R.id.txt_dialog_title);
            this.f73733h = (c0) view.findViewById(R.id.scrollView);
            this.f73734i = (LinearLayout) view.findViewById(R.id.box_content);
            this.f73735j = (TextView) view.findViewById(R.id.txt_dialog_tip);
            this.f73736k = view.findViewWithTag("split");
            this.f73737l = (ViewGroup) view.findViewById(R.id.box_list);
            this.f73738m = (RelativeLayout) view.findViewById(R.id.box_custom);
            if (!a.this.f73719q1) {
                ViewGroup viewGroup = (ViewGroup) this.f73732g.getParent();
                ((ViewGroup) this.f73734i.getParent()).removeView(this.f73734i);
                viewGroup.addView(this.f73734i, 1, new ViewGroup.LayoutParams(-1, -2));
            }
            this.f73739n = (ViewGroup) view.findViewWithTag("cancelBox");
            this.f73742q = (LinearLayout) view.findViewById(R.id.box_button);
            this.f73743r = (TextView) view.findViewById(R.id.btn_selectNegative);
            this.f73744s = (TextView) view.findViewById(R.id.btn_selectOther);
            this.f73745t = (TextView) view.findViewById(R.id.btn_selectPositive);
            this.f73740o = (ImageView) view.findViewWithTag("imgPositiveButtonSplit");
            this.f73741p = (ImageView) view.findViewWithTag("imgOtherButtonSplit");
            this.f73746u = a.this.s(view);
            init();
            a.this.f73711e2 = this;
            b();
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void a(View view) {
            BaseDialog baseDialog = a.this;
            if (baseDialog.t0(baseDialog)) {
                return;
            }
            if (view != null) {
                view.setEnabled(false);
            }
            if (a.this.N() == null || ((BaseDialog) a.this).D || f() == null) {
                return;
            }
            ((BaseDialog) a.this).D = true;
            f().a(a.this, this.f73729d);
            BaseDialog.E0(new b(), h());
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void b() {
            GradientDrawable gradientDrawable;
            TextView textView;
            TextView textView2;
            if (this.f73727b == null || a.this.N() == null) {
                return;
            }
            this.f73729d.j(a.this.K());
            this.f73729d.i(a.this.J());
            this.f73729d.setMinimumWidth(a.this.M());
            this.f73729d.setMinimumHeight(a.this.L());
            this.f73727b.j(a.this.g0());
            this.f73727b.setRootPadding(((BaseDialog) a.this).C[0], ((BaseDialog) a.this).C[1], ((BaseDialog) a.this).C[2], ((BaseDialog) a.this).C[3]);
            if (((BaseDialog) a.this).f74075v != null) {
                a aVar = a.this;
                aVar.R0(this.f73729d, ((BaseDialog) aVar).f74075v.intValue());
                if (((BaseDialog) a.this).f74072s.o()) {
                    a aVar2 = a.this;
                    aVar2.R0(this.f73744s, ((BaseDialog) aVar2).f74075v.intValue());
                    a aVar3 = a.this;
                    aVar3.R0(this.f73743r, ((BaseDialog) aVar3).f74075v.intValue());
                    a aVar4 = a.this;
                    aVar4.R0(this.f73745t, ((BaseDialog) aVar4).f74075v.intValue());
                }
                List<View> list = this.f73746u;
                if (list != null) {
                    Iterator<View> it2 = list.iterator();
                    while (it2.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) ((View) it2.next())).b(((BaseDialog) a.this).f74075v);
                    }
                }
            }
            a aVar5 = a.this;
            aVar5.P0(this.f73732g, aVar5.N);
            a aVar6 = a.this;
            aVar6.P0(this.f73735j, aVar6.O);
            BaseDialog.S0(this.f73732g, a.this.f73720r1);
            BaseDialog.S0(this.f73735j, a.this.f73721v1);
            BaseDialog.S0(this.f73743r, a.this.R1);
            BaseDialog.S0(this.f73744s, a.this.f73706a2);
            BaseDialog.S0(this.f73745t, a.this.V1);
            LinearLayout linearLayout = this.f73742q;
            if (linearLayout != null) {
                TextView textView3 = this.f73743r;
                linearLayout.setVisibility(((textView3 == null || textView3.getVisibility() != 0) && ((textView = this.f73744s) == null || textView.getVisibility() != 0) && ((textView2 = this.f73745t) == null || textView2.getVisibility() != 0)) ? 8 : 0);
            }
            if (a.this.f73715i1 != null) {
                int textSize = (int) this.f73732g.getTextSize();
                a.this.f73715i1.setBounds(0, 0, textSize, textSize);
                this.f73732g.setCompoundDrawablePadding(a.this.o(10.0f));
                this.f73732g.setCompoundDrawables(a.this.f73715i1, null, null, null);
            }
            a aVar7 = a.this;
            if (!aVar7.f73707b1) {
                this.f73727b.setClickable(false);
            } else if (aVar7.f0()) {
                this.f73727b.setOnClickListener(new k());
            } else {
                this.f73727b.setOnClickListener(null);
            }
            this.f73728c.setOnClickListener(new l());
            if (a.this.f73712f1 > -1.0f) {
                if ((this.f73729d.getBackground() instanceof GradientDrawable) && (gradientDrawable = (GradientDrawable) this.f73729d.getBackground()) != null) {
                    float f10 = a.this.f73712f1;
                    gradientDrawable.setCornerRadii(new float[]{f10, f10, f10, f10, 0.0f, 0.0f, 0.0f, 0.0f});
                }
                this.f73729d.setOutlineProvider(new C0762a());
                this.f73729d.setClipToOutline(true);
                List<View> list2 = this.f73746u;
                if (list2 != null) {
                    Iterator<View> it3 = list2.iterator();
                    while (it3.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) ((View) it3.next())).a(Float.valueOf(a.this.f73712f1));
                    }
                }
            }
            if (a.this.U != null) {
                this.f73727b.setBackground(new ColorDrawable(a.this.U.intValue()));
            }
            r<a> rVar = a.this.M;
            if (rVar != null && rVar.getCustomView() != null) {
                a aVar8 = a.this;
                aVar8.M.bindParent(this.f73738m, aVar8.f73710d2);
                if (a.this.M.getCustomView() instanceof c0) {
                    c0 c0Var = this.f73733h;
                    if (c0Var instanceof DialogScrollView) {
                        ((DialogScrollView) c0Var).setVerticalScrollBarEnabled(false);
                    }
                    this.f73733h = (c0) a.this.M.getCustomView();
                } else {
                    KeyEvent.Callback callbackFindViewWithTag = a.this.M.getCustomView().findViewWithTag("ScrollController");
                    if (callbackFindViewWithTag instanceof c0) {
                        c0 c0Var2 = this.f73733h;
                        if (c0Var2 instanceof DialogScrollView) {
                            ((DialogScrollView) c0Var2).setVerticalScrollBarEnabled(false);
                        }
                        this.f73733h = (c0) callbackFindViewWithTag;
                    }
                }
            }
            if (a.this.C2() && a.this.f0()) {
                ImageView imageView = this.f73730e;
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
            } else {
                ImageView imageView2 = this.f73730e;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                }
            }
            com.kongzue.dialogx.util.b bVar = this.f73726a;
            if (bVar != null) {
                bVar.k(a.this.f73710d2, this);
            }
            if (this.f73736k != null) {
                if (this.f73732g.getVisibility() == 0 || this.f73735j.getVisibility() == 0) {
                    this.f73736k.setVisibility(0);
                } else {
                    this.f73736k.setVisibility(8);
                }
            }
            if (this.f73739n != null) {
                if (BaseDialog.j0(a.this.P)) {
                    this.f73739n.setVisibility(8);
                } else {
                    this.f73739n.setVisibility(0);
                }
            }
            a aVar9 = a.this;
            aVar9.P0(this.f73745t, aVar9.Q);
            a aVar10 = a.this;
            aVar10.P0(this.f73743r, aVar10.P);
            a aVar11 = a.this;
            aVar11.P0(this.f73744s, aVar11.R);
            ImageView imageView3 = this.f73740o;
            if (imageView3 != null) {
                imageView3.setVisibility(this.f73745t.getVisibility());
            }
            ImageView imageView4 = this.f73741p;
            if (imageView4 != null) {
                imageView4.setVisibility(this.f73744s.getVisibility());
            }
            a.this.r0();
        }

        public com.kongzue.dialogx.util.b e() {
            return this.f73726a;
        }

        protected com.kongzue.dialogx.interfaces.g<a> f() {
            a aVar = a.this;
            if (aVar.f73716l1 == null) {
                aVar.f73716l1 = new c();
            }
            return a.this.f73716l1;
        }

        public long g() {
            int i10 = a.f73703h2;
            return ((BaseDialog) a.this).f74076w >= 0 ? ((BaseDialog) a.this).f74076w : i10 >= 0 ? i10 : 300L;
        }

        public long h() {
            int i10 = a.f73704i2;
            return ((BaseDialog) a.this).f74077x != -1 ? ((BaseDialog) a.this).f74077x : i10 >= 0 ? i10 : 300L;
        }

        public void i() {
            if (a.this.f0()) {
                if (!(a.this.k2() instanceof com.kongzue.dialogx.interfaces.c)) {
                    a(this.f73727b);
                    return;
                } else {
                    if (((com.kongzue.dialogx.interfaces.c) a.this.k2()).c(a.this.f73710d2)) {
                        return;
                    }
                    a(this.f73727b);
                    return;
                }
            }
            int i10 = a.f73704i2;
            long j10 = i10 >= 0 ? i10 : 300L;
            if (((BaseDialog) a.this).f74077x >= 0) {
                j10 = ((BaseDialog) a.this).f74077x;
            }
            RelativeLayout relativeLayout = this.f73728c;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(relativeLayout, "y", relativeLayout.getY(), this.f73727b.getUnsafePlace().top);
            objectAnimatorOfFloat.setDuration(j10);
            objectAnimatorOfFloat.start();
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void init() {
            a aVar = a.this;
            aVar.f73718p1 = BaseDialog.BUTTON_SELECT_RESULT.NONE;
            aVar.C().setTranslationZ(a.this.W());
            a aVar2 = a.this;
            if (aVar2.f73720r1 == null) {
                aVar2.f73720r1 = DialogX.f73604p;
            }
            if (aVar2.f73721v1 == null) {
                aVar2.f73721v1 = DialogX.f73605q;
            }
            if (aVar2.V1 == null) {
                aVar2.V1 = DialogX.f73603o;
            }
            if (aVar2.V1 == null) {
                aVar2.V1 = DialogX.f73602n;
            }
            if (aVar2.R1 == null) {
                aVar2.R1 = DialogX.f73602n;
            }
            if (aVar2.f73706a2 == null) {
                aVar2.f73706a2 = DialogX.f73602n;
            }
            if (((BaseDialog) aVar2).f74075v == null) {
                ((BaseDialog) a.this).f74075v = DialogX.f73610v;
            }
            a aVar3 = a.this;
            if (aVar3.P == null) {
                aVar3.P = DialogX.A;
            }
            TextView textView = this.f73732g;
            if (textView != null) {
                textView.getPaint().setFakeBoldText(true);
            }
            TextView textView2 = this.f73743r;
            if (textView2 != null) {
                textView2.getPaint().setFakeBoldText(true);
            }
            TextView textView3 = this.f73745t;
            if (textView3 != null) {
                textView3.getPaint().setFakeBoldText(true);
            }
            TextView textView4 = this.f73744s;
            if (textView4 != null) {
                textView4.getPaint().setFakeBoldText(true);
            }
            this.f73728c.setY(a.this.P() == null ? Resources.getSystem().getDisplayMetrics().heightPixels : a.this.P().getMeasuredHeight());
            this.f73727b.p(a.this.f73710d2);
            this.f73727b.n(new d());
            TextView textView5 = this.f73743r;
            if (textView5 != null) {
                textView5.setOnClickListener(new ViewOnClickListenerC0764e());
            }
            TextView textView6 = this.f73744s;
            if (textView6 != null) {
                textView6.setOnClickListener(new f());
            }
            TextView textView7 = this.f73745t;
            if (textView7 != null) {
                textView7.setOnClickListener(new g());
            }
            if (this.f73736k != null) {
                int iC = ((BaseDialog) a.this).f74072s.f().c(a.this.i0());
                int iD = ((BaseDialog) a.this).f74072s.f().d(a.this.i0());
                if (iC != 0) {
                    this.f73736k.setBackgroundResource(iC);
                }
                if (iD != 0) {
                    ViewGroup.LayoutParams layoutParams = this.f73736k.getLayoutParams();
                    layoutParams.height = iD;
                    this.f73736k.setLayoutParams(layoutParams);
                }
            }
            this.f73727b.m(new h());
            this.f73728c.post(new i());
            BaseDialog.E0(new j(), g());
            a.this.q0();
        }

        public void j() {
            init();
            a.this.f73711e2 = this;
            b();
        }
    }

    protected a() {
    }

    public static a S3(int i10, int i11) {
        a aVar = new a(i10, i11);
        aVar.M0();
        return aVar;
    }

    public static a T3(int i10, int i11, int i12) {
        a aVar = new a(i10, i11, i12);
        aVar.M0();
        return aVar;
    }

    public static a U3(int i10, int i11, int i12, int i13) {
        a aVar = new a(i10, i11, i12, i13);
        aVar.M0();
        return aVar;
    }

    public static a V3(int i10, int i11, int i12, int i13, r<a> rVar) {
        a aVar = new a(i10, i11, i12, i13, rVar);
        aVar.M0();
        return aVar;
    }

    public static a W1() {
        return new a();
    }

    public static a W3(int i10, int i11, int i12, r<a> rVar) {
        a aVar = new a(i10, i11, i12, rVar);
        aVar.M0();
        return aVar;
    }

    public static a X1(DialogXStyle dialogXStyle) {
        return new a().I3(dialogXStyle);
    }

    public static a X3(int i10, int i11, r<a> rVar) {
        a aVar = new a(i10, i11, rVar);
        aVar.M0();
        return aVar;
    }

    public static a Y1(r<a> rVar) {
        return new a().Z2(rVar);
    }

    public static a Y3(int i10, r<a> rVar) {
        a aVar = new a(i10, rVar);
        aVar.M0();
        return aVar;
    }

    public static a Z3(r<a> rVar) {
        a aVar = new a(rVar);
        aVar.M0();
        return aVar;
    }

    public static a a4(CharSequence charSequence, r<a> rVar) {
        a aVar = new a(charSequence, rVar);
        aVar.M0();
        return aVar;
    }

    public static a b4(CharSequence charSequence, CharSequence charSequence2) {
        a aVar = new a(charSequence, charSequence2);
        aVar.M0();
        return aVar;
    }

    public static a c4(CharSequence charSequence, CharSequence charSequence2, r<a> rVar) {
        a aVar = new a(charSequence, charSequence2, rVar);
        aVar.M0();
        return aVar;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void A0() {
        if (C() != null) {
            BaseDialog.p(C());
            this.f74071r = false;
        }
        if (j2().f73738m != null) {
            j2().f73738m.removeAllViews();
        }
        if (j2().f73737l != null) {
            j2().f73737l.removeAllViews();
        }
        int iB = i0() ? R.layout.layout_dialogx_bottom_material : R.layout.layout_dialogx_bottom_material_dark;
        if (this.f74072s.f() != null) {
            iB = this.f74072s.f().b(i0());
        }
        this.f74076w = 0L;
        View viewM = m(iB);
        this.f73711e2 = new e(viewM);
        if (viewM != null) {
            viewM.setTag(this.f73710d2);
        }
        BaseDialog.O0(viewM);
    }

    public void A2() {
        this.f73713f2 = true;
        this.f73714g2 = false;
        if (C() != null) {
            C().setVisibility(8);
        }
    }

    public a A3(t<a> tVar) {
        this.X = tVar;
        return this;
    }

    public void B2() {
        this.f73714g2 = true;
        this.f73713f2 = true;
        if (j2() != null) {
            j2().f().a(this.f73710d2, j2().f73729d);
            BaseDialog.E0(new d(), j2().h());
        }
    }

    public a B3(CharSequence charSequence) {
        this.R = charSequence;
        x0();
        return this;
    }

    public boolean C2() {
        return this.f74072s.f() != null && this.S && this.f74072s.f().k();
    }

    public a C3(CharSequence charSequence, t<a> tVar) {
        this.R = charSequence;
        this.X = tVar;
        x0();
        return this;
    }

    public boolean D2() {
        return this.f73707b1;
    }

    public a D3(TextInfo textInfo) {
        this.f73706a2 = textInfo;
        return this;
    }

    public boolean E2() {
        return this.f73719q1;
    }

    public a E3(float f10) {
        this.f73712f1 = f10;
        x0();
        return this;
    }

    public a F2(com.kongzue.dialogx.interfaces.i<a> iVar) {
        this.f74066m = iVar;
        return this;
    }

    public a F3(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    protected void G2(a aVar) {
    }

    public a G3(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    public a H2(com.kongzue.dialogx.interfaces.i<a> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    public a H3(boolean z10) {
        this.f73719q1 = z10;
        return this;
    }

    protected void I2(a aVar) {
    }

    public a I3(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    public a J2() {
        this.M.clean();
        x0();
        return this;
    }

    public a J3(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    public a K2(int i10, com.kongzue.dialogx.interfaces.i<a> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: K3, reason: merged with bridge method [inline-methods] */
    public a L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    public a L2(boolean z10) {
        this.S = z10;
        return this;
    }

    public a L3(int i10) {
        this.N = S(i10);
        x0();
        return this;
    }

    public a M2(@ColorInt int i10) {
        this.f74075v = Integer.valueOf(i10);
        x0();
        return this;
    }

    public a M3(CharSequence charSequence) {
        this.N = charSequence;
        x0();
        return this;
    }

    public a N2(@ColorRes int i10) {
        this.f74075v = Integer.valueOf(v(i10));
        x0();
        return this;
    }

    public a N3(int i10) {
        this.f73715i1 = getResources().getDrawable(i10);
        x0();
        return this;
    }

    public a O2(boolean z10) {
        this.f73707b1 = z10;
        return this;
    }

    public a O3(Bitmap bitmap) {
        this.f73715i1 = new BitmapDrawable(getResources(), bitmap);
        x0();
        return this;
    }

    public a P2(float f10) {
        this.f73708b2 = f10;
        return this;
    }

    public a P3(Drawable drawable) {
        this.f73715i1 = drawable;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    protected void Q0() {
        b2();
    }

    public a Q2(boolean z10) {
        this.T = z10;
        return this;
    }

    public a Q3(TextInfo textInfo) {
        this.f73720r1 = textInfo;
        x0();
        return this;
    }

    public a R2(int i10) {
        this.P = S(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: R3, reason: merged with bridge method [inline-methods] */
    public a M0() {
        if (this.f73713f2 && C() != null && this.f74071r) {
            if (!this.f73714g2 || j2() == null) {
                C().setVisibility(0);
            } else {
                C().setVisibility(0);
                j2().f().b(this.f73710d2, j2().f73729d);
            }
            return this;
        }
        super.e();
        if (C() == null) {
            int iB = i0() ? R.layout.layout_dialogx_bottom_material : R.layout.layout_dialogx_bottom_material_dark;
            if (this.f74072s.f() != null) {
                iB = this.f74072s.f().b(i0());
            }
            View viewM = m(iB);
            this.f73711e2 = new e(viewM);
            if (viewM != null) {
                viewM.setTag(this.f73710d2);
            }
            BaseDialog.O0(viewM);
        } else {
            BaseDialog.O0(C());
        }
        return this;
    }

    public a S2(int i10, t<a> tVar) {
        this.P = S(i10);
        this.V = tVar;
        x0();
        return this;
    }

    public a T1(CharSequence charSequence) {
        this.O = TextUtils.concat(this.O, charSequence);
        x0();
        return this;
    }

    public a T2(t<a> tVar) {
        this.V = tVar;
        return this;
    }

    public a U1(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    public a U2(CharSequence charSequence) {
        this.P = charSequence;
        x0();
        return this;
    }

    public a V1() {
        L0(F());
        return this;
    }

    public a V2(CharSequence charSequence, t<a> tVar) {
        this.P = charSequence;
        this.V = tVar;
        x0();
        return this;
    }

    public a W2(t<a> tVar) {
        this.V = tVar;
        return this;
    }

    public a X2(TextInfo textInfo) {
        this.R1 = textInfo;
        x0();
        return this;
    }

    public a Y2(boolean z10) {
        this.f73717p0 = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        x0();
        return this;
    }

    public a Z1(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    public a Z2(r<a> rVar) {
        this.M = rVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.h
    public boolean a() {
        return this.T;
    }

    public a a2() {
        this.f74069p.clear();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: a3, reason: merged with bridge method [inline-methods] */
    public a F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    public void b2() {
        BaseDialog.C0(new b());
    }

    public a b3(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    public int c2() {
        return this.f74075v.intValue();
    }

    public a c3(com.kongzue.dialogx.interfaces.f<a> fVar) {
        this.f73709c2 = fVar;
        if (this.f74071r) {
            fVar.b(this.f73710d2);
        }
        return this;
    }

    public float d2() {
        return this.f73708b2;
    }

    public a d3(com.kongzue.dialogx.interfaces.g<a> gVar) {
        this.f73716l1 = gVar;
        return this;
    }

    public void d4(Activity activity) {
        super.e();
        if (C() != null) {
            BaseDialog.N0(activity, C());
            return;
        }
        int iB = i0() ? R.layout.layout_dialogx_bottom_material : R.layout.layout_dialogx_bottom_material_dark;
        if (this.f74072s.f() != null) {
            iB = this.f74072s.f().b(i0());
        }
        View viewM = m(iB);
        this.f73711e2 = new e(viewM);
        if (viewM != null) {
            viewM.setTag(this.f73710d2);
        }
        BaseDialog.N0(activity, viewM);
    }

    public BaseDialog.BUTTON_SELECT_RESULT e2() {
        return this.f73718p1;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: e3, reason: merged with bridge method [inline-methods] */
    public a I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        BaseDialog.BOOLEAN r10 = this.f73717p0;
        if (r10 != null) {
            return r10 == BaseDialog.BOOLEAN.TRUE;
        }
        BaseDialog.BOOLEAN r11 = f73705j2;
        if (r11 != null) {
            return r11 == BaseDialog.BOOLEAN.TRUE;
        }
        return this.f74070q;
    }

    public CharSequence f2() {
        return this.P;
    }

    public a f3(long j10) {
        this.f74076w = j10;
        return this;
    }

    public t<a> g2() {
        return (t) this.V;
    }

    public a g3(long j10) {
        this.f74077x = j10;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        b2();
    }

    public TextInfo h2() {
        return this.R1;
    }

    public a h3(boolean z10) {
        this.f74057d = z10 ? 1 : 0;
        return this;
    }

    public View i2() {
        r<a> rVar = this.M;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    public a i3(@ColorInt int i10) {
        this.U = Integer.valueOf(i10);
        x0();
        return this;
    }

    public e j2() {
        return this.f73711e2;
    }

    public a j3(int i10) {
        this.f74079z = i10;
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.f<a> k2() {
        com.kongzue.dialogx.interfaces.f<a> fVar = this.f73709c2;
        return fVar == null ? new c() : fVar;
    }

    public a k3(int i10) {
        this.f74078y = i10;
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.g<a> l2() {
        return this.f73716l1;
    }

    public a l3(int i10) {
        this.O = S(i10);
        x0();
        return this;
    }

    public long m2() {
        return this.f74076w;
    }

    public a m3(CharSequence charSequence) {
        this.O = charSequence;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public long n2() {
        return this.f74077x;
    }

    public a n3(TextInfo textInfo) {
        this.f73721v1 = textInfo;
        x0();
        return this;
    }

    public CharSequence o2() {
        return this.O;
    }

    public a o3(int i10) {
        this.B = i10;
        x0();
        return this;
    }

    public TextInfo p2() {
        return this.f73721v1;
    }

    public a p3(int i10) {
        this.A = i10;
        x0();
        return this;
    }

    public CharSequence q2() {
        return this.Q;
    }

    public a q3(int i10) {
        this.Q = S(i10);
        x0();
        return this;
    }

    public TextInfo r2() {
        return this.V1;
    }

    public a r3(int i10, t<a> tVar) {
        this.Q = S(i10);
        this.W = tVar;
        x0();
        return this;
    }

    public p<a> s2() {
        return this.Z;
    }

    public a s3(t<a> tVar) {
        this.W = tVar;
        return this;
    }

    public q<a> t2() {
        return this.Y;
    }

    public a t3(CharSequence charSequence) {
        this.Q = charSequence;
        x0();
        return this;
    }

    public CharSequence u2() {
        return this.R;
    }

    public a u3(CharSequence charSequence, t<a> tVar) {
        this.Q = charSequence;
        this.W = tVar;
        x0();
        return this;
    }

    public TextInfo v2() {
        return this.f73706a2;
    }

    public a v3(TextInfo textInfo) {
        this.V1 = textInfo;
        return this;
    }

    public float w2() {
        return this.f73712f1;
    }

    public a w3(p<a> pVar) {
        this.Z = pVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void x0() {
        if (j2() == null) {
            return;
        }
        BaseDialog.C0(new RunnableC0761a());
    }

    public CharSequence x2() {
        return this.N;
    }

    public a x3(q<a> qVar) {
        this.Y = qVar;
        return this;
    }

    public Drawable y2() {
        return this.f73715i1;
    }

    public a y3(int i10) {
        this.R = S(i10);
        x0();
        return this;
    }

    public TextInfo z2() {
        return this.f73720r1;
    }

    public a z3(int i10, t<a> tVar) {
        this.R = S(i10);
        this.X = tVar;
        x0();
        return this;
    }

    public a(r<a> rVar) {
        this.M = rVar;
    }

    public a(CharSequence charSequence, r<a> rVar) {
        this.N = charSequence;
        this.M = rVar;
    }

    public a(int i10, r<a> rVar) {
        this.N = S(i10);
        this.M = rVar;
    }

    public a(CharSequence charSequence, CharSequence charSequence2) {
        this.N = charSequence;
        this.O = charSequence2;
    }

    public a(int i10, int i11) {
        this.N = S(i10);
        this.O = S(i11);
    }

    public a(CharSequence charSequence, CharSequence charSequence2, r<a> rVar) {
        this.N = charSequence;
        this.O = charSequence2;
        this.M = rVar;
    }

    public a(int i10, int i11, r<a> rVar) {
        this.N = S(i10);
        this.O = S(i11);
        this.M = rVar;
    }

    public a(int i10, int i11, int i12, int i13) {
        this.N = S(i10);
        this.O = S(i11);
        this.Q = S(i12);
        this.P = S(i13);
    }

    public a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
        this.N = charSequence;
        this.O = charSequence2;
        this.Q = charSequence3;
        this.P = charSequence4;
    }

    public a(int i10, int i11, int i12) {
        this.N = S(i10);
        this.O = S(i11);
        this.Q = S(i12);
    }

    public a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        this.N = charSequence;
        this.O = charSequence2;
        this.Q = charSequence3;
    }

    public a(int i10, int i11, int i12, r<a> rVar) {
        this.N = S(i10);
        this.O = S(i11);
        this.Q = S(i12);
        this.M = rVar;
    }

    public a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, r<a> rVar) {
        this.N = charSequence;
        this.O = charSequence2;
        this.Q = charSequence3;
        this.M = rVar;
    }

    public a(int i10, int i11, int i12, int i13, r<a> rVar) {
        this.N = S(i10);
        this.O = S(i11);
        this.Q = S(i12);
        this.P = S(i13);
        this.M = rVar;
    }

    public a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, r<a> rVar) {
        this.N = charSequence;
        this.O = charSequence2;
        this.Q = charSequence3;
        this.P = charSequence4;
        this.M = rVar;
    }
}
