package com.sigmob.sdk.mraid;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public class b extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final float f80909a = 30.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final float f80910b = 50.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final float f80911c = 8.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f80912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InterfaceC1031b f80913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final StateListDrawable f80914f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f80915g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f80916h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f80917i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f80918j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f80919k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Rect f80920l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Rect f80921m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Rect f80922n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Rect f80923o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f80924p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private c f80925q;

    public enum a {
        TOP_LEFT(51),
        TOP_CENTER(49),
        TOP_RIGHT(53),
        CENTER(17),
        BOTTOM_LEFT(83),
        BOTTOM_CENTER(81),
        BOTTOM_RIGHT(85);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f80934h;

        a(final int mGravity) {
            this.f80934h = mGravity;
        }

        int a() {
            return this.f80934h;
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid.b$b, reason: collision with other inner class name */
    public interface InterfaceC1031b {
        void a();
    }

    private final class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.setClosePressed(false);
        }
    }

    public b(Context context) {
        this(context, null, 0);
    }

    private void a(a closePosition, final int size, Rect bounds, Rect outBounds) {
        Gravity.apply(closePosition.a(), size, size, bounds, outBounds);
    }

    private void b(a closePosition, Rect bounds, Rect outBounds) {
        a(closePosition, this.f80917i, bounds, outBounds);
    }

    private void c() {
        playSoundEffect(0);
        InterfaceC1031b interfaceC1031b = this.f80913e;
        if (interfaceC1031b != null) {
            interfaceC1031b.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClosePressed(boolean pressed) {
        if (pressed == b()) {
            return;
        }
        this.f80914f.setState(pressed ? FrameLayout.SELECTED_STATE_SET : FrameLayout.EMPTY_STATE_SET);
        invalidate(this.f80921m);
    }

    @Override // android.view.View
    public void draw(final Canvas canvas) {
        super.draw(canvas);
        if (this.f80919k) {
            this.f80919k = false;
            this.f80920l.set(0, 0, getWidth(), getHeight());
            a(this.f80915g, this.f80920l, this.f80921m);
            this.f80923o.set(this.f80921m);
            Rect rect = this.f80923o;
            int i10 = this.f80918j;
            rect.inset(i10, i10);
            b(this.f80915g, this.f80923o, this.f80922n);
            this.f80914f.setBounds(this.f80922n);
        }
        if (this.f80914f.isVisible()) {
            this.f80914f.draw(canvas);
        }
    }

    Rect getCloseBounds() {
        return this.f80921m;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(final MotionEvent event) {
        if (event.getAction() != 0) {
            return false;
        }
        return a((int) event.getX(), (int) event.getY(), 0);
    }

    @Override // android.view.View
    protected void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        this.f80919k = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (!a((int) event.getX(), (int) event.getY(), this.f80912d) || !a()) {
            setClosePressed(false);
            super.onTouchEvent(event);
            return false;
        }
        int action = event.getAction();
        if (action == 0) {
            setClosePressed(true);
        } else if (action != 1) {
            if (action == 3) {
                setClosePressed(false);
            }
        } else if (b()) {
            if (this.f80925q == null) {
                this.f80925q = new c();
            }
            postDelayed(this.f80925q, ViewConfiguration.getPressedStateDuration());
            c();
        }
        return true;
    }

    public void setCloseAlwaysInteractable(boolean closeAlwaysInteractable) {
        this.f80924p = closeAlwaysInteractable;
    }

    void setCloseBoundChanged(boolean changed) {
        this.f80919k = changed;
    }

    void setCloseBounds(Rect closeBounds) {
        this.f80921m.set(closeBounds);
    }

    public void setClosePosition(a closePosition) {
        Preconditions.checkNotNull(closePosition);
        this.f80915g = closePosition;
        this.f80919k = true;
        invalidate();
    }

    public void setCloseVisible(boolean visible) {
        if (this.f80914f.setVisible(visible, false)) {
            invalidate(this.f80921m);
        }
    }

    public void setOnCloseListener(InterfaceC1031b onCloseListener) {
        this.f80913e = onCloseListener;
    }

    public b(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public void a(a closePosition, Rect bounds, Rect closeBounds) {
        a(closePosition, this.f80916h, bounds, closeBounds);
    }

    boolean b() {
        return this.f80914f.getState() == FrameLayout.SELECTED_STATE_SET;
    }

    public b(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f80920l = new Rect();
        this.f80921m = new Rect();
        this.f80922n = new Rect();
        this.f80923o = new Rect();
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f80914f = stateListDrawable;
        this.f80915g = a.TOP_RIGHT;
        stateListDrawable.setState(FrameLayout.EMPTY_STATE_SET);
        stateListDrawable.setCallback(this);
        this.f80912d = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f80916h = Dips.asIntPixels(50.0f, context);
        this.f80917i = Dips.asIntPixels(f80909a, context);
        this.f80918j = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
        this.f80924p = true;
    }

    boolean a() {
        return this.f80924p || this.f80914f.isVisible();
    }

    boolean a(int x10, int y10, int slop) {
        Rect rect = this.f80921m;
        return x10 >= rect.left - slop && y10 >= rect.top - slop && x10 < rect.right + slop && y10 < rect.bottom + slop;
    }
}
