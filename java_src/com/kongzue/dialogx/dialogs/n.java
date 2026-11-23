package com.kongzue.dialogx.dialogs;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
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
public class n extends BaseDialog implements com.kongzue.dialogx.interfaces.o {
    public static long L1 = -1;
    public static long R1 = -1;
    public static int V1 = 0;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    public static int f74002a2 = 0;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    public static int f74003b2 = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    public static a0<n> f74004c2 = null;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public static final int f74005r1 = -1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    protected static List<n> f74006v1;
    protected r<n> M;
    protected com.kongzue.dialogx.interfaces.f<n> N;
    protected h P;
    protected DialogXStyle.PopTipSettings.ALIGN S;
    protected t<n> T;
    protected t<n> U;
    protected BaseDialog.BOOLEAN V;
    protected com.kongzue.dialogx.interfaces.g<n> X;
    protected int Y;
    protected CharSequence Z;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    protected TextInfo f74007b1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    protected Timer f74010l1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    protected CharSequence f74011p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    protected long f74012p1;
    protected n O = this;
    protected int Q = 0;
    protected int R = 0;
    protected float W = DialogX.R;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    protected TextInfo f74008f1 = new TextInfo().j(true);

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    protected int[] f74009i1 = {-1, -1, -1, -1};

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    protected boolean f74013q1 = false;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            n.this.W1();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f74015b;

        class a implements ValueAnimator.AnimatorUpdateListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ float f74017b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ float f74018c;

            a(float f10, float f11) {
                this.f74017b = f10;
                this.f74018c = f11;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (n.this.c2() == null || !((BaseDialog) n.this).f74071r) {
                    valueAnimator.cancel();
                    return;
                }
                LinearLayout linearLayout = n.this.c2().f74030b;
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f10 = this.f74017b - this.f74018c;
                a0<n> a0Var = n.f74004c2;
                if (a0Var != null) {
                    List<n> list = n.f74006v1;
                    int iIndexOf = list == null ? 0 : list.indexOf(n.this.O);
                    n nVar = n.this.O;
                    float f11 = this.f74018c;
                    if (a0Var.a(iIndexOf, nVar, linearLayout, f11, this.f74017b, Math.max(0.0f, Math.min(1.0f, f10 == 0.0f ? 1.0f : (fFloatValue - f11) / f10)), valueAnimator, n.f74006v1 == null ? 1 : n.this.V1(), true)) {
                        return;
                    }
                }
                if (linearLayout == null || !linearLayout.isAttachedToWindow()) {
                    return;
                }
                linearLayout.setY(fFloatValue);
            }
        }

        b(View view) {
            this.f74015b = view;
        }

        /* JADX WARN: Code duplicated, block: B:24:0x0069  */
        /* JADX WARN: Code duplicated, block: B:29:0x0090  */
        /* JADX WARN: Code duplicated, block: B:31:0x0094  */
        /* JADX WARN: Code duplicated, block: B:32:0x0096  */
        /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
        /* JADX WARN: Code duplicated, block: B:36:0x00be  */
        /* JADX WARN: Code duplicated, block: B:40:0x00d2  */
        /* JADX WARN: Code duplicated, block: B:43:0x0106  */
        /* JADX WARN: Code duplicated, block: B:44:0x0109  */
        @Override // java.lang.Runnable
        public void run() {
            float y10;
            float fB;
            a0<n> a0Var;
            long j10;
            List<n> list;
            int iIndexOf;
            List<n> list2;
            int size;
            if (n.this.c2() == null) {
                return;
            }
            n nVar = n.this;
            if (nVar.S == null && ((BaseDialog) nVar).f74072s.l() != null) {
                n nVar2 = n.this;
                nVar2.S = ((BaseDialog) nVar2).f74072s.l().a();
            }
            n nVar3 = n.this;
            if (nVar3.S == null) {
                nVar3.S = DialogXStyle.PopTipSettings.ALIGN.TOP;
            }
            int i10 = g.f74028a[nVar3.S.ordinal()];
            if (i10 != 1) {
                if (i10 == 2 || i10 == 3) {
                    y10 = this.f74015b.getY() - (this.f74015b.getHeight() * 1.3f);
                } else if (i10 == 4) {
                    y10 = (this.f74015b.getY() + this.f74015b.getHeight()) - this.f74015b.getPaddingTop();
                } else if (i10 != 5) {
                    fB = 0.0f;
                } else {
                    y10 = this.f74015b.getY() - (this.f74015b.getHeight() * 1.3f);
                }
                a0Var = n.f74004c2;
                if (a0Var != null) {
                    list = n.f74006v1;
                    if (list == null) {
                        iIndexOf = 0;
                    } else {
                        iIndexOf = list.indexOf(n.this.O);
                    }
                    n nVar4 = n.this.O;
                    float y11 = this.f74015b.getY();
                    int height = (int) (this.f74015b.getHeight() / this.f74015b.getScaleY());
                    list2 = n.f74006v1;
                    if (list2 == null) {
                        size = 1;
                    } else {
                        size = list2.size();
                    }
                    fB = a0Var.b(iIndexOf, nVar4, y11, fB, height, size, true);
                }
                if (this.f74015b.getTag() instanceof ValueAnimator) {
                    ((ValueAnimator) this.f74015b.getTag()).end();
                }
                float y12 = this.f74015b.getY();
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(y12, fB);
                this.f74015b.setTag(valueAnimatorOfFloat);
                valueAnimatorOfFloat.addUpdateListener(new a(fB, y12));
                if (((BaseDialog) n.this).f74076w == -1) {
                    j10 = 300;
                } else {
                    j10 = ((BaseDialog) n.this).f74076w;
                }
                valueAnimatorOfFloat.setDuration(j10).setInterpolator(new DecelerateInterpolator(2.0f));
                valueAnimatorOfFloat.start();
            }
            y10 = this.f74015b.getY() + (this.f74015b.getHeight() * 1.3f);
            fB = y10;
            a0Var = n.f74004c2;
            if (a0Var != null) {
                list = n.f74006v1;
                if (list == null) {
                    iIndexOf = 0;
                } else {
                    iIndexOf = list.indexOf(n.this.O);
                }
                n nVar5 = n.this.O;
                float y13 = this.f74015b.getY();
                int height2 = (int) (this.f74015b.getHeight() / this.f74015b.getScaleY());
                list2 = n.f74006v1;
                if (list2 == null) {
                    size = 1;
                } else {
                    size = list2.size();
                }
                fB = a0Var.b(iIndexOf, nVar5, y13, fB, height2, size, true);
            }
            if (this.f74015b.getTag() instanceof ValueAnimator) {
                ((ValueAnimator) this.f74015b.getTag()).end();
            }
            float y14 = this.f74015b.getY();
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(y14, fB);
            this.f74015b.setTag(valueAnimatorOfFloat2);
            valueAnimatorOfFloat2.addUpdateListener(new a(fB, y14));
            if (((BaseDialog) n.this).f74076w == -1) {
                j10 = 300;
            } else {
                j10 = ((BaseDialog) n.this).f74076w;
            }
            valueAnimatorOfFloat2.setDuration(j10).setInterpolator(new DecelerateInterpolator(2.0f));
            valueAnimatorOfFloat2.start();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f74020b;

        class a implements ValueAnimator.AnimatorUpdateListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ float f74022b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ float f74023c;

            a(float f10, float f11) {
                this.f74022b = f10;
                this.f74023c = f11;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (n.this.c2() == null || !((BaseDialog) n.this).f74071r) {
                    valueAnimator.cancel();
                    return;
                }
                LinearLayout linearLayout = n.this.c2().f74030b;
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f10 = this.f74022b - this.f74023c;
                a0<n> a0Var = n.f74004c2;
                if (a0Var != null) {
                    List<n> list = n.f74006v1;
                    int iIndexOf = list == null ? 0 : list.indexOf(n.this.O);
                    n nVar = n.this.O;
                    float f11 = this.f74023c;
                    if (a0Var.a(iIndexOf, nVar, linearLayout, f11, this.f74022b, Math.max(0.0f, Math.min(1.0f, f10 == 0.0f ? 1.0f : (fFloatValue - f11) / f10)), valueAnimator, n.f74006v1 == null ? 1 : n.this.V1(), false)) {
                        return;
                    }
                }
                if (linearLayout == null || !linearLayout.isAttachedToWindow()) {
                    return;
                }
                linearLayout.setY(fFloatValue);
            }
        }

        c(View view) {
            this.f74020b = view;
        }

        /* JADX WARN: Code duplicated, block: B:24:0x0069  */
        /* JADX WARN: Code duplicated, block: B:29:0x0090  */
        /* JADX WARN: Code duplicated, block: B:31:0x0094  */
        /* JADX WARN: Code duplicated, block: B:32:0x0096  */
        /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
        /* JADX WARN: Code duplicated, block: B:36:0x00be  */
        /* JADX WARN: Code duplicated, block: B:40:0x00d2  */
        /* JADX WARN: Code duplicated, block: B:43:0x0106  */
        /* JADX WARN: Code duplicated, block: B:44:0x0109  */
        @Override // java.lang.Runnable
        public void run() {
            float y10;
            float fB;
            a0<n> a0Var;
            long j10;
            List<n> list;
            int iIndexOf;
            List<n> list2;
            int size;
            if (n.this.c2() == null) {
                return;
            }
            n nVar = n.this;
            if (nVar.S == null && ((BaseDialog) nVar).f74072s.l() != null) {
                n nVar2 = n.this;
                nVar2.S = ((BaseDialog) nVar2).f74072s.l().a();
            }
            n nVar3 = n.this;
            if (nVar3.S == null) {
                nVar3.S = DialogXStyle.PopTipSettings.ALIGN.TOP;
            }
            int i10 = g.f74028a[nVar3.S.ordinal()];
            if (i10 != 1) {
                if (i10 == 2 || i10 == 3) {
                    y10 = this.f74020b.getY() + (this.f74020b.getHeight() * 1.3f);
                } else if (i10 == 4) {
                    y10 = (this.f74020b.getY() - this.f74020b.getHeight()) + this.f74020b.getPaddingTop();
                } else if (i10 != 5) {
                    fB = 0.0f;
                } else {
                    y10 = this.f74020b.getY() + (this.f74020b.getHeight() * 1.3f);
                }
                a0Var = n.f74004c2;
                if (a0Var != null) {
                    list = n.f74006v1;
                    if (list == null) {
                        iIndexOf = 0;
                    } else {
                        iIndexOf = list.indexOf(n.this.O);
                    }
                    n nVar4 = n.this.O;
                    float y11 = this.f74020b.getY();
                    int height = (int) (this.f74020b.getHeight() / this.f74020b.getScaleY());
                    list2 = n.f74006v1;
                    if (list2 == null) {
                        size = 1;
                    } else {
                        size = list2.size();
                    }
                    fB = a0Var.b(iIndexOf, nVar4, y11, fB, height, size, false);
                }
                if (this.f74020b.getTag() instanceof ValueAnimator) {
                    ((ValueAnimator) this.f74020b.getTag()).end();
                }
                float y12 = this.f74020b.getY();
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(y12, fB);
                this.f74020b.setTag(valueAnimatorOfFloat);
                valueAnimatorOfFloat.addUpdateListener(new a(fB, y12));
                if (((BaseDialog) n.this).f74077x == -1) {
                    j10 = 300;
                } else {
                    j10 = ((BaseDialog) n.this).f74077x;
                }
                valueAnimatorOfFloat.setDuration(j10).setInterpolator(new AccelerateInterpolator(2.0f));
                valueAnimatorOfFloat.start();
            }
            y10 = this.f74020b.getY() - (this.f74020b.getHeight() * 1.3f);
            fB = y10;
            a0Var = n.f74004c2;
            if (a0Var != null) {
                list = n.f74006v1;
                if (list == null) {
                    iIndexOf = 0;
                } else {
                    iIndexOf = list.indexOf(n.this.O);
                }
                n nVar5 = n.this.O;
                float y13 = this.f74020b.getY();
                int height2 = (int) (this.f74020b.getHeight() / this.f74020b.getScaleY());
                list2 = n.f74006v1;
                if (list2 == null) {
                    size = 1;
                } else {
                    size = list2.size();
                }
                fB = a0Var.b(iIndexOf, nVar5, y13, fB, height2, size, false);
            }
            if (this.f74020b.getTag() instanceof ValueAnimator) {
                ((ValueAnimator) this.f74020b.getTag()).end();
            }
            float y14 = this.f74020b.getY();
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(y14, fB);
            this.f74020b.setTag(valueAnimatorOfFloat2);
            valueAnimatorOfFloat2.addUpdateListener(new a(fB, y14));
            if (((BaseDialog) n.this).f74077x == -1) {
                j10 = 300;
            } else {
                j10 = ((BaseDialog) n.this).f74077x;
            }
            valueAnimatorOfFloat2.setDuration(j10).setInterpolator(new AccelerateInterpolator(2.0f));
            valueAnimatorOfFloat2.start();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = n.this.P;
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
            h hVar = n.this.P;
            if (hVar == null) {
                return;
            }
            hVar.a(null);
        }
    }

    class f extends com.kongzue.dialogx.interfaces.f<n> {
        f() {
        }
    }

    static /* synthetic */ class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f74028a;

        static {
            int[] iArr = new int[DialogXStyle.PopTipSettings.ALIGN.values().length];
            f74028a = iArr;
            try {
                iArr[DialogXStyle.PopTipSettings.ALIGN.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74028a[DialogXStyle.PopTipSettings.ALIGN.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74028a[DialogXStyle.PopTipSettings.ALIGN.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f74028a[DialogXStyle.PopTipSettings.ALIGN.TOP_INSIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f74028a[DialogXStyle.PopTipSettings.ALIGN.BOTTOM_INSIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public class h implements com.kongzue.dialogx.interfaces.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public DialogXBaseRelativeLayout f74029a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f74030b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f74031c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f74032d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public RelativeLayout f74033e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f74034f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<View> f74035g;

        class a extends DialogXBaseRelativeLayout.c {
            a() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void a() {
                List<n> list = n.f74006v1;
                if (list != null) {
                    list.remove(n.this);
                    if (n.f74006v1.isEmpty()) {
                        n.f74006v1 = null;
                    }
                }
                ((BaseDialog) n.this).f74071r = false;
                Timer timer = n.this.f74010l1;
                if (timer != null) {
                    timer.cancel();
                }
                n.this.d2().a(n.this.O);
                n nVar = n.this;
                nVar.B2(nVar.O);
                n.this.J0(Lifecycle.State.DESTROYED);
                n.this.P = null;
                System.gc();
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void b() {
                ((BaseDialog) n.this).f74071r = true;
                ((BaseDialog) n.this).E = false;
                n.this.J0(Lifecycle.State.CREATED);
                h.this.f74029a.setAlpha(0.0f);
                n.this.s0();
                n.this.d2().b(n.this.O);
                n nVar = n.this;
                nVar.D2(nVar.O);
            }
        }

        class b implements z {
            b() {
            }

            @Override // com.kongzue.dialogx.interfaces.z
            public void a(Rect rect) {
                h hVar = h.this;
                if (n.this.S == DialogXStyle.PopTipSettings.ALIGN.TOP_INSIDE) {
                    hVar.f74030b.setPadding(0, rect.top, 0, 0);
                }
            }
        }

        class c implements DialogXBaseRelativeLayout.d {
            c() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.d
            public boolean onBackPressed() {
                return false;
            }
        }

        class d implements Runnable {
            d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                com.kongzue.dialogx.interfaces.g<n> gVarE = h.this.e();
                h hVar = h.this;
                gVarE.b(n.this.O, hVar.f74030b);
                n.this.J0(Lifecycle.State.RESUMED);
            }
        }

        class e implements View.OnClickListener {
            e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                n.this.Z(view);
                h hVar = h.this;
                n nVar = n.this;
                t<n> tVar = nVar.T;
                if (tVar == null) {
                    hVar.a(view);
                } else {
                    if (tVar.a(nVar.O, view)) {
                        return;
                    }
                    h.this.a(view);
                }
            }
        }

        class f extends ViewOutlineProvider {
            f() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), n.this.W);
            }
        }

        class g implements View.OnClickListener {
            g() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                n nVar = n.this;
                if (nVar.U.a(nVar.O, view)) {
                    return;
                }
                n.this.Z(view);
                n.this.W1();
            }
        }

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.n$h$h, reason: collision with other inner class name */
        class RunnableC0775h implements Runnable {

            /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.n$h$h$a */
            class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    n.this.T3();
                }
            }

            RunnableC0775h() {
            }

            @Override // java.lang.Runnable
            public void run() {
                com.kongzue.dialogx.interfaces.g<n> gVarE = h.this.e();
                h hVar = h.this;
                gVarE.a(n.this.O, hVar.f74030b);
                n.this.f74013q1 = true;
                BaseDialog.E0(new a(), h.this.g(null));
                List<n> list = n.f74006v1;
                if (list != null) {
                    int iIndexOf = list.indexOf(n.this.O);
                    for (int i10 = 0; i10 < iIndexOf; i10++) {
                        n.f74006v1.get(i10).y2();
                    }
                }
            }
        }

        class i extends com.kongzue.dialogx.interfaces.g<n> {
            i() {
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void a(n nVar, ViewGroup viewGroup) {
                Context context = n.this.N() == null ? h.this.f74029a.getContext() : n.this.N();
                int i10 = n.this.R;
                if (i10 == 0) {
                    i10 = R.anim.anim_dialogx_default_exit;
                }
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, i10);
                long jG = h.this.g(animationLoadAnimation);
                animationLoadAnimation.setDuration(jG);
                animationLoadAnimation.setFillAfter(true);
                h.this.f74030b.startAnimation(animationLoadAnimation);
                h.this.f74029a.animate().alpha(0.0f).setInterpolator(new AccelerateInterpolator()).setDuration(jG);
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(n nVar, ViewGroup viewGroup) {
                Activity activityN = n.this.N();
                int i10 = n.this.Q;
                if (i10 == 0) {
                    i10 = R.anim.anim_dialogx_default_enter;
                }
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(activityN, i10);
                long jF = h.this.f(animationLoadAnimation);
                animationLoadAnimation.setInterpolator(new DecelerateInterpolator(2.0f));
                animationLoadAnimation.setDuration(jF);
                animationLoadAnimation.setFillAfter(true);
                h.this.f74030b.startAnimation(animationLoadAnimation);
                h.this.f74029a.animate().setDuration(jF).alpha(1.0f).setInterpolator(new DecelerateInterpolator()).setListener(null);
            }
        }

        public h(View view) {
            if (view == null) {
                return;
            }
            n.this.H0(view);
            this.f74029a = (DialogXBaseRelativeLayout) view.findViewById(R.id.box_root);
            this.f74030b = (LinearLayout) view.findViewById(R.id.box_body);
            this.f74031c = (ImageView) view.findViewById(R.id.img_dialogx_pop_icon);
            this.f74032d = (TextView) view.findViewById(R.id.txt_dialogx_pop_text);
            this.f74033e = (RelativeLayout) view.findViewById(R.id.box_custom);
            this.f74034f = (TextView) view.findViewById(R.id.txt_dialogx_button);
            this.f74035g = n.this.s(view);
            init();
            n.this.P = this;
            b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f74030b.getLayoutParams();
            n nVar = n.this;
            if (nVar.S == null) {
                nVar.S = DialogXStyle.PopTipSettings.ALIGN.BOTTOM;
            }
            int i10 = g.f74028a[nVar.S.ordinal()];
            if (i10 == 1) {
                layoutParams.removeRule(12);
                layoutParams.removeRule(13);
                layoutParams.addRule(10);
            } else if (i10 == 2) {
                layoutParams.removeRule(10);
                layoutParams.removeRule(13);
                layoutParams.addRule(12);
            } else if (i10 == 3) {
                layoutParams.removeRule(10);
                layoutParams.removeRule(12);
                layoutParams.addRule(13);
            }
            this.f74030b.setLayoutParams(layoutParams);
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void a(View view) {
            BaseDialog baseDialog = n.this;
            if (baseDialog.t0(baseDialog)) {
                return;
            }
            if (view != null) {
                view.setEnabled(false);
            }
            if (((BaseDialog) n.this).D || this.f74029a == null) {
                return;
            }
            ((BaseDialog) n.this).D = true;
            this.f74029a.post(new RunnableC0775h());
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void b() {
            GradientDrawable gradientDrawable;
            if (this.f74029a == null || n.this.N() == null) {
                return;
            }
            this.f74029a.setRootPadding(((BaseDialog) n.this).C[0], ((BaseDialog) n.this).C[1], ((BaseDialog) n.this).C[2], ((BaseDialog) n.this).C[3]);
            if (((BaseDialog) n.this).f74075v != null) {
                n nVar = n.this;
                nVar.R0(this.f74030b, ((BaseDialog) nVar).f74075v.intValue());
                n nVar2 = n.this;
                nVar2.R0(this.f74034f, ((BaseDialog) nVar2).f74075v.intValue());
                List<View> list = this.f74035g;
                if (list != null) {
                    Iterator<View> it2 = list.iterator();
                    while (it2.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) ((View) it2.next())).b(((BaseDialog) n.this).f74075v);
                    }
                }
            }
            r<n> rVar = n.this.M;
            if (rVar == null || rVar.getCustomView() == null) {
                this.f74033e.setVisibility(8);
            } else {
                n nVar3 = n.this;
                nVar3.M.bindParent(this.f74033e, nVar3.O);
                this.f74033e.setVisibility(0);
            }
            n nVar4 = n.this;
            nVar4.P0(this.f74032d, nVar4.Z);
            n nVar5 = n.this;
            nVar5.P0(this.f74034f, nVar5.f74011p0);
            BaseDialog.S0(this.f74032d, n.this.f74007b1);
            BaseDialog.S0(this.f74034f, n.this.f74008f1);
            if (n.this.Y != 0) {
                this.f74031c.setVisibility(0);
                this.f74031c.setImageResource(n.this.Y);
                if (n.this.w2()) {
                    this.f74031c.setImageTintList(this.f74032d.getTextColors());
                } else {
                    this.f74031c.setImageTintList(null);
                }
            } else {
                this.f74031c.setVisibility(8);
            }
            if (n.this.W > -1.0f) {
                if ((this.f74030b.getBackground() instanceof GradientDrawable) && (gradientDrawable = (GradientDrawable) this.f74030b.getBackground()) != null) {
                    gradientDrawable.setCornerRadius(n.this.W);
                }
                this.f74030b.setOutlineProvider(new f());
                this.f74030b.setClipToOutline(true);
                List<View> list2 = this.f74035g;
                if (list2 != null) {
                    Iterator<View> it3 = list2.iterator();
                    while (it3.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) ((View) it3.next())).a(Float.valueOf(n.this.W));
                    }
                }
            }
            if (n.this.U != null) {
                this.f74030b.setOnClickListener(new g());
            } else {
                this.f74030b.setOnClickListener(null);
                this.f74030b.setClickable(false);
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f74030b.getLayoutParams();
            int[] iArr = n.this.f74009i1;
            int i10 = iArr[0];
            if (i10 != -1) {
                layoutParams.leftMargin = i10;
            }
            int i11 = iArr[1];
            if (i11 != -1) {
                layoutParams.topMargin = i11;
            }
            int i12 = iArr[2];
            if (i12 != -1) {
                layoutParams.rightMargin = i12;
            }
            int i13 = iArr[3];
            if (i13 != -1) {
                layoutParams.bottomMargin = i13;
            }
            this.f74030b.setLayoutParams(layoutParams);
            n.this.r0();
        }

        protected com.kongzue.dialogx.interfaces.g<n> e() {
            n nVar = n.this;
            if (nVar.X == null) {
                nVar.X = new i();
            }
            return n.this.X;
        }

        public long f(@Nullable Animation animation) {
            if (animation == null && this.f74030b.getAnimation() != null) {
                animation = this.f74030b.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 300L : animation.getDuration();
            long j10 = n.L1;
            if (j10 >= 0) {
                duration = j10;
            }
            return ((BaseDialog) n.this).f74076w >= 0 ? ((BaseDialog) n.this).f74076w : duration;
        }

        public long g(@Nullable Animation animation) {
            if (animation == null && this.f74030b.getAnimation() != null) {
                animation = this.f74030b.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 300L : animation.getDuration();
            long j10 = n.R1;
            if (j10 >= 0) {
                duration = j10;
            }
            return ((BaseDialog) n.this).f74077x != -1 ? ((BaseDialog) n.this).f74077x : duration;
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void init() {
            n.this.C().setTranslationZ(n.this.W());
            n nVar = n.this;
            if (nVar.f74007b1 == null) {
                nVar.f74007b1 = DialogX.B;
            }
            if (nVar.f74008f1 == null) {
                nVar.f74008f1 = DialogX.f73602n;
            }
            if (((BaseDialog) nVar).f74075v == null) {
                ((BaseDialog) n.this).f74075v = DialogX.f73610v;
            }
            n nVar2 = n.this;
            if (nVar2.f74010l1 == null) {
                nVar2.M3();
            }
            this.f74029a.p(n.this.O);
            this.f74029a.j(true);
            this.f74029a.n(new a());
            d();
            this.f74029a.o(new b());
            this.f74029a.m(new c());
            this.f74029a.post(new d());
            this.f74034f.setOnClickListener(new e());
            n.this.q0();
        }
    }

    protected n() {
    }

    public static n A3(int i10, CharSequence charSequence) {
        n nVar = new n(i10, charSequence);
        nVar.M0();
        return nVar;
    }

    public static n B3(int i10, CharSequence charSequence, r<n> rVar) {
        n nVar = new n(i10, charSequence, rVar);
        nVar.M0();
        return nVar;
    }

    public static n C3(int i10, CharSequence charSequence, CharSequence charSequence2) {
        n nVar = new n(i10, charSequence, charSequence2);
        nVar.M0();
        return nVar;
    }

    public static n D3(int i10, CharSequence charSequence, CharSequence charSequence2, r<n> rVar) {
        n nVar = new n(i10, charSequence, charSequence2, rVar);
        nVar.M0();
        return nVar;
    }

    public static n F3(r<n> rVar) {
        n nVar = new n(rVar);
        nVar.M0();
        return nVar;
    }

    public static n G3(CharSequence charSequence) {
        n nVar = new n(charSequence);
        nVar.M0();
        return nVar;
    }

    public static n H3(CharSequence charSequence, r<n> rVar) {
        n nVar = new n(charSequence, rVar);
        nVar.M0();
        return nVar;
    }

    public static n I3(CharSequence charSequence, CharSequence charSequence2) {
        n nVar = new n(charSequence, charSequence2);
        nVar.M0();
        return nVar;
    }

    public static n J3(CharSequence charSequence, CharSequence charSequence2, r<n> rVar) {
        n nVar = new n(charSequence, charSequence2, rVar);
        nVar.M0();
        return nVar;
    }

    public static n N3(int i10) {
        return v3(i10);
    }

    public static n O3(int i10, int i11) {
        return w3(i10, i11);
    }

    public static n P3(int i10, String str) {
        return A3(i10, str);
    }

    public static n Q1() {
        return new n();
    }

    public static n Q3(int i10, String str, String str2) {
        return C3(i10, str, str2);
    }

    public static n R1(DialogXStyle dialogXStyle) {
        return new n().q3(dialogXStyle);
    }

    public static n R3(String str) {
        return G3(str);
    }

    public static n S1(r<n> rVar) {
        return new n().S2(rVar);
    }

    public static n S3(String str, String str2) {
        return I3(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T3() {
        List<n> list = f74006v1;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f74013q1 = true;
        if (C() != null) {
            C().setVisibility(8);
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(f74006v1);
        if (Build.VERSION.SDK_INT >= 24) {
            copyOnWriteArrayList.removeIf(new Predicate() { // from class: com.kongzue.dialogx.dialogs.m
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return androidx.core.util.e.a((n) obj);
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

    /* JADX INFO: Access modifiers changed from: private */
    public int V1() {
        if (f74006v1 == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < f74006v1.size(); i11++) {
            n nVar = f74006v1.get(i11);
            if (nVar != null && !nVar.f74013q1) {
                i10++;
            }
        }
        return i10;
    }

    public static n v3(int i10) {
        n nVar = new n(i10);
        nVar.M0();
        return nVar;
    }

    public static n w3(int i10, int i11) {
        n nVar = new n(i10, i11);
        nVar.M0();
        return nVar;
    }

    private void x2() {
        if (c2() == null || c2().f74030b == null || c2() == null || c2().f74030b == null) {
            return;
        }
        LinearLayout linearLayout = c2().f74030b;
        linearLayout.post(new b(linearLayout));
    }

    public static n x3(int i10, int i11, int i12, r<n> rVar) {
        n nVar = new n(i10, i11, i12, rVar);
        nVar.M0();
        return nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y2() {
        if (c2() == null || c2().f74030b == null || c2() == null || c2().f74030b == null) {
            return;
        }
        LinearLayout linearLayout = c2().f74030b;
        linearLayout.post(new c(linearLayout));
    }

    public static n y3(int i10, int i11, r<n> rVar) {
        n nVar = new n(i10, i11, rVar);
        nVar.M0();
        return nVar;
    }

    public static n z3(int i10, r<n> rVar) {
        n nVar = new n(i10, rVar);
        nVar.M0();
        return nVar;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void A0() {
        n nVar;
        if (C() != null) {
            BaseDialog.p(C());
            this.f74071r = false;
        }
        if (c2().f74033e != null) {
            c2().f74033e.removeAllViews();
        }
        if (DialogX.f73600l) {
            List<n> list = f74006v1;
            if (list == null || list.isEmpty()) {
                nVar = null;
            } else {
                List<n> list2 = f74006v1;
                nVar = list2.get(list2.size() - 1);
            }
            if (nVar != null) {
                nVar.W1();
            }
        } else if (f74006v1 != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(f74006v1);
            for (int i10 = 0; i10 < copyOnWriteArrayList.size(); i10++) {
                n nVar2 = (n) copyOnWriteArrayList.get(i10);
                if (copyOnWriteArrayList.size() < f74003b2) {
                    nVar2.x2();
                } else if (i10 <= copyOnWriteArrayList.size() - f74003b2) {
                    nVar2.W1();
                    f74006v1.remove(nVar2);
                } else {
                    nVar2.x2();
                }
            }
        }
        if (f74006v1 == null) {
            f74006v1 = new ArrayList();
        }
        f74006v1.add(this);
        int iG = i0() ? R.layout.layout_dialogx_poptip_material : R.layout.layout_dialogx_poptip_material_dark;
        if (this.f74072s.l() != null) {
            if (this.f74072s.l().g(i0()) != 0) {
                iG = this.f74072s.l().g(i0());
            }
            if (this.S == null) {
                if (this.f74072s.l().a() == null) {
                    this.S = DialogXStyle.PopTipSettings.ALIGN.BOTTOM;
                } else {
                    this.S = this.f74072s.l().a();
                }
            }
            int iE = this.f74072s.l().e(i0());
            int iF = this.f74072s.l().f(i0());
            int i11 = this.Q;
            if (i11 != 0 || (i11 = V1) != 0) {
                iE = i11;
            } else if (iE == 0) {
                iE = R.anim.anim_dialogx_default_enter;
            }
            this.Q = iE;
            int i12 = this.R;
            if (i12 != 0 || (i12 = f74002a2) != 0) {
                iF = i12;
            } else if (iF == 0) {
                iF = R.anim.anim_dialogx_default_exit;
            }
            this.R = iF;
            long j10 = this.f74076w;
            if (j10 == -1) {
                j10 = L1;
            }
            this.f74076w = j10;
            long j11 = this.f74077x;
            if (j11 == -1) {
                j11 = R1;
            }
            this.f74077x = j11;
        }
        this.f74076w = 0L;
        View viewM = m(iG);
        this.P = new h(viewM);
        if (viewM != null) {
            viewM.setTag(this.O);
        }
        BaseDialog.O0(viewM);
    }

    public n A2(com.kongzue.dialogx.interfaces.i<n> iVar) {
        this.f74066m = iVar;
        return this;
    }

    protected void B2(n nVar) {
    }

    public n C2(com.kongzue.dialogx.interfaces.i<n> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    protected void D2(n nVar) {
    }

    public n E2() {
        this.M.clean();
        x0();
        return this;
    }

    public n E3(Activity activity) {
        n nVar;
        super.e();
        if (C() == null) {
            if (DialogX.f73600l) {
                List<n> list = f74006v1;
                if (list == null || list.isEmpty()) {
                    nVar = null;
                } else {
                    List<n> list2 = f74006v1;
                    nVar = list2.get(list2.size() - 1);
                }
                if (nVar != null) {
                    nVar.W1();
                }
            } else if (f74006v1 != null) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(f74006v1);
                for (int i10 = 0; i10 < copyOnWriteArrayList.size(); i10++) {
                    n nVar2 = (n) copyOnWriteArrayList.get(i10);
                    if (copyOnWriteArrayList.size() < f74003b2) {
                        nVar2.x2();
                    } else if (i10 <= copyOnWriteArrayList.size() - f74003b2) {
                        nVar2.W1();
                        f74006v1.remove(nVar2);
                    } else {
                        nVar2.x2();
                    }
                }
            }
            if (f74006v1 == null) {
                f74006v1 = new ArrayList();
            }
            f74006v1.add(this);
            int iG = i0() ? R.layout.layout_dialogx_poptip_material : R.layout.layout_dialogx_poptip_material_dark;
            if (this.f74072s.l() != null) {
                if (this.f74072s.l().g(i0()) != 0) {
                    iG = this.f74072s.l().g(i0());
                }
                if (this.S == null) {
                    if (this.f74072s.l().a() == null) {
                        this.S = DialogXStyle.PopTipSettings.ALIGN.BOTTOM;
                    } else {
                        this.S = this.f74072s.l().a();
                    }
                }
                int iE = this.f74072s.l().e(i0());
                int iF = this.f74072s.l().f(i0());
                int i11 = this.Q;
                if (i11 != 0 || (i11 = V1) != 0) {
                    iE = i11;
                } else if (iE == 0) {
                    iE = R.anim.anim_dialogx_default_enter;
                }
                this.Q = iE;
                int i12 = this.R;
                if (i12 != 0 || (i12 = f74002a2) != 0) {
                    iF = i12;
                } else if (iF == 0) {
                    iF = R.anim.anim_dialogx_default_exit;
                }
                this.R = iF;
                long j10 = this.f74076w;
                if (j10 == -1) {
                    j10 = L1;
                }
                this.f74076w = j10;
                long j11 = this.f74077x;
                if (j11 == -1) {
                    j11 = R1;
                }
                this.f74077x = j11;
            }
            View viewM = m(iG);
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

    public void F2() {
        N1(this.f74012p1);
    }

    public n G2(int i10, com.kongzue.dialogx.interfaces.i<n> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    public n H2(DialogXStyle.PopTipSettings.ALIGN align) {
        this.S = align;
        if (c2() != null) {
            c2().d();
        }
        return this;
    }

    public n I2(int i10, int i11) {
        this.Q = i10;
        this.R = i11;
        return this;
    }

    @Deprecated
    public n J2(boolean z10) {
        t3(z10);
        return this;
    }

    public n K2(@ColorInt int i10) {
        this.f74075v = Integer.valueOf(i10);
        x0();
        return this;
    }

    public n K3() {
        return z2();
    }

    public n L2(@ColorRes int i10) {
        this.f74075v = Integer.valueOf(v(i10));
        x0();
        return this;
    }

    public n L3() {
        N1(3500L);
        if (!this.E && !this.f74071r) {
            M0();
        }
        return this;
    }

    public n M1(CharSequence charSequence) {
        this.Z = TextUtils.concat(this.Z, charSequence);
        x0();
        return this;
    }

    public n M2(int i10) {
        this.f74011p0 = S(i10);
        x0();
        return this;
    }

    public n M3() {
        N1(2000L);
        if (!this.E && !this.f74071r) {
            M0();
        }
        return this;
    }

    public n N1(long j10) {
        this.f74012p1 = j10;
        Timer timer = this.f74010l1;
        if (timer != null) {
            timer.cancel();
        }
        if (j10 < 0) {
            return this;
        }
        Timer timer2 = new Timer();
        this.f74010l1 = timer2;
        timer2.schedule(new a(), j10);
        return this;
    }

    public n N2(int i10, t<n> tVar) {
        this.f74011p0 = S(i10);
        this.T = tVar;
        x0();
        return this;
    }

    public n O1(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    public n O2(t<n> tVar) {
        this.T = tVar;
        return this;
    }

    public n P1() {
        L0(F());
        return this;
    }

    public n P2(CharSequence charSequence) {
        this.f74011p0 = charSequence;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    protected void Q0() {
        W1();
    }

    public n Q2(CharSequence charSequence, t<n> tVar) {
        this.f74011p0 = charSequence;
        this.T = tVar;
        x0();
        return this;
    }

    public n R2(TextInfo textInfo) {
        this.f74008f1 = textInfo;
        x0();
        return this;
    }

    public n S2(r<n> rVar) {
        this.M = rVar;
        x0();
        return this;
    }

    public n T1(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: T2, reason: merged with bridge method [inline-methods] */
    public n F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    public n U1() {
        this.f74069p.clear();
        return this;
    }

    public n U2(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    public n V2(com.kongzue.dialogx.interfaces.f<n> fVar) {
        this.N = fVar;
        if (this.f74071r) {
            fVar.b(this.O);
        }
        return this;
    }

    public void W1() {
        BaseDialog.C0(new e());
    }

    public n W2(com.kongzue.dialogx.interfaces.g<n> gVar) {
        this.X = gVar;
        return this;
    }

    public DialogXStyle.PopTipSettings.ALIGN X1() {
        return this.S;
    }

    public n X2(long j10) {
        this.f74076w = j10;
        return this;
    }

    public int Y1() {
        return this.f74075v.intValue();
    }

    public n Y2(int i10) {
        this.Q = i10;
        return this;
    }

    public CharSequence Z1() {
        return this.f74011p0;
    }

    public n Z2(long j10) {
        this.f74077x = j10;
        return this;
    }

    public TextInfo a2() {
        return this.f74008f1;
    }

    public n a3(int i10) {
        this.R = i10;
        return this;
    }

    public View b2() {
        r<n> rVar = this.M;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    public n b3(boolean z10) {
        this.f74057d = z10 ? 1 : 0;
        return this;
    }

    public h c2() {
        return this.P;
    }

    public n c3(int i10) {
        this.Y = i10;
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.f<n> d2() {
        com.kongzue.dialogx.interfaces.f<n> fVar = this.N;
        return fVar == null ? new f() : fVar;
    }

    public n d3(int i10, int i11, int i12, int i13) {
        int[] iArr = this.f74009i1;
        iArr[0] = i10;
        iArr[1] = i11;
        iArr[2] = i12;
        iArr[3] = i13;
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.g<n> e2() {
        return this.X;
    }

    public n e3(int i10) {
        this.f74009i1[3] = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        return false;
    }

    public long f2() {
        return this.f74076w;
    }

    public n f3(int i10) {
        this.f74009i1[0] = i10;
        x0();
        return this;
    }

    public long g2() {
        return this.f74077x;
    }

    public n g3(int i10) {
        this.f74009i1[2] = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        W1();
    }

    public int h2() {
        return this.Y;
    }

    public n h3(int i10) {
        this.f74009i1[1] = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    protected void i() {
        super.i();
        BaseDialog.p(C());
    }

    public int i2() {
        return this.f74009i1[3];
    }

    public n i3(int i10) {
        this.Z = S(i10);
        x0();
        return this;
    }

    public int j2() {
        return this.f74009i1[0];
    }

    public n j3(CharSequence charSequence) {
        this.Z = charSequence;
        x0();
        return this;
    }

    public int k2() {
        return this.f74009i1[2];
    }

    public n k3(TextInfo textInfo) {
        this.f74007b1 = textInfo;
        x0();
        return this;
    }

    public int l2() {
        return this.f74009i1[1];
    }

    public n l3(t<n> tVar) {
        this.T = tVar;
        return this;
    }

    public CharSequence m2() {
        return this.Z;
    }

    public n m3(t<n> tVar) {
        this.U = tVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public TextInfo n2() {
        return this.f74007b1;
    }

    public n n3(float f10) {
        this.W = f10;
        x0();
        return this;
    }

    public t<n> o2() {
        return this.T;
    }

    public n o3(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    public t<n> p2() {
        return this.U;
    }

    public n p3(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    public float q2() {
        return this.W;
    }

    public n q3(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    public void r2() {
        this.F = true;
        if (C() != null) {
            C().setVisibility(8);
        }
    }

    public n r3(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    public n s2() {
        t3(false);
        int iB = R.mipmap.ico_dialogx_error;
        if (T().l() != null && T().l().b() != 0) {
            iB = T().l().b();
        }
        c3(iB);
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: s3, reason: merged with bridge method [inline-methods] */
    public n L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    public n t2() {
        t3(false);
        int iC = R.mipmap.ico_dialogx_success;
        if (T().l() != null && T().l().c() != 0) {
            iC = T().l().c();
        }
        c3(iC);
        return this;
    }

    public n t3(boolean z10) {
        this.V = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        x0();
        return this;
    }

    public n u2() {
        t3(false);
        int iD = R.mipmap.ico_dialogx_warning;
        if (T().l() != null && T().l().d() != 0) {
            iD = T().l().d();
        }
        c3(iD);
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: u3, reason: merged with bridge method [inline-methods] */
    public n M0() {
        n nVar;
        if (this.F && C() != null) {
            C().setVisibility(0);
            return this;
        }
        super.e();
        if (C() == null) {
            if (DialogX.f73600l) {
                List<n> list = f74006v1;
                if (list == null || list.isEmpty()) {
                    nVar = null;
                } else {
                    List<n> list2 = f74006v1;
                    nVar = list2.get(list2.size() - 1);
                }
                if (nVar != null) {
                    nVar.W1();
                }
            } else if (f74006v1 != null) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(f74006v1);
                for (int i10 = 0; i10 < copyOnWriteArrayList.size(); i10++) {
                    n nVar2 = (n) copyOnWriteArrayList.get(i10);
                    if (copyOnWriteArrayList.size() < f74003b2) {
                        nVar2.x2();
                    } else if (i10 <= copyOnWriteArrayList.size() - f74003b2) {
                        nVar2.W1();
                        f74006v1.remove(nVar2);
                    } else {
                        nVar2.x2();
                    }
                }
            }
            if (f74006v1 == null) {
                f74006v1 = new ArrayList();
            }
            f74006v1.add(this);
            int iG = i0() ? R.layout.layout_dialogx_poptip_material : R.layout.layout_dialogx_poptip_material_dark;
            if (this.f74072s.l() != null) {
                if (this.f74072s.l().g(i0()) != 0) {
                    iG = this.f74072s.l().g(i0());
                }
                if (this.S == null) {
                    if (this.f74072s.l().a() == null) {
                        this.S = DialogXStyle.PopTipSettings.ALIGN.BOTTOM;
                    } else {
                        this.S = this.f74072s.l().a();
                    }
                }
                int iE = this.f74072s.l().e(i0());
                int iF = this.f74072s.l().f(i0());
                int i11 = this.Q;
                if (i11 != 0 || (i11 = V1) != 0) {
                    iE = i11;
                } else if (iE == 0) {
                    iE = R.anim.anim_dialogx_default_enter;
                }
                this.Q = iE;
                int i12 = this.R;
                if (i12 != 0 || (i12 = f74002a2) != 0) {
                    iF = i12;
                } else if (iF == 0) {
                    iF = R.anim.anim_dialogx_default_exit;
                }
                this.R = iF;
                long j10 = this.f74076w;
                if (j10 == -1) {
                    j10 = L1;
                }
                this.f74076w = j10;
                long j11 = this.f74077x;
                if (j11 == -1) {
                    j11 = R1;
                }
                this.f74077x = j11;
            }
            View viewM = m(iG);
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

    @Deprecated
    public boolean v2() {
        return w2();
    }

    public boolean w2() {
        if (this.V != null || T().l() == null) {
            return this.V == BaseDialog.BOOLEAN.TRUE;
        }
        return T().l().h();
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void x0() {
        if (c2() == null) {
            return;
        }
        BaseDialog.C0(new d());
    }

    public n z2() {
        N1(-1L);
        return this;
    }

    public n(r<n> rVar) {
        this.M = rVar;
    }

    public n(CharSequence charSequence) {
        this.Z = charSequence;
    }

    public n(int i10) {
        this.Z = S(i10);
    }

    public n(int i10, CharSequence charSequence) {
        this.Y = i10;
        this.Z = charSequence;
    }

    public n(int i10, CharSequence charSequence, CharSequence charSequence2) {
        this.Y = i10;
        this.Z = charSequence;
        this.f74011p0 = charSequence2;
    }

    public n(int i10, int i11, int i12) {
        this.Y = i10;
        this.Z = S(i11);
        this.f74011p0 = S(i12);
    }

    public n(CharSequence charSequence, CharSequence charSequence2) {
        this.Z = charSequence;
        this.f74011p0 = charSequence2;
    }

    public n(int i10, int i11) {
        this.Z = S(i10);
        this.f74011p0 = S(i11);
    }

    public n(CharSequence charSequence, r<n> rVar) {
        this.Z = charSequence;
        this.M = rVar;
    }

    public n(int i10, r<n> rVar) {
        this.Z = S(i10);
        this.M = rVar;
    }

    public n(int i10, CharSequence charSequence, r<n> rVar) {
        this.Y = i10;
        this.Z = charSequence;
        this.M = rVar;
    }

    public n(int i10, CharSequence charSequence, CharSequence charSequence2, r<n> rVar) {
        this.Y = i10;
        this.Z = charSequence;
        this.f74011p0 = charSequence2;
        this.M = rVar;
    }

    public n(int i10, int i11, int i12, r<n> rVar) {
        this.Y = i10;
        this.Z = S(i11);
        this.f74011p0 = S(i12);
        this.M = rVar;
    }

    public n(CharSequence charSequence, CharSequence charSequence2, r<n> rVar) {
        this.Z = charSequence;
        this.f74011p0 = charSequence2;
        this.M = rVar;
    }

    public n(int i10, int i11, r<n> rVar) {
        this.Z = S(i10);
        this.f74011p0 = S(i11);
        this.M = rVar;
    }
}
