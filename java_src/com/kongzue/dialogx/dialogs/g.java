package com.kongzue.dialogx.dialogs;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Nullable;
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
import com.kongzue.dialogx.interfaces.v;
import com.kongzue.dialogx.interfaces.w;
import com.kongzue.dialogx.util.TextInfo;
import com.kongzue.dialogx.util.views.DialogScrollView;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class g extends BaseDialog {

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    public static int f73824h2 = -1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    public static int f73825i2 = -1;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    public static int f73826j2;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    public static int f73827k2;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    public static BaseDialog.BOOLEAN f73828l2;
    protected TextInfo L1;
    protected r<g> N;
    protected BaseDialog.BOOLEAN P;
    protected int Q;
    protected int R;
    protected TextInfo R1;
    protected com.kongzue.dialogx.interfaces.g<g> S;
    protected p<g> T;
    protected com.kongzue.dialogx.interfaces.f<g> V;
    protected TextInfo V1;
    protected q<g> W;
    protected CharSequence X;
    protected CharSequence Y;
    protected CharSequence Z;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    protected com.kongzue.dialogx.util.j f73829a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    protected CharSequence f73830b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.a f73831b2;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.a f73832c2;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.a f73833d2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    protected int f73834e2;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    protected String f73835f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    protected e f73836f2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    protected boolean f73837g2;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    protected String f73838i1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    protected CharSequence f73840p0;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    protected Drawable f73842q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    protected TextInfo f73843r1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    protected TextInfo f73844v1;
    protected boolean M = true;
    protected g O = this;
    protected BaseDialog.BUTTON_SELECT_RESULT U = BaseDialog.BUTTON_SELECT_RESULT.NONE;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    protected Integer f73839l1 = null;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    protected float f73841p1 = DialogX.M;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = g.this.f73836f2;
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
            e eVar = g.this.f73836f2;
            if (eVar == null) {
                return;
            }
            eVar.a(eVar.f73851c);
        }
    }

    class c extends com.kongzue.dialogx.interfaces.f<g> {
        c() {
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.this.C() != null) {
                g.this.C().setVisibility(8);
            }
        }
    }

    public class e implements com.kongzue.dialogx.interfaces.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<View> f73849a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public DialogXBaseRelativeLayout f73850b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MaxRelativeLayout f73851c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f73852d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c0 f73853e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f73854f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ViewGroup f73855g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public RelativeLayout f73856h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public EditText f73857i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public LinearLayout f73858j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f73859k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public View f73860l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public View f73861m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f73862n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public TextView f73863o;

        class a extends DialogXBaseRelativeLayout.c {

            /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.g$e$a$a, reason: collision with other inner class name */
            class RunnableC0769a implements Runnable {
                RunnableC0769a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    Integer numW;
                    Float fD;
                    if (((BaseDialog) g.this).f74072s.e() != null) {
                        g gVar = g.this;
                        numW = gVar.w(gVar.G(Integer.valueOf(((BaseDialog) gVar).f74072s.e().c(g.this.i0()))));
                        g gVar2 = g.this;
                        fD = gVar2.D(Float.valueOf(((BaseDialog) gVar2).f74072s.e().b()));
                    } else {
                        numW = null;
                        fD = null;
                    }
                    if (e.this.f73849a != null) {
                        Iterator it2 = e.this.f73849a.iterator();
                        while (it2.hasNext()) {
                            com.kongzue.dialogx.interfaces.b bVar = (com.kongzue.dialogx.interfaces.b) ((View) it2.next());
                            bVar.b(((BaseDialog) g.this).f74075v == null ? numW : ((BaseDialog) g.this).f74075v);
                            bVar.a(fD);
                        }
                    }
                    g.this.J0(Lifecycle.State.RESUMED);
                }
            }

            class b implements Runnable {
                b() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    EditText editText = e.this.f73857i;
                    if (editText == null) {
                        return;
                    }
                    editText.requestFocus();
                    e.this.f73857i.setFocusableInTouchMode(true);
                    e eVar = e.this;
                    g.this.a0(eVar.f73857i, true);
                    EditText editText2 = e.this.f73857i;
                    editText2.setSelection(editText2.getText().length());
                    com.kongzue.dialogx.util.j jVar = g.this.f73829a2;
                    if (jVar == null || !jVar.i()) {
                        return;
                    }
                    e.this.f73857i.selectAll();
                }
            }

            a() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void a() {
                ((BaseDialog) g.this).f74071r = false;
                g.this.T2().a(g.this.O);
                g gVar = g.this;
                gVar.q3(gVar.O);
                g.this.J0(Lifecycle.State.DESTROYED);
                g.this.V = null;
                System.gc();
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void b() {
                ((BaseDialog) g.this).f74071r = true;
                ((BaseDialog) g.this).E = false;
                g.this.J0(Lifecycle.State.CREATED);
                g.this.s0();
                g.this.T2().b(g.this.O);
                g gVar = g.this;
                gVar.s3(gVar.O);
                com.kongzue.dialogx.interfaces.g<g> gVarD = e.this.d();
                e eVar = e.this;
                gVarD.b(g.this.O, eVar.f73851c);
                if (((BaseDialog) g.this).f74072s.e() != null && ((BaseDialog) g.this).f74072s.e().a()) {
                    e.this.f73851c.post(new RunnableC0769a());
                }
                if (((BaseDialog) g.this).f74074u) {
                    e.this.f73857i.postDelayed(new b(), 300L);
                    return;
                }
                com.kongzue.dialogx.util.j jVar = g.this.f73829a2;
                if (jVar == null || !jVar.i()) {
                    return;
                }
                e.this.f73857i.clearFocus();
                e.this.f73857i.requestFocus();
                e.this.f73857i.selectAll();
            }
        }

        class b implements DialogXBaseRelativeLayout.d {
            b() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.d
            public boolean onBackPressed() {
                g gVar = g.this;
                p<g> pVar = gVar.T;
                if (pVar != null) {
                    if (!pVar.a(gVar.O)) {
                        return true;
                    }
                    g.this.K2();
                    return true;
                }
                if (!gVar.f0()) {
                    return true;
                }
                g.this.K2();
                return true;
            }
        }

        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e eVar = e.this;
                g gVar = g.this;
                gVar.U = BaseDialog.BUTTON_SELECT_RESULT.BUTTON_OK;
                EditText editText = eVar.f73857i;
                if (editText != null) {
                    gVar.a0(editText, false);
                }
                g.this.Z(view);
                e eVar2 = e.this;
                g gVar2 = g.this;
                com.kongzue.dialogx.interfaces.a aVar = gVar2.f73831b2;
                if (aVar == null) {
                    eVar2.a(view);
                    return;
                }
                if (aVar instanceof v) {
                    EditText editText2 = eVar2.f73857i;
                    String string = editText2 == null ? "" : editText2.getText().toString();
                    g gVar3 = g.this;
                    if (((v) gVar3.f73831b2).b(gVar3.O, view, string)) {
                        return;
                    }
                    e.this.a(view);
                    return;
                }
                if (aVar instanceof t) {
                    if (((t) aVar).a(gVar2.O, view)) {
                        return;
                    }
                    e.this.a(view);
                } else {
                    if (!(aVar instanceof w) || ((w) aVar).a(gVar2.O, view)) {
                        return;
                    }
                    e.this.a(view);
                }
            }
        }

        class d implements View.OnClickListener {
            d() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e eVar = e.this;
                g gVar = g.this;
                gVar.U = BaseDialog.BUTTON_SELECT_RESULT.BUTTON_CANCEL;
                EditText editText = eVar.f73857i;
                if (editText != null) {
                    gVar.a0(editText, false);
                }
                g.this.Z(view);
                e eVar2 = e.this;
                g gVar2 = g.this;
                com.kongzue.dialogx.interfaces.a aVar = gVar2.f73832c2;
                if (aVar == null) {
                    eVar2.a(view);
                    return;
                }
                if (aVar instanceof v) {
                    EditText editText2 = eVar2.f73857i;
                    String string = editText2 == null ? "" : editText2.getText().toString();
                    g gVar3 = g.this;
                    if (((v) gVar3.f73832c2).b(gVar3.O, view, string)) {
                        return;
                    }
                    e.this.a(view);
                    return;
                }
                if (aVar instanceof w) {
                    if (((w) aVar).a(gVar2.O, view)) {
                        return;
                    }
                    e.this.a(view);
                } else {
                    if (((t) aVar).a(gVar2.O, view)) {
                        return;
                    }
                    e.this.a(view);
                }
            }
        }

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.g$e$e, reason: collision with other inner class name */
        class ViewOnClickListenerC0770e implements View.OnClickListener {
            ViewOnClickListenerC0770e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e eVar = e.this;
                g gVar = g.this;
                gVar.U = BaseDialog.BUTTON_SELECT_RESULT.BUTTON_OTHER;
                EditText editText = eVar.f73857i;
                if (editText != null) {
                    gVar.a0(editText, false);
                }
                g.this.Z(view);
                e eVar2 = e.this;
                g gVar2 = g.this;
                com.kongzue.dialogx.interfaces.a aVar = gVar2.f73833d2;
                if (aVar == null) {
                    eVar2.a(view);
                    return;
                }
                if (aVar instanceof v) {
                    EditText editText2 = eVar2.f73857i;
                    String string = editText2 == null ? "" : editText2.getText().toString();
                    g gVar3 = g.this;
                    if (((v) gVar3.f73833d2).b(gVar3.O, view, string)) {
                        return;
                    }
                    e.this.a(view);
                    return;
                }
                if (aVar instanceof w) {
                    if (((w) aVar).a(gVar2.O, view)) {
                        return;
                    }
                    e.this.a(view);
                } else {
                    if (((t) aVar).a(gVar2.O, view)) {
                        return;
                    }
                    e.this.a(view);
                }
            }
        }

        class f extends ViewOutlineProvider {
            f() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), g.this.f73841p1);
            }
        }

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.g$e$g, reason: collision with other inner class name */
        class ViewOnClickListenerC0771g implements View.OnClickListener {
            ViewOnClickListenerC0771g() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                g gVar = g.this;
                q<g> qVar = gVar.W;
                if (qVar == null || !qVar.a(gVar.O, view)) {
                    e.this.a(view);
                }
            }
        }

        class h implements Runnable {
            h() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DialogXBaseRelativeLayout dialogXBaseRelativeLayout = e.this.f73850b;
                if (dialogXBaseRelativeLayout != null) {
                    dialogXBaseRelativeLayout.setVisibility(8);
                }
                BaseDialog.p(g.this.C());
            }
        }

        class i extends com.kongzue.dialogx.interfaces.g<g> {

            class a implements ValueAnimator.AnimatorUpdateListener {
                a() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    e.this.f73850b.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }

            class b implements ValueAnimator.AnimatorUpdateListener {
                b() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    e.this.f73850b.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }

            i() {
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void a(g gVar, ViewGroup viewGroup) {
                int iB = ((BaseDialog) g.this).f74072s.b() == 0 ? R.anim.anim_dialogx_default_exit : ((BaseDialog) g.this).f74072s.b();
                int i10 = g.f73827k2;
                if (i10 != 0) {
                    iB = i10;
                }
                g gVar2 = g.this;
                int i11 = gVar2.R;
                if (i11 != 0) {
                    iB = i11;
                }
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(gVar2.N(), iB);
                long jF = e.this.f(animationLoadAnimation);
                animationLoadAnimation.setInterpolator(new AccelerateInterpolator());
                animationLoadAnimation.setDuration(jF);
                e.this.f73851c.startAnimation(animationLoadAnimation);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                valueAnimatorOfFloat.setDuration(jF);
                valueAnimatorOfFloat.addUpdateListener(new b());
                valueAnimatorOfFloat.start();
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(g gVar, ViewGroup viewGroup) {
                int iA = ((BaseDialog) g.this).f74072s.a() == 0 ? R.anim.anim_dialogx_default_enter : ((BaseDialog) g.this).f74072s.a();
                int i10 = g.f73826j2;
                if (i10 != 0) {
                    iA = i10;
                }
                g gVar2 = g.this;
                int i11 = gVar2.Q;
                if (i11 != 0) {
                    iA = i11;
                }
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(gVar2.N(), iA);
                long jE = e.this.e(animationLoadAnimation);
                animationLoadAnimation.setDuration(jE);
                animationLoadAnimation.setInterpolator(new DecelerateInterpolator());
                e.this.f73851c.startAnimation(animationLoadAnimation);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.setDuration(jE);
                valueAnimatorOfFloat.addUpdateListener(new a());
                valueAnimatorOfFloat.start();
            }
        }

        public e(View view) {
            if (view == null) {
                return;
            }
            g.this.H0(view);
            this.f73850b = (DialogXBaseRelativeLayout) view.findViewById(R.id.box_root);
            this.f73851c = (MaxRelativeLayout) view.findViewById(R.id.bkg);
            this.f73852d = (TextView) view.findViewById(R.id.txt_dialog_title);
            this.f73853e = (c0) view.findViewById(R.id.scrollView);
            this.f73854f = (TextView) view.findViewById(R.id.txt_dialog_tip);
            this.f73855g = (ViewGroup) view.findViewById(R.id.box_list);
            this.f73856h = (RelativeLayout) view.findViewById(R.id.box_custom);
            this.f73857i = (EditText) view.findViewById(R.id.txt_input);
            this.f73858j = (LinearLayout) view.findViewById(R.id.box_button);
            this.f73859k = (TextView) view.findViewById(R.id.btn_selectOther);
            this.f73860l = view.findViewById(R.id.space_other_button);
            this.f73861m = view.findViewWithTag("split");
            this.f73862n = (TextView) view.findViewById(R.id.btn_selectNegative);
            this.f73863o = (TextView) view.findViewById(R.id.btn_selectPositive);
            this.f73849a = g.this.s(view);
            init();
            g.this.f73836f2 = this;
            b();
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void a(View view) {
            BaseDialog baseDialog = g.this;
            if (baseDialog.t0(baseDialog)) {
                return;
            }
            if (view != null) {
                view.setEnabled(false);
            }
            if (g.this.N() == null || ((BaseDialog) g.this).D || d() == null) {
                return;
            }
            ((BaseDialog) g.this).D = true;
            d().a(g.this, this.f73851c);
            BaseDialog.E0(new h(), f(null));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.kongzue.dialogx.interfaces.e
        public void b() {
            TextView textView;
            TextView textView2;
            if (this.f73850b == null || g.this.N() == null) {
                return;
            }
            this.f73850b.j(g.this.g0());
            com.kongzue.dialogx.util.j jVar = g.this.f73829a2;
            if (jVar != null && jVar.b() != null) {
                this.f73857i.getBackground().mutate().setColorFilter(g.this.f73829a2.b().intValue(), PorterDuff.Mode.SRC_ATOP);
            }
            com.kongzue.dialogx.util.j jVar2 = g.this.f73829a2;
            if (jVar2 != null && jVar2.c() != null) {
                int iIntValue = g.this.f73829a2.c().intValue();
                if (Build.VERSION.SDK_INT < 29) {
                    try {
                        Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
                        declaredField.setAccessible(true);
                        int i10 = declaredField.getInt(this.f73857i);
                        Field declaredField2 = TextView.class.getDeclaredField("mEditor");
                        declaredField2.setAccessible(true);
                        Object obj = declaredField2.get(this.f73857i);
                        Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
                        declaredField3.setAccessible(true);
                        Drawable[] drawableArr = {this.f73857i.getContext().getResources().getDrawable(i10), this.f73857i.getContext().getResources().getDrawable(i10)};
                        drawableArr[0].setColorFilter(iIntValue, PorterDuff.Mode.SRC_IN);
                        drawableArr[1].setColorFilter(iIntValue, PorterDuff.Mode.SRC_IN);
                        declaredField3.set(obj, drawableArr);
                    } catch (Throwable th) {
                        BaseDialog.n0("DialogX: 在对话框" + g.this.n() + "中设置光标颜色时发生错误！");
                        if (DialogX.f73590b) {
                            th.printStackTrace();
                        }
                    }
                } else if (this.f73857i.getTextCursorDrawable() != null) {
                    this.f73857i.getTextCursorDrawable().mutate().setColorFilter(new PorterDuffColorFilter(iIntValue, PorterDuff.Mode.SRC_ATOP));
                } else {
                    try {
                        Field declaredField4 = TextView.class.getDeclaredField("mCursorDrawableRes");
                        declaredField4.setAccessible(true);
                        declaredField4.set(this.f73857i, Integer.valueOf(R.drawable.rect_dialogx_defalut_edittxt_cursor));
                        this.f73857i.getTextCursorDrawable().mutate().setColorFilter(new PorterDuffColorFilter(iIntValue, PorterDuff.Mode.SRC_ATOP));
                    } catch (Throwable th2) {
                        BaseDialog.n0("DialogX: 在对话框" + g.this.n() + "中设置光标颜色时发生错误！");
                        if (DialogX.f73590b) {
                            th2.printStackTrace();
                        }
                    }
                }
            }
            this.f73850b.setRootPadding(((BaseDialog) g.this).C[0], ((BaseDialog) g.this).C[1], ((BaseDialog) g.this).C[2], ((BaseDialog) g.this).C[3]);
            if (((BaseDialog) g.this).f74075v != null) {
                g gVar = g.this;
                gVar.R0(this.f73851c, ((BaseDialog) gVar).f74075v.intValue());
                if (((BaseDialog) g.this).f74072s.o()) {
                    g gVar2 = g.this;
                    gVar2.R0(this.f73859k, ((BaseDialog) gVar2).f74075v.intValue());
                    g gVar3 = g.this;
                    gVar3.R0(this.f73862n, ((BaseDialog) gVar3).f74075v.intValue());
                    g gVar4 = g.this;
                    gVar4.R0(this.f73863o, ((BaseDialog) gVar4).f74075v.intValue());
                }
                if (this.f73849a != null) {
                    BaseDialog.n0("#blurViews != null");
                    for (View view : this.f73849a) {
                        BaseDialog.n0("#blurView: " + view);
                        ((com.kongzue.dialogx.interfaces.b) view).b(((BaseDialog) g.this).f74075v);
                    }
                }
            }
            this.f73851c.j(g.this.K());
            this.f73851c.i(g.this.J());
            this.f73851c.setMinimumWidth(g.this.M());
            this.f73851c.setMinimumHeight(g.this.L());
            View viewFindViewWithTag = this.f73850b.findViewWithTag("dialogx_editbox");
            if (g.this.O instanceof com.kongzue.dialogx.dialogs.f) {
                if (viewFindViewWithTag != null) {
                    viewFindViewWithTag.setVisibility(0);
                }
                this.f73857i.setVisibility(0);
                this.f73850b.b(this.f73857i);
            } else {
                if (viewFindViewWithTag != null) {
                    viewFindViewWithTag.setVisibility(8);
                }
                this.f73857i.setVisibility(8);
            }
            this.f73850b.setClickable(true);
            Integer num = g.this.f73839l1;
            if (num != null) {
                this.f73850b.setBackgroundColor(num.intValue());
            }
            if (g.this.f73841p1 > -1.0f) {
                this.f73851c.setOutlineProvider(new f());
                this.f73851c.setClipToOutline(true);
                List<View> list = this.f73849a;
                if (list != null) {
                    Iterator<View> it2 = list.iterator();
                    while (it2.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) it2.next()).a(Float.valueOf(g.this.f73841p1));
                    }
                }
            }
            g gVar5 = g.this;
            TextView textView3 = this.f73852d;
            CharSequence charSequence = gVar5.X;
            if (charSequence == null) {
                charSequence = DialogX.V;
            }
            gVar5.P0(textView3, charSequence);
            g gVar6 = g.this;
            gVar6.P0(this.f73854f, gVar6.Y);
            g gVar7 = g.this;
            gVar7.P0(this.f73863o, gVar7.Z);
            g gVar8 = g.this;
            gVar8.P0(this.f73862n, gVar8.f73840p0);
            g gVar9 = g.this;
            gVar9.P0(this.f73859k, gVar9.f73830b1);
            this.f73857i.setText(g.this.f73835f1);
            this.f73857i.setHint(g.this.f73838i1);
            View view2 = this.f73860l;
            if (view2 != null) {
                if (g.this.f73830b1 == null) {
                    view2.setVisibility(8);
                } else {
                    view2.setVisibility(0);
                }
            }
            BaseDialog.S0(this.f73852d, g.this.f73843r1);
            BaseDialog.S0(this.f73854f, g.this.f73844v1);
            BaseDialog.S0(this.f73863o, g.this.L1);
            BaseDialog.S0(this.f73862n, g.this.R1);
            BaseDialog.S0(this.f73859k, g.this.V1);
            LinearLayout linearLayout = this.f73858j;
            if (linearLayout != null) {
                TextView textView4 = this.f73862n;
                linearLayout.setVisibility(((textView4 == null || textView4.getVisibility() != 0) && ((textView = this.f73859k) == null || textView.getVisibility() != 0) && ((textView2 = this.f73863o) == null || textView2.getVisibility() != 0)) ? 8 : 0);
            }
            if (g.this.f73842q1 != null) {
                int textSize = (int) this.f73852d.getTextSize();
                g.this.f73842q1.setBounds(0, 0, textSize, textSize);
                this.f73852d.setCompoundDrawablePadding(g.this.o(10.0f));
                this.f73852d.setCompoundDrawables(g.this.f73842q1, null, null, null);
            }
            com.kongzue.dialogx.util.j jVar3 = g.this.f73829a2;
            if (jVar3 != null) {
                int iE = jVar3.e();
                if (g.this.f73829a2.f() != -1) {
                    int i11 = iE & 15;
                    if (i11 != 1 && i11 != 2 && i11 != 3 && i11 != 4) {
                        iE = (iE & (-16)) | 1;
                    }
                    this.f73857i.setFilters(new InputFilter[]{new InputFilter.LengthFilter(g.this.f73829a2.f())});
                }
                if (g.this.f73829a2.h()) {
                    iE |= 131072;
                }
                this.f73857i.setInputType(iE);
                if (g.this.f73829a2.g() != null) {
                    BaseDialog.S0(this.f73857i, g.this.f73829a2.g());
                }
                if (g.this.f73829a2.d() != null && g.this.f73829a2.d().length > 0) {
                    this.f73857i.setFilters(g.this.f73829a2.d());
                }
            }
            int i12 = !BaseDialog.j0(g.this.Z) ? 1 : 0;
            if (!BaseDialog.j0(g.this.f73840p0)) {
                i12++;
            }
            if (!BaseDialog.j0(g.this.f73830b1)) {
                i12++;
            }
            View view3 = this.f73861m;
            if (view3 != null) {
                g gVar10 = g.this;
                view3.setBackgroundColor(gVar10.v(((BaseDialog) gVar10).f74072s.m(g.this.i0())));
            }
            this.f73858j.setOrientation(g.this.f73834e2);
            g gVar11 = g.this;
            if (gVar11.f73834e2 == 1) {
                if (((BaseDialog) gVar11).f74072s.p() != null && ((BaseDialog) g.this).f74072s.p().length != 0) {
                    this.f73858j.removeAllViews();
                    for (int i13 : ((BaseDialog) g.this).f74072s.p()) {
                        if (i13 == 1) {
                            this.f73858j.addView(this.f73863o);
                            if (((BaseDialog) g.this).f74072s.h() != null) {
                                this.f73863o.setBackgroundResource(((BaseDialog) g.this).f74072s.h().b(i12, g.this.i0()));
                            }
                        } else if (i13 == 2) {
                            this.f73858j.addView(this.f73862n);
                            if (((BaseDialog) g.this).f74072s.h() != null) {
                                this.f73862n.setBackgroundResource(((BaseDialog) g.this).f74072s.h().a(i12, g.this.i0()));
                            }
                        } else if (i13 == 3) {
                            this.f73858j.addView(this.f73859k);
                            if (((BaseDialog) g.this).f74072s.h() != null) {
                                this.f73859k.setBackgroundResource(((BaseDialog) g.this).f74072s.h().c(i12, g.this.i0()));
                            }
                        } else if (i13 == 4) {
                            Space space = new Space(g.this.N());
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                            layoutParams.weight = 1.0f;
                            this.f73858j.addView(space, layoutParams);
                        } else if (i13 == 5) {
                            View view4 = new View(g.this.N());
                            view4.setBackgroundColor(g.this.getResources().getColor(((BaseDialog) g.this).f74072s.m(g.this.i0())));
                            this.f73858j.addView(view4, new LinearLayout.LayoutParams(-1, ((BaseDialog) g.this).f74072s.n()));
                        }
                    }
                }
            } else if (((BaseDialog) gVar11).f74072s.c() != null && ((BaseDialog) g.this).f74072s.c().length != 0) {
                this.f73858j.removeAllViews();
                for (int i14 : ((BaseDialog) g.this).f74072s.c()) {
                    if (i14 == 1) {
                        this.f73858j.addView(this.f73863o);
                        if (((BaseDialog) g.this).f74072s.g() != null) {
                            this.f73863o.setBackgroundResource(((BaseDialog) g.this).f74072s.g().b(i12, g.this.i0()));
                        }
                    } else if (i14 == 2) {
                        this.f73858j.addView(this.f73862n);
                        if (((BaseDialog) g.this).f74072s.g() != null) {
                            this.f73862n.setBackgroundResource(((BaseDialog) g.this).f74072s.g().a(i12, g.this.i0()));
                        }
                    } else if (i14 == 3) {
                        this.f73858j.addView(this.f73859k);
                        if (((BaseDialog) g.this).f74072s.g() != null) {
                            this.f73859k.setBackgroundResource(((BaseDialog) g.this).f74072s.g().c(i12, g.this.i0()));
                        }
                    } else if (i14 != 4) {
                        if (i14 == 5 && this.f73858j.getChildCount() >= 1) {
                            LinearLayout linearLayout2 = this.f73858j;
                            if (linearLayout2.getChildAt(linearLayout2.getChildCount() - 1).getVisibility() != 8) {
                                View view5 = new View(g.this.N());
                                view5.setBackgroundColor(g.this.getResources().getColor(((BaseDialog) g.this).f74072s.m(g.this.i0())));
                                this.f73858j.addView(view5, new LinearLayout.LayoutParams(((BaseDialog) g.this).f74072s.n(), -1));
                            }
                        }
                    } else if (this.f73858j.getChildCount() >= 1) {
                        LinearLayout linearLayout3 = this.f73858j;
                        if (linearLayout3.getChildAt(linearLayout3.getChildCount() - 1).getVisibility() != 8) {
                            Space space2 = new Space(g.this.N());
                            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                            layoutParams2.weight = 1.0f;
                            this.f73858j.addView(space2, layoutParams2);
                        }
                    }
                }
            }
            g gVar12 = g.this;
            if (!gVar12.M) {
                this.f73850b.setClickable(false);
            } else if (gVar12.f0()) {
                this.f73850b.setOnClickListener(new ViewOnClickListenerC0771g());
            } else {
                this.f73850b.setOnClickListener(null);
            }
            r<g> rVar = g.this.N;
            if (rVar == null || rVar.getCustomView() == null) {
                this.f73856h.setVisibility(8);
            } else {
                g gVar13 = g.this;
                gVar13.N.bindParent(this.f73856h, gVar13.O);
                this.f73856h.setVisibility(0);
                if (g.this.N.getCustomView() instanceof c0) {
                    c0 c0Var = this.f73853e;
                    if (c0Var instanceof DialogScrollView) {
                        ((DialogScrollView) c0Var).setVerticalScrollBarEnabled(false);
                    }
                    this.f73853e = (c0) g.this.N.getCustomView();
                } else {
                    View viewFindViewWithTag2 = g.this.N.getCustomView().findViewWithTag("ScrollController");
                    if (viewFindViewWithTag2 instanceof c0) {
                        c0 c0Var2 = this.f73853e;
                        if (c0Var2 instanceof DialogScrollView) {
                            ((DialogScrollView) c0Var2).setVerticalScrollBarEnabled(false);
                        }
                        this.f73853e = (c0) viewFindViewWithTag2;
                    }
                }
            }
            g.this.r0();
        }

        protected com.kongzue.dialogx.interfaces.g<g> d() {
            g gVar = g.this;
            if (gVar.S == null) {
                gVar.S = new i();
            }
            return g.this.S;
        }

        public long e(@Nullable Animation animation) {
            if (animation == null && this.f73851c.getAnimation() != null) {
                animation = this.f73851c.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 300L : animation.getDuration();
            int i10 = g.f73824h2;
            if (i10 >= 0) {
                duration = i10;
            }
            return ((BaseDialog) g.this).f74076w >= 0 ? ((BaseDialog) g.this).f74076w : duration;
        }

        public long f(@Nullable Animation animation) {
            if (animation == null && this.f73851c.getAnimation() != null) {
                animation = this.f73851c.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 300L : animation.getDuration();
            int i10 = g.f73825i2;
            if (i10 >= 0) {
                duration = i10;
            }
            return ((BaseDialog) g.this).f74077x != -1 ? ((BaseDialog) g.this).f74077x : duration;
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void init() {
            g gVar = g.this;
            gVar.U = BaseDialog.BUTTON_SELECT_RESULT.NONE;
            gVar.C().setTranslationZ(g.this.W());
            g gVar2 = g.this;
            if (gVar2.f73843r1 == null) {
                gVar2.f73843r1 = DialogX.f73604p;
            }
            if (gVar2.f73844v1 == null) {
                gVar2.f73844v1 = DialogX.f73605q;
            }
            if (gVar2.L1 == null) {
                gVar2.L1 = DialogX.f73603o;
            }
            if (gVar2.L1 == null) {
                gVar2.L1 = DialogX.f73602n;
            }
            if (gVar2.R1 == null) {
                gVar2.R1 = DialogX.f73602n;
            }
            if (gVar2.V1 == null) {
                gVar2.V1 = DialogX.f73602n;
            }
            if (gVar2.f73829a2 == null) {
                gVar2.f73829a2 = DialogX.f73607s;
            }
            if (((BaseDialog) gVar2).f74075v == null) {
                ((BaseDialog) g.this).f74075v = DialogX.f73610v;
            }
            this.f73852d.getPaint().setFakeBoldText(true);
            this.f73862n.getPaint().setFakeBoldText(true);
            this.f73863o.getPaint().setFakeBoldText(true);
            this.f73859k.getPaint().setFakeBoldText(true);
            this.f73854f.setMovementMethod(LinkMovementMethod.getInstance());
            this.f73850b.k(0.0f);
            this.f73850b.p(g.this.O);
            this.f73850b.n(new a());
            this.f73850b.m(new b());
            this.f73863o.setOnClickListener(new c());
            this.f73862n.setOnClickListener(new d());
            this.f73859k.setOnClickListener(new ViewOnClickListenerC0770e());
            g.this.q0();
        }
    }

    protected g() {
    }

    public static g E4(int i10, int i11) {
        g gVar = new g(i10, i11);
        gVar.M0();
        return gVar;
    }

    public static g F2() {
        return new g();
    }

    public static g F4(int i10, int i11, int i12) {
        g gVar = new g(i10, i11, i12);
        gVar.M0();
        return gVar;
    }

    public static g G2(DialogXStyle dialogXStyle) {
        return new g().u4(dialogXStyle);
    }

    public static g G4(int i10, int i11, int i12, int i13) {
        g gVar = new g(i10, i11, i12, i13);
        gVar.M0();
        return gVar;
    }

    public static g H2(r<g> rVar) {
        return new g().I3(rVar);
    }

    public static g H4(int i10, int i11, int i12, int i13, int i14) {
        g gVar = new g(i10, i11, i12, i13, i14);
        gVar.M0();
        return gVar;
    }

    public static g I4(CharSequence charSequence, CharSequence charSequence2) {
        g gVar = new g(charSequence, charSequence2);
        gVar.M0();
        return gVar;
    }

    public static g J4(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        g gVar = new g(charSequence, charSequence2, charSequence3);
        gVar.M0();
        return gVar;
    }

    public static g K4(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
        g gVar = new g(charSequence, charSequence2, charSequence3, charSequence4);
        gVar.M0();
        return gVar;
    }

    public static g L4(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, CharSequence charSequence5) {
        g gVar = new g(charSequence, charSequence2, charSequence3, charSequence4, charSequence5);
        gVar.M0();
        return gVar;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void A0() {
        if (C() != null) {
            BaseDialog.p(C());
            this.f74071r = false;
        }
        if (S2().f73856h != null) {
            S2().f73856h.removeAllViews();
        }
        if (S2().f73855g != null) {
            S2().f73855g.removeAllViews();
        }
        int iD = this.f74072s.d(i0());
        if (iD == 0) {
            iD = i0() ? R.layout.layout_dialogx_material : R.layout.layout_dialogx_material_dark;
        }
        this.f74076w = 0L;
        View viewM = m(iD);
        this.f73836f2 = new e(viewM);
        if (viewM != null) {
            viewM.setTag(this.O);
        }
        BaseDialog.O0(viewM);
    }

    public g A3(int i10) {
        this.f73840p0 = S(i10);
        x0();
        return this;
    }

    public g A4(Bitmap bitmap) {
        this.f73842q1 = new BitmapDrawable(getResources(), bitmap);
        x0();
        return this;
    }

    public g B3(int i10, t<g> tVar) {
        this.f73840p0 = S(i10);
        this.f73832c2 = tVar;
        x0();
        return this;
    }

    public g B4(Drawable drawable) {
        this.f73842q1 = drawable;
        x0();
        return this;
    }

    public g C2(CharSequence charSequence) {
        this.Y = TextUtils.concat(this.Y, charSequence);
        x0();
        return this;
    }

    public g C3(t<g> tVar) {
        this.f73832c2 = tVar;
        return this;
    }

    public g C4(TextInfo textInfo) {
        this.f73843r1 = textInfo;
        x0();
        return this;
    }

    public g D2(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    public g D3(CharSequence charSequence) {
        this.f73840p0 = charSequence;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: D4, reason: merged with bridge method [inline-methods] */
    public g M0() {
        if (this.F && C() != null && this.f74071r) {
            if (!this.f73837g2 || S2() == null) {
                C().setVisibility(0);
            } else {
                C().setVisibility(0);
                S2().d().b(this.O, S2().f73851c);
            }
            return this;
        }
        super.e();
        if (C() == null) {
            int iD = this.f74072s.d(i0());
            if (iD == 0) {
                iD = i0() ? R.layout.layout_dialogx_material : R.layout.layout_dialogx_material_dark;
            }
            View viewM = m(iD);
            this.f73836f2 = new e(viewM);
            if (viewM != null) {
                viewM.setTag(this.O);
            }
            BaseDialog.O0(viewM);
        } else {
            BaseDialog.O0(C());
        }
        return this;
    }

    public g E2() {
        L0(F());
        return this;
    }

    public g E3(CharSequence charSequence, t<g> tVar) {
        this.f73840p0 = charSequence;
        this.f73832c2 = tVar;
        x0();
        return this;
    }

    public g F3(t<g> tVar) {
        this.f73832c2 = tVar;
        return this;
    }

    public g G3(TextInfo textInfo) {
        this.R1 = textInfo;
        x0();
        return this;
    }

    public g H3(boolean z10) {
        this.P = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        x0();
        return this;
    }

    public g I2(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    public g I3(r<g> rVar) {
        this.N = rVar;
        x0();
        return this;
    }

    public g J2() {
        this.f74069p.clear();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: J3, reason: merged with bridge method [inline-methods] */
    public g F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    public void K2() {
        BaseDialog.C0(new b());
    }

    public g K3(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    public int L2() {
        return this.f74075v.intValue();
    }

    public g L3(com.kongzue.dialogx.interfaces.f<g> fVar) {
        this.V = fVar;
        if (this.f74071r) {
            fVar.b(this.O);
        }
        return this;
    }

    public int M2() {
        return this.f73834e2;
    }

    public g M3(com.kongzue.dialogx.interfaces.g<g> gVar) {
        this.S = gVar;
        return this;
    }

    public void M4(Activity activity) {
        super.e();
        if (C() != null) {
            BaseDialog.N0(activity, C());
            return;
        }
        int iD = this.f74072s.d(i0());
        if (iD == 0) {
            iD = i0() ? R.layout.layout_dialogx_material : R.layout.layout_dialogx_material_dark;
        }
        View viewM = m(iD);
        this.f73836f2 = new e(viewM);
        if (viewM != null) {
            viewM.setTag(this.O);
        }
        BaseDialog.N0(activity, viewM);
    }

    public BaseDialog.BUTTON_SELECT_RESULT N2() {
        return this.U;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: N3, reason: merged with bridge method [inline-methods] */
    public g I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    public CharSequence O2() {
        return this.f73840p0;
    }

    public g O3(long j10) {
        this.f74076w = j10;
        return this;
    }

    public t<g> P2() {
        return (t) this.f73832c2;
    }

    public g P3(int i10) {
        this.Q = i10;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    protected void Q0() {
        K2();
    }

    public TextInfo Q2() {
        return this.R1;
    }

    public g Q3(long j10) {
        this.f74077x = j10;
        return this;
    }

    public View R2() {
        r<g> rVar = this.N;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    public g R3(int i10) {
        this.R = i10;
        return this;
    }

    public e S2() {
        return this.f73836f2;
    }

    public g S3(boolean z10) {
        this.f74057d = z10 ? 1 : 0;
        return this;
    }

    public com.kongzue.dialogx.interfaces.f<g> T2() {
        com.kongzue.dialogx.interfaces.f<g> fVar = this.V;
        return fVar == null ? new c() : fVar;
    }

    public g T3(@ColorInt int i10) {
        this.f73839l1 = Integer.valueOf(i10);
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.g<g> U2() {
        return this.S;
    }

    public g U3(int i10) {
        this.f74079z = i10;
        x0();
        return this;
    }

    public long V2() {
        return this.f74076w;
    }

    public g V3(int i10) {
        this.f74078y = i10;
        x0();
        return this;
    }

    public long W2() {
        return this.f74077x;
    }

    public g W3(int i10) {
        this.Y = S(i10);
        x0();
        return this;
    }

    public String X2() {
        EditText editText = this.f73836f2.f73857i;
        return editText != null ? editText.getText().toString() : "";
    }

    public g X3(CharSequence charSequence) {
        this.Y = charSequence;
        x0();
        return this;
    }

    public CharSequence Y2() {
        return this.Y;
    }

    public g Y3(TextInfo textInfo) {
        this.f73844v1 = textInfo;
        x0();
        return this;
    }

    public TextInfo Z2() {
        return this.f73844v1;
    }

    public g Z3(int i10) {
        this.B = i10;
        x0();
        return this;
    }

    public CharSequence a3() {
        return this.Z;
    }

    public g a4(int i10) {
        this.A = i10;
        x0();
        return this;
    }

    public t<g> b3() {
        return (t) this.f73831b2;
    }

    public g b4(int i10) {
        this.Z = S(i10);
        x0();
        return this;
    }

    public TextInfo c3() {
        return this.L1;
    }

    public g c4(int i10, t<g> tVar) {
        this.Z = S(i10);
        this.f73831b2 = tVar;
        x0();
        return this;
    }

    public p<g> d3() {
        return this.T;
    }

    public g d4(t<g> tVar) {
        this.f73831b2 = tVar;
        return this;
    }

    public q<g> e3() {
        return this.W;
    }

    public g e4(CharSequence charSequence) {
        this.Z = charSequence;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        BaseDialog.BOOLEAN r10 = this.P;
        if (r10 != null) {
            return r10 == BaseDialog.BOOLEAN.TRUE;
        }
        BaseDialog.BOOLEAN r11 = f73828l2;
        if (r11 != null) {
            return r11 == BaseDialog.BOOLEAN.TRUE;
        }
        return this.f74070q;
    }

    public CharSequence f3() {
        return this.f73830b1;
    }

    public g f4(CharSequence charSequence, t<g> tVar) {
        this.Z = charSequence;
        this.f73831b2 = tVar;
        x0();
        return this;
    }

    public t<g> g3() {
        return (t) this.f73833d2;
    }

    public g g4(t<g> tVar) {
        this.f73831b2 = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        K2();
    }

    public TextInfo h3() {
        return this.V1;
    }

    public g h4(TextInfo textInfo) {
        this.L1 = textInfo;
        x0();
        return this;
    }

    public float i3() {
        return this.f73841p1;
    }

    public g i4(p<g> pVar) {
        this.T = pVar;
        return this;
    }

    public CharSequence j3() {
        return this.X;
    }

    public g j4(q<g> qVar) {
        this.W = qVar;
        return this;
    }

    public Drawable k3() {
        return this.f73842q1;
    }

    public g k4(int i10) {
        this.f73830b1 = S(i10);
        x0();
        return this;
    }

    public TextInfo l3() {
        return this.f73843r1;
    }

    public g l4(int i10, t<g> tVar) {
        this.f73830b1 = S(i10);
        this.f73833d2 = tVar;
        x0();
        return this;
    }

    public void m3() {
        this.F = true;
        this.f73837g2 = false;
        if (C() != null) {
            C().setVisibility(8);
        }
    }

    public g m4(t<g> tVar) {
        this.f73833d2 = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public void n3() {
        this.f73837g2 = true;
        this.F = true;
        if (S2() != null) {
            S2().d().a(this.O, S2().f73851c);
            BaseDialog.E0(new d(), S2().f(null));
        }
    }

    public g n4(CharSequence charSequence) {
        this.f73830b1 = charSequence;
        x0();
        return this;
    }

    public boolean o3() {
        return this.M;
    }

    public g o4(CharSequence charSequence, t<g> tVar) {
        this.f73830b1 = charSequence;
        this.f73833d2 = tVar;
        x0();
        return this;
    }

    public g p3(com.kongzue.dialogx.interfaces.i<g> iVar) {
        this.f74066m = iVar;
        return this;
    }

    public g p4(t<g> tVar) {
        this.f73833d2 = tVar;
        return this;
    }

    protected void q3(g gVar) {
    }

    public g q4(TextInfo textInfo) {
        this.V1 = textInfo;
        x0();
        return this;
    }

    public g r3(com.kongzue.dialogx.interfaces.i<g> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    public g r4(float f10) {
        this.f73841p1 = f10;
        x0();
        return this;
    }

    protected void s3(g gVar) {
    }

    public g s4(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    public g t3() {
        this.N.clean();
        x0();
        return this;
    }

    public g t4(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    public g u3(int i10, com.kongzue.dialogx.interfaces.i<g> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    public g u4(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    public g v3(int i10, int i11) {
        this.Q = i10;
        this.R = i11;
        return this;
    }

    public g v4(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    public g w3(@ColorInt int i10) {
        this.f74075v = Integer.valueOf(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: w4, reason: merged with bridge method [inline-methods] */
    public g L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void x0() {
        if (S2() == null) {
            return;
        }
        BaseDialog.C0(new a());
    }

    public g x3(@ColorRes int i10) {
        this.f74075v = Integer.valueOf(v(i10));
        x0();
        return this;
    }

    public g x4(int i10) {
        this.X = S(i10);
        x0();
        return this;
    }

    public g y3(boolean z10) {
        this.M = z10;
        return this;
    }

    public g y4(CharSequence charSequence) {
        this.X = charSequence;
        x0();
        return this;
    }

    public g z3(int i10) {
        this.f73834e2 = i10;
        x0();
        return this;
    }

    public g z4(int i10) {
        this.f73842q1 = getResources().getDrawable(i10);
        x0();
        return this;
    }

    public g(CharSequence charSequence) {
        this.Y = charSequence;
    }

    public g(CharSequence charSequence, CharSequence charSequence2) {
        this.X = charSequence;
        this.Y = charSequence2;
    }

    public g(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        this.X = charSequence;
        this.Y = charSequence2;
        this.Z = charSequence3;
    }

    public g(int i10, int i11, int i12) {
        this.X = S(i10);
        this.Y = S(i11);
        this.Z = S(i12);
    }

    public g(int i10, int i11) {
        this.X = S(i10);
        this.Y = S(i11);
    }

    public g(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
        this.X = charSequence;
        this.Y = charSequence2;
        this.Z = charSequence3;
        this.f73840p0 = charSequence4;
    }

    public g(int i10, int i11, int i12, int i13) {
        this.X = S(i10);
        this.Y = S(i11);
        this.Z = S(i12);
        this.f73840p0 = S(i13);
    }

    public g(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, CharSequence charSequence5) {
        this.X = charSequence;
        this.Y = charSequence2;
        this.Z = charSequence3;
        this.f73840p0 = charSequence4;
        this.f73830b1 = charSequence5;
    }

    public g(int i10, int i11, int i12, int i13, int i14) {
        this.X = S(i10);
        this.Y = S(i11);
        this.Z = S(i12);
        this.f73840p0 = S(i13);
        this.f73830b1 = S(i14);
    }
}
