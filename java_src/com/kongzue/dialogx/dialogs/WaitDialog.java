package com.kongzue.dialogx.dialogs;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
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
import com.kongzue.dialogx.interfaces.b0;
import com.kongzue.dialogx.interfaces.p;
import com.kongzue.dialogx.interfaces.q;
import com.kongzue.dialogx.interfaces.r;
import com.kongzue.dialogx.util.TextInfo;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;
import com.kongzue.dialogx.util.views.ProgressView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
public class WaitDialog extends BaseDialog {
    public static int L1 = 0;
    public static BaseDialog.BOOLEAN R1 = null;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public static int f73659q1 = -1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public static int f73660r1 = -1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public static int f73661v1;
    protected r<WaitDialog> N;
    protected int O;
    protected int P;
    protected com.kongzue.dialogx.interfaces.g<WaitDialog> R;
    protected p<WaitDialog> S;
    protected CharSequence T;
    protected TextInfo X;
    protected BaseDialog.BOOLEAN Z;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    protected q<WaitDialog> f73662b1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private WeakReference<View> f73663f1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    protected WeakReference<h> f73664i1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    protected Timer f73665l1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.f<WaitDialog> f73666p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    protected TYPE f73667p1;
    protected boolean M = true;
    protected float Q = DialogX.P;
    protected long U = 1500;
    protected float V = -1.0f;
    protected int W = -1;
    protected Integer Y = null;

    public enum TYPE {
        NONE,
        SUCCESS,
        WARNING,
        ERROR,
        PROGRESSING
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iE = R.layout.layout_dialogx_wait;
            if (((BaseDialog) WaitDialog.this).f74072s.i() != null && ((BaseDialog) WaitDialog.this).f74072s.i().e(WaitDialog.this.i0()) != 0) {
                iE = ((BaseDialog) WaitDialog.this).f74072s.i().e(WaitDialog.this.i0());
            }
            WaitDialog.this.f73664i1 = new WeakReference<>(WaitDialog.this.new h(iE));
            if (WaitDialog.this.j2() != null) {
                WaitDialog.this.j2().g();
                if (WaitDialog.this.w2() != null) {
                    WaitDialog.this.w2().setTag(WaitDialog.this);
                    BaseDialog.O0(WaitDialog.this.w2());
                }
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f73669b;

        b(Activity activity) {
            this.f73669b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            int iE = R.layout.layout_dialogx_wait;
            if (((BaseDialog) WaitDialog.this).f74072s.i() != null && ((BaseDialog) WaitDialog.this).f74072s.i().e(WaitDialog.this.i0()) != 0) {
                iE = ((BaseDialog) WaitDialog.this).f74072s.i().e(WaitDialog.this.i0());
            }
            WaitDialog.this.f73664i1 = new WeakReference<>(WaitDialog.this.new h(iE));
            if (WaitDialog.this.j2() != null) {
                WaitDialog.this.j2().g();
                if (WaitDialog.this.w2() != null) {
                    WaitDialog.this.w2().setTag(WaitDialog.this);
                    BaseDialog.N0(this.f73669b, WaitDialog.this.w2());
                }
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (WaitDialog.this.j2() != null) {
                WaitDialog.this.j2().b();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (WaitDialog.this.j2() != null) {
                WaitDialog.this.j2().a(null);
            }
        }
    }

    class e extends TimerTask {
        e() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            WaitDialog.this.f2();
        }
    }

    class f extends com.kongzue.dialogx.interfaces.f<WaitDialog> {
        f() {
        }
    }

    static /* synthetic */ class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f73675a;

        static {
            int[] iArr = new int[TYPE.values().length];
            f73675a = iArr;
            try {
                iArr[TYPE.WARNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73675a[TYPE.SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73675a[TYPE.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73675a[TYPE.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    protected WaitDialog() {
        this.f74055b = new WeakReference<>(BaseDialog.X());
        this.f74070q = DialogX.f73614z;
    }

    public static WaitDialog A3(Activity activity, float f10) {
        WaitDialog waitDialogO2 = o2(activity);
        if (waitDialogO2 == null) {
            return x2();
        }
        waitDialogO2.q3(TYPE.PROGRESSING);
        waitDialogO2.i3(f10);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog B3(Activity activity, int i10) {
        WaitDialog waitDialogO2 = o2(activity);
        if (waitDialogO2 == null) {
            return x2();
        }
        waitDialogO2.p3(i10, TYPE.NONE);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog C3(Activity activity, int i10, float f10) {
        WaitDialog waitDialogO2 = o2(activity);
        if (waitDialogO2 == null) {
            return x2();
        }
        waitDialogO2.p3(i10, TYPE.PROGRESSING);
        waitDialogO2.i3(f10);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog D3(Activity activity, CharSequence charSequence) {
        WaitDialog waitDialogO2 = o2(activity);
        if (waitDialogO2 == null) {
            return x2();
        }
        waitDialogO2.r3(charSequence, TYPE.NONE);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog E3(Activity activity, CharSequence charSequence, float f10) {
        WaitDialog waitDialogO2 = o2(activity);
        if (waitDialogO2 == null) {
            return x2();
        }
        waitDialogO2.r3(charSequence, TYPE.PROGRESSING);
        waitDialogO2.i3(f10);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog F3(CharSequence charSequence) {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 == null) {
            return x2();
        }
        waitDialogN2.r3(charSequence, TYPE.NONE);
        if (waitDialogN2.j2() == null) {
            waitDialogN2.M0();
        } else {
            waitDialogN2.Y1();
        }
        return waitDialogN2;
    }

    public static WaitDialog G3(CharSequence charSequence, float f10) {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 == null) {
            return x2();
        }
        waitDialogN2.r3(charSequence, TYPE.PROGRESSING);
        waitDialogN2.i3(f10);
        if (waitDialogN2.j2() == null) {
            waitDialogN2.M0();
        } else {
            waitDialogN2.Y1();
        }
        return waitDialogN2;
    }

    protected static WaitDialog M3(TYPE type) {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 == null) {
            return x2();
        }
        waitDialogN2.r3(null, type);
        if (waitDialogN2.j2() == null) {
            waitDialogN2.M0();
        } else {
            waitDialogN2.Y1();
        }
        return waitDialogN2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N2(h hVar) {
        WeakReference<h> weakReference = this.f73664i1;
        if (weakReference == null || weakReference.get() == hVar) {
            return;
        }
        this.f73664i1 = new WeakReference<>(hVar);
    }

    public static WaitDialog N3() {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 == null) {
            return x2();
        }
        waitDialogN2.r3(null, TYPE.NONE);
        if (waitDialogN2.j2() == null) {
            waitDialogN2.M0();
        } else {
            waitDialogN2.Y1();
        }
        return waitDialogN2;
    }

    public static WaitDialog X1() {
        return new WaitDialog();
    }

    public static WaitDialog Z2(int i10) {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 == null) {
            return x2();
        }
        waitDialogN2.C2(i10);
        waitDialogN2.x0();
        return waitDialogN2;
    }

    public static WaitDialog a3(CharSequence charSequence) {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 == null) {
            return x2();
        }
        waitDialogN2.D2(charSequence);
        waitDialogN2.x0();
        return waitDialogN2;
    }

    public static void c2() {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 != null) {
            waitDialogN2.f2();
        }
    }

    public static void d2(long j10) {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 != null) {
            waitDialogN2.g2(j10);
        }
    }

    public static void e2(Activity activity) {
        WaitDialog waitDialogO2 = o2(activity);
        if (waitDialogO2 != null) {
            waitDialogO2.f2();
        }
    }

    public static int getType() {
        return z2().W;
    }

    public static WaitDialog n2() {
        return o2(null);
    }

    public static WaitDialog o2(Activity activity) {
        if (activity == null) {
            activity = BaseDialog.X();
        }
        if (BaseDialog.d0(activity)) {
            return null;
        }
        for (BaseDialog baseDialog : BaseDialog.Q()) {
            if ((baseDialog instanceof WaitDialog) && baseDialog.m0() && baseDialog.N() == activity) {
                return (WaitDialog) baseDialog;
            }
        }
        return new WaitDialog();
    }

    public static CharSequence p2() {
        return z2().T;
    }

    public static WaitDialog w3(float f10) {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 == null) {
            return x2();
        }
        waitDialogN2.q3(TYPE.PROGRESSING);
        waitDialogN2.i3(f10);
        if (waitDialogN2.j2() == null) {
            waitDialogN2.M0();
        } else {
            waitDialogN2.Y1();
        }
        return waitDialogN2;
    }

    protected static WaitDialog x2() {
        return new WaitDialog();
    }

    public static WaitDialog x3(int i10) {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 == null) {
            return x2();
        }
        waitDialogN2.p3(i10, TYPE.NONE);
        if (waitDialogN2.j2() == null) {
            waitDialogN2.M0();
        } else {
            waitDialogN2.Y1();
        }
        return waitDialogN2;
    }

    public static WaitDialog y3(int i10, float f10) {
        WaitDialog waitDialogN2 = n2();
        if (waitDialogN2 == null) {
            return x2();
        }
        waitDialogN2.p3(i10, TYPE.PROGRESSING);
        waitDialogN2.i3(f10);
        if (waitDialogN2.j2() == null) {
            waitDialogN2.M0();
        } else {
            waitDialogN2.Y1();
        }
        return waitDialogN2;
    }

    protected static WaitDialog z2() {
        WaitDialog waitDialogN2 = n2();
        return waitDialogN2 == null ? x2() : waitDialogN2;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void A0() {
        x0();
    }

    public WaitDialog A2(com.kongzue.dialogx.interfaces.i<WaitDialog> iVar) {
        this.f74066m = iVar;
        return this;
    }

    public WaitDialog B2(com.kongzue.dialogx.interfaces.i<WaitDialog> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    protected WaitDialog C2(int i10) {
        this.T = S(i10);
        return this;
    }

    protected WaitDialog D2(CharSequence charSequence) {
        this.T = charSequence;
        return this;
    }

    public WaitDialog E2() {
        this.N.clean();
        x0();
        return this;
    }

    public WaitDialog F2(int i10, com.kongzue.dialogx.interfaces.i<WaitDialog> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    public WaitDialog G2(int i10, int i11) {
        this.O = i10;
        this.P = i11;
        return this;
    }

    public WaitDialog H2(@ColorInt int i10) {
        this.f74075v = Integer.valueOf(i10);
        x0();
        return this;
    }

    protected void H3(int i10, TYPE type) {
        this.W = type.ordinal();
        this.T = S(i10);
        this.f73667p1 = type;
        M0();
    }

    public WaitDialog I2(@ColorRes int i10) {
        this.f74075v = Integer.valueOf(v(i10));
        x0();
        return this;
    }

    protected void I3(Activity activity, int i10, TYPE type) {
        this.W = type.ordinal();
        this.T = S(i10);
        this.f73667p1 = type;
        z3(activity);
    }

    public WaitDialog J2(boolean z10) {
        this.M = z10;
        return this;
    }

    protected void J3(Activity activity, CharSequence charSequence, TYPE type) {
        this.W = type.ordinal();
        this.T = charSequence;
        this.f73667p1 = type;
        z3(activity);
    }

    public WaitDialog K2(boolean z10) {
        this.Z = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        x0();
        return this;
    }

    protected void K3(TYPE type) {
        if (this.f73667p1 == type) {
            return;
        }
        this.W = type.ordinal();
        this.f73667p1 = type;
        if (j2() != null) {
            j2().h(type);
        }
    }

    public WaitDialog L2(r<WaitDialog> rVar) {
        this.N = rVar;
        x0();
        return this;
    }

    protected void L3(CharSequence charSequence, TYPE type) {
        this.W = type.ordinal();
        this.T = charSequence;
        this.f73667p1 = type;
        M0();
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: M2, reason: merged with bridge method [inline-methods] */
    public WaitDialog F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    public WaitDialog O2(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    public WaitDialog P2(com.kongzue.dialogx.interfaces.f<WaitDialog> fVar) {
        this.f73666p0 = fVar;
        if (this.f74071r) {
            fVar.b(z2());
        }
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    protected void Q0() {
        c2();
    }

    public WaitDialog Q2(com.kongzue.dialogx.interfaces.g<WaitDialog> gVar) {
        this.R = gVar;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: R2, reason: merged with bridge method [inline-methods] */
    public WaitDialog I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    public WaitDialog S2(long j10) {
        this.f74076w = j10;
        return this;
    }

    public WaitDialog T2(int i10) {
        this.O = i10;
        return this;
    }

    public WaitDialog U1(CharSequence charSequence) {
        this.T = TextUtils.concat(this.T, charSequence);
        x0();
        return this;
    }

    public WaitDialog U2(long j10) {
        this.f74077x = j10;
        return this;
    }

    public WaitDialog V1(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    public WaitDialog V2(int i10) {
        this.P = i10;
        return this;
    }

    public WaitDialog W1() {
        L0(F());
        return this;
    }

    public WaitDialog W2(@ColorInt int i10) {
        this.Y = Integer.valueOf(i10);
        x0();
        return this;
    }

    public WaitDialog X2(int i10) {
        this.f74079z = i10;
        x0();
        return this;
    }

    protected void Y1() {
        Timer timer = this.f73665l1;
        if (timer != null) {
            timer.cancel();
        }
    }

    public WaitDialog Y2(int i10) {
        this.f74078y = i10;
        x0();
        return this;
    }

    public WaitDialog Z1(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    public WaitDialog a2() {
        this.f74069p.clear();
        return this;
    }

    public void b2() {
        this.f74071r = false;
        k2().a(this);
        J0(Lifecycle.State.DESTROYED);
        WeakReference<h> weakReference = this.f73664i1;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f73664i1 = null;
        WeakReference<View> weakReference2 = this.f73663f1;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        this.f73663f1 = null;
        this.f73666p0 = null;
        WeakReference<Activity> weakReference3 = this.f74055b;
        if (weakReference3 != null) {
            weakReference3.clear();
        }
        System.gc();
    }

    public WaitDialog b3(int i10) {
        this.T = S(i10);
        x0();
        return this;
    }

    public WaitDialog c3(CharSequence charSequence) {
        this.T = charSequence;
        x0();
        return this;
    }

    public WaitDialog d3(TextInfo textInfo) {
        this.X = textInfo;
        x0();
        return this;
    }

    public WaitDialog e3(int i10) {
        this.B = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        BaseDialog.BOOLEAN r10 = this.Z;
        if (r10 != null) {
            return r10 == BaseDialog.BOOLEAN.TRUE;
        }
        BaseDialog.BOOLEAN r11 = R1;
        if (r11 != null) {
            return r11 == BaseDialog.BOOLEAN.TRUE;
        }
        return DialogX.f73614z;
    }

    public void f2() {
        this.f74071r = false;
        BaseDialog.C0(new d());
    }

    public WaitDialog f3(int i10) {
        this.A = i10;
        x0();
        return this;
    }

    public void g2(long j10) {
        Y1();
        Timer timer = new Timer();
        this.f73665l1 = timer;
        timer.schedule(new e(), j10);
    }

    public WaitDialog g3(p<WaitDialog> pVar) {
        this.S = pVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        c2();
    }

    public int h2() {
        return this.f74075v.intValue();
    }

    public WaitDialog h3(q<WaitDialog> qVar) {
        this.f73662b1 = qVar;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public boolean i0() {
        DialogX.THEME theme = DialogX.f73593e;
        if (theme == null) {
            return super.i0();
        }
        return theme == DialogX.THEME.LIGHT;
    }

    public View i2() {
        r<WaitDialog> rVar = this.N;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    public WaitDialog i3(float f10) {
        this.V = f10;
        x0();
        return this;
    }

    public h j2() {
        WeakReference<h> weakReference = this.f73664i1;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public WaitDialog j3(float f10) {
        this.Q = f10;
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.f<WaitDialog> k2() {
        com.kongzue.dialogx.interfaces.f<WaitDialog> fVar = this.f73666p0;
        return fVar == null ? new f() : fVar;
    }

    public WaitDialog k3(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    public com.kongzue.dialogx.interfaces.g<WaitDialog> l2() {
        return this.R;
    }

    public WaitDialog l3(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    public long m2() {
        return this.f74077x;
    }

    public WaitDialog m3(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public WaitDialog n3(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: o3, reason: merged with bridge method [inline-methods] */
    public WaitDialog L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    protected void p3(int i10, TYPE type) {
        this.T = S(i10);
        K3(type);
        x0();
    }

    public CharSequence q2() {
        return this.T;
    }

    protected void q3(TYPE type) {
        K3(type);
    }

    public TextInfo r2() {
        return this.X;
    }

    protected void r3(CharSequence charSequence, TYPE type) {
        this.T = charSequence;
        K3(type);
        x0();
    }

    public p<WaitDialog> s2() {
        return this.S;
    }

    protected void s3(long j10) {
        this.U = j10;
        K3(this.f73667p1);
    }

    public q<WaitDialog> t2() {
        return this.f73662b1;
    }

    public WaitDialog t3(TYPE type) {
        K3(type);
        return this;
    }

    public float u2() {
        return this.V;
    }

    protected void u3(View view) {
        this.f73663f1 = new WeakReference<>(view);
        H0(view);
    }

    public float v2() {
        float f10 = this.Q;
        return f10 < 0.0f ? o(15.0f) : f10;
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: v3, reason: merged with bridge method [inline-methods] */
    public WaitDialog M0() {
        super.e();
        BaseDialog.C0(new a());
        return this;
    }

    protected View w2() {
        WeakReference<View> weakReference = this.f73663f1;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void x0() {
        if (j2() == null) {
            return;
        }
        BaseDialog.C0(new c());
    }

    public boolean y2() {
        return this.M;
    }

    public WaitDialog z3(Activity activity) {
        super.e();
        activity.runOnUiThread(new b(activity));
        return this;
    }

    public class h implements com.kongzue.dialogx.interfaces.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<View> f73676a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public DialogXBaseRelativeLayout f73677b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MaxRelativeLayout f73678c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RelativeLayout f73679d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public b0 f73680e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public RelativeLayout f73681f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f73682g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f73683h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f73684i = -1.0f;

        class a extends DialogXBaseRelativeLayout.c {

            /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.WaitDialog$h$a$a, reason: collision with other inner class name */
            class RunnableC0758a implements Runnable {
                RunnableC0758a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (WaitDialog.this.N() == null) {
                        return;
                    }
                    com.kongzue.dialogx.interfaces.g<WaitDialog> gVarD = h.this.d();
                    h hVar = h.this;
                    gVarD.b(WaitDialog.this, hVar.f73678c);
                    WaitDialog.this.s0();
                    WaitDialog.this.k2().b(WaitDialog.this);
                    WaitDialog.this.J0(Lifecycle.State.RESUMED);
                }
            }

            a() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void a() {
                WaitDialog.this.b2();
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.c
            public void b() {
                ((BaseDialog) WaitDialog.this).f74071r = true;
                ((BaseDialog) WaitDialog.this).E = false;
                WaitDialog.this.J0(Lifecycle.State.CREATED);
                h.this.f73677b.setAlpha(0.0f);
                h.this.f73678c.post(new RunnableC0758a());
            }
        }

        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                h hVar = h.this;
                hVar.h(WaitDialog.this.f73667p1);
            }
        }

        class c implements DialogXBaseRelativeLayout.d {
            c() {
            }

            @Override // com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout.d
            public boolean onBackPressed() {
                WaitDialog waitDialog = WaitDialog.this;
                p<WaitDialog> pVar = waitDialog.S;
                if (pVar != null) {
                    if (!pVar.a(waitDialog)) {
                        return true;
                    }
                    WaitDialog.c2();
                    return true;
                }
                if (!waitDialog.f0()) {
                    return true;
                }
                WaitDialog.c2();
                return true;
            }
        }

        class d extends ViewOutlineProvider {
            d() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), WaitDialog.this.Q);
            }
        }

        class e implements View.OnClickListener {
            e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WaitDialog waitDialog = WaitDialog.this;
                q<WaitDialog> qVar = waitDialog.f73662b1;
                if (qVar == null || !qVar.a(waitDialog, view)) {
                    h.this.a(view);
                }
            }
        }

        class f implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f73692b;

            class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    DialogXBaseRelativeLayout dialogXBaseRelativeLayout = h.this.f73677b;
                    if (dialogXBaseRelativeLayout != null) {
                        dialogXBaseRelativeLayout.setVisibility(8);
                    }
                    BaseDialog.p(WaitDialog.this.w2());
                }
            }

            f(View view) {
                this.f73692b = view;
            }

            @Override // java.lang.Runnable
            public void run() {
                View view = this.f73692b;
                if (view != null) {
                    view.setEnabled(false);
                }
                com.kongzue.dialogx.interfaces.g<WaitDialog> gVarD = h.this.d();
                h hVar = h.this;
                gVarD.a(WaitDialog.this, hVar.f73678c);
                BaseDialog.E0(new a(), h.this.f(null));
            }
        }

        class g extends com.kongzue.dialogx.interfaces.g<WaitDialog> {

            class a implements ValueAnimator.AnimatorUpdateListener {
                a() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    h.this.f73677b.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            }

            class b implements ValueAnimator.AnimatorUpdateListener {
                b() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DialogXBaseRelativeLayout dialogXBaseRelativeLayout = h.this.f73677b;
                    if (dialogXBaseRelativeLayout != null) {
                        dialogXBaseRelativeLayout.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                }
            }

            g() {
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void a(WaitDialog waitDialog, ViewGroup viewGroup) {
                Context contextN = WaitDialog.this.N();
                if (contextN == null) {
                    contextN = h.this.f73677b.getContext();
                }
                if (contextN == null) {
                    return;
                }
                int i10 = R.anim.anim_dialogx_default_exit;
                int i11 = WaitDialog.L1;
                if (i11 != 0) {
                    i10 = i11;
                }
                int i12 = WaitDialog.this.P;
                if (i12 != 0) {
                    i10 = i12;
                }
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(contextN, i10);
                long jF = h.this.f(animationLoadAnimation);
                animationLoadAnimation.setDuration(jF);
                animationLoadAnimation.setInterpolator(new AccelerateInterpolator());
                h.this.f73678c.startAnimation(animationLoadAnimation);
                h.this.f73677b.animate().alpha(0.0f).setInterpolator(new AccelerateInterpolator()).setDuration(jF);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                valueAnimatorOfFloat.setDuration(jF);
                valueAnimatorOfFloat.addUpdateListener(new b());
                valueAnimatorOfFloat.start();
            }

            @Override // com.kongzue.dialogx.interfaces.g
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(WaitDialog waitDialog, ViewGroup viewGroup) {
                int i10 = R.anim.anim_dialogx_default_enter;
                int i11 = WaitDialog.f73661v1;
                if (i11 != 0) {
                    i10 = i11;
                }
                WaitDialog waitDialog2 = WaitDialog.this;
                int i12 = waitDialog2.O;
                if (i12 != 0) {
                    i10 = i12;
                }
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(waitDialog2.N(), i10);
                long jE = h.this.e(animationLoadAnimation);
                animationLoadAnimation.setInterpolator(new DecelerateInterpolator());
                animationLoadAnimation.setDuration(jE);
                h.this.f73678c.startAnimation(animationLoadAnimation);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.setDuration(jE);
                valueAnimatorOfFloat.addUpdateListener(new a());
                valueAnimatorOfFloat.start();
                h.this.f73677b.animate().setDuration(jE).alpha(1.0f).setInterpolator(new DecelerateInterpolator()).setListener(null);
            }
        }

        /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.WaitDialog$h$h, reason: collision with other inner class name */
        class RunnableC0759h implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ TYPE f73698b;

            /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.WaitDialog$h$h$a */
            class a implements Runnable {

                /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.WaitDialog$h$h$a$a, reason: collision with other inner class name */
                class RunnableC0760a implements Runnable {
                    RunnableC0760a() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        h hVar = h.this;
                        if (WaitDialog.this.W > -1) {
                            hVar.a(null);
                        }
                    }
                }

                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    WaitDialog.this.k2().b(WaitDialog.this);
                    h.this.b();
                    h hVar = h.this;
                    if (WaitDialog.this.U > 0) {
                        ((View) hVar.f73680e).postDelayed(new RunnableC0760a(), WaitDialog.this.U);
                    }
                }
            }

            /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.WaitDialog$h$h$b */
            class b implements Runnable {
                b() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    h hVar = h.this;
                    if (WaitDialog.this.W > -1) {
                        hVar.a(null);
                    }
                }
            }

            RunnableC0759h(TYPE type) {
                this.f73698b = type;
            }

            @Override // java.lang.Runnable
            public void run() {
                WaitDialog.this.W = this.f73698b.ordinal();
                if (h.this.f73680e == null) {
                    return;
                }
                int i10 = g.f73675a[this.f73698b.ordinal()];
                if (i10 == 1) {
                    h.this.f73680e.b();
                } else if (i10 == 2) {
                    h.this.f73680e.success();
                } else if (i10 == 3) {
                    h.this.f73680e.error();
                } else if (i10 == 4) {
                    h.this.f73680e.loading();
                    return;
                }
                RelativeLayout relativeLayout = h.this.f73679d;
                if (relativeLayout != null && relativeLayout.getVisibility() == 0) {
                    h.this.f73680e.d(new a());
                    return;
                }
                WaitDialog.this.k2().b(WaitDialog.this);
                h.this.b();
                if (WaitDialog.this.U > 0) {
                    BaseDialog.E0(new b(), WaitDialog.this.U);
                }
            }
        }

        public h(int i10) {
            this.f73683h = i10;
        }

        private CharSequence c(TYPE type) {
            int i10 = g.f73675a[type.ordinal()];
            if (i10 == 1) {
                return DialogX.Z;
            }
            if (i10 == 2) {
                return DialogX.X;
            }
            if (i10 == 3) {
                return DialogX.Y;
            }
            if (i10 != 4) {
                return null;
            }
            return DialogX.W;
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void a(View view) {
            BaseDialog baseDialog = WaitDialog.this;
            if (baseDialog.t0(baseDialog) || this.f73677b == null || WaitDialog.this.N() == null || ((BaseDialog) WaitDialog.this).D || this.f73677b == null) {
                return;
            }
            ((BaseDialog) WaitDialog.this).D = true;
            this.f73677b.post(new f(view));
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void b() {
            if (this.f73677b == null || WaitDialog.this.N() == null) {
                return;
            }
            this.f73677b.j(WaitDialog.this.g0());
            this.f73677b.setRootPadding(((BaseDialog) WaitDialog.this).C[0], ((BaseDialog) WaitDialog.this).C[1], ((BaseDialog) WaitDialog.this).C[2], ((BaseDialog) WaitDialog.this).C[3]);
            this.f73678c.j(WaitDialog.this.K());
            this.f73678c.i(WaitDialog.this.J());
            this.f73678c.setMinWidth(WaitDialog.this.M());
            this.f73678c.setMinHeight(WaitDialog.this.L());
            if (((BaseDialog) WaitDialog.this).f74075v != null) {
                List<View> list = this.f73676a;
                if (list != null) {
                    Iterator<View> it2 = list.iterator();
                    while (it2.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) ((View) it2.next())).b(((BaseDialog) WaitDialog.this).f74075v);
                    }
                } else {
                    GradientDrawable gradientDrawable = (GradientDrawable) WaitDialog.this.getResources().getDrawable(R.drawable.rect_dialogx_material_wait_bkg);
                    gradientDrawable.setColor(WaitDialog.this.h2());
                    gradientDrawable.setCornerRadius(WaitDialog.this.v2());
                    this.f73678c.setBackground(gradientDrawable);
                }
            }
            if (((BaseDialog) WaitDialog.this).f74072s.i() != null) {
                WaitDialog waitDialog = WaitDialog.this;
                int iIntValue = waitDialog.H(Integer.valueOf(((BaseDialog) waitDialog).f74072s.i().d(WaitDialog.this.i0())), Integer.valueOf(WaitDialog.this.i0() ? R.color.white : R.color.black)).intValue();
                this.f73682g.setTextColor(WaitDialog.this.getResources().getColor(iIntValue));
                this.f73680e.e(WaitDialog.this.getResources().getColor(iIntValue));
            } else {
                int i10 = WaitDialog.this.i0() ? R.color.white : R.color.black;
                this.f73682g.setTextColor(WaitDialog.this.getResources().getColor(i10));
                this.f73680e.e(WaitDialog.this.getResources().getColor(i10));
            }
            Integer num = DialogX.f73612x;
            if (num != null) {
                this.f73680e.e(num.intValue());
            }
            float f10 = WaitDialog.this.V;
            if (f10 >= 0.0f && f10 <= 1.0f && this.f73684i != f10) {
                this.f73680e.c(f10);
                this.f73684i = WaitDialog.this.V;
            }
            if (WaitDialog.this.Q > -1.0f) {
                this.f73678c.setOutlineProvider(new d());
                this.f73678c.setClipToOutline(true);
                List<View> list2 = this.f73676a;
                if (list2 != null) {
                    Iterator<View> it3 = list2.iterator();
                    while (it3.hasNext()) {
                        ((com.kongzue.dialogx.interfaces.b) ((View) it3.next())).a(Float.valueOf(WaitDialog.this.Q));
                    }
                }
            }
            WaitDialog waitDialog2 = WaitDialog.this;
            TextView textView = this.f73682g;
            CharSequence charSequenceC = waitDialog2.T;
            if (charSequenceC == null) {
                charSequenceC = c(waitDialog2.f73667p1);
            }
            waitDialog2.P0(textView, charSequenceC);
            BaseDialog.S0(this.f73682g, WaitDialog.this.X);
            Integer num2 = WaitDialog.this.Y;
            if (num2 != null) {
                this.f73677b.setBackgroundColor(num2.intValue());
            }
            r<WaitDialog> rVar = WaitDialog.this.N;
            if (rVar == null || rVar.getCustomView() == null) {
                this.f73681f.setVisibility(8);
                this.f73679d.setVisibility(0);
            } else {
                WaitDialog waitDialog3 = WaitDialog.this;
                waitDialog3.N.bindParent(this.f73681f, waitDialog3);
                this.f73681f.setVisibility(0);
                this.f73679d.setVisibility(8);
            }
            WaitDialog waitDialog4 = WaitDialog.this;
            if (!waitDialog4.M) {
                this.f73677b.setClickable(false);
            } else if (waitDialog4.f0()) {
                this.f73677b.setOnClickListener(new e());
            } else {
                this.f73677b.setOnClickListener(null);
            }
            WaitDialog.this.r0();
        }

        protected com.kongzue.dialogx.interfaces.g<WaitDialog> d() {
            WaitDialog waitDialog = WaitDialog.this;
            if (waitDialog.R == null) {
                waitDialog.R = new g();
            }
            return WaitDialog.this.R;
        }

        public long e(@Nullable Animation animation) {
            if (animation == null && this.f73678c.getAnimation() != null) {
                animation = this.f73678c.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 300L : animation.getDuration();
            int i10 = WaitDialog.f73659q1;
            if (i10 >= 0) {
                duration = i10;
            }
            return ((BaseDialog) WaitDialog.this).f74076w >= 0 ? ((BaseDialog) WaitDialog.this).f74076w : duration;
        }

        public long f(@Nullable Animation animation) {
            if (animation == null && this.f73678c.getAnimation() != null) {
                animation = this.f73678c.getAnimation();
            }
            long duration = (animation == null || animation.getDuration() == 0) ? 300L : animation.getDuration();
            int i10 = WaitDialog.f73660r1;
            if (i10 >= 0) {
                duration = i10;
            }
            return ((BaseDialog) WaitDialog.this).f74077x != -1 ? ((BaseDialog) WaitDialog.this).f74077x : duration;
        }

        public void g() {
            View viewM = WaitDialog.this.m(this.f73683h);
            if (viewM == null) {
                return;
            }
            WaitDialog.this.u3(viewM);
            this.f73677b = (DialogXBaseRelativeLayout) viewM.findViewById(R.id.box_root);
            this.f73678c = (MaxRelativeLayout) viewM.findViewById(R.id.bkg);
            this.f73679d = (RelativeLayout) viewM.findViewById(R.id.box_progress);
            View progressView = (View) ((BaseDialog) WaitDialog.this).f74072s.i().f(WaitDialog.this.N(), WaitDialog.this.i0());
            if (progressView == null) {
                progressView = new ProgressView(WaitDialog.this.N());
            }
            this.f73680e = (b0) progressView;
            this.f73679d.addView(progressView, new RelativeLayout.LayoutParams(-1, -1));
            this.f73681f = (RelativeLayout) viewM.findViewById(R.id.box_customView);
            this.f73682g = (TextView) viewM.findViewById(R.id.txt_info);
            this.f73676a = WaitDialog.this.s(viewM);
            init();
            WaitDialog.this.N2(this);
            b();
        }

        public void h(TYPE type) {
            BaseDialog.C0(new RunnableC0759h(type));
        }

        @Override // com.kongzue.dialogx.interfaces.e
        public void init() {
            if (WaitDialog.this.C() != null) {
                WaitDialog.this.C().setTranslationZ(WaitDialog.this.W());
            }
            WaitDialog waitDialog = WaitDialog.this;
            if (waitDialog.X == null) {
                waitDialog.X = DialogX.f73606r;
            }
            if (((BaseDialog) waitDialog).f74075v == null) {
                ((BaseDialog) WaitDialog.this).f74075v = DialogX.f73611w;
            }
            WaitDialog waitDialog2 = WaitDialog.this;
            this.f73676a = waitDialog2.s((View) waitDialog2.f73663f1.get());
            WaitDialog waitDialog3 = WaitDialog.this;
            Integer numValueOf = Integer.valueOf(waitDialog3.v(waitDialog3.i0() ? R.color.dialogxWaitBkgDark : R.color.dialogxWaitBkgLight));
            Float fValueOf = Float.valueOf(WaitDialog.this.o(15.0f));
            if (((BaseDialog) WaitDialog.this).f74072s.i() != null) {
                WaitDialog waitDialog4 = WaitDialog.this;
                fValueOf = waitDialog4.E(Float.valueOf(((BaseDialog) waitDialog4).f74072s.i().c()), fValueOf);
                WaitDialog waitDialog5 = WaitDialog.this;
                numValueOf = waitDialog5.x(waitDialog5.H(Integer.valueOf(((BaseDialog) waitDialog5).f74072s.i().b(WaitDialog.this.i0())), Integer.valueOf(WaitDialog.this.i0() ? R.color.dialogxWaitBkgDark : R.color.dialogxWaitBkgLight)), numValueOf);
            }
            List<View> list = this.f73676a;
            if (list != null) {
                Iterator<View> it2 = list.iterator();
                while (it2.hasNext()) {
                    com.kongzue.dialogx.interfaces.b bVar = (com.kongzue.dialogx.interfaces.b) ((View) it2.next());
                    bVar.b(((BaseDialog) WaitDialog.this).f74075v == null ? numValueOf : ((BaseDialog) WaitDialog.this).f74075v);
                    bVar.a(fValueOf);
                }
            } else {
                GradientDrawable gradientDrawable = (GradientDrawable) WaitDialog.this.getResources().getDrawable(R.drawable.rect_dialogx_material_wait_bkg);
                gradientDrawable.setColor(numValueOf.intValue());
                gradientDrawable.setCornerRadius(fValueOf.floatValue());
                this.f73678c.setBackground(gradientDrawable);
            }
            this.f73677b.setClickable(true);
            this.f73677b.p(WaitDialog.this);
            this.f73677b.n(new a());
            TYPE type = WaitDialog.this.f73667p1;
            if (type != null && type != TYPE.NONE) {
                this.f73680e.a();
                ((View) this.f73680e).postDelayed(new b(), 100L);
            }
            this.f73677b.m(new c());
            WaitDialog.this.q0();
        }

        public h(View view) {
            if (view == null) {
                return;
            }
            WaitDialog.this.H0(view);
            this.f73677b = (DialogXBaseRelativeLayout) view.findViewById(R.id.box_root);
            this.f73678c = (MaxRelativeLayout) view.findViewById(R.id.bkg);
            this.f73679d = (RelativeLayout) view.findViewById(R.id.box_progress);
            View progressView = (View) ((BaseDialog) WaitDialog.this).f74072s.i().f(WaitDialog.this.N(), WaitDialog.this.i0());
            progressView = progressView == null ? new ProgressView(WaitDialog.this.N()) : progressView;
            this.f73680e = (b0) progressView;
            this.f73679d.addView(progressView, new RelativeLayout.LayoutParams(-1, -1));
            this.f73681f = (RelativeLayout) view.findViewById(R.id.box_customView);
            this.f73682g = (TextView) view.findViewById(R.id.txt_info);
            init();
            WaitDialog.this.N2(this);
            b();
        }
    }
}
