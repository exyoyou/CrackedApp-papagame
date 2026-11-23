package com.kongzue.dialogx.dialogs;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.Outline;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
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
import com.kongzue.dialogx.interfaces.p;
import com.kongzue.dialogx.interfaces.q;
import com.kongzue.dialogx.interfaces.r;
import com.kongzue.dialogx.interfaces.u;
import com.kongzue.dialogx.interfaces.x;
import com.kongzue.dialogx.util.TextInfo;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;
import com.kongzue.dialogx.util.views.PopMenuListView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class i extends BaseDialog {

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    public static long f73899k2 = -1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    public static long f73900l2 = -1;
    protected com.kongzue.dialogx.util.k L1;
    protected r<i> O;
    protected com.kongzue.dialogx.interfaces.f<i> P;
    protected q<i> Q;
    protected List<CharSequence> R;
    protected List<Integer> S;
    protected h U;
    protected WeakReference<View> V;
    protected x<i> X;
    protected u<i> Y;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    private int f73901a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    protected TextInfo f73902b1;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    private ViewTreeObserver f73905d2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    private ViewTreeObserver.OnDrawListener f73906e2;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    protected com.kongzue.dialogx.util.n f73908f2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    protected int f73909g2;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    protected boolean f73910h2;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    private boolean f73912i2;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    protected boolean f73913j2;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.g<i> f73914l1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    protected p<i> f73916p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.m<i> f73917q1;
    protected i M = this;
    protected boolean N = true;
    protected boolean T = true;
    protected boolean W = true;
    protected int Z = -1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    protected int f73915p0 = -1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    protected boolean f73907f1 = false;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    protected float f73911i1 = DialogX.Q;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    protected int f73918r1 = -1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    protected Map<Integer, Boolean> f73919v1 = new HashMap();
    protected int R1 = -1;
    protected com.kongzue.dialogx.util.g V1 = new com.kongzue.dialogx.util.g();

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    public boolean f73903b2 = false;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    public int f73904c2 = -1;

    class a implements ViewTreeObserver.OnDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            int[] iArr = new int[2];
            if (i.this.W1() == null) {
                if (i.this.f73905d2 != null) {
                    i iVar = i.this;
                    iVar.b3(iVar.f73905d2, this);
                    i.this.f73905d2 = null;
                    i.this.f73906e2 = null;
                    return;
                }
                return;
            }
            i.this.W1().getLocationInWindow(iArr);
            if (i.this.s2() == null || i.this.V1.e(iArr) || i.this.W1().getVisibility() != 0) {
                return;
            }
            i.this.V1.f(iArr);
            i.this.Z2();
        }
    }

    class b implements ViewTreeObserver.OnDrawListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            int[] iArr = new int[2];
            if (i.this.W1() == null) {
                if (i.this.f73905d2 != null) {
                    i iVar = i.this;
                    iVar.b3(iVar.f73905d2, this);
                    i.this.f73905d2 = null;
                    i.this.f73906e2 = null;
                    return;
                }
                return;
            }
            i.this.W1().getLocationInWindow(iArr);
            if (i.this.s2() == null || i.this.V1.e(iArr) || i.this.W1().getVisibility() != 0) {
                return;
            }
            i.this.V1.f(iArr);
            i.this.Z2();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = i.this.U;
            if (hVar == null) {
                return;
            }
            hVar.a(null);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = i.this.U;
            if (hVar != null) {
                hVar.b();
            }
        }
    }

    class e extends com.kongzue.dialogx.interfaces.f<i> {
        e() {
        }
    }

    class f implements x<i> {
        f() {
        }

        @Override // com.kongzue.dialogx.interfaces.x
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean a(i iVar, CharSequence charSequence, int i10) {
            return false;
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (i.this.C() != null) {
                i.this.C().setVisibility(8);
            }
        }
    }

    public class h implements com.kongzue.dialogx.interfaces.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<View> f73927a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public DialogXBaseRelativeLayout f73928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MaxRelativeLayout f73929c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RelativeLayout f73930d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public PopMenuListView f73931e;

        class a extends DialogXBaseRelativeLayout.c {
            a() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void a() {
                ((BaseDialog) i.this).f74071r = false;
                i.this.t2().a(i.this.M);
                i iVar = i.this;
                iVar.W2(iVar.M);
                i.this.J0(Lifecycle.State.DESTROYED);
                i iVar2 = i.this;
                iVar2.f73908f2 = null;
                iVar2.U = null;
                iVar2.X1(null);
                i.this.P = null;
                System.gc();
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void b() {
                ((BaseDialog) i.this).f74071r = true;
                ((BaseDialog) i.this).E = false;
                i.this.J0(Lifecycle.State.CREATED);
                i.this.s0();
                i.this.t2().b(i.this.M);
                i iVar = i.this;
                iVar.Y2(iVar.M);
                i.this.x0();
            }
        }

        class b implements DialogXBaseRelativeLayout.d {
            b() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.d
            public boolean onBackPressed() {
                i iVar = i.this;
                p<i> pVar = iVar.f73916p1;
                if (pVar != null) {
                    if (!pVar.a(iVar.M)) {
                        return true;
                    }
                    i.this.i2();
                    return true;
                }
                if (!iVar.f0()) {
                    return true;
                }
                i.this.i2();
                return true;
            }
        }

        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Integer numW;
                Float fD;
                com.kongzue.dialogx.interfaces.g<i> gVarE = h.this.e();
                h hVar = h.this;
                gVarE.b(i.this.M, hVar.f73929c);
                i.this.J0(Lifecycle.State.RESUMED);
                if (((BaseDialog) i.this).f74072s.j() == null || ((BaseDialog) i.this).f74072s.j().b() == null) {
                    numW = null;
                    fD = null;
                } else {
                    i iVar = i.this;
                    numW = iVar.w(iVar.G(Integer.valueOf(((BaseDialog) iVar).f74072s.j().b().c(i.this.i0()))));
                    i iVar2 = i.this;
                    fD = iVar2.D(Float.valueOf(((BaseDialog) iVar2).f74072s.j().b().b()));
                }
                if (h.this.f73927a != null) {
                    Iterator it2 = h.this.f73927a.iterator();
                    while (it2.hasNext()) {
                        com.kongzue.dialogx.interfaces.b bVar = (com.kongzue.dialogx.interfaces.b) ((View) it2.next());
                        bVar.b(((BaseDialog) i.this).f74075v == null ? numW : ((BaseDialog) i.this).f74075v);
                        bVar.a(fD);
                    }
                }
            }
        }

        class d implements AdapterView.OnItemClickListener {
            d() {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
                if (i.this.S2(i10)) {
                    i.this.Z(view);
                    i.this.f73901a2 = i10;
                    if (i.this.f73912i2) {
                        return;
                    }
                    i iVar = i.this;
                    iVar.f73904c2 = iVar.R.hashCode();
                    x<i> xVarG2 = i.this.G2();
                    i iVar2 = i.this;
                    boolean zA = xVarG2.a(iVar2.M, iVar2.R.get(i10), i10);
                    i iVar3 = i.this;
                    if (!iVar3.f73903b2 && iVar3.f73904c2 == iVar3.R.hashCode() && zA) {
                        zA = false;
                    }
                    if (zA) {
                        return;
                    }
                    i.this.i2();
                }
            }
        }

        class e implements View.OnClickListener {
            e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                i iVar = i.this;
                q<i> qVar = iVar.Q;
                if (qVar == null || !qVar.a(iVar.M, view)) {
                    h.this.a(view);
                }
            }
        }

        class f extends ViewOutlineProvider {
            f() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), i.this.f73911i1);
            }
        }

        class g implements Runnable {

            class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (i.this.f73906e2 != null) {
                        if (i.this.f73905d2 != null) {
                            i iVar = i.this;
                            iVar.b3(iVar.f73905d2, i.this.f73906e2);
                        } else if (i.this.W1() != null) {
                            i iVar2 = i.this;
                            iVar2.b3(iVar2.W1().getViewTreeObserver(), i.this.f73906e2);
                        }
                        i.this.f73906e2 = null;
                        i.this.f73905d2 = null;
                    }
                    BaseDialog.p(i.this.C());
                }
            }

            g() {
            }

            @Override // java.lang.Runnable
            public void run() {
                com.kongzue.dialogx.interfaces.g<i> gVarE = h.this.e();
                h hVar = h.this;
                gVarE.a(i.this.M, hVar.f73929c);
                BaseDialog.E0(new a(), h.this.g(null));
            }
        }

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.i$h$h, reason: collision with other inner class name */
        class C0772h extends com.kongzue.dialogx.interfaces.g<i> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f73941a = -1;

            /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.i$h$h$a */
            class a implements ValueAnimator.AnimatorUpdateListener {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ int f73943b;

                a(int i10) {
                    this.f73943b = i10;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (!((BaseDialog) i.this).f74071r || i.this.s2() == null || i.this.s2().f73929c == null) {
                        return;
                    }
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    i iVar = i.this;
                    iVar.f73910h2 = fFloatValue != 1.0f;
                    com.kongzue.dialogx.util.g gVarA2 = iVar.A2();
                    int i10 = fFloatValue == 1.0f ? -2 : (int) (this.f73943b * fFloatValue);
                    h.this.f73929c.getLayoutParams().height = i10;
                    h.this.f73929c.getLayoutParams().width = i.this.M2() == -1 ? i.this.W1().getWidth() : i.this.M2();
                    float f10 = i10;
                    if (h.this.f73929c.getY() + f10 > h.this.f73928b.getSafeHeight()) {
                        h hVar = h.this;
                        hVar.f73929c.setY(hVar.f73928b.getSafeHeight() - f10);
                    }
                    if (gVarA2.c() == -1.0f) {
                        gVarA2 = i.this.V1;
                    }
                    float fC = gVarA2.c();
                    float fD = i.this.V1.d();
                    h hVar2 = h.this;
                    i iVar2 = i.this;
                    float useAreaHeight = fD + (iVar2.f73909g2 * fFloatValue);
                    if (!iVar2.f73907f1) {
                        if (fC < 0.0f) {
                            fC = 0.0f;
                        }
                        if (useAreaHeight < 0.0f) {
                            useAreaHeight = 0.0f;
                        }
                        if (hVar2.f73929c.getWidth() + fC > h.this.f73928b.getUseAreaWidth()) {
                            fC = h.this.f73928b.getUseAreaWidth() - h.this.f73929c.getWidth();
                        }
                        if (h.this.f73929c.getHeight() + useAreaHeight > h.this.f73928b.getUseAreaHeight()) {
                            useAreaHeight = h.this.f73928b.getUseAreaHeight() - h.this.f73929c.getHeight();
                        }
                    }
                    h.this.f73929c.setX(fC);
                    h.this.f73929c.setY(useAreaHeight);
                    h.this.f73929c.requestLayout();
                    if (h.this.f73929c.getVisibility() != 0) {
                        h.this.f73929c.setVisibility(0);
                    }
                    if (h.this.h()) {
                        h.this.f73928b.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                }
            }

            /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.i$h$h$b */
            class b implements ValueAnimator.AnimatorUpdateListener {
                b() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    h.this.f73928b.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }

            /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.i$h$h$c */
            class c implements ValueAnimator.AnimatorUpdateListener {
                c() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    h hVar = h.this;
                    if (hVar.f73928b == null || i.this.W1() != null) {
                        return;
                    }
                    h.this.f73928b.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }

            C0772h() {
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void a(i iVar, ViewGroup viewGroup) {
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(i.this.N() == null ? h.this.f73928b.getContext() : i.this.N(), R.anim.anim_dialogx_default_exit);
                long jG = h.this.g(animationLoadAnimation);
                animationLoadAnimation.setDuration(jG);
                h.this.f73929c.startAnimation(animationLoadAnimation);
                h.this.f73928b.animate().alpha(0.0f).setInterpolator(new AccelerateInterpolator()).setDuration(jG);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                valueAnimatorOfFloat.setDuration(jG);
                valueAnimatorOfFloat.addUpdateListener(new c());
                valueAnimatorOfFloat.start();
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(i iVar, ViewGroup viewGroup) {
                long jF = h.this.f(null);
                if (i.this.W1() == null) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) h.this.f73929c.getLayoutParams();
                    layoutParams.addRule(13);
                    layoutParams.width = i.this.M2() != -1 ? i.this.M2() : -1;
                    layoutParams.leftMargin = i.this.o(50.0f);
                    layoutParams.rightMargin = i.this.o(50.0f);
                    h.this.f73929c.setLayoutParams(layoutParams);
                    h.this.f73929c.setAlpha(0.0f);
                    if (!h.this.h()) {
                        h hVar = h.this;
                        hVar.f73929c.setElevation(i.this.o(20.0f));
                    }
                    h.this.f73929c.setVisibility(0);
                    h.this.f73929c.animate().alpha(1.0f).setDuration(jF);
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    valueAnimatorOfFloat.setDuration(jF);
                    valueAnimatorOfFloat.addUpdateListener(new b());
                    valueAnimatorOfFloat.start();
                    return;
                }
                int iQ2 = i.this.q2();
                h.this.f73929c.getLayoutParams().height = 1;
                h hVar2 = h.this;
                if (i.this.W && !hVar2.f73931e.a()) {
                    if (i.this.W1() instanceof TextView) {
                        String string = ((TextView) i.this.W1()).getText().toString();
                        for (CharSequence charSequence : i.this.R) {
                            if (TextUtils.equals(charSequence.toString(), string)) {
                                this.f73941a = i.this.R.indexOf(charSequence);
                                break;
                            }
                        }
                    }
                    int i10 = this.f73941a;
                    if (i10 != -1) {
                        int[] iArr = new int[2];
                        if (h.this.f73931e.getChildAt(i10) != null) {
                            int measuredHeight = h.this.f73931e.getChildAt(this.f73941a).getMeasuredHeight();
                            h.this.f73931e.getChildAt(this.f73941a).getLocationInWindow(iArr);
                            i iVar2 = i.this;
                            iVar2.f73909g2 = (int) (((iVar2.W1().getMeasuredHeight() / 2.0f) - (iArr[1] - h.this.f73929c.getY())) - (measuredHeight / 2.0f));
                        }
                    }
                }
                i.this.Z2();
                i iVar3 = i.this;
                iVar3.f73909g2 = (int) (iVar3.A2().d() - i.this.V1.d());
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
                valueAnimatorOfFloat2.addUpdateListener(new a(iQ2));
                valueAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator(2.0f));
                valueAnimatorOfFloat2.setDuration(jF);
                valueAnimatorOfFloat2.start();
            }
        }

        public h(View view) {
            if (view == null) {
                return;
            }
            i.this.H0(view);
            this.f73928b = (DialogXBaseRelativeLayout) view.findViewById(R.id.box_root);
            this.f73929c = (MaxRelativeLayout) view.findViewById(R.id.box_body);
            this.f73930d = (RelativeLayout) view.findViewById(R.id.box_custom);
            this.f73931e = (PopMenuListView) view.findViewById(R.id.listMenu);
            this.f73929c.setVisibility(4);
            this.f73927a = i.this.s(view);
            this.f73929c.setX(-1.0f);
            this.f73929c.setY(-1.0f);
            init();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean h() {
            return (((BaseDialog) i.this).f74072s.j() == null || ((BaseDialog) i.this).f74072s.j().b() == null || !((BaseDialog) i.this).f74072s.j().b().a()) ? false : true;
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void a(View view) {
            BaseDialog baseDialog = i.this;
            if (baseDialog.t0(baseDialog)) {
                return;
            }
            if (view != null) {
                view.setEnabled(false);
            }
            if (((BaseDialog) i.this).D || this.f73928b == null) {
                return;
            }
            ((BaseDialog) i.this).D = true;
            this.f73928b.post(new g());
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void b() {
            GradientDrawable gradientDrawable;
            if (this.f73928b == null || i.this.N() == null) {
                return;
            }
            this.f73928b.j(i.this.g0());
            this.f73928b.setRootPadding(((BaseDialog) i.this).C[0], ((BaseDialog) i.this).C[1], ((BaseDialog) i.this).C[2], ((BaseDialog) i.this).C[3]);
            if (this.f73931e.getAdapter() == null) {
                this.f73931e.setAdapter((ListAdapter) i.this.f73908f2);
            } else {
                List<CharSequence> listA = i.this.f73908f2.a();
                i iVar = i.this;
                if (listA != iVar.R) {
                    i iVar2 = i.this;
                    iVar.f73908f2 = new com.kongzue.dialogx.util.n(iVar2.M, iVar2.N(), i.this.R);
                    this.f73931e.setAdapter((ListAdapter) i.this.f73908f2);
                } else {
                    iVar.f73908f2.notifyDataSetChanged();
                }
            }
            i iVar3 = i.this;
            if (!iVar3.N) {
                this.f73928b.setClickable(false);
            } else if (iVar3.f0()) {
                this.f73928b.setOnClickListener(new e());
            } else {
                this.f73928b.setOnClickListener(null);
            }
            if (((BaseDialog) i.this).f74075v != null) {
                i iVar4 = i.this;
                iVar4.R0(this.f73929c, ((BaseDialog) iVar4).f74075v.intValue());
            }
            if (i.this.f73911i1 > -1.0f) {
                if ((this.f73929c.getBackground() instanceof GradientDrawable) && (gradientDrawable = (GradientDrawable) this.f73929c.getBackground()) != null) {
                    gradientDrawable.setCornerRadius(i.this.f73911i1);
                }
                this.f73929c.setOutlineProvider(new f());
                this.f73929c.setClipToOutline(true);
                List<View> list = this.f73927a;
                if (list != null) {
                    Iterator<View> it2 = list.iterator();
                    while (it2.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) ((View) it2.next())).a(Float.valueOf(i.this.f73911i1));
                    }
                }
            }
            r<i> rVar = i.this.O;
            if (rVar == null || rVar.getCustomView() == null) {
                this.f73930d.setVisibility(8);
            } else {
                i iVar5 = i.this;
                iVar5.O.bindParent(this.f73930d, iVar5.M);
                this.f73930d.setVisibility(0);
            }
            int i10 = i.this.Z;
            if (i10 != -1) {
                this.f73929c.j(i10);
                this.f73929c.setMinimumWidth(i.this.Z);
            }
            int i11 = i.this.f73915p0;
            if (i11 != -1) {
                this.f73929c.i(i11);
                this.f73929c.setMinimumHeight(i.this.f73915p0);
            }
            if (((BaseDialog) i.this).f74075v != null) {
                i iVar6 = i.this;
                iVar6.R0(this.f73929c, ((BaseDialog) iVar6).f74075v.intValue());
                List<View> list2 = this.f73927a;
                if (list2 != null) {
                    Iterator<View> it3 = list2.iterator();
                    while (it3.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) ((View) it3.next())).b(((BaseDialog) i.this).f74075v);
                    }
                }
            }
            i iVar7 = i.this;
            com.kongzue.dialogx.util.k kVar = iVar7.L1;
            if (kVar != null) {
                this.f73931e.setDivider(kVar.a(iVar7.N(), i.this.i0()));
                this.f73931e.setDividerHeight(i.this.L1.f());
            }
            i.this.r0();
        }

        protected com.kongzue.dialogx.interfaces.g<i> e() {
            i iVar = i.this;
            if (iVar.f73914l1 == null) {
                iVar.f73914l1 = new C0772h();
            }
            return i.this.f73914l1;
        }

        public long f(@Nullable Animation animation) {
            if (animation == null && this.f73929c.getAnimation() != null) {
                animation = this.f73929c.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 150L : animation.getDuration();
            long j10 = i.f73899k2;
            if (j10 >= 0) {
                duration = j10;
            }
            return ((BaseDialog) i.this).f74076w >= 0 ? ((BaseDialog) i.this).f74076w : duration;
        }

        public long g(@Nullable Animation animation) {
            if (animation == null && this.f73929c.getAnimation() != null) {
                animation = this.f73929c.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 150L : animation.getDuration();
            long j10 = i.f73900l2;
            if (j10 >= 0) {
                duration = j10;
            }
            return ((BaseDialog) i.this).f74077x != -1 ? ((BaseDialog) i.this).f74077x : duration;
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void init() {
            int iD;
            int iE;
            i.this.f73912i2 = false;
            i iVar = i.this;
            if (iVar.f73908f2 == null) {
                i iVar2 = i.this;
                iVar.f73908f2 = new com.kongzue.dialogx.util.n(iVar2.M, iVar2.N(), i.this.R);
            }
            this.f73928b.p(i.this.M);
            this.f73928b.n(new a());
            this.f73928b.m(new b());
            this.f73931e.b(i.this.P() == null ? i.this.o(500.0f) : i.this.P().getMeasuredHeight() - i.this.o(150.0f));
            this.f73929c.setVisibility(4);
            this.f73929c.post(new c());
            if (((BaseDialog) i.this).f74072s.j() != null) {
                iD = ((BaseDialog) i.this).f74072s.j().d(i.this.i0());
                iE = ((BaseDialog) i.this).f74072s.j().e(i.this.i0());
            } else {
                iD = 0;
                iE = 0;
            }
            if (iD == 0) {
                iD = i.this.i0() ? R.drawable.rect_dialogx_material_menu_split_divider : R.drawable.rect_dialogx_material_menu_split_divider_night;
            }
            this.f73931e.setOverScrollMode(2);
            this.f73931e.setVerticalScrollBarEnabled(false);
            this.f73931e.setDivider(i.this.getResources().getDrawable(iD));
            this.f73931e.setDividerHeight(iE);
            this.f73931e.setOnItemClickListener(new d());
            i.this.q0();
        }
    }

    public i() {
    }

    private String[] L2(int[] iArr) {
        String[] strArr = new String[iArr == null ? 0 : iArr.length];
        int i10 = 0;
        while (true) {
            if (i10 >= (iArr == null ? 0 : iArr.length)) {
                return strArr;
            }
            strArr[i10] = S(iArr[i10]);
            i10++;
        }
    }

    public static i S3(View view, List<CharSequence> list) {
        i iVar = new i(view, list);
        iVar.M0();
        return iVar;
    }

    public static i T3(View view, List<CharSequence> list, r<i> rVar) {
        i iVar = new i(view, list, rVar);
        iVar.M0();
        return iVar;
    }

    public static i U3(View view, CharSequence[] charSequenceArr) {
        i iVar = new i(view, charSequenceArr);
        iVar.M0();
        return iVar;
    }

    public static i V3(View view, CharSequence[] charSequenceArr, r<i> rVar) {
        i iVar = new i(view, charSequenceArr, rVar);
        iVar.M0();
        return iVar;
    }

    public static i W3(List<CharSequence> list) {
        i iVar = new i(list);
        iVar.M0();
        return iVar;
    }

    public static i X3(List<CharSequence> list, r<i> rVar) {
        i iVar = new i(list, rVar);
        iVar.M0();
        return iVar;
    }

    public static i Y3(CharSequence... charSequenceArr) {
        i iVar = new i(charSequenceArr);
        iVar.M0();
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z2() {
        if (s2() == null || s2().f73928b == null || W1() == null) {
            return;
        }
        s2().f73929c.setTag(null);
        com.kongzue.dialogx.util.g gVarA2 = A2();
        s2().f73929c.setTag(gVarA2);
        if (!this.f73910h2) {
            if (gVarA2.c() != s2().f73929c.getX()) {
                s2().f73929c.setX(gVarA2.c());
            }
            if (gVarA2.d() != s2().f73929c.getY()) {
                s2().f73929c.setY(gVarA2.d());
            }
        }
        if (s2().f73929c.getWidth() != gVarA2.b()) {
            s2().f73929c.setLayoutParams(new RelativeLayout.LayoutParams((int) gVarA2.b(), -2));
        }
    }

    public static i Z3(CharSequence[] charSequenceArr, r<i> rVar) {
        i iVar = new i(charSequenceArr, rVar);
        iVar.M0();
        return iVar;
    }

    public static i a2() {
        return new i();
    }

    public static i a4(String... strArr) {
        i iVar = new i(strArr);
        iVar.M0();
        return iVar;
    }

    public static i b2(DialogXStyle dialogXStyle) {
        return new i().M3(dialogXStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b3(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnDrawListener onDrawListener) {
        if (viewTreeObserver == null || onDrawListener == null || !viewTreeObserver.isAlive()) {
            return;
        }
        try {
            viewTreeObserver.removeOnDrawListener(onDrawListener);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int q2() {
        if (s2() == null) {
            return 0;
        }
        s2().f73929c.measure(View.MeasureSpec.makeMeasureSpec(((View) s2().f73929c.getParent()).getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(((View) s2().f73929c.getParent()).getHeight(), Integer.MIN_VALUE));
        return s2().f73929c.getMeasuredHeight();
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void A0() {
        if (C() != null) {
            ViewTreeObserver.OnDrawListener onDrawListener = this.f73906e2;
            if (onDrawListener != null) {
                ViewTreeObserver viewTreeObserver = this.f73905d2;
                if (viewTreeObserver != null) {
                    b3(viewTreeObserver, onDrawListener);
                } else if (W1() != null) {
                    b3(W1().getViewTreeObserver(), this.f73906e2);
                }
                this.f73906e2 = null;
            }
            BaseDialog.p(C());
            this.f74071r = false;
        }
        if (s2().f73930d != null) {
            s2().f73930d.removeAllViews();
        }
        M0();
    }

    /* JADX WARN: Code duplicated, block: B:84:0x022f A[PHI: r5 r8
      0x022f: PHI (r5v42 int) = (r5v17 int), (r5v47 int) binds: [B:76:0x01ff, B:49:0x0154] A[DONT_GENERATE, DONT_INLINE]
      0x022f: PHI (r8v29 int) = (r8v9 int), (r8v38 int) binds: [B:76:0x01ff, B:49:0x0154] A[DONT_GENERATE, DONT_INLINE]] */
    protected com.kongzue.dialogx.util.g A2() {
        int i10;
        int iMax;
        if (s2().f73929c.getTag() instanceof com.kongzue.dialogx.util.g) {
            return (com.kongzue.dialogx.util.g) s2().f73929c.getTag();
        }
        com.kongzue.dialogx.util.g gVar = new com.kongzue.dialogx.util.g();
        MaxRelativeLayout maxRelativeLayout = s2().f73929c;
        DialogXBaseRelativeLayout dialogXBaseRelativeLayout = s2().f73928b;
        int iC = (int) this.V1.c();
        int iD = (int) this.V1.d();
        if (this.R1 != -1) {
            int iMax2 = P2(16) ? Math.max(0, ((W1().getMeasuredHeight() / 2) + iD) - (maxRelativeLayout.getHeight() / 2)) : 0;
            if (P2(1)) {
                iMax = Math.max(0, (M2() > 0 ? (W1().getMeasuredWidth() / 2) - (M2() / 2) : 0) + iC);
            } else {
                iMax = 0;
            }
            if (P2(17)) {
                iMax = Math.max(0, (M2() > 0 ? (W1().getMeasuredWidth() / 2) - (M2() / 2) : 0) + iC);
                iMax2 = Math.max(0, ((W1().getMeasuredHeight() / 2) + iD) - (maxRelativeLayout.getHeight() / 2));
            }
            if (this.W) {
                if (P2(48)) {
                    iMax2 = (W1().getMeasuredHeight() + iD) - maxRelativeLayout.getHeight();
                    if (iMax == 0) {
                        iMax = Math.max(0, (M2() > 0 ? (W1().getMeasuredWidth() / 2) - (M2() / 2) : 0) + iC);
                    }
                }
                if (P2(3)) {
                    iMax = Math.max(0, (W1().getMeasuredWidth() + iC) - maxRelativeLayout.getWidth());
                    if (iMax2 == 0) {
                        iMax2 = Math.max(0, ((W1().getMeasuredHeight() / 2) + iD) - (maxRelativeLayout.getHeight() / 2));
                    }
                }
                if (P2(5)) {
                    if (iMax2 == 0) {
                        iMax2 = Math.max(0, ((W1().getMeasuredHeight() / 2) + iD) - (maxRelativeLayout.getHeight() / 2));
                    }
                    iMax = iC;
                }
                if (!P2(80)) {
                    iD = iMax2;
                } else if (iMax == 0) {
                    iMax = Math.max(0, iC + (M2() > 0 ? (W1().getMeasuredWidth() / 2) - (M2() / 2) : 0));
                }
            } else {
                if (P2(48)) {
                    iMax2 = Math.max(0, iD - maxRelativeLayout.getHeight());
                    if (iMax == 0) {
                        iMax = Math.max(0, (M2() > 0 ? (W1().getMeasuredWidth() / 2) - (M2() / 2) : 0) + iC);
                    }
                }
                if (P2(3)) {
                    iMax = Math.max(0, iC - maxRelativeLayout.getWidth());
                    if (iMax2 == 0) {
                        iMax2 = Math.max(0, ((W1().getMeasuredHeight() / 2) + iD) - (maxRelativeLayout.getHeight() / 2));
                    }
                }
                if (P2(5)) {
                    iMax = Math.max(0, W1().getWidth() + iC);
                    if (iMax2 == 0) {
                        iMax2 = Math.max(0, ((W1().getMeasuredHeight() / 2) + iD) - (maxRelativeLayout.getHeight() / 2));
                    }
                }
                if (P2(80)) {
                    iD = Math.max(0, iD + W1().getHeight());
                    if (iMax == 0) {
                        iMax = Math.max(0, iC + (M2() > 0 ? (W1().getMeasuredWidth() / 2) - (M2() / 2) : 0));
                    }
                } else {
                    iD = iMax2;
                }
            }
            if (!this.f73907f1) {
                if (iMax < 0) {
                    iMax = 0;
                }
                if (maxRelativeLayout.getWidth() + iMax > dialogXBaseRelativeLayout.getUseAreaWidth()) {
                    iMax = dialogXBaseRelativeLayout.getUseAreaWidth() - maxRelativeLayout.getWidth();
                }
                i10 = iD >= 0 ? iD : 0;
                iD = maxRelativeLayout.getHeight() + i10 > dialogXBaseRelativeLayout.getUseAreaHeight() ? dialogXBaseRelativeLayout.getUseAreaHeight() - maxRelativeLayout.getHeight() : i10;
            }
            gVar.i(iMax).j(iD);
        } else {
            int height = this.f73915p0;
            if (height == -1) {
                height = W1().getHeight();
            }
            int iC2 = (int) this.V1.c();
            float fD = this.V1.d();
            if (this.W) {
                height = 0;
            }
            int useAreaHeight = (int) (fD + height + this.f73909g2);
            if (!this.f73907f1) {
                if (iC2 < 0) {
                    iC2 = 0;
                }
                if (maxRelativeLayout.getWidth() + iC2 > dialogXBaseRelativeLayout.getUseAreaWidth()) {
                    iC2 = dialogXBaseRelativeLayout.getUseAreaWidth() - maxRelativeLayout.getWidth();
                }
                i10 = useAreaHeight >= 0 ? useAreaHeight : 0;
                useAreaHeight = maxRelativeLayout.getHeight() + i10 > dialogXBaseRelativeLayout.getUseAreaHeight() ? dialogXBaseRelativeLayout.getUseAreaHeight() - maxRelativeLayout.getHeight() : i10;
            }
            gVar.i(iC2).j(useAreaHeight);
        }
        int width = this.Z;
        if (width == -1) {
            width = W1().getWidth();
        }
        int height2 = this.f73915p0;
        if (height2 == -1) {
            height2 = W1().getHeight();
        }
        gVar.h(width).g(height2);
        return gVar;
    }

    public i A3(CharSequence... charSequenceArr) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(Arrays.asList(charSequenceArr));
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.m<i> B2() {
        return this.f73917q1;
    }

    public i B3(String... strArr) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(Arrays.asList(strArr));
        x0();
        return this;
    }

    public TextInfo C2() {
        TextInfo textInfo = this.f73902b1;
        return textInfo == null ? DialogX.f73609u : textInfo;
    }

    public i C3(boolean z10) {
        this.f73907f1 = z10;
        return this;
    }

    public p<i> D2() {
        return this.f73916p1;
    }

    public i D3(p<i> pVar) {
        this.f73916p1 = pVar;
        return this;
    }

    public q<i> E2() {
        return this.Q;
    }

    public i E3(q<i> qVar) {
        this.Q = qVar;
        x0();
        return this;
    }

    public u<i> F2() {
        return this.Y;
    }

    public i F3(u<i> uVar) {
        this.Y = uVar;
        return this;
    }

    public x<i> G2() {
        x<i> xVar = this.X;
        return xVar == null ? new f() : xVar;
    }

    public i G3(x<i> xVar) {
        this.X = xVar;
        return this;
    }

    public int H2() {
        return this.f73918r1;
    }

    public i H3(boolean z10) {
        this.W = z10;
        x0();
        return this;
    }

    public float I2() {
        return this.f73911i1;
    }

    public i I3(int i10) {
        this.f73918r1 = i10;
        x0();
        return this;
    }

    public int J2() {
        return this.f73901a2;
    }

    public i J3(float f10) {
        this.f73911i1 = f10;
        x0();
        return this;
    }

    public CharSequence K2() {
        List<CharSequence> list = this.R;
        return list == null ? "" : list.get(this.f73901a2);
    }

    public i K3(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    public i L3(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    public int M2() {
        return this.Z;
    }

    public i M3(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    public void N2() {
        this.F = true;
        this.f73913j2 = false;
        if (C() != null) {
            C().setVisibility(8);
        }
    }

    public i N3(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    public void O2() {
        this.f73913j2 = true;
        this.F = true;
        if (s2() != null) {
            s2().e().a(this.M, s2().f73929c);
            BaseDialog.E0(new g(), s2().g(null));
        }
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: O3, reason: merged with bridge method [inline-methods] */
    public i L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    public boolean P2(int i10) {
        return (this.R1 & i10) == i10;
    }

    public i P3(int i10) {
        this.Z = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    protected void Q0() {
    }

    public boolean Q2() {
        return this.T;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: Q3, reason: merged with bridge method [inline-methods] */
    public i M0() {
        if (this.F && C() != null && this.f74071r) {
            if (!this.f73913j2 || s2() == null) {
                C().setVisibility(0);
            } else {
                s2().f73929c.clearAnimation();
                C().setVisibility(0);
                s2().f73928b.animate().alpha(1.0f);
                s2().e().b(this.M, s2().f73929c);
            }
            return this;
        }
        super.e();
        if (C() == null) {
            int iC = i0() ? R.layout.layout_dialogx_popmenu_material : R.layout.layout_dialogx_popmenu_material_dark;
            if (T().j() != null && T().j().c(i0()) != 0) {
                iC = T().j().c(i0());
            }
            View viewM = m(iC);
            this.U = new h(viewM);
            if (viewM != null) {
                viewM.setTag(this.M);
            }
            BaseDialog.O0(viewM);
        } else {
            BaseDialog.O0(C());
        }
        if (W1() != null) {
            ViewTreeObserver viewTreeObserver = W1().getViewTreeObserver();
            this.f73905d2 = viewTreeObserver;
            a aVar = new a();
            this.f73906e2 = aVar;
            viewTreeObserver.addOnDrawListener(aVar);
        }
        return this;
    }

    public boolean R2() {
        return this.N;
    }

    public i R3(Activity activity) {
        if (this.F && C() != null && this.f74071r) {
            if (!this.f73913j2 || s2() == null) {
                C().setVisibility(0);
            } else {
                s2().f73929c.clearAnimation();
                C().setVisibility(0);
                s2().f73928b.animate().alpha(1.0f);
                s2().e().b(this.M, s2().f73929c);
            }
            return this;
        }
        super.e();
        if (C() == null) {
            int iC = i0() ? R.layout.layout_dialogx_popmenu_material : R.layout.layout_dialogx_popmenu_material_dark;
            if (T().j() != null && T().j().c(i0()) != 0) {
                iC = T().j().c(i0());
            }
            View viewM = m(iC);
            this.U = new h(viewM);
            if (viewM != null) {
                viewM.setTag(this.M);
            }
            BaseDialog.N0(activity, viewM);
        } else {
            BaseDialog.N0(activity, C());
        }
        if (W1() != null) {
            ViewTreeObserver viewTreeObserver = W1().getViewTreeObserver();
            this.f73905d2 = viewTreeObserver;
            b bVar = new b();
            this.f73906e2 = bVar;
            viewTreeObserver.addOnDrawListener(bVar);
        }
        return this;
    }

    public boolean S2(int i10) {
        Boolean bool = this.f73919v1.get(Integer.valueOf(i10));
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean T2() {
        return this.f73907f1;
    }

    public boolean U2() {
        return this.W;
    }

    public i V2(com.kongzue.dialogx.interfaces.i<i> iVar) {
        this.f74066m = iVar;
        return this;
    }

    protected View W1() {
        WeakReference<View> weakReference = this.V;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    protected void W2(i iVar) {
    }

    protected i X1(View view) {
        WeakReference<View> weakReference;
        if (view != null || (weakReference = this.V) == null) {
            this.V = new WeakReference<>(view);
        } else {
            weakReference.clear();
            this.V = null;
        }
        return this;
    }

    public i X2(com.kongzue.dialogx.interfaces.i<i> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    public i Y1(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    protected void Y2(i iVar) {
    }

    public i Z1() {
        L0(F());
        return this;
    }

    public i a3() {
        this.O.clean();
        x0();
        return this;
    }

    public i c2(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    public i c3(int i10, com.kongzue.dialogx.interfaces.i<i> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    public i d2() {
        this.f74069p.clear();
        return this;
    }

    public i d3(int i10) {
        this.R1 = i10;
        Z2();
        return this;
    }

    public i e2() {
        List<CharSequence> list = this.R;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .disableAllMenu()执行失败，请先初始化菜单项 menuList");
        } else {
            for (int i10 = 0; i10 < this.R.size(); i10++) {
                this.f73919v1.put(Integer.valueOf(i10), Boolean.FALSE);
            }
        }
        return this;
    }

    public i e3(boolean z10) {
        this.T = z10;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        return true;
    }

    public i f2(int... iArr) {
        for (int i10 : iArr) {
            this.f73919v1.put(Integer.valueOf(i10), Boolean.FALSE);
        }
        return this;
    }

    public i f3(@ColorInt int i10) {
        this.f74075v = Integer.valueOf(i10);
        x0();
        return this;
    }

    public i g2(CharSequence... charSequenceArr) {
        List<CharSequence> list = this.R;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .disableMenu(" + charSequenceArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (CharSequence charSequence : charSequenceArr) {
                this.f73919v1.put(Integer.valueOf(this.R.indexOf(charSequence)), Boolean.FALSE);
            }
        }
        return this;
    }

    public i g3(@ColorRes int i10) {
        this.f74075v = Integer.valueOf(v(i10));
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        i2();
    }

    public i h2(String... strArr) {
        List<CharSequence> list = this.R;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .disableMenu(" + strArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (String str : strArr) {
                this.f73919v1.put(Integer.valueOf(this.R.indexOf(str)), Boolean.FALSE);
            }
        }
        return this;
    }

    public i h3(View view) {
        X1(view);
        x0();
        return this;
    }

    public void i2() {
        this.f73912i2 = true;
        BaseDialog.C0(new c());
    }

    public i i3(boolean z10) {
        this.N = z10;
        return this;
    }

    public i j2() {
        this.f73919v1.clear();
        return this;
    }

    public i j3(r<i> rVar) {
        this.O = rVar;
        x0();
        return this;
    }

    public i k2(int... iArr) {
        for (int i10 : iArr) {
            this.f73919v1.put(Integer.valueOf(i10), Boolean.TRUE);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: k3, reason: merged with bridge method [inline-methods] */
    public i F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    public i l2(CharSequence... charSequenceArr) {
        List<CharSequence> list = this.R;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .enableMenu(" + charSequenceArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (CharSequence charSequence : charSequenceArr) {
                this.f73919v1.put(Integer.valueOf(this.R.indexOf(charSequence)), Boolean.TRUE);
            }
        }
        return this;
    }

    public i l3(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    public i m2(String... strArr) {
        List<CharSequence> list = this.R;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .enableMenu(" + strArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (String str : strArr) {
                this.f73919v1.put(Integer.valueOf(this.R.indexOf(str)), Boolean.TRUE);
            }
        }
        return this;
    }

    public i m3(com.kongzue.dialogx.interfaces.f<i> fVar) {
        this.P = fVar;
        if (this.f74071r) {
            fVar.b(this.M);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public int n2() {
        return this.R1;
    }

    public i n3(com.kongzue.dialogx.interfaces.g<i> gVar) {
        this.f73914l1 = gVar;
        return this;
    }

    public int o2() {
        return this.f74075v.intValue();
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: o3, reason: merged with bridge method [inline-methods] */
    public i I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    public View p2() {
        return W1();
    }

    public i p3(boolean z10) {
        this.f74057d = z10 ? 1 : 0;
        return this;
    }

    public i q3(int i10) {
        this.f73915p0 = i10;
        x0();
        return this;
    }

    public View r2() {
        r<i> rVar = this.O;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    public i r3(List<Integer> list) {
        this.S = list;
        x0();
        return this;
    }

    public h s2() {
        return this.U;
    }

    public i s3(int... iArr) {
        if (this.S == null) {
            this.S = new ArrayList();
        }
        for (int i10 : iArr) {
            this.S.add(Integer.valueOf(i10));
        }
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.f<i> t2() {
        com.kongzue.dialogx.interfaces.f<i> fVar = this.P;
        return fVar == null ? new e() : fVar;
    }

    public i t3(com.kongzue.dialogx.util.k kVar) {
        this.L1 = kVar;
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.g<i> u2() {
        return this.f73914l1;
    }

    public i u3(List<CharSequence> list) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(list);
        x0();
        return this;
    }

    public int v2() {
        return this.f73915p0;
    }

    public i v3(CharSequence[] charSequenceArr) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(Arrays.asList(charSequenceArr));
        x0();
        return this;
    }

    public int w2(int i10) {
        List<Integer> list = this.S;
        if (list == null || i10 < 0 || i10 >= list.size()) {
            return 0;
        }
        return this.S.get(i10).intValue();
    }

    public i w3(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(Arrays.asList(strArr));
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void x0() {
        if (s2() == null) {
            return;
        }
        BaseDialog.C0(new d());
    }

    public List<Integer> x2() {
        return this.S;
    }

    public i x3(com.kongzue.dialogx.interfaces.m<i> mVar) {
        this.f73917q1 = mVar;
        return this;
    }

    public com.kongzue.dialogx.util.k y2() {
        return this.L1;
    }

    public i y3(TextInfo textInfo) {
        this.f73902b1 = textInfo;
        return this;
    }

    public List<CharSequence> z2() {
        return this.R;
    }

    public i z3(int... iArr) {
        this.R = Arrays.asList(L2(iArr));
        this.f73908f2 = null;
        x0();
        return this;
    }

    public i(View view, List<CharSequence> list) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(list);
        X1(view);
    }

    public i(View view, CharSequence[] charSequenceArr) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(Arrays.asList(charSequenceArr));
        X1(view);
    }

    public i(List<CharSequence> list) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(list);
    }

    public i(CharSequence... charSequenceArr) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(Arrays.asList(charSequenceArr));
    }

    public i(String... strArr) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(Arrays.asList(strArr));
    }

    public i(r<i> rVar) {
        this.O = rVar;
    }

    public i(View view, r<i> rVar) {
        X1(view);
        this.O = rVar;
    }

    public i(View view, List<CharSequence> list, r<i> rVar) {
        X1(view);
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(list);
        this.O = rVar;
    }

    public i(View view, CharSequence[] charSequenceArr, r<i> rVar) {
        X1(view);
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(Arrays.asList(charSequenceArr));
        this.O = rVar;
    }

    public i(List<CharSequence> list, r<i> rVar) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(list);
        this.O = rVar;
    }

    public i(CharSequence[] charSequenceArr, r<i> rVar) {
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(Arrays.asList(charSequenceArr));
        this.O = rVar;
    }
}
