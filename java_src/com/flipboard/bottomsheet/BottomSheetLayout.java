package com.flipboard.bottomsheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes9.dex */
public class BottomSheetLayout extends FrameLayout {
    private static final Property<BottomSheetLayout, Float> J = new a(Float.class, "sheetTranslation");
    private static final long K = 300;
    private int A;
    private final boolean B;
    private final int C;
    private int D;
    private int E;
    private float F;
    private float G;
    private float H;
    private State I;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f29096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Rect f29097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private State f29098d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f29099e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TimeInterpolator f29100f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f29101g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f29102h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f29103i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private VelocityTracker f29104j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f29105k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f29106l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.flipboard.bottomsheet.c f29107m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.flipboard.bottomsheet.c f29108n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f29109o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f29110p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Animator f29111q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CopyOnWriteArraySet<com.flipboard.bottomsheet.b> f29112r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CopyOnWriteArraySet<j> f29113s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View.OnLayoutChangeListener f29114t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f29115u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f29116v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f29117w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f29118x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f29119y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f29120z;

    public enum State {
        HIDDEN,
        PREPARING,
        PEEKED,
        EXPANDED
    }

    class a extends Property<BottomSheetLayout, Float> {
        a(Class type, String name) {
            super(type, name);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(BottomSheetLayout object) {
            return Float.valueOf(object.f29103i);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(BottomSheetLayout object, Float value) {
            object.setSheetTranslation(value.floatValue());
        }
    }

    class b extends h {
        b() {
            super(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animation) {
            if (this.f29131b) {
                return;
            }
            BottomSheetLayout.this.f29111q = null;
        }
    }

    class c extends h {
        c() {
            super(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animation) {
            if (this.f29131b) {
                return;
            }
            BottomSheetLayout.this.f29111q = null;
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f29123b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.flipboard.bottomsheet.c f29124c;

        d(final View val$sheetView, final com.flipboard.bottomsheet.c val$viewTransformer) {
            this.f29123b = val$sheetView;
            this.f29124c = val$viewTransformer;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetLayout.this.J(this.f29123b, this.f29124c);
        }
    }

    class e implements ViewTreeObserver.OnPreDrawListener {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (BottomSheetLayout.this.getSheetView() != null) {
                    BottomSheetLayout.this.D();
                }
            }
        }

        e() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            BottomSheetLayout.this.getViewTreeObserver().removeOnPreDrawListener(this);
            BottomSheetLayout.this.post(new a());
            return true;
        }
    }

    class f implements View.OnLayoutChangeListener {
        f() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View sheetView, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
            int measuredHeight = sheetView.getMeasuredHeight();
            if (BottomSheetLayout.this.f29098d != State.HIDDEN) {
                if (measuredHeight < BottomSheetLayout.this.f29117w) {
                    if (BottomSheetLayout.this.f29098d == State.EXPANDED) {
                        BottomSheetLayout.this.setState(State.PEEKED);
                    }
                    BottomSheetLayout.this.setSheetTranslation(measuredHeight);
                } else if (BottomSheetLayout.this.f29117w > 0 && measuredHeight > BottomSheetLayout.this.f29117w && BottomSheetLayout.this.f29098d == State.PEEKED) {
                    float f10 = measuredHeight;
                    if (f10 == BottomSheetLayout.this.getMaxSheetTranslation()) {
                        BottomSheetLayout.this.setState(State.EXPANDED);
                    }
                    BottomSheetLayout.this.setSheetTranslation(f10);
                }
            }
            BottomSheetLayout.this.f29117w = measuredHeight;
        }
    }

    class g extends h {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f29129c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(final View val$sheetView) {
            super(null);
            this.f29129c = val$sheetView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            if (this.f29131b) {
                return;
            }
            BottomSheetLayout.this.f29111q = null;
            BottomSheetLayout.this.setState(State.HIDDEN);
            BottomSheetLayout.this.setSheetLayerTypeIfEnabled(0);
            BottomSheetLayout.this.removeView(this.f29129c);
            Iterator it2 = BottomSheetLayout.this.f29112r.iterator();
            while (it2.hasNext()) {
                ((com.flipboard.bottomsheet.b) it2.next()).a(BottomSheetLayout.this);
            }
            BottomSheetLayout.this.f29108n = null;
            if (BottomSheetLayout.this.f29096b != null) {
                BottomSheetLayout.this.f29096b.run();
                BottomSheetLayout.this.f29096b = null;
            }
        }
    }

    private static class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected boolean f29131b;

        private h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            this.f29131b = true;
        }

        /* synthetic */ h(a aVar) {
            this();
        }
    }

    private static class i extends com.flipboard.bottomsheet.a {
        private i() {
        }

        @Override // com.flipboard.bottomsheet.c
        public void b(float translation, float maxTranslation, float peekedTranslation, BottomSheetLayout parent, View view) {
        }

        /* synthetic */ i(a aVar) {
            this();
        }
    }

    public interface j {
        void a(State state);
    }

    public BottomSheetLayout(Context context) {
        super(context);
        this.f29097c = new Rect();
        this.f29098d = State.HIDDEN;
        this.f29099e = false;
        this.f29100f = new DecelerateInterpolator(1.6f);
        this.f29107m = new i(null);
        this.f29109o = true;
        this.f29110p = true;
        this.f29112r = new CopyOnWriteArraySet<>();
        this.f29113s = new CopyOnWriteArraySet<>();
        this.f29116v = true;
        this.A = 0;
        this.B = getResources().getBoolean(R.bool.bottomsheet_is_tablet);
        this.C = getResources().getDimensionPixelSize(R.dimen.bottomsheet_default_sheet_width);
        this.D = 0;
        this.E = 0;
        x();
    }

    public static boolean B(Context context) {
        return context.getResources().getBoolean(R.bool.bottomsheet_is_tablet);
    }

    private boolean C(float x10) {
        return !this.B || (x10 >= ((float) this.D) && x10 <= ((float) this.E));
    }

    public static int E(Context context) {
        return B(context) ? context.getResources().getDimensionPixelSize(R.dimen.bottomsheet_default_sheet_width) : context.getResources().getDisplayMetrics().widthPixels;
    }

    private void K(float sheetTranslation) {
        com.flipboard.bottomsheet.c cVar = this.f29108n;
        if (cVar != null) {
            cVar.b(sheetTranslation, getMaxSheetTranslation(), getPeekSheetTranslation(), this, getContentView());
            return;
        }
        com.flipboard.bottomsheet.c cVar2 = this.f29107m;
        if (cVar2 != null) {
            cVar2.b(sheetTranslation, getMaxSheetTranslation(), getPeekSheetTranslation(), this, getContentView());
        }
    }

    private float getDefaultPeekTranslation() {
        return w() ? this.f29119y : getSheetView().getHeight();
    }

    private boolean o(View view, float x10, float y10) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                int left = childAt.getLeft() - view.getScrollX();
                int top = childAt.getTop() - view.getScrollY();
                float f10 = left;
                if ((x10 > f10 && x10 < ((float) (childAt.getRight() - view.getScrollX())) && y10 > ((float) top) && y10 < ((float) (childAt.getBottom() - view.getScrollY()))) && o(childAt, x10 - f10, y10 - top)) {
                    return true;
                }
            }
        }
        return view.canScrollVertically(-1);
    }

    private void p() {
        Animator animator = this.f29111q;
        if (animator != null) {
            animator.cancel();
        }
    }

    private static <T> T q(T value, String message) {
        if (value != null) {
            return value;
        }
        throw new NullPointerException(message);
    }

    private void s(Runnable runAfterDismissThis) {
        if (this.f29098d == State.HIDDEN) {
            this.f29096b = null;
            return;
        }
        this.f29096b = runAfterDismissThis;
        View sheetView = getSheetView();
        sheetView.removeOnLayoutChangeListener(this.f29114t);
        p();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, J, 0.0f);
        objectAnimatorOfFloat.setDuration(K);
        objectAnimatorOfFloat.setInterpolator(this.f29100f);
        objectAnimatorOfFloat.addListener(new g(sheetView));
        objectAnimatorOfFloat.start();
        this.f29111q = objectAnimatorOfFloat;
        this.D = 0;
        this.E = this.A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSheetLayerTypeIfEnabled(int layerType) {
        if (this.f29110p) {
            getSheetView().setLayerType(layerType, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSheetTranslation(float newTranslation) {
        this.f29103i = Math.min(newTranslation, getMaxSheetTranslation());
        this.f29097c.set(0, 0, getWidth(), (int) (((double) getHeight()) - Math.ceil(this.f29103i)));
        getSheetView().setTranslationY(getHeight() - this.f29103i);
        K(this.f29103i);
        if (this.f29109o) {
            float fU = u(this.f29103i);
            this.f29115u.setAlpha(fU);
            this.f29115u.setVisibility(fU <= 0.0f ? 4 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(State state) {
        if (state != this.f29098d) {
            this.f29098d = state;
            Iterator<j> it2 = this.f29113s.iterator();
            while (it2.hasNext()) {
                it2.next().a(state);
            }
        }
    }

    private float u(float sheetTranslation) {
        com.flipboard.bottomsheet.c cVar = this.f29108n;
        if (cVar != null) {
            return cVar.a(sheetTranslation, getMaxSheetTranslation(), getPeekSheetTranslation(), this, getContentView());
        }
        com.flipboard.bottomsheet.c cVar2 = this.f29107m;
        if (cVar2 != null) {
            return cVar2.a(sheetTranslation, getMaxSheetTranslation(), getPeekSheetTranslation(), this, getContentView());
        }
        return 0.0f;
    }

    private boolean v() {
        return getSheetView() == null || getSheetView().getHeight() == getHeight();
    }

    private boolean w() {
        return getSheetView() == null || ((float) getSheetView().getHeight()) > this.f29119y;
    }

    private void x() {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f29105k = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f29106l = viewConfiguration.getScaledTouchSlop();
        View view = new View(getContext());
        this.f29115u = view;
        view.setBackgroundColor(-16777216);
        this.f29115u.setAlpha(0.0f);
        this.f29115u.setVisibility(4);
        setFocusableInTouchMode(true);
        Point point = new Point();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getSize(point);
        int i10 = point.x;
        this.A = i10;
        this.E = i10;
        this.f29120z = 0.0f;
        this.f29119y = point.y - (i10 / 1.7777778f);
    }

    private void y() {
        this.f29103i = 0.0f;
        this.f29097c.set(0, 0, getWidth(), getHeight());
        getSheetView().setTranslationY(getHeight());
        this.f29115u.setAlpha(0.0f);
        this.f29115u.setVisibility(4);
    }

    private boolean z() {
        return this.f29111q != null;
    }

    public boolean A() {
        return this.f29098d != State.HIDDEN;
    }

    public void D() {
        p();
        setSheetLayerTypeIfEnabled(2);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, J, getPeekSheetTranslation());
        objectAnimatorOfFloat.setDuration(K);
        objectAnimatorOfFloat.setInterpolator(this.f29100f);
        objectAnimatorOfFloat.addListener(new c());
        objectAnimatorOfFloat.start();
        this.f29111q = objectAnimatorOfFloat;
        setState(State.PEEKED);
    }

    public void F(@NonNull com.flipboard.bottomsheet.b onSheetDismissedListener) {
        q(onSheetDismissedListener, "onSheetDismissedListener == null");
        this.f29112r.remove(onSheetDismissedListener);
    }

    public void G(@NonNull j onSheetStateChangeListener) {
        q(onSheetStateChangeListener, "onSheetStateChangeListener == null");
        this.f29113s.remove(onSheetStateChangeListener);
    }

    public boolean H() {
        return this.f29109o;
    }

    public void I(View sheetView) {
        J(sheetView, null);
    }

    public void J(final View sheetView, final com.flipboard.bottomsheet.c viewTransformer) {
        if (this.f29098d != State.HIDDEN) {
            s(new d(sheetView, viewTransformer));
            return;
        }
        setState(State.PREPARING);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) sheetView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(this.B ? -2 : -1, -2, 1);
        }
        if (this.B && layoutParams.width == -2) {
            if (layoutParams.gravity == -1) {
                layoutParams.gravity = 1;
            }
            int i10 = this.C;
            layoutParams.width = i10;
            int i11 = this.A;
            int i12 = (i11 - i10) / 2;
            this.D = i12;
            this.E = i11 - i12;
        }
        super.addView(sheetView, -1, layoutParams);
        y();
        this.f29108n = viewTransformer;
        getViewTreeObserver().addOnPreDrawListener(new e());
        this.f29117w = sheetView.getMeasuredHeight();
        f fVar = new f();
        this.f29114t = fVar;
        sheetView.addOnLayoutChangeListener(fVar);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View child) {
        if (getChildCount() > 0) {
            throw new IllegalArgumentException("You may not declare more then one child of bottom sheet. The sheet view must be added dynamically with showWithSheetView()");
        }
        setContentView(child);
    }

    public View getContentView() {
        if (getChildCount() > 0) {
            return getChildAt(0);
        }
        return null;
    }

    public boolean getInterceptContentTouch() {
        return this.f29116v;
    }

    public float getMaxSheetTranslation() {
        return v() ? getHeight() - getPaddingTop() : getSheetView().getHeight();
    }

    public boolean getPeekOnDismiss() {
        return this.f29099e;
    }

    public float getPeekSheetTranslation() {
        float f10 = this.f29120z;
        return f10 == 0.0f ? getDefaultPeekTranslation() : f10;
    }

    public View getSheetView() {
        if (getChildCount() > 2) {
            return getChildAt(2);
        }
        return null;
    }

    public State getState() {
        return this.f29098d;
    }

    public void m(@NonNull com.flipboard.bottomsheet.b onSheetDismissedListener) {
        q(onSheetDismissedListener, "onSheetDismissedListener == null");
        this.f29112r.add(onSheetDismissedListener);
    }

    public void n(@NonNull j onSheetStateChangeListener) {
        q(onSheetStateChangeListener, "onSheetStateChangeListener == null");
        this.f29113s.add(onSheetStateChangeListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f29104j = VelocityTracker.obtain();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f29104j.clear();
        p();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NonNull MotionEvent ev) {
        boolean z10 = ev.getActionMasked() == 0;
        if (z10) {
            this.f29118x = false;
        }
        if (this.f29116v || (ev.getY() > getHeight() - this.f29103i && C(ev.getX()))) {
            this.f29118x = z10 && A();
        } else {
            this.f29118x = false;
        }
        return this.f29118x;
    }

    @Override // android.view.View
    public boolean onKeyPreIme(int keyCode, @NonNull KeyEvent event) {
        if (keyCode == 4 && A()) {
            if (event.getAction() == 0 && event.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                if (keyDispatcherState != null) {
                    keyDispatcherState.startTracking(event, this);
                }
                return true;
            }
            if (event.getAction() == 1) {
                KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.handleUpEvent(event);
                }
                if (A() && event.isTracking() && !event.isCanceled()) {
                    if (this.f29098d == State.EXPANDED && this.f29099e) {
                        D();
                    } else {
                        r();
                    }
                    return true;
                }
            }
        }
        return super.onKeyPreIme(keyCode, event);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.f29097c.set(0, 0, getWidth(), (int) (((double) getHeight()) - Math.ceil(this.f29103i)));
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent event) {
        if (!A() || z()) {
            return false;
        }
        if (!this.f29118x) {
            return onInterceptTouchEvent(event);
        }
        if (event.getAction() == 0) {
            this.f29101g = false;
            this.f29102h = false;
            this.F = event.getY();
            this.G = event.getX();
            this.H = this.f29103i;
            this.I = this.f29098d;
            this.f29104j.clear();
        }
        this.f29104j.addMovement(event);
        float maxSheetTranslation = getMaxSheetTranslation();
        float peekSheetTranslation = getPeekSheetTranslation();
        float y10 = this.F - event.getY();
        float x10 = this.G - event.getX();
        if (!this.f29101g && !this.f29102h) {
            this.f29101g = Math.abs(y10) > this.f29106l;
            this.f29102h = Math.abs(x10) > this.f29106l;
            if (this.f29101g) {
                if (this.f29098d == State.PEEKED) {
                    MotionEvent motionEventObtain = MotionEvent.obtain(event);
                    motionEventObtain.offsetLocation(0.0f, this.f29103i - getHeight());
                    motionEventObtain.setAction(3);
                    getSheetView().dispatchTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                this.f29102h = false;
                this.F = event.getY();
                this.G = event.getX();
                y10 = 0.0f;
            }
        }
        float fMin = this.H + y10;
        if (this.f29101g) {
            boolean z10 = y10 < 0.0f;
            boolean zO = o(getSheetView(), event.getX(), event.getY() + (this.f29103i - getHeight()));
            State state = this.f29098d;
            State state2 = State.EXPANDED;
            if (state == state2 && z10 && !zO) {
                this.F = event.getY();
                this.H = this.f29103i;
                this.f29104j.clear();
                setState(State.PEEKED);
                setSheetLayerTypeIfEnabled(2);
                fMin = this.f29103i;
                MotionEvent motionEventObtain2 = MotionEvent.obtain(event);
                motionEventObtain2.setAction(3);
                getSheetView().dispatchTouchEvent(motionEventObtain2);
                motionEventObtain2.recycle();
            }
            if (this.f29098d == State.PEEKED && fMin > maxSheetTranslation) {
                setSheetTranslation(maxSheetTranslation);
                fMin = Math.min(maxSheetTranslation, fMin);
                MotionEvent motionEventObtain3 = MotionEvent.obtain(event);
                motionEventObtain3.setAction(0);
                getSheetView().dispatchTouchEvent(motionEventObtain3);
                motionEventObtain3.recycle();
                setState(state2);
                setSheetLayerTypeIfEnabled(0);
            }
            if (this.f29098d == state2) {
                event.offsetLocation(0.0f, this.f29103i - getHeight());
                getSheetView().dispatchTouchEvent(event);
            } else {
                if (fMin < peekSheetTranslation) {
                    fMin = peekSheetTranslation - ((peekSheetTranslation - fMin) / 4.0f);
                }
                setSheetTranslation(fMin);
                if (event.getAction() == 3) {
                    if (this.I == state2) {
                        t();
                    } else {
                        D();
                    }
                }
                if (event.getAction() == 1) {
                    if (fMin < peekSheetTranslation) {
                        r();
                    } else {
                        this.f29104j.computeCurrentVelocity(1000);
                        float yVelocity = this.f29104j.getYVelocity();
                        if (Math.abs(yVelocity) < this.f29105k) {
                            if (this.f29103i > getHeight() / 2) {
                                t();
                            } else {
                                D();
                            }
                        } else if (yVelocity < 0.0f) {
                            t();
                        } else {
                            D();
                        }
                    }
                }
            }
        } else {
            boolean z11 = event.getY() < ((float) getHeight()) - this.f29103i || !C(event.getX());
            if (event.getAction() == 1 && z11 && this.f29116v) {
                r();
                return true;
            }
            event.offsetLocation(this.B ? getX() - this.D : 0.0f, this.f29103i - getHeight());
            getSheetView().dispatchTouchEvent(event);
        }
        return true;
    }

    public void r() {
        s(null);
    }

    public void setContentView(View contentView) {
        super.addView(contentView, -1, generateDefaultLayoutParams());
        super.addView(this.f29115u, -1, generateDefaultLayoutParams());
    }

    public void setDefaultViewTransformer(com.flipboard.bottomsheet.c defaultViewTransformer) {
        this.f29107m = defaultViewTransformer;
    }

    public void setInterceptContentTouch(boolean interceptContentTouch) {
        this.f29116v = interceptContentTouch;
    }

    public void setPeekOnDismiss(boolean peekOnDismiss) {
        this.f29099e = peekOnDismiss;
    }

    public void setPeekSheetTranslation(float peek) {
        this.f29120z = peek;
    }

    public void setShouldDimContentView(boolean shouldDimContentView) {
        this.f29109o = shouldDimContentView;
    }

    public void setUseHardwareLayerWhileAnimating(boolean useHardwareLayerWhileAnimating) {
        this.f29110p = useHardwareLayerWhileAnimating;
    }

    public void t() {
        p();
        setSheetLayerTypeIfEnabled(0);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, J, getMaxSheetTranslation());
        objectAnimatorOfFloat.setDuration(K);
        objectAnimatorOfFloat.setInterpolator(this.f29100f);
        objectAnimatorOfFloat.addListener(new b());
        objectAnimatorOfFloat.start();
        this.f29111q = objectAnimatorOfFloat;
        setState(State.EXPANDED);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View child, int index) {
        addView(child);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View child, int index, @NonNull ViewGroup.LayoutParams params) {
        addView(child);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(@NonNull View child, @NonNull ViewGroup.LayoutParams params) {
        addView(child);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View child, int width, int height) {
        addView(child);
    }

    public BottomSheetLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BottomSheetLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f29097c = new Rect();
        this.f29098d = State.HIDDEN;
        this.f29099e = false;
        this.f29100f = new DecelerateInterpolator(1.6f);
        this.f29107m = new i(null);
        this.f29109o = true;
        this.f29110p = true;
        this.f29112r = new CopyOnWriteArraySet<>();
        this.f29113s = new CopyOnWriteArraySet<>();
        this.f29116v = true;
        this.A = 0;
        this.B = getResources().getBoolean(R.bool.bottomsheet_is_tablet);
        this.C = getResources().getDimensionPixelSize(R.dimen.bottomsheet_default_sheet_width);
        this.D = 0;
        this.E = 0;
        x();
    }

    @TargetApi(21)
    public BottomSheetLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.f29097c = new Rect();
        this.f29098d = State.HIDDEN;
        this.f29099e = false;
        this.f29100f = new DecelerateInterpolator(1.6f);
        this.f29107m = new i(null);
        this.f29109o = true;
        this.f29110p = true;
        this.f29112r = new CopyOnWriteArraySet<>();
        this.f29113s = new CopyOnWriteArraySet<>();
        this.f29116v = true;
        this.A = 0;
        this.B = getResources().getBoolean(R.bool.bottomsheet_is_tablet);
        this.C = getResources().getDimensionPixelSize(R.dimen.bottomsheet_default_sheet_width);
        this.D = 0;
        this.E = 0;
        x();
    }
}
