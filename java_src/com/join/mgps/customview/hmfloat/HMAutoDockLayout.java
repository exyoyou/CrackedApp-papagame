package com.join.mgps.customview.hmfloat;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bJ\b\u0010\u0016\u001a\u00020\u0017H\u0014J\u0006\u0010\u0018\u001a\u00020\u0017J\u0012\u0010\u0019\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J\b\u0010\u001e\u001a\u00020\u0011H\u0002J\b\u0010\u001f\u001a\u00020\u0011H\u0002J\b\u0010 \u001a\u00020\u0011H\u0002J\b\u0010!\u001a\u00020\u0011H\u0002J\b\u0010\"\u001a\u00020\u0011H\u0002J\b\u0010#\u001a\u00020\u0017H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082D¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006$"}, d2 = {"Lcom/join/mgps/customview/hmfloat/HMAutoDockLayout;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "lastRawX", "", "lastRawY", "isDragging", "", "startX", "startY", "moveThreshold", "", "isTranslateX", "()Z", "setTranslateX", "(Z)V", "onAttachedToWindow", "", "setInitDock", "onInterceptTouchEvent", "ev", "Landroid/view/MotionEvent;", "onTouchEvent", NotificationCompat.CATEGORY_EVENT, "getStatusBarHeight", "getSafeInsetLeft", "getSafeInsetTop", "getSafeInsetRight", "getSafeInsetBottom", "animateToEdge", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMAutoDockLayout extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f66472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f66473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f66474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f66475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f66476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f66477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f66478h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMAutoDockLayout(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f66477g = 8;
    }

    private final void b() {
        Object parent = getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
        int width = ((View) parent).getWidth();
        animate().x(getX() + ((float) (getWidth() / 2)) < ((float) (width / 2)) ? 0.0f : width - getWidth()).setDuration(300L).start();
    }

    private final int getSafeInsetBottom() {
        Object parent = getParent();
        View view = parent instanceof View ? (View) parent : null;
        if (view == null || !(view instanceof ConstraintLayout)) {
            return 0;
        }
        return ((ConstraintLayout) view).getPaddingBottom();
    }

    private final int getSafeInsetLeft() {
        Object parent = getParent();
        View view = parent instanceof View ? (View) parent : null;
        if (view == null || !(view instanceof ConstraintLayout)) {
            return 0;
        }
        return ((ConstraintLayout) view).getPaddingLeft();
    }

    private final int getSafeInsetRight() {
        Object parent = getParent();
        View view = parent instanceof View ? (View) parent : null;
        if (view == null || !(view instanceof ConstraintLayout)) {
            return 0;
        }
        return ((ConstraintLayout) view).getPaddingRight();
    }

    private final int getSafeInsetTop() {
        Object parent = getParent();
        View view = parent instanceof View ? (View) parent : null;
        if (view == null || !(view instanceof ConstraintLayout)) {
            return 0;
        }
        return ((ConstraintLayout) view).getPaddingTop();
    }

    private final int getStatusBarHeight() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setInitDock$lambda$0(HMAutoDockLayout hMAutoDockLayout) {
        Object parent = hMAutoDockLayout.getParent();
        View view = parent instanceof View ? (View) parent : null;
        if (view == null) {
            hMAutoDockLayout.setX(0.0f);
        } else {
            int width = view.getWidth();
            hMAutoDockLayout.setX(hMAutoDockLayout.getX() + ((float) (hMAutoDockLayout.getWidth() / 2)) > ((float) (width / 2)) ? (width - hMAutoDockLayout.getWidth()) - 0.0f : 0.0f);
        }
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getF66478h() {
        return this.f66478h;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f66478h) {
            setInitDock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0049  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@Nullable MotionEvent ev) {
        if (ev == null) {
            return false;
        }
        int action = ev.getAction();
        if (action == 0) {
            this.f66475e = ev.getX();
            this.f66476f = ev.getY();
            return false;
        }
        if (action == 1) {
            this.f66474d = false;
            getParent().requestDisallowInterceptTouchEvent(false);
        } else {
            if (action == 2) {
                if (this.f66474d) {
                    return true;
                }
                float x10 = ev.getX() - this.f66475e;
                float y10 = ev.getY() - this.f66476f;
                if (Math.abs(x10) <= this.f66477g && Math.abs(y10) <= this.f66477g) {
                    return false;
                }
                this.f66474d = true;
                getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
            if (action == 3) {
                this.f66474d = false;
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b6  */
    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 0) {
            this.f66472b = event.getRawX();
            this.f66473c = event.getRawY();
            this.f66474d = false;
            return true;
        }
        if (action == 1) {
            if (this.f66474d) {
                b();
                this.f66474d = false;
                getParent().requestDisallowInterceptTouchEvent(false);
                return true;
            }
        } else {
            if (action == 2) {
                float rawX = event.getRawX() - this.f66472b;
                float rawY = event.getRawY() - this.f66473c;
                if (!this.f66474d && (Math.abs(rawX) > this.f66477g || Math.abs(rawY) > this.f66477g)) {
                    this.f66474d = true;
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                if (this.f66474d) {
                    float rawX2 = (event.getRawX() - (getWidth() / 2)) - getStatusBarHeight();
                    float rawY2 = event.getRawY() - (getHeight() / 2);
                    if (this.f66478h) {
                        Object parent = getParent();
                        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
                        setX(RangesKt___RangesKt.coerceIn(rawX2, 0.0f, ((View) parent).getWidth() - getWidth()));
                    }
                    Object parent2 = getParent();
                    Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.View");
                    setY(RangesKt___RangesKt.coerceIn(rawY2, 0.0f, ((View) parent2).getHeight() - getHeight()));
                    this.f66472b = event.getRawX();
                    this.f66473c = event.getRawY();
                }
                return true;
            }
            if (action == 3) {
                if (this.f66474d) {
                    b();
                    this.f66474d = false;
                    getParent().requestDisallowInterceptTouchEvent(false);
                    return true;
                }
            }
        }
        return super.onTouchEvent(event);
    }

    public final void setInitDock() {
        post(new Runnable() { // from class: com.join.mgps.customview.hmfloat.a
            @Override // java.lang.Runnable
            public final void run() {
                HMAutoDockLayout.setInitDock$lambda$0(this.f66519b);
            }
        });
    }

    public final void setTranslateX(boolean z10) {
        this.f66478h = z10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMAutoDockLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f66477g = 8;
    }
}
