package com.kongzue.dialogx.dialogs;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
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
import com.kongzue.dialogx.interfaces.a0;
import com.kongzue.dialogx.interfaces.r;
import com.kongzue.dialogx.interfaces.t;
import com.kongzue.dialogx.interfaces.z;
import com.kongzue.dialogx.util.TextInfo;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public class l extends BaseDialog implements com.kongzue.dialogx.interfaces.o {

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    public static final int f73947d2 = -1;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    protected static List<l> f73948e2 = null;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    public static long f73949f2 = -1;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    public static long f73950g2 = -1;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    public static int f73951h2 = 0;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    public static int f73952i2 = 0;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    public static int f73953j2 = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    public static a0<l> f73954k2;
    protected r<l> M;
    protected com.kongzue.dialogx.interfaces.f<l> N;
    protected h P;
    protected DialogXStyle.PopNotificationSettings.ALIGN S;
    protected t<l> T;
    protected t<l> U;
    protected Timer V1;
    protected BaseDialog.BOOLEAN W;
    protected com.kongzue.dialogx.interfaces.g<l> Y;
    protected int Z;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    protected Drawable f73956b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private float f73957b2;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    protected CharSequence f73959f1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    protected CharSequence f73960i1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    protected CharSequence f73961l1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    protected Bitmap f73962p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    protected int f73963p1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    protected TextInfo f73965r1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    protected TextInfo f73966v1;
    protected l O = this;
    protected int Q = 0;
    protected int R = 0;
    protected boolean V = true;
    protected float X = DialogX.S;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    protected boolean f73964q1 = true;
    protected TextInfo L1 = new TextInfo().j(true);
    protected int[] R1 = {-1, -1, -1, -1};

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    protected long f73955a2 = Long.MIN_VALUE;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    protected boolean f73958c2 = false;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            l.this.e2();
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ float f73968b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f73969c;

        b(float f10, float f11) {
            this.f73968b = f10;
            this.f73969c = f11;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (l.this.k2() == null || !((BaseDialog) l.this).f74071r) {
                valueAnimator.cancel();
                return;
            }
            ViewGroup viewGroup = l.this.k2().f73979b;
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float f10 = this.f73968b - this.f73969c;
            a0<l> a0Var = l.f73954k2;
            if (a0Var != null) {
                List<l> list = l.f73948e2;
                int iIndexOf = list == null ? 0 : list.indexOf(l.this.O);
                l lVar = l.this.O;
                float f11 = this.f73969c;
                if (a0Var.a(iIndexOf, lVar, viewGroup, f11, this.f73968b, Math.max(0.0f, Math.min(1.0f, f10 == 0.0f ? 1.0f : (fFloatValue - f11) / f10)), valueAnimator, l.f73948e2 == null ? 1 : l.this.d2(), true)) {
                    return;
                }
            }
            if (viewGroup == null || !viewGroup.isAttachedToWindow()) {
                return;
            }
            viewGroup.setY(l.this.f73957b2 = fFloatValue);
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ float f73971b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f73972c;

        c(float f10, float f11) {
            this.f73971b = f10;
            this.f73972c = f11;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (l.this.k2() == null || !((BaseDialog) l.this).f74071r) {
                valueAnimator.cancel();
                return;
            }
            ViewGroup viewGroup = l.this.k2().f73979b;
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float f10 = this.f73971b - this.f73972c;
            a0<l> a0Var = l.f73954k2;
            if (a0Var != null) {
                List<l> list = l.f73948e2;
                int iIndexOf = list == null ? 0 : list.indexOf(l.this.O);
                l lVar = l.this.O;
                float f11 = this.f73972c;
                if (a0Var.a(iIndexOf, lVar, viewGroup, f11, this.f73971b, Math.max(0.0f, Math.min(1.0f, f10 == 0.0f ? 1.0f : (fFloatValue - f11) / f10)), valueAnimator, l.f73948e2 == null ? 1 : l.this.d2(), false)) {
                    return;
                }
            }
            if (viewGroup == null || !viewGroup.isAttachedToWindow()) {
                return;
            }
            viewGroup.setY(l.this.f73957b2 = fFloatValue);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = l.this.P;
            if (hVar != null) {
                hVar.b();
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = l.this.P;
            if (hVar == null) {
                return;
            }
            hVar.a(null);
        }
    }

    class f extends com.kongzue.dialogx.interfaces.f<l> {
        f() {
        }
    }

    static /* synthetic */ class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f73977a;

        static {
            int[] iArr = new int[DialogXStyle.PopNotificationSettings.ALIGN.values().length];
            f73977a = iArr;
            try {
                iArr[DialogXStyle.PopNotificationSettings.ALIGN.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73977a[DialogXStyle.PopNotificationSettings.ALIGN.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73977a[DialogXStyle.PopNotificationSettings.ALIGN.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73977a[DialogXStyle.PopNotificationSettings.ALIGN.TOP_INSIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f73977a[DialogXStyle.PopNotificationSettings.ALIGN.BOTTOM_INSIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public class h implements com.kongzue.dialogx.interfaces.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public DialogXBaseRelativeLayout f73978a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ViewGroup f73979b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f73980c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f73981d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f73982e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f73983f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public RelativeLayout f73984g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private List<View> f73985h;

        class a implements Runnable {

            /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.l$h$a$a, reason: collision with other inner class name */
            class RunnableC0773a implements Runnable {
                RunnableC0773a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    l.this.n4();
                }
            }

            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                com.kongzue.dialogx.interfaces.g<l> gVarD = h.this.d();
                h hVar = h.this;
                gVarD.a(l.this.O, hVar.f73979b);
                l.this.f73958c2 = true;
                BaseDialog.E0(new RunnableC0773a(), h.this.f(null));
                List<l> list = l.f73948e2;
                if (list != null) {
                    int iIndexOf = list.indexOf(l.this.O);
                    for (int i10 = 0; i10 < iIndexOf; i10++) {
                        l.f73948e2.get(i10).N2(h.this.f73979b.getHeight());
                    }
                }
            }
        }

        class b extends com.kongzue.dialogx.interfaces.g<l> {
            b() {
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void a(l lVar, ViewGroup viewGroup) {
                Context context = BaseDialog.u() == null ? h.this.f73978a.getContext() : BaseDialog.u();
                int i10 = l.this.R;
                if (i10 == 0) {
                    i10 = R.anim.anim_dialogx_notification_exit;
                }
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, i10);
                long jF = h.this.f(animationLoadAnimation);
                animationLoadAnimation.setDuration(jF);
                animationLoadAnimation.setFillAfter(true);
                h.this.f73979b.startAnimation(animationLoadAnimation);
                h.this.f73978a.animate().alpha(0.0f).setInterpolator(new AccelerateInterpolator()).setDuration(jF);
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(l lVar, ViewGroup viewGroup) {
                Context contextU = BaseDialog.u();
                int i10 = l.this.Q;
                if (i10 == 0) {
                    i10 = R.anim.anim_dialogx_notification_enter;
                }
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(contextU, i10);
                long jE = h.this.e(animationLoadAnimation);
                animationLoadAnimation.setInterpolator(new DecelerateInterpolator(2.0f));
                animationLoadAnimation.setDuration(jE);
                animationLoadAnimation.setFillAfter(true);
                h.this.f73979b.startAnimation(animationLoadAnimation);
                h.this.f73978a.animate().setDuration(jE).alpha(1.0f).setInterpolator(new DecelerateInterpolator()).setListener(null);
            }
        }

        class c extends DialogXBaseRelativeLayout.c {
            c() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void a() {
                List<l> list = l.f73948e2;
                if (list != null) {
                    list.remove(l.this);
                    if (l.f73948e2.isEmpty()) {
                        l.f73948e2 = null;
                    }
                }
                Timer timer = l.this.V1;
                if (timer != null) {
                    timer.cancel();
                }
                ((BaseDialog) l.this).f74071r = false;
                l.this.l2().a(l.this.O);
                l lVar = l.this;
                lVar.Q2(lVar.O);
                l.this.J0(Lifecycle.State.DESTROYED);
                l.this.P = null;
                System.gc();
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void b() {
                ((BaseDialog) l.this).f74071r = true;
                ((BaseDialog) l.this).E = false;
                l.this.J0(Lifecycle.State.CREATED);
                h.this.f73978a.setAlpha(0.0f);
                l.this.s0();
                l.this.l2().b(l.this.O);
                l lVar = l.this;
                lVar.S2(lVar.O);
            }
        }

        class d implements z {
            d() {
            }

            @Override // com.kongzue.dialogx.interfaces.z
            public void a(Rect rect) {
                float f10;
                h hVar = h.this;
                l lVar = l.this;
                DialogXStyle.PopNotificationSettings.ALIGN align = lVar.S;
                if (align != DialogXStyle.PopNotificationSettings.ALIGN.TOP) {
                    if (align == DialogXStyle.PopNotificationSettings.ALIGN.TOP_INSIDE) {
                        hVar.f73979b.setPadding(0, rect.top, 0, 0);
                    }
                } else {
                    ViewGroup viewGroup = hVar.f73979b;
                    if (lVar.f73957b2 <= 0.0f) {
                        l lVar2 = l.this;
                        f10 = lVar2.f73957b2 = rect.top + lVar2.R1[1];
                    } else {
                        f10 = l.this.f73957b2;
                    }
                    viewGroup.setY(f10);
                }
            }
        }

        class e implements DialogXBaseRelativeLayout.d {
            e() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.d
            public boolean onBackPressed() {
                return false;
            }
        }

        class f implements Runnable {
            f() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Integer numW;
                Float fD;
                com.kongzue.dialogx.interfaces.g<l> gVarD = h.this.d();
                h hVar = h.this;
                gVarD.b(l.this.O, hVar.f73979b);
                if (!DialogX.f73601m && l.f73948e2 != null) {
                    for (int i10 = 0; i10 < l.f73948e2.size() - 1; i10++) {
                        l.f73948e2.get(i10).M2(h.this.f73979b.getHeight());
                    }
                }
                if (l.this.T().k() == null || l.this.T().k().b() == null || !l.this.T().k().b().a()) {
                    numW = null;
                    fD = null;
                } else {
                    if (((BaseDialog) l.this).f74075v == null) {
                        l lVar = l.this;
                        numW = lVar.w(lVar.G(Integer.valueOf(lVar.T().k().b().c(l.this.i0()))));
                    } else {
                        numW = ((BaseDialog) l.this).f74075v;
                    }
                    l lVar2 = l.this;
                    fD = lVar2.D(Float.valueOf(lVar2.T().k().b().b()));
                }
                if (h.this.f73985h != null) {
                    Iterator it2 = h.this.f73985h.iterator();
                    while (it2.hasNext()) {
                        com.kongzue.dialogx.interfaces.b bVar = (com.kongzue.dialogx.interfaces.b) ((View) it2.next());
                        bVar.b(((BaseDialog) l.this).f74075v == null ? numW : ((BaseDialog) l.this).f74075v);
                        bVar.a(fD);
                    }
                }
                l.this.J0(Lifecycle.State.RESUMED);
            }
        }

        class g implements View.OnClickListener {
            g() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseDialog) l.this).D) {
                    BaseDialog.n0("skip click @ A");
                    return;
                }
                l.this.Z(view);
                l lVar = l.this;
                t<l> tVar = lVar.U;
                if (tVar == null) {
                    lVar.e2();
                } else {
                    if (tVar.a(lVar.O, view)) {
                        return;
                    }
                    l.this.e2();
                }
            }
        }

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.l$h$h, reason: collision with other inner class name */
        class ViewOnClickListenerC0774h implements View.OnClickListener {
            ViewOnClickListenerC0774h() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseDialog) l.this).D) {
                    return;
                }
                l.this.Z(view);
                h hVar = h.this;
                l lVar = l.this;
                t<l> tVar = lVar.T;
                if (tVar == null) {
                    hVar.a(view);
                } else {
                    if (tVar.a(lVar.O, view)) {
                        return;
                    }
                    h.this.a(view);
                }
            }
        }

        class i extends ViewOutlineProvider {
            i() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), l.this.X);
            }
        }

        class j implements View.OnTouchListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f73997b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            float f73998c;

            class a implements ValueAnimator.AnimatorUpdateListener {
                a() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (l.this.k2() == null || !((BaseDialog) l.this).f74071r) {
                        valueAnimator.cancel();
                        return;
                    }
                    ViewGroup viewGroup = l.this.k2().f73979b;
                    if (viewGroup == null || !viewGroup.isAttachedToWindow()) {
                        return;
                    }
                    viewGroup.setY(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }

            j() {
            }

            /* JADX WARN: Code duplicated, block: B:16:0x004e  */
            /* JADX WARN: Code duplicated, block: B:18:0x0066  */
            /* JADX WARN: Code duplicated, block: B:19:0x006d  */
            /* JADX WARN: Code duplicated, block: B:21:0x00a5  */
            /* JADX WARN: Code duplicated, block: B:22:0x00a8  */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                long j10;
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f73997b = true;
                    this.f73998c = motionEvent.getY();
                } else if (action == 1) {
                    if (h.this.f73979b.getY() < l.this.f73957b2 - DialogX.J) {
                        h.this.a(view);
                    } else {
                        com.kongzue.dialogx.util.o oVarC = com.kongzue.dialogx.util.o.c(h.this.f73979b.getY(), l.this.f73957b2);
                        h.this.f73979b.setTag(oVarC);
                        oVarC.addUpdateListener(new a());
                        if (((BaseDialog) l.this).f74076w == -1) {
                            j10 = 300;
                        } else {
                            j10 = ((BaseDialog) l.this).f74076w;
                        }
                        oVarC.setDuration(j10).setInterpolator(new DecelerateInterpolator(2.0f));
                        oVarC.start();
                        if (Math.abs(h.this.f73979b.getY() - l.this.f73957b2) <= 1.0f && motionEvent.getY() <= this.f73998c) {
                            h.this.f73979b.callOnClick();
                        }
                    }
                } else if (action != 2) {
                    if (action == 3) {
                        if (h.this.f73979b.getY() < l.this.f73957b2 - DialogX.J) {
                            h.this.a(view);
                        } else {
                            com.kongzue.dialogx.util.o oVarC2 = com.kongzue.dialogx.util.o.c(h.this.f73979b.getY(), l.this.f73957b2);
                            h.this.f73979b.setTag(oVarC2);
                            oVarC2.addUpdateListener(new a());
                            if (((BaseDialog) l.this).f74076w == -1) {
                                j10 = 300;
                            } else {
                                j10 = ((BaseDialog) l.this).f74076w;
                            }
                            oVarC2.setDuration(j10).setInterpolator(new DecelerateInterpolator(2.0f));
                            oVarC2.start();
                            if (Math.abs(h.this.f73979b.getY() - l.this.f73957b2) <= 1.0f) {
                                h.this.f73979b.callOnClick();
                            }
                        }
                    }
                } else if (this.f73997b) {
                    float y10 = motionEvent.getY() - this.f73998c;
                    if (h.this.f73979b.getY() + y10 < l.this.f73957b2) {
                        ViewGroup viewGroup = h.this.f73979b;
                        viewGroup.setY(viewGroup.getY() + y10);
                    } else {
                        h hVar = h.this;
                        hVar.f73979b.setY(l.this.f73957b2);
                    }
                }
                return true;
            }
        }

        class k implements View.OnTouchListener {
            k() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return false;
            }
        }

        public h(View view) {
            if (view == null) {
                return;
            }
            l.this.H0(view);
            this.f73978a = (DialogXBaseRelativeLayout) view.findViewById(R.id.box_root);
            this.f73979b = (ViewGroup) view.findViewById(R.id.box_body);
            this.f73980c = (ImageView) view.findViewById(R.id.img_dialogx_pop_icon);
            this.f73981d = (TextView) view.findViewById(R.id.txt_dialogx_pop_title);
            this.f73982e = (TextView) view.findViewById(R.id.txt_dialogx_pop_message);
            this.f73983f = (TextView) view.findViewById(R.id.txt_dialogx_button);
            this.f73984g = (RelativeLayout) view.findViewById(R.id.box_custom);
            this.f73985h = l.this.s(view);
            init();
            l.this.P = this;
            b();
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void a(View view) {
            BaseDialog baseDialog = l.this;
            if (baseDialog.t0(baseDialog)) {
                return;
            }
            if (view != null) {
                view.setEnabled(false);
            }
            if (((BaseDialog) l.this).D || this.f73978a == null) {
                return;
            }
            ((BaseDialog) l.this).D = true;
            this.f73984g.setVisibility(8);
            this.f73979b.setFocusable(false);
            this.f73979b.setClickable(false);
            this.f73979b.setOnTouchListener(new k());
            this.f73983f.setFocusable(false);
            this.f73983f.setClickable(false);
            this.f73978a.post(new a());
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void b() {
            GradientDrawable gradientDrawable;
            DialogXBaseRelativeLayout dialogXBaseRelativeLayout = this.f73978a;
            if (dialogXBaseRelativeLayout == null) {
                return;
            }
            dialogXBaseRelativeLayout.setRootPadding(((BaseDialog) l.this).C[0], ((BaseDialog) l.this).C[1], ((BaseDialog) l.this).C[2], ((BaseDialog) l.this).C[3]);
            if (((BaseDialog) l.this).f74075v != null) {
                l lVar = l.this;
                lVar.R0(this.f73979b, ((BaseDialog) lVar).f74075v.intValue());
                List<View> list = this.f73985h;
                if (list != null) {
                    Iterator<View> it2 = list.iterator();
                    while (it2.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) ((View) it2.next())).b(((BaseDialog) l.this).f74075v);
                    }
                }
            }
            r<l> rVar = l.this.M;
            if (rVar == null || rVar.getCustomView() == null) {
                this.f73984g.setVisibility(8);
            } else {
                l lVar2 = l.this;
                lVar2.M.bindParent(this.f73984g, lVar2.O);
                this.f73984g.setVisibility(0);
            }
            if (l.this.X > -1.0f) {
                if ((this.f73979b.getBackground() instanceof GradientDrawable) && (gradientDrawable = (GradientDrawable) this.f73979b.getBackground()) != null) {
                    gradientDrawable.setCornerRadius(l.this.X);
                }
                this.f73979b.setOutlineProvider(new i());
                this.f73979b.setClipToOutline(true);
                List<View> list2 = this.f73985h;
                if (list2 != null) {
                    Iterator<View> it3 = list2.iterator();
                    while (it3.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) ((View) it3.next())).a(Float.valueOf(l.this.X));
                    }
                }
            }
            l lVar3 = l.this;
            lVar3.P0(this.f73981d, lVar3.f73959f1);
            l lVar4 = l.this;
            lVar4.P0(this.f73982e, lVar4.f73960i1);
            l lVar5 = l.this;
            lVar5.P0(this.f73983f, lVar5.f73961l1);
            BaseDialog.S0(this.f73981d, l.this.f73965r1);
            BaseDialog.S0(this.f73982e, l.this.f73966v1);
            BaseDialog.S0(this.f73983f, l.this.L1);
            Bitmap bitmap = l.this.f73962p0;
            if (bitmap == null || bitmap.isRecycled()) {
                l lVar6 = l.this;
                if (lVar6.f73956b1 != null) {
                    this.f73980c.setVisibility(0);
                    this.f73980c.setImageDrawable(l.this.f73956b1);
                } else if (lVar6.Z != 0) {
                    this.f73980c.setVisibility(0);
                    this.f73980c.setImageResource(l.this.Z);
                } else {
                    this.f73980c.setVisibility(8);
                }
            } else {
                this.f73980c.setVisibility(0);
                this.f73980c.setImageBitmap(l.this.f73962p0);
            }
            l lVar7 = l.this;
            if (lVar7.W == BaseDialog.BOOLEAN.TRUE && lVar7.V) {
                this.f73980c.setImageTintList(this.f73981d.getTextColors());
            } else {
                this.f73980c.setImageTintList(null);
            }
            if (l.this.f73963p1 > 0) {
                ViewGroup.LayoutParams layoutParams = this.f73980c.getLayoutParams();
                int i10 = l.this.f73963p1;
                layoutParams.width = i10;
                layoutParams.height = i10;
                this.f73980c.setLayoutParams(layoutParams);
            }
            if (l.this.f73964q1) {
                this.f73979b.setOnTouchListener(new j());
            } else {
                this.f73979b.setOnTouchListener(null);
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f73979b.getLayoutParams();
            int[] iArr = l.this.R1;
            int i11 = iArr[0];
            if (i11 != -1) {
                layoutParams2.leftMargin = i11;
            }
            int i12 = iArr[1];
            if (i12 != -1) {
                layoutParams2.topMargin = i12;
            }
            int i13 = iArr[2];
            if (i13 != -1) {
                layoutParams2.rightMargin = i13;
            }
            int i14 = iArr[3];
            if (i14 != -1) {
                layoutParams2.bottomMargin = i14;
            }
            this.f73979b.setLayoutParams(layoutParams2);
            l.this.r0();
        }

        protected com.kongzue.dialogx.interfaces.g<l> d() {
            l lVar = l.this;
            if (lVar.Y == null) {
                lVar.Y = new b();
            }
            return l.this.Y;
        }

        public long e(@Nullable Animation animation) {
            if (animation == null && this.f73979b.getAnimation() != null) {
                animation = this.f73979b.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 300L : animation.getDuration();
            long j10 = l.f73949f2;
            if (j10 >= 0) {
                duration = j10;
            }
            return ((BaseDialog) l.this).f74076w >= 0 ? ((BaseDialog) l.this).f74076w : duration;
        }

        public long f(@Nullable Animation animation) {
            if (animation == null && this.f73979b.getAnimation() != null) {
                animation = this.f73979b.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 300L : animation.getDuration();
            long j10 = l.f73950g2;
            if (j10 >= 0) {
                duration = j10;
            }
            return ((BaseDialog) l.this).f74077x != -1 ? ((BaseDialog) l.this).f74077x : duration;
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void init() {
            l lVar = l.this;
            if (lVar.f73965r1 == null) {
                lVar.f73965r1 = DialogX.f73604p;
            }
            if (lVar.f73966v1 == null) {
                lVar.f73966v1 = DialogX.f73605q;
            }
            if (lVar.L1 == null) {
                lVar.L1 = DialogX.f73602n;
            }
            if (((BaseDialog) lVar).f74075v == null) {
                ((BaseDialog) l.this).f74075v = DialogX.f73610v;
            }
            l.this.C().setTranslationZ(l.this.W());
            l lVar2 = l.this;
            if (lVar2.V1 == null) {
                lVar2.m4();
            }
            this.f73978a.setClickable(false);
            this.f73978a.setFocusable(false);
            this.f73978a.p(l.this.O);
            this.f73978a.j(false);
            this.f73978a.n(new c());
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f73979b.getLayoutParams();
            l lVar3 = l.this;
            if (lVar3.S == null) {
                lVar3.S = DialogXStyle.PopNotificationSettings.ALIGN.TOP;
            }
            int i10 = g.f73977a[lVar3.S.ordinal()];
            if (i10 == 1) {
                layoutParams.removeRule(13);
                layoutParams.addRule(10);
            } else if (i10 == 2) {
                layoutParams.removeRule(13);
                layoutParams.addRule(12);
                this.f73978a.j(true);
            } else if (i10 == 3) {
                layoutParams.removeRule(10);
                layoutParams.removeRule(12);
                layoutParams.addRule(13);
            }
            this.f73979b.setLayoutParams(layoutParams);
            this.f73978a.o(new d());
            this.f73978a.m(new e());
            this.f73978a.post(new f());
            this.f73979b.setOnClickListener(new g());
            this.f73983f.setOnClickListener(new ViewOnClickListenerC0774h());
            l.this.q0();
        }
    }

    protected l() {
    }

    private boolean K2() {
        return this.f73955a2 == Long.MIN_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:30:0x0080  */
    /* JADX WARN: Code duplicated, block: B:36:0x0090  */
    /* JADX WARN: Code duplicated, block: B:38:0x0094  */
    /* JADX WARN: Code duplicated, block: B:39:0x0096  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e3  */
    public void M2(int i10) {
        float f10;
        float fB;
        a0<l> a0Var;
        long j10;
        List<l> list;
        int iIndexOf;
        List<l> list2;
        int size;
        float paddingTop;
        if (k2() == null || k2().f73979b == null) {
            return;
        }
        ViewGroup viewGroup = k2().f73979b;
        if (k2() == null || viewGroup == null) {
            return;
        }
        if (this.f74072s.k() != null) {
            this.S = this.f74072s.k().a();
        }
        if (this.S == null) {
            this.S = DialogXStyle.PopNotificationSettings.ALIGN.TOP;
        }
        float y10 = viewGroup.getY();
        if (viewGroup.getTag() instanceof com.kongzue.dialogx.util.o) {
            ((com.kongzue.dialogx.util.o) viewGroup.getTag()).end();
            y10 = ((com.kongzue.dialogx.util.o) viewGroup.getTag()).a();
        }
        int i11 = g.f73977a[this.S.ordinal()];
        if (i11 != 1) {
            if (i11 == 2 || i11 == 3) {
                paddingTop = i10 * 1.1f;
                f10 = y10 - paddingTop;
            } else if (i11 == 4) {
                y10 += i10;
                paddingTop = viewGroup.getPaddingTop();
                f10 = y10 - paddingTop;
            } else if (i11 != 5) {
                fB = 0.0f;
            } else {
                paddingTop = i10 * 1.1f;
                f10 = y10 - paddingTop;
            }
            a0Var = f73954k2;
            if (a0Var != null) {
                list = f73948e2;
                if (list == null) {
                    iIndexOf = 0;
                } else {
                    iIndexOf = list.indexOf(this.O);
                }
                l lVar = this.O;
                float y11 = viewGroup.getY();
                int height = (int) (viewGroup.getHeight() / viewGroup.getScaleY());
                list2 = f73948e2;
                if (list2 == null) {
                    size = 1;
                } else {
                    size = list2.size();
                }
                fB = a0Var.b(iIndexOf, lVar, y11, fB, height, size, true);
            }
            float y12 = viewGroup.getY();
            com.kongzue.dialogx.util.o oVarC = com.kongzue.dialogx.util.o.c(viewGroup.getY(), fB);
            viewGroup.setTag(oVarC);
            oVarC.addUpdateListener(new b(fB, y12));
            j10 = this.f74076w;
            if (j10 == -1) {
                j10 = 300;
            }
            oVarC.setDuration(j10).setInterpolator(new DecelerateInterpolator(2.0f));
            oVarC.start();
        }
        f10 = (i10 * 1.1f) + y10;
        fB = f10;
        a0Var = f73954k2;
        if (a0Var != null) {
            list = f73948e2;
            if (list == null) {
                iIndexOf = 0;
            } else {
                iIndexOf = list.indexOf(this.O);
            }
            l lVar2 = this.O;
            float y13 = viewGroup.getY();
            int height2 = (int) (viewGroup.getHeight() / viewGroup.getScaleY());
            list2 = f73948e2;
            if (list2 == null) {
                size = 1;
            } else {
                size = list2.size();
            }
            fB = a0Var.b(iIndexOf, lVar2, y13, fB, height2, size, true);
        }
        float y14 = viewGroup.getY();
        com.kongzue.dialogx.util.o oVarC2 = com.kongzue.dialogx.util.o.c(viewGroup.getY(), fB);
        viewGroup.setTag(oVarC2);
        oVarC2.addUpdateListener(new b(fB, y14));
        j10 = this.f74076w;
        if (j10 == -1) {
            j10 = 300;
        }
        oVarC2.setDuration(j10).setInterpolator(new DecelerateInterpolator(2.0f));
        oVarC2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:30:0x0080  */
    /* JADX WARN: Code duplicated, block: B:36:0x0090  */
    /* JADX WARN: Code duplicated, block: B:38:0x0094  */
    /* JADX WARN: Code duplicated, block: B:39:0x0096  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00df  */
    public void N2(int i10) {
        float f10;
        float fB;
        a0<l> a0Var;
        long j10;
        List<l> list;
        int iIndexOf;
        List<l> list2;
        int size;
        float paddingTop;
        if (k2() == null || k2().f73979b == null) {
            return;
        }
        ViewGroup viewGroup = k2().f73979b;
        if (k2() == null || viewGroup == null) {
            return;
        }
        if (this.f74072s.k() != null) {
            this.S = this.f74072s.k().a();
        }
        if (this.S == null) {
            this.S = DialogXStyle.PopNotificationSettings.ALIGN.TOP;
        }
        float y10 = viewGroup.getY();
        if (viewGroup.getTag() instanceof com.kongzue.dialogx.util.o) {
            ((com.kongzue.dialogx.util.o) viewGroup.getTag()).end();
            y10 = ((com.kongzue.dialogx.util.o) viewGroup.getTag()).a();
        }
        int i11 = g.f73977a[this.S.ordinal()];
        if (i11 != 1) {
            if (i11 == 2 || i11 == 3) {
                paddingTop = i10 * 1.1f;
                f10 = paddingTop + y10;
            } else if (i11 == 4) {
                y10 -= i10;
                paddingTop = viewGroup.getPaddingTop();
                f10 = paddingTop + y10;
            } else if (i11 != 5) {
                fB = 0.0f;
            } else {
                paddingTop = i10 * 1.1f;
                f10 = paddingTop + y10;
            }
            a0Var = f73954k2;
            if (a0Var != null) {
                list = f73948e2;
                if (list == null) {
                    iIndexOf = 0;
                } else {
                    iIndexOf = list.indexOf(this.O);
                }
                l lVar = this.O;
                float y11 = viewGroup.getY();
                int height = (int) (viewGroup.getHeight() / viewGroup.getScaleY());
                list2 = f73948e2;
                if (list2 == null) {
                    size = 1;
                } else {
                    size = list2.size();
                }
                fB = a0Var.b(iIndexOf, lVar, y11, fB, height, size, false);
            }
            float y12 = viewGroup.getY();
            com.kongzue.dialogx.util.o oVarC = com.kongzue.dialogx.util.o.c(y12, fB);
            viewGroup.setTag(oVarC);
            oVarC.addUpdateListener(new c(fB, y12));
            j10 = this.f74077x;
            if (j10 == -1) {
                j10 = 300;
            }
            oVarC.setDuration(j10).setInterpolator(new DecelerateInterpolator(2.0f));
            oVarC.start();
        }
        f10 = y10 - (i10 * 1.1f);
        fB = f10;
        a0Var = f73954k2;
        if (a0Var != null) {
            list = f73948e2;
            if (list == null) {
                iIndexOf = 0;
            } else {
                iIndexOf = list.indexOf(this.O);
            }
            l lVar2 = this.O;
            float y13 = viewGroup.getY();
            int height2 = (int) (viewGroup.getHeight() / viewGroup.getScaleY());
            list2 = f73948e2;
            if (list2 == null) {
                size = 1;
            } else {
                size = list2.size();
            }
            fB = a0Var.b(iIndexOf, lVar2, y13, fB, height2, size, false);
        }
        float y14 = viewGroup.getY();
        com.kongzue.dialogx.util.o oVarC2 = com.kongzue.dialogx.util.o.c(y14, fB);
        viewGroup.setTag(oVarC2);
        oVarC2.addUpdateListener(new c(fB, y14));
        j10 = this.f74077x;
        if (j10 == -1) {
            j10 = 300;
        }
        oVarC2.setDuration(j10).setInterpolator(new DecelerateInterpolator(2.0f));
        oVarC2.start();
    }

    public static l Q3(int i10) {
        l lVar = new l(i10);
        lVar.M0();
        return lVar;
    }

    public static l R3(int i10, int i11) {
        l lVar = new l(i10, i11);
        lVar.M0();
        return lVar;
    }

    public static l S3(int i10, int i11, int i12) {
        l lVar = new l(i10, i11, i12);
        lVar.M0();
        return lVar;
    }

    public static l T3(int i10, int i11, int i12, int i13) {
        l lVar = new l(i10, i11, i12, i13);
        lVar.M0();
        return lVar;
    }

    public static l U3(int i10, int i11, int i12, int i13, r<l> rVar) {
        l lVar = new l(i10, i11, i12, i13, rVar);
        lVar.M0();
        return lVar;
    }

    public static l V3(int i10, int i11, int i12, r<l> rVar) {
        l lVar = new l(i10, i11, i12, rVar);
        lVar.M0();
        return lVar;
    }

    public static l W3(int i10, int i11, r<l> rVar) {
        l lVar = new l(i10, i11, rVar);
        lVar.M0();
        return lVar;
    }

    public static l X3(int i10, r<l> rVar) {
        l lVar = new l(i10, rVar);
        lVar.M0();
        return lVar;
    }

    public static l Y1() {
        return new l();
    }

    public static l Y3(int i10, CharSequence charSequence) {
        l lVar = new l(i10, charSequence);
        lVar.M0();
        return lVar;
    }

    public static l Z1(DialogXStyle dialogXStyle) {
        return new l().J3(dialogXStyle);
    }

    public static l Z3(int i10, CharSequence charSequence, r<l> rVar) {
        l lVar = new l(i10, charSequence, rVar);
        lVar.M0();
        return lVar;
    }

    public static l a2(r<l> rVar) {
        return new l().h3(rVar);
    }

    public static l a4(int i10, CharSequence charSequence, CharSequence charSequence2) {
        l lVar = new l(i10, charSequence, charSequence2);
        lVar.M0();
        return lVar;
    }

    public static l b4(int i10, CharSequence charSequence, CharSequence charSequence2, r<l> rVar) {
        l lVar = new l(i10, charSequence, charSequence2, rVar);
        lVar.M0();
        return lVar;
    }

    public static l c4(int i10, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        l lVar = new l(i10, charSequence, charSequence2, charSequence3);
        lVar.M0();
        return lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d2() {
        if (f73948e2 == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < f73948e2.size(); i11++) {
            l lVar = f73948e2.get(i11);
            if (lVar != null && !lVar.f73958c2) {
                i10++;
            }
        }
        return i10;
    }

    public static l d4(int i10, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, r<l> rVar) {
        l lVar = new l(i10, charSequence, charSequence2, charSequence3, rVar);
        lVar.M0();
        return lVar;
    }

    public static l f4(r<l> rVar) {
        l lVar = new l(rVar);
        lVar.M0();
        return lVar;
    }

    public static l g4(CharSequence charSequence) {
        l lVar = new l(charSequence);
        lVar.M0();
        return lVar;
    }

    public static l h4(CharSequence charSequence, r<l> rVar) {
        l lVar = new l(charSequence, rVar);
        lVar.M0();
        return lVar;
    }

    public static l i4(CharSequence charSequence, CharSequence charSequence2) {
        l lVar = new l(charSequence, charSequence2);
        lVar.M0();
        return lVar;
    }

    public static l j4(CharSequence charSequence, CharSequence charSequence2, r<l> rVar) {
        l lVar = new l(charSequence, charSequence2, rVar);
        lVar.M0();
        return lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n4() {
        List<l> list = f73948e2;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f73958c2 = true;
        if (C() != null) {
            C().setVisibility(8);
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(f73948e2);
        if (Build.VERSION.SDK_INT >= 24) {
            copyOnWriteArrayList.removeIf(new Predicate() { // from class: com.kongzue.dialogx.dialogs.k
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return androidx.core.util.e.a((l) obj);
                }
            });
        } else {
            Iterator it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    it2.remove();
                }
            }
        }
        BaseDialog.p(C());
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void A0() {
        l lVar;
        if (C() != null) {
            BaseDialog.p(C());
            this.f74071r = false;
        }
        if (k2().f73984g != null) {
            k2().f73984g.removeAllViews();
        }
        if (DialogX.f73601m) {
            List<l> list = f73948e2;
            if (list == null || list.isEmpty()) {
                lVar = null;
            } else {
                List<l> list2 = f73948e2;
                lVar = list2.get(list2.size() - 1);
            }
            if (lVar != null) {
                lVar.e2();
            }
        }
        if (f73948e2 == null) {
            f73948e2 = new ArrayList();
        }
        f73948e2.add(this);
        int iH = i0() ? R.layout.layout_dialogx_popnotification_material : R.layout.layout_dialogx_popnotification_material_dark;
        if (this.f74072s.k() != null) {
            if (this.f74072s.k().h(i0()) != 0) {
                iH = this.f74072s.k().h(i0());
            }
            DialogXStyle.PopNotificationSettings.ALIGN alignA = this.f74072s.k().a();
            this.S = alignA;
            if (alignA == null) {
                this.S = DialogXStyle.PopNotificationSettings.ALIGN.TOP;
            }
            int iF = this.f74072s.k().f(i0());
            int iG = this.f74072s.k().g(i0());
            int i10 = this.Q;
            if (i10 != 0 || (i10 = f73951h2) != 0) {
                iF = i10;
            } else if (iF == 0) {
                iF = R.anim.anim_dialogx_notification_enter;
            }
            this.Q = iF;
            int i11 = this.R;
            if (i11 != 0 || (i11 = f73952i2) != 0) {
                iG = i11;
            } else if (iG == 0) {
                iG = R.anim.anim_dialogx_notification_exit;
            }
            this.R = iG;
            long j10 = this.f74076w;
            if (j10 == -1) {
                j10 = f73949f2;
            }
            this.f74076w = j10;
            long j11 = this.f74077x;
            if (j11 == -1) {
                j11 = f73950g2;
            }
            this.f74077x = j11;
        }
        this.f74076w = 0L;
        View viewM = m(iH);
        this.P = new h(viewM);
        if (viewM != null) {
            viewM.setTag(this.O);
        }
        BaseDialog.O0(viewM);
    }

    public t<l> A2() {
        return this.U;
    }

    public l A3(int i10) {
        this.f73960i1 = S(i10);
        x0();
        return this;
    }

    public float B2() {
        return this.X;
    }

    public l B3(CharSequence charSequence) {
        this.f73960i1 = charSequence;
        x0();
        return this;
    }

    public boolean C2() {
        return this.W == BaseDialog.BOOLEAN.TRUE;
    }

    public l C3(TextInfo textInfo) {
        this.f73966v1 = textInfo;
        x0();
        return this;
    }

    public CharSequence D2() {
        return this.f73959f1;
    }

    public l D3(t<l> tVar) {
        this.T = tVar;
        return this;
    }

    public TextInfo E2() {
        return this.f73965r1;
    }

    public l E3(t<l> tVar) {
        this.U = tVar;
        x0();
        return this;
    }

    public void F2() {
        this.F = true;
        if (C() != null) {
            C().setVisibility(8);
        }
    }

    public l F3(float f10) {
        this.X = f10;
        x0();
        return this;
    }

    public l G2() {
        M3(false);
        int iC = R.mipmap.ico_dialogx_error;
        if (T().k() != null && T().k().c() != 0) {
            iC = T().k().c();
        }
        u3(o(26.0f));
        t3(iC);
        return this;
    }

    public l G3(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    public l H2() {
        M3(false);
        int iD = R.mipmap.ico_dialogx_success;
        if (T().k() != null && T().k().d() != 0) {
            iD = T().k().d();
        }
        u3(o(26.0f));
        t3(iD);
        return this;
    }

    public l H3(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    public l I2() {
        M3(false);
        int iE = R.mipmap.ico_dialogx_warning;
        if (T().k() != null && T().k().e() != 0) {
            iE = T().k().e();
        }
        u3(o(26.0f));
        t3(iE);
        return this;
    }

    public l I3(boolean z10) {
        this.f73964q1 = z10;
        x0();
        return this;
    }

    public boolean J2() {
        return this.V;
    }

    public l J3(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    public l K3(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    public boolean L2() {
        return this.f73964q1;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: L3, reason: merged with bridge method [inline-methods] */
    public l L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    public l M3(boolean z10) {
        this.W = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        x0();
        return this;
    }

    public l N3(CharSequence charSequence) {
        this.f73959f1 = charSequence;
        x0();
        return this;
    }

    public l O2() {
        V1(-1L);
        return this;
    }

    public l O3(TextInfo textInfo) {
        this.f73965r1 = textInfo;
        x0();
        return this;
    }

    public l P2(com.kongzue.dialogx.interfaces.i<l> iVar) {
        this.f74066m = iVar;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: P3, reason: merged with bridge method [inline-methods] */
    public l M0() {
        if (this.F && C() != null) {
            C().setVisibility(0);
            return this;
        }
        super.e();
        if (C() == null) {
            if (DialogX.f73601m) {
                List<l> list = f73948e2;
                if (list != null && !list.isEmpty()) {
                    List<l> list2 = f73948e2;
                    list2.get(list2.size() - 1).e2();
                }
            } else if (f73948e2 != null) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(f73948e2);
                for (int i10 = 0; i10 < copyOnWriteArrayList.size(); i10++) {
                    l lVar = (l) copyOnWriteArrayList.get(i10);
                    if (copyOnWriteArrayList.size() >= f73953j2 && i10 <= copyOnWriteArrayList.size() - f73953j2) {
                        lVar.e2();
                        f73948e2.remove(lVar);
                    }
                }
            }
            if (f73948e2 == null) {
                f73948e2 = new ArrayList();
            }
            f73948e2.add(this);
            int iH = i0() ? R.layout.layout_dialogx_popnotification_material : R.layout.layout_dialogx_popnotification_material_dark;
            if (this.f74072s.k() != null) {
                if (this.f74072s.k().h(i0()) != 0) {
                    iH = this.f74072s.k().h(i0());
                }
                DialogXStyle.PopNotificationSettings.ALIGN alignA = this.f74072s.k().a();
                this.S = alignA;
                if (alignA == null) {
                    this.S = DialogXStyle.PopNotificationSettings.ALIGN.TOP;
                }
                int iF = this.f74072s.k().f(i0());
                int iG = this.f74072s.k().g(i0());
                int i11 = this.Q;
                if (i11 != 0 || (i11 = f73951h2) != 0) {
                    iF = i11;
                } else if (iF == 0) {
                    iF = R.anim.anim_dialogx_notification_enter;
                }
                this.Q = iF;
                int i12 = this.R;
                if (i12 != 0 || (i12 = f73952i2) != 0) {
                    iG = i12;
                } else if (iG == 0) {
                    iG = R.anim.anim_dialogx_notification_exit;
                }
                this.R = iG;
                long j10 = this.f74076w;
                if (j10 == -1) {
                    j10 = f73949f2;
                }
                this.f74076w = j10;
                long j11 = this.f74077x;
                if (j11 == -1) {
                    j11 = f73950g2;
                }
                this.f74077x = j11;
            }
            View viewM = m(iH);
            this.P = new h(viewM);
            if (viewM != null) {
                viewM.setTag(this.O);
            }
            BaseDialog.O0(viewM);
        } else {
            BaseDialog.O0(C());
        }
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    protected void Q0() {
        e2();
    }

    protected void Q2(l lVar) {
    }

    public l R2(com.kongzue.dialogx.interfaces.i<l> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    protected void S2(l lVar) {
    }

    public l T2() {
        this.M.clean();
        x0();
        return this;
    }

    public l U1(CharSequence charSequence) {
        this.f73960i1 = TextUtils.concat(this.f73960i1, charSequence);
        x0();
        return this;
    }

    public void U2() {
        V1(this.f73955a2);
    }

    public l V1(long j10) {
        this.f73955a2 = j10;
        Timer timer = this.V1;
        if (timer != null) {
            timer.cancel();
        }
        if (j10 < 0) {
            return this;
        }
        Timer timer2 = new Timer();
        this.V1 = timer2;
        timer2.schedule(new a(), j10);
        return this;
    }

    public l V2(int i10, com.kongzue.dialogx.interfaces.i<l> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    public l W1(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    public l W2(DialogXStyle.PopNotificationSettings.ALIGN align) {
        this.S = align;
        return this;
    }

    public l X1() {
        L0(F());
        return this;
    }

    public l X2(int i10, int i11) {
        this.Q = i10;
        this.R = i11;
        return this;
    }

    public l Y2(boolean z10) {
        this.V = z10;
        x0();
        return this;
    }

    public l Z2(@ColorInt int i10) {
        this.f74075v = Integer.valueOf(i10);
        x0();
        return this;
    }

    public l a3(@ColorRes int i10) {
        this.f74075v = Integer.valueOf(v(i10));
        x0();
        return this;
    }

    public l b2(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    public l b3(int i10) {
        this.f73961l1 = S(i10);
        x0();
        return this;
    }

    public l c2() {
        this.f74069p.clear();
        return this;
    }

    public l c3(int i10, t<l> tVar) {
        this.f73961l1 = S(i10);
        this.T = tVar;
        x0();
        return this;
    }

    public l d3(t<l> tVar) {
        this.T = tVar;
        return this;
    }

    public void e2() {
        BaseDialog.C0(new e());
    }

    public l e3(CharSequence charSequence) {
        this.f73961l1 = charSequence;
        x0();
        return this;
    }

    public l e4(Activity activity) {
        l lVar;
        super.e();
        if (C() == null) {
            if (DialogX.f73601m) {
                List<l> list = f73948e2;
                if (list == null || list.isEmpty()) {
                    lVar = null;
                } else {
                    List<l> list2 = f73948e2;
                    lVar = list2.get(list2.size() - 1);
                }
                if (lVar != null) {
                    lVar.e2();
                }
            }
            if (f73948e2 == null) {
                f73948e2 = new ArrayList();
            }
            f73948e2.add(this);
            int iH = i0() ? R.layout.layout_dialogx_popnotification_material : R.layout.layout_dialogx_popnotification_material_dark;
            if (this.f74072s.k() != null) {
                if (this.f74072s.k().h(i0()) != 0) {
                    iH = this.f74072s.k().h(i0());
                }
                DialogXStyle.PopNotificationSettings.ALIGN alignA = this.f74072s.k().a();
                this.S = alignA;
                if (alignA == null) {
                    this.S = DialogXStyle.PopNotificationSettings.ALIGN.TOP;
                }
                int iF = this.f74072s.k().f(i0());
                int iG = this.f74072s.k().g(i0());
                int i10 = this.Q;
                if (i10 != 0 || (i10 = f73951h2) != 0) {
                    iF = i10;
                } else if (iF == 0) {
                    iF = R.anim.anim_dialogx_notification_enter;
                }
                this.Q = iF;
                int i11 = this.R;
                if (i11 != 0 || (i11 = f73952i2) != 0) {
                    iG = i11;
                } else if (iG == 0) {
                    iG = R.anim.anim_dialogx_notification_exit;
                }
                this.R = iG;
                long j10 = this.f74076w;
                if (j10 == -1) {
                    j10 = f73949f2;
                }
                this.f74076w = j10;
                long j11 = this.f74077x;
                if (j11 == -1) {
                    j11 = f73950g2;
                }
                this.f74077x = j11;
            }
            View viewM = m(iH);
            this.P = new h(viewM);
            if (viewM != null) {
                viewM.setTag(this.O);
            }
            BaseDialog.N0(activity, viewM);
        } else {
            BaseDialog.N0(activity, C());
        }
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        return false;
    }

    public DialogXStyle.PopNotificationSettings.ALIGN f2() {
        return this.S;
    }

    public l f3(CharSequence charSequence, t<l> tVar) {
        this.f73961l1 = charSequence;
        this.T = tVar;
        x0();
        return this;
    }

    public int g2() {
        return this.f74075v.intValue();
    }

    public l g3(TextInfo textInfo) {
        this.L1 = textInfo;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        e2();
    }

    public CharSequence h2() {
        return this.f73961l1;
    }

    public l h3(r<l> rVar) {
        this.M = rVar;
        x0();
        return this;
    }

    public TextInfo i2() {
        return this.L1;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: i3, reason: merged with bridge method [inline-methods] */
    public l F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    public View j2() {
        r<l> rVar = this.M;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    public l j3(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    public h k2() {
        return this.P;
    }

    public l k3(com.kongzue.dialogx.interfaces.f<l> fVar) {
        this.N = fVar;
        if (this.f74071r) {
            fVar.b(this.O);
        }
        return this;
    }

    public l k4() {
        return O2();
    }

    public com.kongzue.dialogx.interfaces.f<l> l2() {
        com.kongzue.dialogx.interfaces.f<l> fVar = this.N;
        return fVar == null ? new f() : fVar;
    }

    public l l3(com.kongzue.dialogx.interfaces.g<l> gVar) {
        this.Y = gVar;
        return this;
    }

    public l l4() {
        V1(3500L);
        if (!this.E && !this.f74071r) {
            M0();
        }
        return this;
    }

    public com.kongzue.dialogx.interfaces.g<l> m2() {
        return this.Y;
    }

    public l m3(long j10) {
        this.f74076w = j10;
        return this;
    }

    public l m4() {
        if (K2()) {
            V1(2000L);
        }
        if (!this.E && !this.f74071r) {
            M0();
        }
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public long n2() {
        return this.f74076w;
    }

    public l n3(int i10) {
        this.Q = i10;
        return this;
    }

    public long o2() {
        return this.f74077x;
    }

    public l o3(long j10) {
        this.f74077x = j10;
        return this;
    }

    public Bitmap p2() {
        return this.f73962p0;
    }

    public l p3(int i10) {
        this.R = i10;
        return this;
    }

    public Drawable q2() {
        return this.f73956b1;
    }

    public l q3(boolean z10) {
        this.f74057d = z10 ? 1 : 0;
        return this;
    }

    public int r2() {
        return this.Z;
    }

    public l r3(Bitmap bitmap) {
        this.f73962p0 = bitmap;
        x0();
        return this;
    }

    public int s2() {
        return this.f73963p1;
    }

    public l s3(Drawable drawable) {
        this.f73956b1 = drawable;
        return this;
    }

    public int t2() {
        return this.R1[3];
    }

    public l t3(int i10) {
        this.Z = i10;
        x0();
        return this;
    }

    public int u2() {
        return this.R1[0];
    }

    public l u3(int i10) {
        this.f73963p1 = i10;
        x0();
        return this;
    }

    public int v2() {
        return this.R1[2];
    }

    public l v3(int i10, int i11, int i12, int i13) {
        int[] iArr = this.R1;
        iArr[0] = i10;
        iArr[1] = i11;
        iArr[2] = i12;
        iArr[3] = i13;
        x0();
        return this;
    }

    public int w2() {
        return this.R1[1];
    }

    public l w3(int i10) {
        this.R1[3] = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void x0() {
        if (k2() == null) {
            return;
        }
        BaseDialog.C0(new d());
    }

    public CharSequence x2() {
        return this.f73960i1;
    }

    public l x3(int i10) {
        this.R1[0] = i10;
        x0();
        return this;
    }

    public TextInfo y2() {
        return this.f73966v1;
    }

    public l y3(int i10) {
        this.R1[2] = i10;
        x0();
        return this;
    }

    public t<l> z2() {
        return this.T;
    }

    public l z3(int i10) {
        this.R1[1] = i10;
        x0();
        return this;
    }

    public l(r<l> rVar) {
        this.M = rVar;
    }

    public l(CharSequence charSequence) {
        this.f73959f1 = charSequence;
    }

    public l(CharSequence charSequence, CharSequence charSequence2) {
        this.f73959f1 = charSequence;
        this.f73960i1 = charSequence2;
    }

    public l(int i10) {
        this.f73959f1 = S(i10);
    }

    public l(int i10, int i11) {
        this.f73959f1 = S(i10);
        this.f73960i1 = S(i11);
    }

    public l(int i10, CharSequence charSequence) {
        this.Z = i10;
        this.f73959f1 = charSequence;
    }

    public l(int i10, CharSequence charSequence, CharSequence charSequence2) {
        this.Z = i10;
        this.f73959f1 = charSequence;
        this.f73960i1 = charSequence2;
    }

    public l(int i10, int i11, int i12) {
        this.Z = i10;
        this.f73959f1 = S(i11);
        this.f73960i1 = S(i12);
    }

    public l(CharSequence charSequence, r<l> rVar) {
        this.f73959f1 = charSequence;
        this.M = rVar;
    }

    public l(CharSequence charSequence, CharSequence charSequence2, r<l> rVar) {
        this.f73959f1 = charSequence;
        this.f73960i1 = charSequence2;
        this.M = rVar;
    }

    public l(int i10, r<l> rVar) {
        this.f73959f1 = S(i10);
        this.M = rVar;
    }

    public l(int i10, int i11, r<l> rVar) {
        this.f73959f1 = S(i10);
        this.f73960i1 = S(i11);
        this.M = rVar;
    }

    public l(int i10, CharSequence charSequence, r<l> rVar) {
        this.Z = i10;
        this.f73959f1 = charSequence;
        this.M = rVar;
    }

    public l(int i10, CharSequence charSequence, CharSequence charSequence2, r<l> rVar) {
        this.Z = i10;
        this.f73959f1 = charSequence;
        this.f73960i1 = charSequence2;
        this.M = rVar;
    }

    public l(int i10, int i11, int i12, r<l> rVar) {
        this.Z = i10;
        this.f73959f1 = S(i11);
        this.f73960i1 = S(i12);
        this.M = rVar;
    }

    public l(int i10, int i11, int i12, int i13) {
        this.Z = i10;
        this.f73959f1 = S(i11);
        this.f73960i1 = S(i12);
        this.f73961l1 = S(i13);
    }

    public l(int i10, int i11, int i12, int i13, r<l> rVar) {
        this.Z = i10;
        this.f73959f1 = S(i11);
        this.f73960i1 = S(i12);
        this.f73961l1 = S(i13);
        this.M = rVar;
    }

    public l(int i10, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        this.Z = i10;
        this.f73959f1 = charSequence;
        this.f73960i1 = charSequence2;
        this.f73961l1 = charSequence3;
    }

    public l(int i10, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, r<l> rVar) {
        this.Z = i10;
        this.f73959f1 = charSequence;
        this.f73960i1 = charSequence2;
        this.f73961l1 = charSequence3;
        this.M = rVar;
    }
}
