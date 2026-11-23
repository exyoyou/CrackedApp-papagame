package com.kwad.components.core.page.widget.a;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class c<V extends View> extends KSCoordinatorLayout.Behavior<V> {
    private float agL;
    private int agM;
    private boolean agN;
    private int agO;
    protected int agP;
    private int agQ;
    private int agR;
    protected int agS;
    private float agT;
    private boolean agU;
    private boolean agV;
    protected i agW;
    private boolean agX;
    private boolean agY;
    private int agZ;
    private boolean aha;
    private int ahb;
    private WeakReference<V> ahc;
    protected WeakReference<View> ahd;
    private a ahe;
    protected int ahf;
    private boolean ahg;
    private Map<View, Integer> ahh;
    protected boolean ahm;
    private c<V>.RunnableC0877c ahn;
    private int mActivePointerId;
    private VelocityTracker mVelocityTracker;
    private boolean agK = true;
    private int mState = 4;
    protected float ahi = 1.0f;
    protected float ahj = 1.0f;
    protected float ahk = 0.5f;
    protected float ahl = 0.5f;
    private final i.a aho = new i.a() { // from class: com.kwad.components.core.page.widget.a.c.2
        @Override // com.kwad.components.core.page.widget.a.i.a
        public final int E(@NonNull View view) {
            return view.getLeft();
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final void bH(int i10) {
            c.this.bG(i10);
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final int bI(int i10) {
            return MathUtils.clamp(i10, c.this.vl(), c.this.agU ? c.this.ahb : c.this.agS);
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final void onViewDragStateChanged(int i10) {
            if (i10 == 1) {
                c.this.bE(1);
            }
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final void onViewReleased(@NonNull View view, float f10, float f11) {
            int iVl = 0;
            int i10 = 6;
            if (f11 < 0.0f) {
                if (c.this.agK) {
                    if (c.this.e(view, f11)) {
                        iVl = c.this.agQ;
                    } else {
                        iVl = c.this.agS;
                        i10 = 4;
                    }
                } else if (view.getTop() > c.this.agR) {
                    iVl = c.this.agR;
                }
                i10 = 3;
            } else if (c.this.agU && c.this.d(view, f11) && (view.getTop() > c.this.agS || Math.abs(f10) < Math.abs(f11))) {
                iVl = c.this.ahb;
                i10 = 5;
            } else if (f11 == 0.0f || Math.abs(f10) > Math.abs(f11)) {
                int top = view.getTop();
                if (c.this.agK) {
                    if (c.this.e(view, f11)) {
                        iVl = c.this.agQ;
                        i10 = 3;
                    } else {
                        iVl = c.this.agS;
                        i10 = 4;
                    }
                } else if (top < c.this.agR) {
                    if (top < Math.abs(top - c.this.agS)) {
                        i10 = 3;
                    } else {
                        iVl = c.this.agR;
                    }
                } else if (Math.abs(top - c.this.agR) < Math.abs(top - c.this.agS)) {
                    iVl = c.this.agR;
                } else {
                    iVl = c.this.agS;
                    i10 = 4;
                }
            } else if (c.this.e(view, f11)) {
                iVl = c.this.vl();
                i10 = 3;
            } else {
                iVl = c.this.agS;
                i10 = 4;
            }
            if (!c.this.agW.settleCapturedViewAt(view.getLeft(), iVl)) {
                c.this.bE(i10);
                return;
            }
            c.this.bE(2);
            c cVar = c.this;
            cVar.ahn = new RunnableC0877c(view, i10);
            ViewCompat.postOnAnimation(view, c.this.ahn);
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final boolean tryCaptureView(@NonNull View view, int i10) {
            View view2;
            if (c.this.mState == 1 || c.this.ahg) {
                return false;
            }
            return ((c.this.mState == 3 && c.this.mActivePointerId == i10 && (view2 = c.this.ahd.get()) != null && view2.canScrollVertically(-1)) || c.this.ahc == null || c.this.ahc.get() != view) ? false : true;
        }

        @Override // com.kwad.components.core.page.widget.a.i.a
        public final int vm() {
            return c.this.agU ? c.this.ahb : c.this.agS;
        }
    };

    public interface a {
        void bA(int i10);

        void i(float f10);
    }

    /* JADX INFO: renamed from: com.kwad.components.core.page.widget.a.c$c, reason: collision with other inner class name */
    class RunnableC0877c implements Runnable {
        private final int ahs;
        private final View mView;

        RunnableC0877c(View view, int i10) {
            this.mView = view;
            this.ahs = i10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            i iVar = c.this.agW;
            if (iVar != null && iVar.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.mView, this);
                return;
            }
            c.this.bE(this.ahs);
            if (c.this.ahn == this) {
                c.this.ahn = null;
            }
        }
    }

    @VisibleForTesting
    private View D(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            if (view.getVisibility() == 0) {
                return view;
            }
            return null;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View viewD = D(viewGroup.getChildAt(i10));
                if (viewD != null) {
                    return viewD;
                }
            }
        }
        return null;
    }

    @SuppressLint({"ObsoleteSdkInt"})
    private void aX(boolean z10) {
        WeakReference<V> weakReference = this.ahc;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof KSCoordinatorLayout) {
            KSCoordinatorLayout kSCoordinatorLayout = (KSCoordinatorLayout) parent;
            int childCount = kSCoordinatorLayout.getChildCount();
            if (z10) {
                if (this.ahh != null) {
                    return;
                } else {
                    this.ahh = new HashMap(childCount);
                }
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = kSCoordinatorLayout.getChildAt(i10);
                if (childAt != this.ahc.get()) {
                    if (z10) {
                        this.ahh.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        ViewCompat.setImportantForAccessibility(childAt, 4);
                    } else {
                        Map<View, Integer> map = this.ahh;
                        if (map != null && map.containsKey(childAt)) {
                            ViewCompat.setImportantForAccessibility(childAt, this.ahh.get(childAt).intValue());
                        }
                    }
                }
            }
            if (z10) {
                return;
            }
            this.ahh = null;
        }
    }

    private void bF(int i10) {
        if (i10 == 3) {
            this.ahm = true;
        } else if (i10 == 4 || i10 == 5 || i10 == 6) {
            this.ahm = false;
        }
    }

    private float getYVelocity() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.agL);
        return this.mVelocityTracker.getYVelocity(this.mActivePointerId);
    }

    private void reset() {
        this.mActivePointerId = -1;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void vk() {
        if (this.agK) {
            this.agS = Math.max(this.ahb - this.agP, this.agQ);
        } else {
            this.agS = this.ahb - this.agP;
        }
    }

    public final void aW(boolean z10) {
        this.agU = true;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0015  */
    public final void bD(int i10) {
        WeakReference<V> weakReference;
        V v10;
        boolean z10 = true;
        if (i10 == -1) {
            if (this.agN) {
                z10 = false;
            } else {
                this.agN = true;
            }
        } else if (this.agN || this.agM != i10) {
            this.agN = false;
            this.agM = Math.max(0, i10);
            this.agS = this.ahb - i10;
        } else {
            z10 = false;
        }
        if (!z10 || this.mState != 4 || (weakReference = this.ahc) == null || (v10 = weakReference.get()) == null) {
            return;
        }
        v10.requestLayout();
    }

    final void bE(int i10) {
        a aVar;
        if (this.mState == i10) {
            return;
        }
        this.mState = i10;
        bF(i10);
        if (i10 == 6 || i10 == 3) {
            aX(true);
        } else if (i10 == 5 || i10 == 4) {
            aX(false);
        }
        if (this.ahc.get() == null || (aVar = this.ahe) == null) {
            return;
        }
        aVar.bA(i10);
    }

    final void bG(int i10) {
        if (this.ahc.get() == null || this.ahe == null) {
            return;
        }
        int i11 = this.agS;
        int iVl = i10 > i11 ? this.ahb - i11 : i11 - vl();
        if (iVl != 0) {
            this.agT = (this.agS - i10) / iVl;
        }
        this.ahe.i(this.agT);
    }

    public final void k(@FloatRange(from = 0.0d, fromInclusive = false, to = com.google.android.material.color.utilities.d.f30216a, toInclusive = false) float f10) {
        this.ahl = 0.8f;
    }

    final void l(View view, int i10) {
        int iVl;
        int i11;
        if (i10 == 4) {
            iVl = this.agS;
        } else if (i10 == 6) {
            iVl = this.agR;
            if (this.agK && iVl <= (i11 = this.agQ)) {
                iVl = i11;
                i10 = 3;
            }
        } else if (i10 == 3) {
            iVl = vl();
        } else {
            if (!this.agU || i10 != 5) {
                throw new IllegalArgumentException("Illegal mState argument: " + i10);
            }
            iVl = this.ahb;
        }
        if (!this.agW.smoothSlideViewTo(view, view.getLeft(), iVl)) {
            bE(i10);
        } else {
            bE(2);
            ViewCompat.postOnAnimation(view, new RunnableC0877c(view, i10));
        }
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onInterceptTouchEvent(KSCoordinatorLayout kSCoordinatorLayout, V v10, MotionEvent motionEvent) {
        i iVar;
        if (!v10.isShown()) {
            this.agX = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            reset();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x10 = (int) motionEvent.getX();
            this.ahf = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.ahd;
            View view = weakReference != null ? weakReference.get() : null;
            if (view != null && kSCoordinatorLayout.isPointInChildBounds(view, x10, this.ahf)) {
                this.mActivePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.ahg = true;
            }
            this.agX = (this.agY || this.mActivePointerId != -1 || kSCoordinatorLayout.isPointInChildBounds(v10, x10, this.ahf)) ? false : true;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.ahg = false;
            this.mActivePointerId = -1;
            if (this.agX) {
                this.agX = false;
                return false;
            }
        }
        if (!this.agX && (iVar = this.agW) != null && iVar.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.ahd;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.agX || this.mState == 1 || kSCoordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.agW == null || Math.abs(((float) this.ahf) - motionEvent.getY()) <= ((float) this.agW.getTouchSlop())) ? false : true;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onLayoutChild(KSCoordinatorLayout kSCoordinatorLayout, V v10, int i10) {
        if (ViewCompat.getFitsSystemWindows(kSCoordinatorLayout) && !ViewCompat.getFitsSystemWindows(v10)) {
            v10.setFitsSystemWindows(true);
        }
        int top = v10.getTop();
        kSCoordinatorLayout.onLayoutChild(v10, i10);
        int height = kSCoordinatorLayout.getHeight();
        this.ahb = height;
        if (this.agN) {
            if (this.agO == 0) {
                this.agO = 64;
            }
            this.agP = Math.max(this.agO, height - ((kSCoordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.agP = this.agM;
        }
        this.agQ = Math.max(0, this.ahb - v10.getHeight());
        this.agR = this.ahb / 2;
        vk();
        v10.getTop();
        int i11 = this.mState;
        if (i11 == 3) {
            ViewCompat.offsetTopAndBottom(v10, vl());
        } else if (i11 == 6) {
            ViewCompat.offsetTopAndBottom(v10, this.agR);
        } else if (this.agU && i11 == 5) {
            ViewCompat.offsetTopAndBottom(v10, this.ahb);
        } else if (i11 == 4) {
            ViewCompat.offsetTopAndBottom(v10, this.agS);
        } else if (i11 == 1 || i11 == 2) {
            ViewCompat.offsetTopAndBottom(v10, top - v10.getTop());
        }
        if (this.agW == null) {
            this.agW = i.a(kSCoordinatorLayout, this.aho);
        }
        this.ahc = new WeakReference<>(v10);
        this.ahd = new WeakReference<>(D(v10));
        return true;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onNestedPreFling(@NonNull KSCoordinatorLayout kSCoordinatorLayout, @NonNull V v10, @NonNull View view, float f10, float f11) {
        if (view == this.ahd.get()) {
            return this.mState != 3 || super.onNestedPreFling(kSCoordinatorLayout, v10, view, f10, f11);
        }
        return false;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final void onNestedPreScroll(@NonNull KSCoordinatorLayout kSCoordinatorLayout, @NonNull V v10, @NonNull View view, int i10, int i11, @NonNull int[] iArr, int i12) {
        if (i12 != 1 && view == this.ahd.get()) {
            int top = v10.getTop();
            int i13 = top - i11;
            if (i11 > 0) {
                if (i13 < vl()) {
                    int iVl = top - vl();
                    iArr[1] = iVl;
                    ViewCompat.offsetTopAndBottom(v10, -iVl);
                    bE(3);
                } else {
                    iArr[1] = i11;
                    ViewCompat.offsetTopAndBottom(v10, -i11);
                    bE(1);
                }
            } else if (i11 < 0 && !view.canScrollVertically(-1)) {
                int i14 = this.agS;
                if (i13 <= i14 || this.agU) {
                    iArr[1] = i11;
                    ViewCompat.offsetTopAndBottom(v10, -i11);
                    bE(1);
                } else {
                    int i15 = top - i14;
                    iArr[1] = i15;
                    ViewCompat.offsetTopAndBottom(v10, -i15);
                    bE(4);
                }
            }
            bG(v10.getTop());
            this.agZ = i11;
            this.aha = true;
        }
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final void onRestoreInstanceState(@NonNull KSCoordinatorLayout kSCoordinatorLayout, @NonNull V v10, @NonNull Parcelable parcelable) {
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(kSCoordinatorLayout, v10, bVar.getSuperState());
        int i10 = bVar.mState;
        if (i10 == 1 || i10 == 2) {
            this.mState = 4;
        } else {
            this.mState = i10;
        }
        bF(this.mState);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final Parcelable onSaveInstanceState(KSCoordinatorLayout kSCoordinatorLayout, V v10) {
        return new b(super.onSaveInstanceState(kSCoordinatorLayout, v10), this.mState);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onStartNestedScroll(@NonNull KSCoordinatorLayout kSCoordinatorLayout, @NonNull V v10, @NonNull View view, @NonNull View view2, int i10, int i11) {
        this.agZ = 0;
        this.aha = false;
        return (i10 & 2) != 0;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final void onStopNestedScroll(@NonNull KSCoordinatorLayout kSCoordinatorLayout, @NonNull V v10, @NonNull View view, int i10) {
        int iVl;
        int i11 = 3;
        if (v10.getTop() == vl()) {
            bE(3);
            return;
        }
        if (this.ahe != null) {
            this.ahd.get();
        }
        if (view == this.ahd.get() && this.aha) {
            if (this.agZ > 0) {
                if (e(v10, getYVelocity())) {
                    iVl = vl();
                } else {
                    iVl = this.agS;
                    i11 = 4;
                }
            } else if (this.agU && d(v10, getYVelocity())) {
                iVl = this.ahb;
                i11 = 5;
            } else if (this.agZ == 0) {
                int top = v10.getTop();
                if (!this.agK) {
                    int i12 = this.agR;
                    if (top < i12) {
                        if (top < Math.abs(top - this.agS)) {
                            iVl = 0;
                        } else {
                            iVl = this.agR;
                        }
                    } else if (Math.abs(top - i12) < Math.abs(top - this.agS)) {
                        iVl = this.agR;
                    } else {
                        iVl = this.agS;
                        i11 = 4;
                    }
                    i11 = 6;
                } else if (e(v10, getYVelocity())) {
                    iVl = this.agQ;
                } else {
                    iVl = this.agS;
                    i11 = 4;
                }
            } else if (e(v10, getYVelocity())) {
                iVl = vl();
            } else {
                iVl = this.agS;
                i11 = 4;
            }
            if (this.agW.smoothSlideViewTo(v10, v10.getLeft(), iVl)) {
                bE(2);
                ViewCompat.postOnAnimation(v10, new RunnableC0877c(v10, i11));
            } else {
                bE(i11);
            }
            this.aha = false;
        }
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public final boolean onTouchEvent(@NonNull KSCoordinatorLayout kSCoordinatorLayout, V v10, @NonNull MotionEvent motionEvent) {
        if (!v10.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.mState == 1 && actionMasked == 0) {
            return true;
        }
        i iVar = this.agW;
        if (iVar != null) {
            iVar.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            reset();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked == 2 && !this.agX && this.agW != null && Math.abs(this.ahf - motionEvent.getY()) > this.agW.getTouchSlop()) {
            this.agW.captureChildView(v10, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.agX;
    }

    public final void setState(final int i10) {
        if (i10 == this.mState) {
            return;
        }
        WeakReference<V> weakReference = this.ahc;
        if (weakReference == null) {
            if (i10 == 4 || i10 == 3 || i10 == 6 || (this.agU && i10 == 5)) {
                this.mState = i10;
                bF(i10);
                return;
            }
            return;
        }
        final V v10 = weakReference.get();
        if (v10 == null) {
            return;
        }
        ViewParent parent = v10.getParent();
        if (parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v10)) {
            v10.post(new Runnable() { // from class: com.kwad.components.core.page.widget.a.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.l(v10, i10);
                }
            });
        } else {
            l(v10, i10);
        }
    }

    public final int vl() {
        if (this.agK) {
            return this.agQ;
        }
        return 0;
    }

    protected static class b extends AbsSavedState {
        public static final Parcelable.Creator<b> CREATOR = new Parcelable.ClassLoaderCreator<b>() { // from class: com.kwad.components.core.page.widget.a.c.b.1
            private static b a(Parcel parcel, ClassLoader classLoader) {
                return new b(parcel, classLoader);
            }

            private static b[] bJ(int i10) {
                return new b[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return a(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object[] newArray(int i10) {
                return bJ(i10);
            }

            private static b a(Parcel parcel) {
                return new b(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return a(parcel, classLoader);
            }
        };
        final int mState;

        public b(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mState = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.mState);
        }

        public b(Parcelable parcelable, int i10) {
            super(parcelable);
            this.mState = i10;
        }
    }

    protected final boolean d(View view, float f10) {
        if (this.agV) {
            return true;
        }
        return view.getTop() >= this.agS && Math.abs((((float) view.getTop()) + (f10 * 0.1f)) - ((float) this.agS)) / ((float) this.agM) > this.ahl;
    }

    protected final boolean e(View view, float f10) {
        if (view.getTop() > this.agS) {
            return false;
        }
        int iVl = vl();
        float f11 = iVl;
        float fMax = Math.max(f11, view.getTop() + (f10 * (this.ahm ? this.ahj : this.ahi)));
        if (fMax == f11) {
            return true;
        }
        int i10 = this.agS;
        int i11 = i10 - iVl;
        if (!this.ahm) {
            f11 = i10;
        }
        float fAbs = Math.abs(fMax - f11) / i11;
        if (this.ahm) {
            return fAbs <= this.ahl;
        }
        return fAbs >= this.ahk;
    }

    public final void a(a aVar) {
        this.ahe = aVar;
    }
}
