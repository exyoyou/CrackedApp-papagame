package com.join.mgps.pulltorefresh.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.internal.FlipLoadingLayout;
import com.join.mgps.pulltorefresh.library.internal.LoadingLayout;
import com.join.mgps.pulltorefresh.library.internal.RotateLoadingLayout;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PullToRefreshBase<T extends View> extends LinearLayout implements com.join.mgps.pulltorefresh.library.b<T> {
    static final boolean A = false;
    static final String B = "PullToRefresh";
    static final float C = 2.0f;
    public static final int D = 200;
    public static final int E = 325;
    static final int F = 225;
    static final String G = "ptr_state";
    static final String H = "ptr_mode";
    static final String I = "ptr_current_mode";
    static final String J = "ptr_disable_scrolling";
    static final String K = "ptr_show_refreshing_view";
    static final String L = "ptr_super";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final boolean f72175z = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f72176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f72177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f72178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f72179e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f72180f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f72181g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private State f72182h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Mode f72183i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Mode f72184j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    T f72185k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private FrameLayout f72186l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f72187m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f72188n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f72189o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f72190p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f72191q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Interpolator f72192r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private AnimationStyle f72193s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private LoadingLayout f72194t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private LoadingLayout f72195u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private h<T> f72196v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private g<T> f72197w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private f<T> f72198x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private PullToRefreshBase<T>.j f72199y;

    public enum AnimationStyle {
        ROTATE,
        FLIP;

        static AnimationStyle getDefault() {
            return ROTATE;
        }

        static AnimationStyle mapIntToValue(int modeInt) {
            return modeInt != 1 ? ROTATE : FLIP;
        }

        LoadingLayout createLoadingLayout(Context context, Mode mode, Orientation scrollDirection, TypedArray attrs) {
            return d.f72206d[ordinal()] != 2 ? new RotateLoadingLayout(context, mode, scrollDirection, attrs) : new FlipLoadingLayout(context, mode, scrollDirection, attrs);
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.join.mgps.pulltorefresh.library.PullToRefreshBase$Mode, still in use, count: 1, list:
      (r0v1 com.join.mgps.pulltorefresh.library.PullToRefreshBase$Mode) from 0x0038: SPUT (r0v1 com.join.mgps.pulltorefresh.library.PullToRefreshBase$Mode) (LINE:57) com.join.mgps.pulltorefresh.library.PullToRefreshBase.Mode.PULL_DOWN_TO_REFRESH com.join.mgps.pulltorefresh.library.PullToRefreshBase$Mode
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class Mode {
        DISABLED(0),
        PULL_FROM_START(1),
        PULL_FROM_END(2),
        BOTH(3),
        MANUAL_REFRESH_ONLY(4);

        private int mIntValue;
        public static Mode PULL_DOWN_TO_REFRESH = new Mode(1);
        public static Mode PULL_UP_TO_REFRESH = new Mode(2);

        static {
        }

        private Mode(int modeInt) {
            super($enum$name, $enum$ordinal);
            this.mIntValue = modeInt;
        }

        static Mode getDefault() {
            return PULL_FROM_START;
        }

        static Mode mapIntToValue(final int modeInt) {
            for (Mode mode : values()) {
                if (modeInt == mode.getIntValue()) {
                    return mode;
                }
            }
            return getDefault();
        }

        public static Mode valueOf(String name) {
            return (Mode) Enum.valueOf(Mode.class, name);
        }

        public static Mode[] values() {
            return (Mode[]) $VALUES.clone();
        }

        int getIntValue() {
            return this.mIntValue;
        }

        boolean permitsPullToRefresh() {
            return (this == DISABLED || this == MANUAL_REFRESH_ONLY) ? false : true;
        }

        public boolean showFooterLoadingLayout() {
            return this == PULL_FROM_END || this == BOTH || this == MANUAL_REFRESH_ONLY;
        }

        public boolean showHeaderLoadingLayout() {
            return this == PULL_FROM_START || this == BOTH;
        }
    }

    public enum Orientation {
        VERTICAL,
        HORIZONTAL
    }

    public enum State {
        RESET(0),
        PULL_TO_REFRESH(1),
        RELEASE_TO_REFRESH(2),
        REFRESHING(8),
        MANUAL_REFRESHING(9),
        OVERSCROLLING(16);

        private int mIntValue;

        State(int intValue) {
            this.mIntValue = intValue;
        }

        static State mapIntToValue(final int stateInt) {
            for (State state : values()) {
                if (stateInt == state.getIntValue()) {
                    return state;
                }
            }
            return RESET;
        }

        int getIntValue() {
            return this.mIntValue;
        }
    }

    class a implements i {
        a() {
        }

        @Override // com.join.mgps.pulltorefresh.library.PullToRefreshBase.i
        public void a() {
            PullToRefreshBase.this.n();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PullToRefreshBase.this.requestLayout();
        }
    }

    class c implements i {
        c() {
        }

        @Override // com.join.mgps.pulltorefresh.library.PullToRefreshBase.i
        public void a() {
            PullToRefreshBase.this.K(0, 200L, 225L, null);
        }
    }

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f72203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f72204b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final /* synthetic */ int[] f72205c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final /* synthetic */ int[] f72206d;

        static {
            int[] iArr = new int[AnimationStyle.values().length];
            f72206d = iArr;
            try {
                iArr[AnimationStyle.ROTATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72206d[AnimationStyle.FLIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Mode.values().length];
            f72205c = iArr2;
            try {
                iArr2[Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f72205c[Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f72205c[Mode.MANUAL_REFRESH_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f72205c[Mode.BOTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[State.values().length];
            f72204b = iArr3;
            try {
                iArr3[State.RESET.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f72204b[State.PULL_TO_REFRESH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f72204b[State.RELEASE_TO_REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f72204b[State.REFRESHING.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f72204b[State.MANUAL_REFRESHING.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f72204b[State.OVERSCROLLING.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr4 = new int[Orientation.values().length];
            f72203a = iArr4;
            try {
                iArr4[Orientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f72203a[Orientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public interface e {
        void a();
    }

    public interface f<V extends View> {
        void a(final PullToRefreshBase<V> refreshView, State state, Mode direction);
    }

    public interface g<V extends View> {
        void a(final PullToRefreshBase<V> refreshView);

        void b(final PullToRefreshBase<V> refreshView);
    }

    public interface h<V extends View> {
        void H(final PullToRefreshBase<V> refreshView);
    }

    interface i {
        void a();
    }

    final class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Interpolator f72207b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f72208c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f72209d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f72210e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private i f72211f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f72212g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f72213h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f72214i = -1;

        public j(int fromY, int toY, long duration, i listener) {
            this.f72209d = fromY;
            this.f72208c = toY;
            this.f72207b = PullToRefreshBase.this.f72192r;
            this.f72210e = duration;
            this.f72211f = listener;
        }

        public void a() {
            this.f72212g = false;
            PullToRefreshBase.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f72213h == -1) {
                this.f72213h = System.currentTimeMillis();
            } else {
                int iRound = this.f72209d - Math.round((this.f72209d - this.f72208c) * this.f72207b.getInterpolation(Math.max(Math.min(((System.currentTimeMillis() - this.f72213h) * 1000) / this.f72210e, 1000L), 0L) / 1000.0f));
                this.f72214i = iRound;
                PullToRefreshBase.this.setHeaderScroll(iRound);
            }
            if (this.f72212g && this.f72208c != this.f72214i) {
                com.join.mgps.pulltorefresh.library.internal.c.a(PullToRefreshBase.this, this);
                return;
            }
            i iVar = this.f72211f;
            if (iVar != null) {
                iVar.a();
            }
        }
    }

    public PullToRefreshBase(Context context) {
        super(context);
        this.f72181g = false;
        this.f72182h = State.RESET;
        this.f72183i = Mode.getDefault();
        this.f72187m = true;
        this.f72188n = false;
        this.f72189o = true;
        this.f72190p = true;
        this.f72191q = true;
        this.f72193s = AnimationStyle.getDefault();
        t(context, null);
    }

    private void E() {
        float f10;
        float f11;
        int iRound;
        int footerSize;
        if (d.f72203a[getPullToRefreshScrollDirection().ordinal()] != 1) {
            f10 = this.f72180f;
            f11 = this.f72178d;
        } else {
            f10 = this.f72179e;
            f11 = this.f72177c;
        }
        int[] iArr = d.f72205c;
        if (iArr[this.f72184j.ordinal()] != 1) {
            iRound = Math.round(Math.min(f10 - f11, 0.0f) / 2.0f);
            footerSize = getHeaderSize();
        } else {
            iRound = Math.round(Math.max(f10 - f11, 0.0f) / 2.0f);
            footerSize = getFooterSize();
        }
        setHeaderScroll(iRound);
        if (iRound == 0 || a()) {
            return;
        }
        float fAbs = Math.abs(iRound) / footerSize;
        if (iArr[this.f72184j.ordinal()] != 1) {
            this.f72194t.c(fAbs);
        } else {
            this.f72195u.c(fAbs);
        }
        State state = this.f72182h;
        State state2 = State.PULL_TO_REFRESH;
        if (state != state2 && footerSize >= Math.abs(iRound)) {
            H(state2, new boolean[0]);
        } else {
            if (this.f72182h != state2 || footerSize >= Math.abs(iRound)) {
                return;
            }
            H(State.RELEASE_TO_REFRESH, new boolean[0]);
        }
    }

    private final void J(int scrollValue, long duration) {
        K(scrollValue, duration, 0L, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(int newScrollValue, long duration, long delayMillis, i listener) {
        PullToRefreshBase<T>.j jVar = this.f72199y;
        if (jVar != null) {
            jVar.a();
        }
        int scrollY = d.f72203a[getPullToRefreshScrollDirection().ordinal()] != 1 ? getScrollY() : getScrollX();
        if (scrollY != newScrollValue) {
            if (this.f72192r == null) {
                this.f72192r = new DecelerateInterpolator();
            }
            PullToRefreshBase<T>.j jVar2 = new j(scrollY, newScrollValue, duration, listener);
            this.f72199y = jVar2;
            if (delayMillis > 0) {
                postDelayed(jVar2, delayMillis);
            } else {
                post(jVar2);
            }
        }
    }

    private final void M(int y10) {
        K(y10, 200L, 0L, new c());
    }

    private LinearLayout.LayoutParams getLoadingLayoutLayoutParams() {
        return d.f72203a[getPullToRefreshScrollDirection().ordinal()] != 1 ? new LinearLayout.LayoutParams(-1, -2) : new LinearLayout.LayoutParams(-2, -1);
    }

    private int getMaximumPullScroll() {
        return d.f72203a[getPullToRefreshScrollDirection().ordinal()] != 1 ? Math.round(getHeight() / 2.0f) : Math.round(getWidth() / 2.0f);
    }

    private void k(Context context, T refreshableView) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.f72186l = frameLayout;
        frameLayout.addView(refreshableView, -1, -1);
        m(this.f72186l, new LinearLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        h<T> hVar = this.f72196v;
        if (hVar != null) {
            hVar.H(this);
            return;
        }
        g<T> gVar = this.f72197w;
        if (gVar != null) {
            Mode mode = this.f72184j;
            if (mode == Mode.PULL_FROM_START) {
                gVar.b(this);
            } else if (mode == Mode.PULL_FROM_END) {
                gVar.a(this);
            }
        }
    }

    private void t(Context context, AttributeSet attributeSet) {
        if (d.f72203a[getPullToRefreshScrollDirection().ordinal()] != 1) {
            setOrientation(1);
        } else {
            setOrientation(0);
        }
        setGravity(17);
        this.f72176b = ViewConfiguration.get(context).getScaledTouchSlop();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PullToRefresh);
        if (typedArrayObtainStyledAttributes.hasValue(12)) {
            this.f72183i = Mode.mapIntToValue(typedArrayObtainStyledAttributes.getInteger(12, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            this.f72193s = AnimationStyle.mapIntToValue(typedArrayObtainStyledAttributes.getInteger(1, 0));
        }
        T t10 = (T) q(context, attributeSet);
        this.f72185k = t10;
        k(context, t10);
        this.f72194t = o(context, Mode.PULL_FROM_START, typedArrayObtainStyledAttributes);
        this.f72195u = o(context, Mode.PULL_FROM_END, typedArrayObtainStyledAttributes);
        if (typedArrayObtainStyledAttributes.hasValue(14)) {
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(14);
            if (drawable != null) {
                this.f72185k.setBackgroundDrawable(drawable);
            }
        } else if (typedArrayObtainStyledAttributes.hasValue(0)) {
            com.join.mgps.pulltorefresh.library.internal.b.a("ptrAdapterViewBackground", "ptrRefreshableViewBackground");
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(0);
            if (drawable2 != null) {
                this.f72185k.setBackgroundDrawable(drawable2);
            }
        }
        if (typedArrayObtainStyledAttributes.hasValue(13)) {
            this.f72190p = typedArrayObtainStyledAttributes.getBoolean(13, true);
        }
        if (typedArrayObtainStyledAttributes.hasValue(16)) {
            this.f72188n = typedArrayObtainStyledAttributes.getBoolean(16, false);
        }
        s(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        O();
    }

    private boolean v() {
        int i10 = d.f72205c[this.f72183i.ordinal()];
        if (i10 == 1) {
            return w();
        }
        if (i10 == 2) {
            return x();
        }
        if (i10 != 4) {
            return false;
        }
        return w() || x();
    }

    protected void A() {
        int i10 = d.f72205c[this.f72184j.ordinal()];
        if (i10 == 1) {
            this.f72195u.e();
        } else {
            if (i10 != 2) {
                return;
            }
            this.f72194t.e();
        }
    }

    protected void B(final boolean doScroll) {
        if (this.f72183i.showHeaderLoadingLayout()) {
            this.f72194t.g();
        }
        if (this.f72183i.showFooterLoadingLayout()) {
            this.f72195u.g();
        }
        if (!doScroll) {
            n();
            return;
        }
        if (!this.f72187m) {
            I(0);
            return;
        }
        a aVar = new a();
        int i10 = d.f72205c[this.f72184j.ordinal()];
        if (i10 == 1 || i10 == 3) {
            L(getFooterSize(), aVar);
        } else {
            L(-getHeaderSize(), aVar);
        }
    }

    protected void C() {
        int i10 = d.f72205c[this.f72184j.ordinal()];
        if (i10 == 1) {
            this.f72195u.i();
        } else {
            if (i10 != 2) {
                return;
            }
            this.f72194t.i();
        }
    }

    protected void D() {
        this.f72181g = false;
        this.f72191q = true;
        this.f72194t.k();
        this.f72195u.k();
        I(0);
    }

    protected final void F() {
        int maximumPullScroll = (int) (getMaximumPullScroll() * 1.2f);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int i10 = d.f72203a[getPullToRefreshScrollDirection().ordinal()];
        if (i10 == 1) {
            if (this.f72183i.showHeaderLoadingLayout()) {
                this.f72194t.setWidth(maximumPullScroll);
                paddingLeft = -maximumPullScroll;
            } else {
                paddingLeft = 0;
            }
            if (this.f72183i.showFooterLoadingLayout()) {
                this.f72195u.setWidth(maximumPullScroll);
                paddingRight = -maximumPullScroll;
            } else {
                paddingRight = 0;
            }
        } else if (i10 == 2) {
            if (this.f72183i.showHeaderLoadingLayout()) {
                this.f72194t.setHeight(maximumPullScroll);
                paddingTop = -maximumPullScroll;
            } else {
                paddingTop = 0;
            }
            if (this.f72183i.showFooterLoadingLayout()) {
                this.f72195u.setHeight(maximumPullScroll);
                paddingBottom = -maximumPullScroll;
            } else {
                paddingBottom = 0;
            }
        }
        String.format("Setting Padding. L: %d, T: %d, R: %d, B: %d", Integer.valueOf(paddingLeft), Integer.valueOf(paddingTop), Integer.valueOf(paddingRight), Integer.valueOf(paddingBottom));
        setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    protected final void G(int width, int height) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f72186l.getLayoutParams();
        int i10 = d.f72203a[getPullToRefreshScrollDirection().ordinal()];
        if (i10 == 1) {
            if (layoutParams.width != width) {
                layoutParams.width = width;
                this.f72186l.requestLayout();
                return;
            }
            return;
        }
        if (i10 == 2 && layoutParams.height != height) {
            layoutParams.height = height;
            this.f72186l.requestLayout();
        }
    }

    final void H(State state, final boolean... params) {
        this.f72182h = state;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("State: ");
        sb2.append(this.f72182h.name());
        int i10 = d.f72204b[this.f72182h.ordinal()];
        if (i10 == 1) {
            D();
        } else if (i10 == 2) {
            A();
        } else if (i10 == 3) {
            C();
        } else if (i10 == 4 || i10 == 5) {
            B(params[0]);
        }
        f<T> fVar = this.f72198x;
        if (fVar != null) {
            fVar.a(this, this.f72182h, this.f72184j);
        }
    }

    protected final void I(int scrollValue) {
        J(scrollValue, getPullToRefreshScrollDuration());
    }

    protected final void L(int scrollValue, i listener) {
        K(scrollValue, getPullToRefreshScrollDuration(), 0L, listener);
    }

    protected final void N(int scrollValue) {
        J(scrollValue, getPullToRefreshScrollDurationLonger());
    }

    protected void O() {
        LinearLayout.LayoutParams loadingLayoutLayoutParams = getLoadingLayoutLayoutParams();
        if (this == this.f72194t.getParent()) {
            removeView(this.f72194t);
        }
        if (this.f72183i.showHeaderLoadingLayout()) {
            l(this.f72194t, 0, loadingLayoutLayoutParams);
        }
        if (this == this.f72195u.getParent()) {
            removeView(this.f72195u);
        }
        if (this.f72183i.showFooterLoadingLayout()) {
            m(this.f72195u, loadingLayoutLayoutParams);
        }
        F();
        Mode mode = this.f72183i;
        if (mode == Mode.BOTH) {
            mode = Mode.PULL_FROM_START;
        }
        this.f72184j = mode;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean a() {
        State state = this.f72182h;
        return state == State.REFRESHING || state == State.MANUAL_REFRESHING;
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("addView: ");
        sb2.append(child.getClass().getSimpleName());
        View refreshableView = getRefreshableView();
        if (!(refreshableView instanceof ViewGroup)) {
            throw new UnsupportedOperationException("Refreshable View is not a ViewGroup so can't addView");
        }
        ((ViewGroup) refreshableView).addView(child, index, params);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean b() {
        if (this.f72183i.showHeaderLoadingLayout() && x()) {
            M((-getHeaderSize()) * 2);
            return true;
        }
        if (!this.f72183i.showFooterLoadingLayout() || !w()) {
            return false;
        }
        M(getFooterSize() * 2);
        return true;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean c() {
        return this.f72188n;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean d() {
        return this.f72183i.permitsPullToRefresh();
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final com.join.mgps.pulltorefresh.library.a e(boolean includeStart, boolean includeEnd) {
        return p(includeStart, includeEnd);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void f() {
        if (a()) {
            H(State.RESET, new boolean[0]);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean g() {
        return this.f72190p && com.join.mgps.pulltorefresh.library.d.a(this.f72185k);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final Mode getCurrentMode() {
        return this.f72184j;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean getFilterTouchEvents() {
        return this.f72189o;
    }

    protected final LoadingLayout getFooterLayout() {
        return this.f72195u;
    }

    protected final int getFooterSize() {
        return this.f72195u.getContentSize();
    }

    protected final LoadingLayout getHeaderLayout() {
        return this.f72194t;
    }

    protected final int getHeaderSize() {
        return this.f72194t.getContentSize();
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final com.join.mgps.pulltorefresh.library.a getLoadingLayoutProxy() {
        return e(true, true);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final Mode getMode() {
        return this.f72183i;
    }

    public abstract Orientation getPullToRefreshScrollDirection();

    protected int getPullToRefreshScrollDuration() {
        return 200;
    }

    protected int getPullToRefreshScrollDurationLonger() {
        return 325;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final T getRefreshableView() {
        return this.f72185k;
    }

    protected FrameLayout getRefreshableViewWrapper() {
        return this.f72186l;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean getShowViewWhileRefreshing() {
        return this.f72187m;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final State getState() {
        return this.f72182h;
    }

    protected final void l(View child, int index, ViewGroup.LayoutParams params) {
        super.addView(child, index, params);
    }

    protected final void m(View child, ViewGroup.LayoutParams params) {
        super.addView(child, -1, params);
    }

    protected LoadingLayout o(Context context, Mode mode, TypedArray attrs) {
        LoadingLayout loadingLayoutCreateLoadingLayout = this.f72193s.createLoadingLayout(context, mode, getPullToRefreshScrollDirection(), attrs);
        loadingLayoutCreateLoadingLayout.setVisibility(4);
        return loadingLayoutCreateLoadingLayout;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent event) {
        float f10;
        float f11;
        if (!d()) {
            return false;
        }
        int action = event.getAction();
        if (action == 3 || action == 1) {
            this.f72181g = false;
            return false;
        }
        if (action != 0 && this.f72181g) {
            return true;
        }
        if (action != 0) {
            if (action == 2) {
                if (!this.f72188n && a()) {
                    return true;
                }
                if (v()) {
                    float y10 = event.getY();
                    float x10 = event.getX();
                    if (d.f72203a[getPullToRefreshScrollDirection().ordinal()] != 1) {
                        f10 = y10 - this.f72178d;
                        f11 = x10 - this.f72177c;
                    } else {
                        f10 = x10 - this.f72177c;
                        f11 = y10 - this.f72178d;
                    }
                    float fAbs = Math.abs(f10);
                    if (fAbs > this.f72176b && (!this.f72189o || fAbs > Math.abs(f11))) {
                        if (this.f72183i.showHeaderLoadingLayout() && f10 >= 1.0f && x()) {
                            this.f72178d = y10;
                            this.f72177c = x10;
                            this.f72181g = true;
                            if (this.f72183i == Mode.BOTH) {
                                this.f72184j = Mode.PULL_FROM_START;
                            }
                        } else if (this.f72183i.showFooterLoadingLayout() && f10 <= -1.0f && w()) {
                            this.f72178d = y10;
                            this.f72177c = x10;
                            this.f72181g = true;
                            if (this.f72183i == Mode.BOTH) {
                                this.f72184j = Mode.PULL_FROM_END;
                            }
                        }
                    }
                }
            }
        } else if (v()) {
            float y11 = event.getY();
            this.f72180f = y11;
            this.f72178d = y11;
            float x11 = event.getX();
            this.f72179e = x11;
            this.f72177c = x11;
            this.f72181g = false;
        }
        return this.f72181g;
    }

    @Override // android.view.View
    protected final void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof Bundle)) {
            super.onRestoreInstanceState(state);
            return;
        }
        Bundle bundle = (Bundle) state;
        setMode(Mode.mapIntToValue(bundle.getInt(H, 0)));
        this.f72184j = Mode.mapIntToValue(bundle.getInt(I, 0));
        this.f72188n = bundle.getBoolean(J, false);
        this.f72187m = bundle.getBoolean(K, true);
        super.onRestoreInstanceState(bundle.getParcelable(L));
        State stateMapIntToValue = State.mapIntToValue(bundle.getInt(G, 0));
        if (stateMapIntToValue == State.REFRESHING || stateMapIntToValue == State.MANUAL_REFRESHING) {
            H(stateMapIntToValue, true);
        }
        y(bundle);
    }

    @Override // android.view.View
    protected final Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        z(bundle);
        bundle.putInt(G, this.f72182h.getIntValue());
        bundle.putInt(H, this.f72183i.getIntValue());
        bundle.putInt(I, this.f72184j.getIntValue());
        bundle.putBoolean(J, this.f72188n);
        bundle.putBoolean(K, this.f72187m);
        bundle.putParcelable(L, super.onSaveInstanceState());
        return bundle;
    }

    @Override // android.view.View
    protected final void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        String.format("onSizeChanged. W: %d, H: %d", Integer.valueOf(w10), Integer.valueOf(h10));
        super.onSizeChanged(w10, h10, oldw, oldh);
        F();
        G(w10, h10);
        post(new b());
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0044  */
    /* JADX WARN: Code duplicated, block: B:29:0x0048  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent event) {
        if (!d()) {
            return false;
        }
        if (!this.f72188n && a()) {
            return true;
        }
        if (event.getAction() == 0 && event.getEdgeFlags() != 0) {
            return false;
        }
        int action = event.getAction();
        if (action != 0) {
            if (action == 1) {
                if (this.f72181g) {
                    this.f72181g = false;
                    if (this.f72182h != State.RELEASE_TO_REFRESH && (this.f72196v != null || this.f72197w != null)) {
                        H(State.REFRESHING, true);
                        return true;
                    }
                    if (a()) {
                        I(0);
                        return true;
                    }
                    H(State.RESET, new boolean[0]);
                    return true;
                }
            } else if (action != 2) {
                if (action == 3) {
                    if (this.f72181g) {
                        this.f72181g = false;
                        if (this.f72182h != State.RELEASE_TO_REFRESH) {
                        }
                        if (a()) {
                            I(0);
                            return true;
                        }
                        H(State.RESET, new boolean[0]);
                        return true;
                    }
                }
            } else if (this.f72181g) {
                this.f72178d = event.getY();
                this.f72177c = event.getX();
                E();
                return true;
            }
        } else if (v()) {
            float y10 = event.getY();
            this.f72180f = y10;
            this.f72178d = y10;
            float x10 = event.getX();
            this.f72179e = x10;
            this.f72177c = x10;
            return true;
        }
        return false;
    }

    protected com.join.mgps.pulltorefresh.library.c p(final boolean includeStart, final boolean includeEnd) {
        com.join.mgps.pulltorefresh.library.c cVar = new com.join.mgps.pulltorefresh.library.c();
        if (includeStart && this.f72183i.showHeaderLoadingLayout()) {
            cVar.a(this.f72194t);
        }
        if (includeEnd && this.f72183i.showFooterLoadingLayout()) {
            cVar.a(this.f72195u);
        }
        return cVar;
    }

    protected abstract T q(Context context, AttributeSet attrs);

    protected final void r() {
        this.f72191q = false;
    }

    protected void s(TypedArray a10) {
    }

    public void setDisableScrollingWhileRefreshing(boolean disableScrollingWhileRefreshing) {
        setScrollingWhileRefreshingEnabled(!disableScrollingWhileRefreshing);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setFilterTouchEvents(boolean filterEvents) {
        this.f72189o = filterEvents;
    }

    protected final void setHeaderScroll(int value) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setHeaderScroll: ");
        sb2.append(value);
        int maximumPullScroll = getMaximumPullScroll();
        int iMin = Math.min(maximumPullScroll, Math.max(-maximumPullScroll, value));
        if (this.f72191q) {
            if (iMin < 0) {
                this.f72194t.setVisibility(0);
            } else if (iMin > 0) {
                this.f72195u.setVisibility(0);
            } else {
                this.f72194t.setVisibility(4);
                this.f72195u.setVisibility(4);
            }
        }
        int i10 = d.f72203a[getPullToRefreshScrollDirection().ordinal()];
        if (i10 == 1) {
            scrollTo(iMin, 0);
        } else {
            if (i10 != 2) {
                return;
            }
            scrollTo(0, iMin);
        }
    }

    public void setLastUpdatedLabel(CharSequence label) {
        getLoadingLayoutProxy().setLastUpdatedLabel(label);
    }

    public void setLoadingDrawable(Drawable drawable) {
        getLoadingLayoutProxy().setLoadingDrawable(drawable);
    }

    @Override // android.view.View
    public void setLongClickable(boolean longClickable) {
        getRefreshableView().setLongClickable(longClickable);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setMode(Mode mode) {
        if (mode != this.f72183i) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Setting mode to: ");
            sb2.append(mode);
            this.f72183i = mode;
            O();
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public void setOnPullEventListener(f<T> listener) {
        this.f72198x = listener;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setOnRefreshListener(h<T> listener) {
        this.f72196v = listener;
        this.f72197w = null;
    }

    public void setPullLabel(CharSequence pullLabel) {
        getLoadingLayoutProxy().setPullLabel(pullLabel);
    }

    public final void setPullToRefreshEnabled(boolean enable) {
        setMode(enable ? Mode.getDefault() : Mode.DISABLED);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setPullToRefreshOverScrollEnabled(boolean enabled) {
        this.f72190p = enabled;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setRefreshing() {
        setRefreshing(true);
    }

    public void setRefreshingLabel(CharSequence refreshingLabel) {
        getLoadingLayoutProxy().setRefreshingLabel(refreshingLabel);
    }

    public void setReleaseLabel(CharSequence releaseLabel) {
        setReleaseLabel(releaseLabel, Mode.BOTH);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public void setScrollAnimationInterpolator(Interpolator interpolator) {
        this.f72192r = interpolator;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setScrollingWhileRefreshingEnabled(boolean allowScrollingWhileRefreshing) {
        this.f72188n = allowScrollingWhileRefreshing;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setShowViewWhileRefreshing(boolean showView) {
        this.f72187m = showView;
    }

    public final boolean u() {
        return !c();
    }

    protected abstract boolean w();

    protected abstract boolean x();

    protected void y(Bundle savedInstanceState) {
    }

    protected void z(Bundle saveState) {
    }

    public void setLoadingDrawable(Drawable drawable, Mode mode) {
        e(mode.showHeaderLoadingLayout(), mode.showFooterLoadingLayout()).setLoadingDrawable(drawable);
    }

    public void setPullLabel(CharSequence pullLabel, Mode mode) {
        e(mode.showHeaderLoadingLayout(), mode.showFooterLoadingLayout()).setPullLabel(pullLabel);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setRefreshing(boolean doScroll) {
        if (a()) {
            return;
        }
        H(State.MANUAL_REFRESHING, doScroll);
    }

    public void setRefreshingLabel(CharSequence refreshingLabel, Mode mode) {
        e(mode.showHeaderLoadingLayout(), mode.showFooterLoadingLayout()).setRefreshingLabel(refreshingLabel);
    }

    public void setReleaseLabel(CharSequence releaseLabel, Mode mode) {
        e(mode.showHeaderLoadingLayout(), mode.showFooterLoadingLayout()).setReleaseLabel(releaseLabel);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setOnRefreshListener(g<T> listener) {
        this.f72197w = listener;
        this.f72196v = null;
    }

    public PullToRefreshBase(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f72181g = false;
        this.f72182h = State.RESET;
        this.f72183i = Mode.getDefault();
        this.f72187m = true;
        this.f72188n = false;
        this.f72189o = true;
        this.f72190p = true;
        this.f72191q = true;
        this.f72193s = AnimationStyle.getDefault();
        t(context, attrs);
    }

    public PullToRefreshBase(Context context, Mode mode) {
        super(context);
        this.f72181g = false;
        this.f72182h = State.RESET;
        this.f72183i = Mode.getDefault();
        this.f72187m = true;
        this.f72188n = false;
        this.f72189o = true;
        this.f72190p = true;
        this.f72191q = true;
        this.f72193s = AnimationStyle.getDefault();
        this.f72183i = mode;
        t(context, null);
    }

    public PullToRefreshBase(Context context, Mode mode, AnimationStyle animStyle) {
        super(context);
        this.f72181g = false;
        this.f72182h = State.RESET;
        this.f72183i = Mode.getDefault();
        this.f72187m = true;
        this.f72188n = false;
        this.f72189o = true;
        this.f72190p = true;
        this.f72191q = true;
        AnimationStyle.getDefault();
        this.f72183i = mode;
        this.f72193s = animStyle;
        t(context, null);
    }
}
