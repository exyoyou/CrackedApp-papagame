package it.sephiroth.android.library.widget;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.Checkable;
import android.widget.ListAdapter;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.EdgeEffectCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(11)
public abstract class AbsHListView extends AdapterView<ListAdapter> implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnTouchModeChangeListener {
    private static final int A3 = 20;
    private static final int B3 = -1;
    private static final int C3 = 0;
    private static final int D3 = 1;
    private static final int E3 = -1;
    static final Interpolator F3 = new LinearInterpolator();
    public static final int[] G3 = {0};

    /* JADX INFO: renamed from: g3, reason: collision with root package name */
    private static final String f91817g3 = "AbsListView";

    /* JADX INFO: renamed from: h3, reason: collision with root package name */
    public static final int f91818h3 = 0;

    /* JADX INFO: renamed from: i3, reason: collision with root package name */
    public static final int f91819i3 = 1;

    /* JADX INFO: renamed from: j3, reason: collision with root package name */
    public static final int f91820j3 = 2;

    /* JADX INFO: renamed from: k3, reason: collision with root package name */
    public static final int f91821k3 = -1;

    /* JADX INFO: renamed from: l3, reason: collision with root package name */
    public static final int f91822l3 = 0;

    /* JADX INFO: renamed from: m3, reason: collision with root package name */
    public static final int f91823m3 = 1;

    /* JADX INFO: renamed from: n3, reason: collision with root package name */
    public static final int f91824n3 = 2;

    /* JADX INFO: renamed from: o3, reason: collision with root package name */
    public static final int f91825o3 = 3;

    /* JADX INFO: renamed from: p3, reason: collision with root package name */
    public static final int f91826p3 = 4;

    /* JADX INFO: renamed from: q3, reason: collision with root package name */
    public static final int f91827q3 = 5;

    /* JADX INFO: renamed from: r3, reason: collision with root package name */
    public static final int f91828r3 = 6;

    /* JADX INFO: renamed from: s3, reason: collision with root package name */
    public static final int f91829s3 = 0;

    /* JADX INFO: renamed from: t3, reason: collision with root package name */
    public static final int f91830t3 = 1;

    /* JADX INFO: renamed from: u3, reason: collision with root package name */
    public static final int f91831u3 = 2;

    /* JADX INFO: renamed from: v3, reason: collision with root package name */
    public static final int f91832v3 = 3;

    /* JADX INFO: renamed from: w3, reason: collision with root package name */
    public static final int f91833w3 = 4;

    /* JADX INFO: renamed from: x3, reason: collision with root package name */
    public static final int f91834x3 = 5;

    /* JADX INFO: renamed from: y3, reason: collision with root package name */
    public static final int f91835y3 = 6;

    /* JADX INFO: renamed from: z3, reason: collision with root package name */
    protected static final int f91836z3 = 3;
    private d A2;
    private j B2;
    private Runnable C2;
    private int D2;
    private int E2;
    private boolean F2;
    private int G2;
    private int H2;
    private Runnable I2;
    protected Runnable J2;
    private int K2;
    it.sephiroth.android.library.util.b.a L;
    protected int L1;
    private int L2;
    protected int M;
    private float M2;
    public Object N;
    protected final boolean[] N2;
    Object O;
    private int O2;
    int P;
    int P2;
    protected SparseArrayCompat<Boolean> Q;
    int Q2;
    LongSparseArray<Integer> R;
    View R1;
    private EdgeEffectCompat R2;
    protected int S;
    private EdgeEffectCompat S2;
    protected c T;
    private int T2;
    protected ListAdapter U;
    private int U2;
    boolean V;
    View V1;
    private int V2;
    boolean W;
    private boolean W2;
    private int X2;
    private int Y2;
    private h Z2;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    protected boolean f91837a2;

    /* JADX INFO: renamed from: a3, reason: collision with root package name */
    private int f91838a3;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    int f91839b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    protected boolean f91840b2;

    /* JADX INFO: renamed from: b3, reason: collision with root package name */
    private int f91841b3;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    protected int f91842c2;

    /* JADX INFO: renamed from: c3, reason: collision with root package name */
    protected boolean f91843c3;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    int f91844d2;

    /* JADX INFO: renamed from: d3, reason: collision with root package name */
    private int f91845d3;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    int f91846e2;

    /* JADX INFO: renamed from: e3, reason: collision with root package name */
    private SavedState f91847e3;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    protected Rect f91848f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    int f91849f2;

    /* JADX INFO: renamed from: f3, reason: collision with root package name */
    private float f91850f3;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    int f91851g2;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    protected int f91852h2;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    protected final l f91853i1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    int f91854i2;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    int f91855j2;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    private VelocityTracker f91856k2;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    int f91857l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    private g f91858l2;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    protected k f91859m2;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    protected int f91860n2;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    protected boolean f91861o2;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    Drawable f91862p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    int f91863p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    boolean f91864p2;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    int f91865q1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    boolean f91866q2;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    int f91867r1;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    private i f91868r2;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    private boolean f91869s2;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    private Rect f91870t2;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    protected int f91871u2;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    protected Rect f91872v1;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private ContextMenu.ContextMenuInfo f91873v2;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    protected int f91874w2;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    private int f91875x2;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    private e f91876y2;

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    private Runnable f91877z2;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f91883b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f91884c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f91885d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f91886e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f91887f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f91888g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f91889h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f91890i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        SparseArrayCompat<Boolean> f91891j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        LongSparseArray<Integer> f91892k;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel in2) {
                return new SavedState(in2, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        private SparseArrayCompat<Boolean> a(Parcel in2) {
            int i10 = in2.readInt();
            if (i10 < 0) {
                return null;
            }
            SparseArrayCompat<Boolean> sparseArrayCompat = new SparseArrayCompat<>(i10);
            b(sparseArrayCompat, in2, i10);
            return sparseArrayCompat;
        }

        private void b(SparseArrayCompat<Boolean> outVal, Parcel in2, int N) {
            while (N > 0) {
                int i10 = in2.readInt();
                boolean z10 = true;
                if (in2.readByte() != 1) {
                    z10 = false;
                }
                outVal.append(i10, Boolean.valueOf(z10));
                N--;
            }
        }

        private LongSparseArray<Integer> c(Parcel in2) {
            int i10 = in2.readInt();
            if (i10 <= 0) {
                return null;
            }
            LongSparseArray<Integer> longSparseArray = new LongSparseArray<>(i10);
            d(longSparseArray, in2, i10);
            return longSparseArray;
        }

        private void d(LongSparseArray<Integer> outVal, Parcel in2, int N) {
            while (N > 0) {
                outVal.put(in2.readLong(), Integer.valueOf(in2.readInt()));
                N--;
            }
        }

        private void f(SparseArrayCompat<Boolean> sparseArrayCompat, Parcel parcel) {
            if (sparseArrayCompat == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = sparseArrayCompat.size();
            parcel.writeInt(size);
            for (int i10 = 0; i10 < size; i10++) {
                parcel.writeInt(sparseArrayCompat.keyAt(i10));
                parcel.writeByte(sparseArrayCompat.valueAt(i10).booleanValue() ? (byte) 1 : (byte) 0);
            }
        }

        private void m(LongSparseArray<Integer> array, Parcel out) {
            int size = array != null ? array.size() : 0;
            out.writeInt(size);
            for (int i10 = 0; i10 < size; i10++) {
                out.writeLong(array.keyAt(i10));
                out.writeInt(array.valueAt(i10).intValue());
            }
        }

        public String toString() {
            return "AbsListView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.f91883b + " firstId=" + this.f91884c + " viewLeft=" + this.f91885d + " position=" + this.f91886e + " width=" + this.f91887f + " filter=" + this.f91888g + " checkState=" + this.f91891j + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeLong(this.f91883b);
            parcel.writeLong(this.f91884c);
            parcel.writeInt(this.f91885d);
            parcel.writeInt(this.f91886e);
            parcel.writeInt(this.f91887f);
            parcel.writeString(this.f91888g);
            parcel.writeByte(this.f91889h ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f91890i);
            f(this.f91891j, parcel);
            m(this.f91892k, parcel);
        }

        SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in2) {
            super(in2);
            this.f91883b = in2.readLong();
            this.f91884c = in2.readLong();
            this.f91885d = in2.readInt();
            this.f91886e = in2.readInt();
            this.f91887f = in2.readInt();
            this.f91888g = in2.readString();
            this.f91889h = in2.readByte() != 0;
            this.f91890i = in2.readInt();
            this.f91891j = a(in2);
            this.f91892k = c(in2);
        }
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f91893b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ j f91894c;

        a(final View val$child, final j val$performClick) {
            this.f91893b = val$child;
            this.f91894c = val$performClick;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsHListView.this.f91852h2 = -1;
            this.f91893b.setPressed(false);
            AbsHListView.this.setPressed(false);
            if (AbsHListView.this.f91959n) {
                return;
            }
            this.f91894c.run();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.f91837a2) {
                absHListView.f91840b2 = false;
                absHListView.f91837a2 = false;
                absHListView.setChildrenDrawnWithCacheEnabled(false);
                if ((AbsHListView.this.getPersistentDrawingCache() & 2) == 0) {
                    AbsHListView.this.setChildrenDrawingCacheEnabled(false);
                }
                if (AbsHListView.this.isAlwaysDrawnWithCacheEnabled()) {
                    return;
                }
                AbsHListView.this.invalidate();
            }
        }
    }

    public class c extends AdapterView<ListAdapter>.c {
        public c() {
            super();
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.c
        public /* bridge */ /* synthetic */ void a() {
            super.a();
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.c, android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.c, android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
        }
    }

    private class d extends o implements Runnable {
        private d() {
            super(AbsHListView.this, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsHListView absHListView;
            int i10;
            boolean zU0;
            if (!AbsHListView.this.isPressed() || (i10 = (absHListView = AbsHListView.this).f91962q) < 0) {
                return;
            }
            View childAt = absHListView.getChildAt(i10 - absHListView.f91947b);
            AbsHListView absHListView2 = AbsHListView.this;
            if (absHListView2.f91959n) {
                absHListView2.setPressed(false);
                if (childAt != null) {
                    childAt.setPressed(false);
                    return;
                }
                return;
            }
            if (b()) {
                AbsHListView absHListView3 = AbsHListView.this;
                zU0 = absHListView3.u0(childAt, absHListView3.f91962q, absHListView3.f91963r);
            } else {
                zU0 = false;
            }
            if (zU0) {
                AbsHListView.this.setPressed(false);
                childAt.setPressed(false);
            }
        }

        /* synthetic */ d(AbsHListView absHListView, a aVar) {
            this();
        }
    }

    private class e extends o implements Runnable {
        private e() {
            super(AbsHListView.this, null);
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0029  */
        @Override // java.lang.Runnable
        public void run() {
            boolean zU0;
            AbsHListView absHListView = AbsHListView.this;
            View childAt = absHListView.getChildAt(absHListView.f91842c2 - absHListView.f91947b);
            if (childAt != null) {
                AbsHListView absHListView2 = AbsHListView.this;
                int i10 = absHListView2.f91842c2;
                long itemId = absHListView2.U.getItemId(i10);
                if (b()) {
                    AbsHListView absHListView3 = AbsHListView.this;
                    if (absHListView3.f91959n) {
                        zU0 = false;
                    } else {
                        zU0 = absHListView3.u0(childAt, i10, itemId);
                    }
                } else {
                    zU0 = false;
                }
                if (!zU0) {
                    AbsHListView.this.f91852h2 = 2;
                    return;
                }
                AbsHListView absHListView4 = AbsHListView.this;
                absHListView4.f91852h2 = -1;
                absHListView4.setPressed(false);
                childAt.setPressed(false);
            }
        }

        /* synthetic */ e(AbsHListView absHListView, a aVar) {
            this();
        }
    }

    final class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Drawable current;
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.f91852h2 == 0) {
                absHListView.f91852h2 = 1;
                View childAt = absHListView.getChildAt(absHListView.f91842c2 - absHListView.f91947b);
                if (childAt == null || childAt.hasFocusable()) {
                    return;
                }
                AbsHListView absHListView2 = AbsHListView.this;
                absHListView2.S = 0;
                if (absHListView2.f91959n) {
                    absHListView2.f91852h2 = 2;
                    return;
                }
                childAt.setPressed(true);
                AbsHListView.this.setPressed(true);
                AbsHListView.this.p0();
                AbsHListView absHListView3 = AbsHListView.this;
                absHListView3.y0(absHListView3.f91842c2, childAt);
                AbsHListView.this.refreshDrawableState();
                int longPressTimeout = ViewConfiguration.getLongPressTimeout();
                boolean zIsLongClickable = AbsHListView.this.isLongClickable();
                Drawable drawable = AbsHListView.this.f91862p0;
                if (drawable != null && (current = drawable.getCurrent()) != null && (current instanceof TransitionDrawable)) {
                    if (zIsLongClickable) {
                        ((TransitionDrawable) current).startTransition(longPressTimeout);
                    } else {
                        ((TransitionDrawable) current).resetTransition();
                    }
                }
                if (!zIsLongClickable) {
                    AbsHListView.this.f91852h2 = 2;
                    return;
                }
                if (AbsHListView.this.f91876y2 == null) {
                    AbsHListView absHListView4 = AbsHListView.this;
                    absHListView4.f91876y2 = new e(absHListView4, null);
                }
                AbsHListView.this.f91876y2.a();
                AbsHListView absHListView5 = AbsHListView.this;
                absHListView5.postDelayed(absHListView5.f91876y2, longPressTimeout);
            }
        }
    }

    private class g implements Runnable {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final int f91901f = 40;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final it.sephiroth.android.library.widget.c f91902b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f91903c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Runnable f91904d = new a();

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int i10 = AbsHListView.this.O2;
                VelocityTracker velocityTracker = AbsHListView.this.f91856k2;
                it.sephiroth.android.library.widget.c cVar = g.this.f91902b;
                if (velocityTracker == null || i10 == -1) {
                    return;
                }
                velocityTracker.computeCurrentVelocity(1000, AbsHListView.this.L2);
                float f10 = -velocityTracker.getXVelocity(i10);
                if (Math.abs(f10) >= AbsHListView.this.K2 && cVar.q(f10, 0.0f)) {
                    AbsHListView.this.postDelayed(this, 40L);
                    return;
                }
                g.this.c();
                AbsHListView absHListView = AbsHListView.this;
                absHListView.f91852h2 = 3;
                absHListView.C0(1);
            }
        }

        g() {
            this.f91902b = new it.sephiroth.android.library.widget.c(AbsHListView.this.getContext());
        }

        void b(int delta) {
            this.f91902b.r(AbsHListView.this.getScrollX(), 0, AbsHListView.this.Q2);
            int overScrollMode = AbsHListView.this.getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && !AbsHListView.this.T())) {
                AbsHListView.this.f91852h2 = 6;
                int iG = (int) this.f91902b.g();
                if (delta > 0) {
                    AbsHListView.this.R2.onAbsorb(iG);
                } else {
                    AbsHListView.this.S2.onAbsorb(iG);
                }
            } else {
                AbsHListView absHListView = AbsHListView.this;
                absHListView.f91852h2 = -1;
                k kVar = absHListView.f91859m2;
                if (kVar != null) {
                    kVar.g();
                }
            }
            AbsHListView.this.invalidate();
            AbsHListView.this.L.b(this);
        }

        void c() {
            AbsHListView absHListView = AbsHListView.this;
            absHListView.f91852h2 = -1;
            absHListView.removeCallbacks(this);
            AbsHListView.this.removeCallbacks(this.f91904d);
            AbsHListView.this.C0(0);
            AbsHListView.this.R();
            this.f91902b.a();
            AbsHListView.this.overScrollBy(0, 0, 0, 0, 0, 0, 0, 0, false);
        }

        void d() {
            AbsHListView.this.postDelayed(this.f91904d, 40L);
        }

        void e(int initialVelocity) {
            int i10 = initialVelocity < 0 ? Integer.MAX_VALUE : 0;
            this.f91903c = i10;
            this.f91902b.w(null);
            this.f91902b.d(i10, 0, initialVelocity, 0, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            AbsHListView absHListView = AbsHListView.this;
            absHListView.f91852h2 = 4;
            absHListView.L.b(this);
        }

        void g(int initialVelocity) {
            this.f91902b.w(null);
            this.f91902b.e(AbsHListView.this.getScrollX(), 0, initialVelocity, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0, AbsHListView.this.getWidth(), 0);
            AbsHListView absHListView = AbsHListView.this;
            absHListView.f91852h2 = 6;
            absHListView.invalidate();
            AbsHListView.this.L.b(this);
        }

        void h(int distance, int duration, boolean linear) {
            int i10 = distance < 0 ? Integer.MAX_VALUE : 0;
            this.f91903c = i10;
            this.f91902b.w(linear ? AbsHListView.F3 : null);
            this.f91902b.z(i10, 0, distance, 0, duration);
            AbsHListView absHListView = AbsHListView.this;
            absHListView.f91852h2 = 4;
            absHListView.L.b(this);
        }

        void i() {
            if (!this.f91902b.x(AbsHListView.this.getScrollX(), 0, 0, 0, 0, 0)) {
                AbsHListView absHListView = AbsHListView.this;
                absHListView.f91852h2 = -1;
                absHListView.C0(0);
            } else {
                AbsHListView absHListView2 = AbsHListView.this;
                absHListView2.f91852h2 = 6;
                absHListView2.invalidate();
                AbsHListView.this.L.b(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int iMax;
            int i10 = AbsHListView.this.f91852h2;
            boolean z10 = false;
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 6) {
                        c();
                        return;
                    }
                    it.sephiroth.android.library.widget.c cVar = this.f91902b;
                    if (!cVar.b()) {
                        c();
                        return;
                    }
                    int scrollX = AbsHListView.this.getScrollX();
                    int iH = cVar.h();
                    AbsHListView absHListView = AbsHListView.this;
                    if (!absHListView.overScrollBy(iH - scrollX, 0, scrollX, 0, 0, 0, absHListView.Q2, 0, false)) {
                        AbsHListView.this.invalidate();
                        AbsHListView.this.L.b(this);
                        return;
                    }
                    boolean z11 = scrollX <= 0 && iH > 0;
                    if (scrollX >= 0 && iH < 0) {
                        z10 = true;
                    }
                    if (!z11 && !z10) {
                        i();
                        return;
                    }
                    int iG = (int) cVar.g();
                    if (z10) {
                        iG = -iG;
                    }
                    cVar.a();
                    e(iG);
                    return;
                }
            } else if (this.f91902b.o()) {
                return;
            }
            AbsHListView absHListView2 = AbsHListView.this;
            if (absHListView2.f91959n) {
                absHListView2.p0();
            }
            AbsHListView absHListView3 = AbsHListView.this;
            if (absHListView3.f91965t == 0 || absHListView3.getChildCount() == 0) {
                c();
                return;
            }
            it.sephiroth.android.library.widget.c cVar2 = this.f91902b;
            boolean zB = cVar2.b();
            int iH2 = cVar2.h();
            int i11 = this.f91903c - iH2;
            if (i11 > 0) {
                AbsHListView absHListView4 = AbsHListView.this;
                absHListView4.f91842c2 = absHListView4.f91947b;
                AbsHListView.this.f91844d2 = absHListView4.getChildAt(0).getLeft();
                iMax = Math.min(((AbsHListView.this.getWidth() - AbsHListView.this.getPaddingRight()) - AbsHListView.this.getPaddingLeft()) - 1, i11);
            } else {
                int childCount = AbsHListView.this.getChildCount() - 1;
                AbsHListView absHListView5 = AbsHListView.this;
                absHListView5.f91842c2 = absHListView5.f91947b + childCount;
                AbsHListView.this.f91844d2 = absHListView5.getChildAt(childCount).getLeft();
                iMax = Math.max(-(((AbsHListView.this.getWidth() - AbsHListView.this.getPaddingRight()) - AbsHListView.this.getPaddingLeft()) - 1), i11);
            }
            AbsHListView absHListView6 = AbsHListView.this;
            View childAt = absHListView6.getChildAt(absHListView6.f91842c2 - absHListView6.f91947b);
            int left = childAt != null ? childAt.getLeft() : 0;
            boolean zV0 = AbsHListView.this.V0(iMax, iMax);
            if (zV0 && iMax != 0) {
                z10 = true;
            }
            if (z10) {
                if (childAt != null) {
                    int i12 = -(iMax - (childAt.getLeft() - left));
                    AbsHListView absHListView7 = AbsHListView.this;
                    absHListView7.overScrollBy(i12, 0, absHListView7.getScrollX(), 0, 0, 0, AbsHListView.this.Q2, 0, false);
                }
                if (zB) {
                    b(iMax);
                    return;
                }
                return;
            }
            if (!zB || z10) {
                c();
                return;
            }
            if (zV0) {
                AbsHListView.this.invalidate();
            }
            this.f91903c = iH2;
            AbsHListView.this.L.b(this);
        }
    }

    @TargetApi(14)
    class h extends AccessibilityDelegateCompat {
        h() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
            super.onInitializeAccessibilityNodeInfo(host, info);
            int iK = AbsHListView.this.k(host);
            ListAdapter adapter = AbsHListView.this.getAdapter();
            if (iK == -1 || adapter == null || !AbsHListView.this.isEnabled() || !adapter.isEnabled(iK)) {
                return;
            }
            if (iK == AbsHListView.this.getSelectedItemPosition()) {
                info.setSelected(true);
                info.addAction(8);
            } else {
                info.addAction(4);
            }
            if (AbsHListView.this.isClickable()) {
                info.addAction(16);
                info.setClickable(true);
            }
            if (AbsHListView.this.isLongClickable()) {
                info.addAction(32);
                info.setLongClickable(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View host, int action, Bundle arguments) {
            if (super.performAccessibilityAction(host, action, arguments)) {
                return true;
            }
            int iK = AbsHListView.this.k(host);
            ListAdapter adapter = AbsHListView.this.getAdapter();
            if (iK != -1 && adapter != null && AbsHListView.this.isEnabled() && adapter.isEnabled(iK)) {
                long j10 = AbsHListView.this.j(iK);
                if (action != 4) {
                    if (action == 8) {
                        if (AbsHListView.this.getSelectedItemPosition() != iK) {
                            return false;
                        }
                        AbsHListView.this.setSelection(-1);
                        return true;
                    }
                    if (action == 16) {
                        if (AbsHListView.this.isClickable()) {
                            return AbsHListView.this.q(host, iK, j10);
                        }
                        return false;
                    }
                    if (action == 32 && AbsHListView.this.isLongClickable()) {
                        return AbsHListView.this.u0(host, iK, j10);
                    }
                    return false;
                }
                if (AbsHListView.this.getSelectedItemPosition() != iK) {
                    AbsHListView.this.setSelection(iK);
                    return true;
                }
            }
            return false;
        }
    }

    public interface i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f91908a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f91909b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f91910c = 2;

        void a(AbsHListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount);

        void b(AbsHListView view, int scrollState);
    }

    private class j extends o implements Runnable {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f91911d;

        private j() {
            super(AbsHListView.this, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.f91959n) {
                return;
            }
            ListAdapter listAdapter = absHListView.U;
            int i10 = this.f91911d;
            if (listAdapter == null || absHListView.f91965t <= 0 || i10 == -1 || i10 >= listAdapter.getCount() || !b()) {
                return;
            }
            AbsHListView absHListView2 = AbsHListView.this;
            View childAt = absHListView2.getChildAt(i10 - absHListView2.f91947b);
            if (childAt != null) {
                AbsHListView.this.q(childAt, i10, listAdapter.getItemId(i10));
            }
        }

        /* synthetic */ j(AbsHListView absHListView, a aVar) {
            this();
        }
    }

    public class k implements Runnable {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final int f91913j = 200;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final int f91914k = 1;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final int f91915l = 2;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final int f91916m = 3;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final int f91917n = 4;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static final int f91918o = 5;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f91919b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f91920c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f91921d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f91922e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f91923f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f91924g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f91925h;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f91927b;

            a(final int val$position) {
                this.f91927b = val$position;
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.b(this.f91927b);
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f91929b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f91930c;

            b(final int val$position, final int val$boundPosition) {
                this.f91929b = val$position;
                this.f91930c = val$boundPosition;
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.c(this.f91929b, this.f91930c);
            }
        }

        class c implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f91932b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f91933c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ int f91934d;

            c(final int val$position, final int val$postOffset, final int val$duration) {
                this.f91932b = val$position;
                this.f91933c = val$postOffset;
                this.f91934d = val$duration;
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.e(this.f91932b, this.f91933c, this.f91934d);
            }
        }

        k() {
            this.f91924g = ViewConfiguration.get(AbsHListView.this.getContext()).getScaledFadingEdgeLength();
        }

        void a(int targetPos, int boundPos, int duration) {
            AbsHListView absHListView = AbsHListView.this;
            int i10 = absHListView.f91947b;
            int childCount = (absHListView.getChildCount() + i10) - 1;
            AbsHListView absHListView2 = AbsHListView.this;
            int i11 = absHListView2.f91872v1.left;
            int width = absHListView2.getWidth() - AbsHListView.this.f91872v1.right;
            if (targetPos < i10 || targetPos > childCount) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("scrollToVisible called with targetPos ");
                sb2.append(targetPos);
                sb2.append(" not visible [");
                sb2.append(i10);
                sb2.append(", ");
                sb2.append(childCount);
                sb2.append("]");
            }
            if (boundPos < i10 || boundPos > childCount) {
                boundPos = -1;
            }
            View childAt = AbsHListView.this.getChildAt(targetPos - i10);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int iMin = right > width ? right - width : 0;
            if (left < i11) {
                iMin = left - i11;
            }
            if (iMin == 0) {
                return;
            }
            if (boundPos >= 0) {
                View childAt2 = AbsHListView.this.getChildAt(boundPos - i10);
                int left2 = childAt2.getLeft();
                int right2 = childAt2.getRight();
                int iAbs = Math.abs(iMin);
                if (iMin < 0 && right2 + iAbs > width) {
                    iMin = Math.max(0, right2 - width);
                } else if (iMin > 0 && left2 - iAbs < i11) {
                    iMin = Math.min(0, left2 - i11);
                }
            }
            AbsHListView.this.M0(iMin, duration);
        }

        void b(final int position) {
            int i10;
            g();
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.f91959n) {
                absHListView.J2 = new a(position);
                return;
            }
            int childCount = absHListView.getChildCount();
            if (childCount == 0) {
                return;
            }
            AbsHListView absHListView2 = AbsHListView.this;
            int i11 = absHListView2.f91947b;
            int i12 = (childCount + i11) - 1;
            int iMax = Math.max(0, Math.min(absHListView2.getCount() - 1, position));
            if (iMax < i11) {
                i10 = (i11 - iMax) + 1;
                this.f91919b = 2;
            } else if (iMax <= i12) {
                a(iMax, -1, 200);
                return;
            } else {
                i10 = (iMax - i12) + 1;
                this.f91919b = 1;
            }
            if (i10 > 0) {
                this.f91923f = 200 / i10;
            } else {
                this.f91923f = 200;
            }
            this.f91920c = iMax;
            this.f91921d = -1;
            this.f91922e = -1;
            AbsHListView.this.L.b(this);
        }

        void c(final int position, final int boundPosition) {
            int i10;
            int i11;
            g();
            if (boundPosition == -1) {
                b(position);
                return;
            }
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.f91959n) {
                absHListView.J2 = new b(position, boundPosition);
                return;
            }
            int childCount = absHListView.getChildCount();
            if (childCount == 0) {
                return;
            }
            AbsHListView absHListView2 = AbsHListView.this;
            int i12 = absHListView2.f91947b;
            int i13 = (childCount + i12) - 1;
            int iMax = Math.max(0, Math.min(absHListView2.getCount() - 1, position));
            if (iMax < i12) {
                int i14 = i13 - boundPosition;
                if (i14 < 1) {
                    return;
                }
                i11 = (i12 - iMax) + 1;
                i10 = i14 - 1;
                if (i10 < i11) {
                    this.f91919b = 4;
                    i11 = i10;
                } else {
                    this.f91919b = 2;
                }
            } else {
                if (iMax <= i13) {
                    a(iMax, boundPosition, 200);
                    return;
                }
                int i15 = boundPosition - i12;
                if (i15 < 1) {
                    return;
                }
                i10 = (iMax - i13) + 1;
                i11 = i15 - 1;
                if (i11 < i10) {
                    this.f91919b = 3;
                } else {
                    this.f91919b = 1;
                    i11 = i10;
                }
            }
            if (i11 > 0) {
                this.f91923f = 200 / i11;
            } else {
                this.f91923f = 200;
            }
            this.f91920c = iMax;
            this.f91921d = boundPosition;
            this.f91922e = -1;
            AbsHListView.this.L.b(this);
        }

        void d(int position, int offset) {
            e(position, offset, 200);
        }

        void e(final int position, int offset, final int duration) {
            int i10;
            g();
            AbsHListView absHListView = AbsHListView.this;
            if (absHListView.f91959n) {
                absHListView.J2 = new c(position, offset, duration);
                return;
            }
            int childCount = absHListView.getChildCount();
            if (childCount == 0) {
                return;
            }
            int paddingLeft = offset + AbsHListView.this.getPaddingLeft();
            int iMax = Math.max(0, Math.min(AbsHListView.this.getCount() - 1, position));
            this.f91920c = iMax;
            this.f91925h = paddingLeft;
            this.f91921d = -1;
            this.f91922e = -1;
            this.f91919b = 5;
            AbsHListView absHListView2 = AbsHListView.this;
            int i11 = absHListView2.f91947b;
            int i12 = (i11 + childCount) - 1;
            if (iMax < i11) {
                i10 = i11 - iMax;
            } else {
                if (iMax <= i12) {
                    AbsHListView.this.N0(absHListView2.getChildAt(iMax - i11).getLeft() - paddingLeft, duration, false);
                    return;
                }
                i10 = iMax - i12;
            }
            float f10 = i10 / childCount;
            if (f10 >= 1.0f) {
                duration = (int) (duration / f10);
            }
            this.f91923f = duration;
            this.f91922e = -1;
            absHListView2.L.b(this);
        }

        public void g() {
            AbsHListView.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            int width = AbsHListView.this.getWidth();
            AbsHListView absHListView = AbsHListView.this;
            int i10 = absHListView.f91947b;
            int i11 = this.f91919b;
            if (i11 == 1) {
                int childCount = absHListView.getChildCount() - 1;
                int i12 = i10 + childCount;
                if (childCount < 0) {
                    return;
                }
                if (i12 == this.f91922e) {
                    AbsHListView.this.L.b(this);
                    return;
                }
                View childAt = AbsHListView.this.getChildAt(childCount);
                int width2 = childAt.getWidth();
                int left = width - childAt.getLeft();
                AbsHListView absHListView2 = AbsHListView.this;
                int i13 = absHListView2.f91965t - 1;
                int iMax = absHListView2.f91872v1.right;
                if (i12 < i13) {
                    iMax = Math.max(iMax, this.f91924g);
                }
                AbsHListView.this.N0((width2 - left) + iMax, this.f91923f, true);
                this.f91922e = i12;
                if (i12 < this.f91920c) {
                    AbsHListView.this.L.b(this);
                    return;
                }
                return;
            }
            int i14 = 0;
            if (i11 == 2) {
                if (i10 == this.f91922e) {
                    absHListView.L.b(this);
                    return;
                }
                View childAt2 = absHListView.getChildAt(0);
                if (childAt2 == null) {
                    return;
                }
                AbsHListView.this.N0(childAt2.getLeft() - (i10 > 0 ? Math.max(this.f91924g, AbsHListView.this.f91872v1.left) : AbsHListView.this.f91872v1.left), this.f91923f, true);
                this.f91922e = i10;
                if (i10 > this.f91920c) {
                    AbsHListView.this.L.b(this);
                    return;
                }
                return;
            }
            if (i11 == 3) {
                int childCount2 = absHListView.getChildCount();
                if (i10 == this.f91921d || childCount2 <= 1) {
                    return;
                }
                int i15 = childCount2 + i10;
                AbsHListView absHListView3 = AbsHListView.this;
                if (i15 >= absHListView3.f91965t) {
                    return;
                }
                int i16 = i10 + 1;
                if (i16 == this.f91922e) {
                    absHListView3.L.b(this);
                    return;
                }
                View childAt3 = absHListView3.getChildAt(1);
                int width3 = childAt3.getWidth();
                int left2 = childAt3.getLeft();
                int iMax2 = Math.max(AbsHListView.this.f91872v1.right, this.f91924g);
                if (i16 < this.f91921d) {
                    AbsHListView.this.N0(Math.max(0, (width3 + left2) - iMax2), this.f91923f, true);
                    this.f91922e = i16;
                    AbsHListView.this.L.b(this);
                    return;
                } else {
                    if (left2 > iMax2) {
                        AbsHListView.this.N0(left2 - iMax2, this.f91923f, true);
                        return;
                    }
                    return;
                }
            }
            if (i11 == 4) {
                int childCount3 = absHListView.getChildCount() - 2;
                if (childCount3 < 0) {
                    return;
                }
                int i17 = i10 + childCount3;
                if (i17 == this.f91922e) {
                    AbsHListView.this.L.b(this);
                    return;
                }
                View childAt4 = AbsHListView.this.getChildAt(childCount3);
                int width4 = childAt4.getWidth();
                int left3 = childAt4.getLeft();
                int i18 = width - left3;
                int iMax3 = Math.max(AbsHListView.this.f91872v1.left, this.f91924g);
                this.f91922e = i17;
                if (i17 > this.f91921d) {
                    AbsHListView.this.N0(-(i18 - iMax3), this.f91923f, true);
                    AbsHListView.this.L.b(this);
                    return;
                }
                int i19 = width - iMax3;
                int i20 = left3 + width4;
                if (i19 > i20) {
                    AbsHListView.this.N0(-(i19 - i20), this.f91923f, true);
                    return;
                }
                return;
            }
            if (i11 != 5) {
                return;
            }
            if (this.f91922e == i10) {
                absHListView.L.b(this);
                return;
            }
            this.f91922e = i10;
            int childCount4 = absHListView.getChildCount();
            int i21 = this.f91920c;
            int i22 = (i10 + childCount4) - 1;
            if (i21 < i10) {
                i14 = (i10 - i21) + 1;
            } else if (i21 > i22) {
                i14 = i21 - i22;
            }
            float fMin = Math.min(Math.abs(i14 / childCount4), 1.0f);
            if (i21 < i10) {
                AbsHListView.this.N0((int) ((-AbsHListView.this.getWidth()) * fMin), (int) (this.f91923f * fMin), true);
                AbsHListView.this.L.b(this);
            } else if (i21 > i22) {
                AbsHListView.this.N0((int) (AbsHListView.this.getWidth() * fMin), (int) (this.f91923f * fMin), true);
                AbsHListView.this.L.b(this);
            } else {
                int left4 = AbsHListView.this.getChildAt(i21 - i10).getLeft() - this.f91925h;
                AbsHListView.this.N0(left4, (int) (this.f91923f * (Math.abs(left4) / AbsHListView.this.getWidth())), true);
            }
        }
    }

    public class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private m f91936a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f91937b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private View[] f91938c = new View[0];

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ArrayList<View>[] f91939d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f91940e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ArrayList<View> f91941f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ArrayList<View> f91942g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private SparseArrayCompat<View> f91943h;

        public l() {
        }

        @SuppressLint({"NewApi"})
        private void k() {
            int length = this.f91938c.length;
            int i10 = this.f91940e;
            ArrayList<View>[] arrayListArr = this.f91939d;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                ArrayList<View> arrayList = arrayListArr[i12];
                int size = arrayList.size();
                int i13 = size - length;
                int i14 = size - 1;
                int i15 = 0;
                while (i15 < i13) {
                    AbsHListView.this.removeDetachedView(arrayList.remove(i14), false);
                    i15++;
                    i14--;
                }
            }
            if (this.f91943h != null) {
                while (i11 < this.f91943h.size()) {
                    if (!this.f91943h.valueAt(i11).hasTransientState()) {
                        this.f91943h.removeAt(i11);
                        i11--;
                    }
                    i11++;
                }
            }
        }

        @SuppressLint({"NewApi"})
        public void c(View scrap, int position) {
            LayoutParams layoutParams = (LayoutParams) scrap.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.f91881d = position;
            int i10 = layoutParams.f91878a;
            boolean z10 = scrap.hasTransientState();
            if (q(i10) && !z10) {
                scrap.onStartTemporaryDetach();
                if (this.f91940e == 1) {
                    this.f91941f.add(scrap);
                } else {
                    this.f91939d[i10].add(scrap);
                }
                scrap.setAccessibilityDelegate(null);
                m mVar = this.f91936a;
                if (mVar != null) {
                    mVar.a(scrap);
                    return;
                }
                return;
            }
            if (i10 != -2 || z10) {
                if (this.f91942g == null) {
                    this.f91942g = new ArrayList<>();
                }
                this.f91942g.add(scrap);
            }
            if (z10) {
                if (this.f91943h == null) {
                    this.f91943h = new SparseArrayCompat<>();
                }
                scrap.onStartTemporaryDetach();
                this.f91943h.put(position, scrap);
            }
        }

        public void d() {
            int i10 = this.f91940e;
            if (i10 == 1) {
                ArrayList<View> arrayList = this.f91941f;
                int size = arrayList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    AbsHListView.this.removeDetachedView(arrayList.remove((size - 1) - i11), false);
                }
            } else {
                for (int i12 = 0; i12 < i10; i12++) {
                    ArrayList<View> arrayList2 = this.f91939d[i12];
                    int size2 = arrayList2.size();
                    for (int i13 = 0; i13 < size2; i13++) {
                        AbsHListView.this.removeDetachedView(arrayList2.remove((size2 - 1) - i13), false);
                    }
                }
            }
            SparseArrayCompat<View> sparseArrayCompat = this.f91943h;
            if (sparseArrayCompat != null) {
                sparseArrayCompat.clear();
            }
        }

        void e() {
            SparseArrayCompat<View> sparseArrayCompat = this.f91943h;
            if (sparseArrayCompat != null) {
                sparseArrayCompat.clear();
            }
        }

        public void f(int childCount, int firstActivePosition) {
            if (this.f91938c.length < childCount) {
                this.f91938c = new View[childCount];
            }
            this.f91937b = firstActivePosition;
            View[] viewArr = this.f91938c;
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = AbsHListView.this.getChildAt(i10);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.f91878a != -2) {
                    viewArr[i10] = childAt;
                }
            }
        }

        public View g(int position) {
            int i10 = position - this.f91937b;
            View[] viewArr = this.f91938c;
            if (i10 < 0 || i10 >= viewArr.length) {
                return null;
            }
            View view = viewArr[i10];
            viewArr[i10] = null;
            return view;
        }

        View h(int position) {
            if (this.f91940e == 1) {
                return AbsHListView.H0(this.f91941f, position);
            }
            int itemViewType = AbsHListView.this.U.getItemViewType(position);
            if (itemViewType < 0) {
                return null;
            }
            ArrayList<View>[] arrayListArr = this.f91939d;
            if (itemViewType < arrayListArr.length) {
                return AbsHListView.H0(arrayListArr[itemViewType], position);
            }
            return null;
        }

        View i(int position) {
            int iIndexOfKey;
            SparseArrayCompat<View> sparseArrayCompat = this.f91943h;
            if (sparseArrayCompat == null || (iIndexOfKey = sparseArrayCompat.indexOfKey(position)) < 0) {
                return null;
            }
            View viewValueAt = this.f91943h.valueAt(iIndexOfKey);
            this.f91943h.removeAt(iIndexOfKey);
            return viewValueAt;
        }

        public void j() {
            int i10 = this.f91940e;
            if (i10 == 1) {
                ArrayList<View> arrayList = this.f91941f;
                int size = arrayList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    arrayList.get(i11).forceLayout();
                }
            } else {
                for (int i12 = 0; i12 < i10; i12++) {
                    ArrayList<View> arrayList2 = this.f91939d[i12];
                    int size2 = arrayList2.size();
                    for (int i13 = 0; i13 < size2; i13++) {
                        arrayList2.get(i13).forceLayout();
                    }
                }
            }
            SparseArrayCompat<View> sparseArrayCompat = this.f91943h;
            if (sparseArrayCompat != null) {
                int size3 = sparseArrayCompat.size();
                for (int i14 = 0; i14 < size3; i14++) {
                    this.f91943h.valueAt(i14).forceLayout();
                }
            }
        }

        void l(List<View> views) {
            int i10 = this.f91940e;
            if (i10 == 1) {
                views.addAll(this.f91941f);
                return;
            }
            ArrayList<View>[] arrayListArr = this.f91939d;
            for (int i11 = 0; i11 < i10; i11++) {
                views.addAll(arrayListArr[i11]);
            }
        }

        public void m() {
            ArrayList<View> arrayList = this.f91942g;
            if (arrayList == null) {
                return;
            }
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                AbsHListView.this.removeDetachedView(this.f91942g.get(i10), false);
            }
            this.f91942g.clear();
        }

        @SuppressLint({"NewApi"})
        public void n() {
            View[] viewArr = this.f91938c;
            boolean z10 = this.f91936a != null;
            boolean z11 = this.f91940e > 1;
            ArrayList<View> arrayList = this.f91941f;
            for (int length = viewArr.length - 1; length >= 0; length--) {
                View view = viewArr[length];
                if (view != null) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    int i10 = layoutParams.f91878a;
                    viewArr[length] = null;
                    boolean z12 = view.hasTransientState();
                    if (!q(i10) || z12) {
                        if (i10 != -2 || z12) {
                            AbsHListView.this.removeDetachedView(view, false);
                        }
                        if (z12) {
                            if (this.f91943h == null) {
                                this.f91943h = new SparseArrayCompat<>();
                            }
                            this.f91943h.put(this.f91937b + length, view);
                        }
                    } else {
                        if (z11) {
                            arrayList = this.f91939d[i10];
                        }
                        view.onStartTemporaryDetach();
                        layoutParams.f91881d = this.f91937b + length;
                        arrayList.add(view);
                        view.setAccessibilityDelegate(null);
                        if (z10) {
                            this.f91936a.a(view);
                        }
                    }
                }
            }
            k();
        }

        void o(int color) {
            int i10 = this.f91940e;
            if (i10 == 1) {
                ArrayList<View> arrayList = this.f91941f;
                int size = arrayList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    arrayList.get(i11).setDrawingCacheBackgroundColor(color);
                }
            } else {
                for (int i12 = 0; i12 < i10; i12++) {
                    ArrayList<View> arrayList2 = this.f91939d[i12];
                    int size2 = arrayList2.size();
                    for (int i13 = 0; i13 < size2; i13++) {
                        arrayList2.get(i13).setDrawingCacheBackgroundColor(color);
                    }
                }
            }
            for (View view : this.f91938c) {
                if (view != null) {
                    view.setDrawingCacheBackgroundColor(color);
                }
            }
        }

        public void p(int viewTypeCount) {
            if (viewTypeCount < 1) {
                throw new IllegalArgumentException("Can't have a viewTypeCount < 1");
            }
            ArrayList<View>[] arrayListArr = new ArrayList[viewTypeCount];
            for (int i10 = 0; i10 < viewTypeCount; i10++) {
                arrayListArr[i10] = new ArrayList<>();
            }
            this.f91940e = viewTypeCount;
            this.f91941f = arrayListArr[0];
            this.f91939d = arrayListArr;
        }

        public boolean q(int viewType) {
            return viewType >= 0;
        }
    }

    public interface m {
        void a(View view);
    }

    public interface n {
        void adjustListItemSelectionBounds(Rect bounds);
    }

    private class o {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f91945b;

        private o() {
        }

        public void a() {
            this.f91945b = AbsHListView.this.getWindowAttachCount();
        }

        public boolean b() {
            return AbsHListView.this.hasWindowFocus() && AbsHListView.this.getWindowAttachCount() == this.f91945b;
        }

        /* synthetic */ o(AbsHListView absHListView, a aVar) {
            this();
        }
    }

    public AbsHListView(Context context) {
        super(context);
        this.M = 0;
        this.S = 0;
        this.W = false;
        this.f91839b1 = -1;
        this.f91848f1 = new Rect();
        this.f91853i1 = new l();
        this.f91857l1 = 0;
        this.f91863p1 = 0;
        this.f91865q1 = 0;
        this.f91867r1 = 0;
        this.f91872v1 = new Rect();
        this.L1 = 0;
        this.f91852h2 = -1;
        this.f91860n2 = 0;
        this.f91869s2 = true;
        this.f91871u2 = -1;
        this.f91873v2 = null;
        this.f91875x2 = -1;
        this.G2 = 0;
        this.M2 = 1.0f;
        this.N2 = new boolean[1];
        this.O2 = -1;
        this.V2 = 0;
        e0();
    }

    private void B0() {
        VelocityTracker velocityTracker = this.f91856k2;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f91856k2 = null;
        }
    }

    static View H0(ArrayList<View> scrapViews, int position) {
        int size = scrapViews.size();
        if (size <= 0) {
            return null;
        }
        for (int i10 = 0; i10 < size; i10++) {
            View view = scrapViews.get(i10);
            if (((LayoutParams) view.getLayoutParams()).f91881d == position) {
                scrapViews.remove(i10);
                return view;
            }
        }
        return scrapViews.remove(size - 1);
    }

    private void I0(int x10) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        VelocityTracker velocityTracker;
        ViewParent parent;
        int i15 = x10 - this.f91849f2;
        int i16 = i15 - this.f91855j2;
        int i17 = this.f91854i2;
        int i18 = i17 != Integer.MIN_VALUE ? x10 - i17 : i16;
        int i19 = this.f91852h2;
        if (i19 == 3) {
            if (x10 != i17) {
                if (Math.abs(i15) > this.H2 && (parent = getParent()) != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                int i20 = this.f91842c2;
                int childCount = i20 >= 0 ? i20 - this.f91947b : getChildCount() / 2;
                View childAt = getChildAt(childCount);
                int left = childAt != null ? childAt.getLeft() : 0;
                boolean zV0 = i18 != 0 ? V0(i16, i18) : false;
                View childAt2 = getChildAt(childCount);
                if (childAt2 != null) {
                    int left2 = childAt2.getLeft();
                    if (zV0) {
                        int i21 = (-i18) - (left2 - left);
                        overScrollBy(i21, 0, getScrollX(), 0, 0, 0, this.P2, 0, true);
                        if (Math.abs(this.P2) == Math.abs(getScrollX()) && (velocityTracker = this.f91856k2) != null) {
                            velocityTracker.clear();
                        }
                        int overScrollMode = getOverScrollMode();
                        if (overScrollMode == 0 || (overScrollMode == 1 && !T())) {
                            this.V2 = 0;
                            this.f91852h2 = 5;
                            if (i15 > 0) {
                                this.R2.onPull(i21 / getWidth());
                                if (!this.S2.isFinished()) {
                                    this.S2.onRelease();
                                }
                                invalidate();
                            } else if (i15 < 0) {
                                this.S2.onPull(i21 / getWidth());
                                if (!this.R2.isFinished()) {
                                    this.R2.onRelease();
                                }
                                invalidate();
                            }
                        }
                    }
                    this.f91849f2 = x10;
                }
                this.f91854i2 = x10;
                return;
            }
            return;
        }
        if (i19 != 5 || x10 == i17) {
            return;
        }
        int scrollX = getScrollX();
        int i22 = scrollX - i18;
        int i23 = x10 > this.f91854i2 ? 1 : -1;
        if (this.V2 == 0) {
            this.V2 = i23;
        }
        int i24 = -i18;
        if ((i22 >= 0 || scrollX < 0) && (i22 <= 0 || scrollX > 0)) {
            i10 = i24;
            i11 = 0;
        } else {
            int i25 = -scrollX;
            i11 = i18 + i25;
            i10 = i25;
        }
        if (i10 != 0) {
            i12 = i11;
            int i26 = i10;
            i13 = i23;
            overScrollBy(i10, 0, getScrollX(), 0, 0, 0, this.P2, 0, true);
            int overScrollMode2 = getOverScrollMode();
            if (overScrollMode2 == 0 || (overScrollMode2 == 1 && !T())) {
                if (i15 > 0) {
                    this.R2.onPull(i26 / getWidth());
                    if (!this.S2.isFinished()) {
                        this.S2.onRelease();
                    }
                    invalidate();
                } else if (i15 < 0) {
                    this.S2.onPull(i26 / getWidth());
                    if (!this.R2.isFinished()) {
                        this.R2.onRelease();
                    }
                    invalidate();
                }
            }
        } else {
            i12 = i11;
            i13 = i23;
        }
        if (i12 != 0) {
            if (getScrollX() != 0) {
                i14 = 0;
                this.L.c(0);
                h0();
            } else {
                i14 = 0;
            }
            V0(i12, i12);
            this.f91852h2 = 3;
            int iY = Y(x10);
            this.f91855j2 = i14;
            View childAt3 = getChildAt(iY - this.f91947b);
            this.f91844d2 = childAt3 != null ? childAt3.getLeft() : 0;
            this.f91849f2 = x10;
            this.f91842c2 = iY;
        }
        this.f91854i2 = x10;
        this.V2 = i13;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        it.sephiroth.android.library.util.b.a aVar = this.L;
        if (aVar == null || aVar.a()) {
            return;
        }
        if (this.I2 == null) {
            this.I2 = new b();
        }
        post(this.I2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean T() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return true;
        }
        return childCount == this.f91965t && getChildAt(0).getLeft() >= this.f91872v1.left && getChildAt(childCount - 1).getRight() <= getWidth() - this.f91872v1.right;
    }

    private boolean T0(int x10) {
        int i10 = x10 - this.f91849f2;
        int iAbs = Math.abs(i10);
        boolean z10 = getScrollX() != 0;
        if (!z10 && iAbs <= this.H2) {
            return false;
        }
        V();
        if (z10) {
            this.f91852h2 = 5;
            this.f91855j2 = 0;
        } else {
            this.f91852h2 = 3;
            this.f91855j2 = i10 > 0 ? this.H2 : -this.H2;
        }
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f91876y2);
        }
        setPressed(false);
        View childAt = getChildAt(this.f91842c2 - this.f91947b);
        if (childAt != null) {
            childAt.setPressed(false);
        }
        C0(1);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        I0(x10);
        return true;
    }

    private void V() {
        it.sephiroth.android.library.util.b.a aVar;
        if (!this.f91864p2 || this.f91837a2 || (aVar = this.L) == null || aVar.a()) {
            return;
        }
        setChildrenDrawnWithCacheEnabled(true);
        setChildrenDrawingCacheEnabled(true);
        this.f91840b2 = true;
        this.f91837a2 = true;
    }

    private void W(Canvas canvas) {
        if (this.f91848f1.isEmpty()) {
            return;
        }
        Drawable drawable = this.f91862p0;
        drawable.setBounds(this.f91848f1);
        drawable.draw(canvas);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void W0() {
        int i10 = this.f91947b;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int i12 = i10 + i11;
            if (childAt instanceof Checkable) {
                ((Checkable) childAt).setChecked(this.Q.get(i12, Boolean.FALSE).booleanValue());
            } else {
                childAt.setActivated(this.Q.get(i12, Boolean.FALSE).booleanValue());
            }
        }
    }

    private void Z0() {
        setSelector(getResources().getDrawable(R.drawable.list_selector_background));
    }

    private void a0() {
        EdgeEffectCompat edgeEffectCompat = this.R2;
        if (edgeEffectCompat != null) {
            edgeEffectCompat.finish();
            this.S2.finish();
        }
    }

    public static int c0(Rect source, Rect dest, int direction) {
        int iWidth;
        int iHeight;
        int iWidth2;
        int i10;
        int iHeight2;
        int i11;
        if (direction == 1 || direction == 2) {
            iWidth = source.right + (source.width() / 2);
            iHeight = (source.height() / 2) + source.top;
            iWidth2 = dest.left + (dest.width() / 2);
            i10 = dest.top;
            iHeight2 = dest.height() / 2;
        } else {
            if (direction != 17) {
                if (direction == 33) {
                    iWidth = source.left + (source.width() / 2);
                    iHeight = source.top;
                    iWidth2 = dest.left + (dest.width() / 2);
                    i11 = dest.bottom;
                } else if (direction == 66) {
                    iWidth = source.right;
                    iHeight = (source.height() / 2) + source.top;
                    iWidth2 = dest.left;
                    i10 = dest.top;
                    iHeight2 = dest.height() / 2;
                } else {
                    if (direction != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}.");
                    }
                    iWidth = source.left + (source.width() / 2);
                    iHeight = source.bottom;
                    iWidth2 = dest.left + (dest.width() / 2);
                    i11 = dest.top;
                }
                int i12 = iWidth2 - iWidth;
                int i13 = i11 - iHeight;
                return (i13 * i13) + (i12 * i12);
            }
            iWidth = source.left;
            iHeight = (source.height() / 2) + source.top;
            iWidth2 = dest.right;
            i10 = dest.top;
            iHeight2 = dest.height() / 2;
        }
        i11 = iHeight2 + i10;
        int i14 = iWidth2 - iWidth;
        int i15 = i11 - iHeight;
        return (i15 * i15) + (i14 * i14);
    }

    private void e0() {
        setClickable(true);
        setFocusableInTouchMode(true);
        setWillNotDraw(false);
        setAlwaysDrawnWithCacheEnabled(false);
        setScrollingCacheEnabled(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.H2 = viewConfiguration.getScaledTouchSlop();
        this.K2 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.L2 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.P2 = viewConfiguration.getScaledOverscrollDistance();
        this.Q2 = viewConfiguration.getScaledOverflingDistance();
        this.L = it.sephiroth.android.library.util.b.a(this);
    }

    private void f0() {
        VelocityTracker velocityTracker = this.f91856k2;
        if (velocityTracker == null) {
            this.f91856k2 = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void g0() {
        if (this.f91856k2 == null) {
            this.f91856k2 = VelocityTracker.obtain();
        }
    }

    private void s0(MotionEvent ev) {
        int action = (ev.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        if (ev.getPointerId(action) == this.O2) {
            int i10 = action == 0 ? 1 : 0;
            this.f91849f2 = (int) ev.getX(i10);
            this.f91851g2 = (int) ev.getY(i10);
            this.f91855j2 = 0;
            this.O2 = ev.getPointerId(i10);
        }
    }

    private void x0(int l10, int t10, int r10, int b10) {
        this.f91848f1.set(l10 - this.f91857l1, t10 - this.f91863p1, r10 + this.f91865q1, b10 + this.f91867r1);
    }

    protected int A0() {
        int i10 = this.f91962q;
        if (i10 < 0) {
            i10 = this.f91871u2;
        }
        return Math.min(Math.max(0, i10), this.f91965t - 1);
    }

    void C0(int newState) {
        i iVar;
        if (newState == this.G2 || (iVar = this.f91868r2) == null) {
            return;
        }
        this.G2 = newState;
        iVar.b(this, newState);
    }

    void D0() {
        if (getChildCount() > 0) {
            E0();
            requestLayout();
            invalidate();
        }
    }

    protected void E0() {
        removeAllViewsInLayout();
        this.f91947b = 0;
        this.f91959n = false;
        this.J2 = null;
        this.f91952g = false;
        this.f91847e3 = null;
        this.f91968w = -1;
        this.f91969x = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        this.f91860n2 = 0;
        this.f91839b1 = -1;
        this.f91848f1.setEmpty();
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d3 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:57:? A[RETURN, SYNTHETIC] */
    boolean F0() {
        int left;
        boolean z10;
        int i10;
        k kVar;
        int iO;
        int childCount = getChildCount();
        if (childCount <= 0) {
            return false;
        }
        int horizontalFadingEdgeLength = this.f91872v1.left;
        int right = (getRight() - getLeft()) - this.f91872v1.right;
        int i11 = this.f91947b;
        int i12 = this.f91871u2;
        if (i12 < i11 || i12 >= i11 + childCount) {
            if (i12 < i11) {
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    if (i13 >= childCount) {
                        left = i14;
                        i12 = i11;
                        break;
                    }
                    left = getChildAt(i13).getLeft();
                    if (i13 == 0) {
                        if (i11 > 0 || left < horizontalFadingEdgeLength) {
                            horizontalFadingEdgeLength += getHorizontalFadingEdgeLength();
                        }
                        i14 = left;
                    }
                    if (left >= horizontalFadingEdgeLength) {
                        i12 = i13 + i11;
                        break;
                    }
                    i13++;
                }
            } else {
                int i15 = this.f91965t;
                int i16 = i11 + childCount;
                int i17 = i16 - 1;
                int i18 = childCount - 1;
                int i19 = i18;
                int i20 = 0;
                while (true) {
                    if (i19 < 0) {
                        i12 = i17;
                        left = i20;
                        break;
                    }
                    View childAt = getChildAt(i19);
                    int left2 = childAt.getLeft();
                    int right2 = childAt.getRight();
                    if (i19 == i18) {
                        if (i16 < i15 || right2 > right) {
                            right -= getHorizontalFadingEdgeLength();
                        }
                        i20 = left2;
                    }
                    if (right2 <= right) {
                        i12 = i11 + i19;
                        left = left2;
                        break;
                    }
                    i19--;
                }
                z10 = false;
            }
            i10 = -1;
            this.f91871u2 = -1;
            removeCallbacks(this.f91858l2);
            kVar = this.f91859m2;
            if (kVar != null) {
                kVar.g();
            }
            this.f91852h2 = -1;
            R();
            this.f91948c = left;
            iO = o(i12, z10);
            if (iO >= i11 && iO <= getLastVisiblePosition()) {
                this.S = 4;
                Y0();
                setSelectionInt(iO);
                j0();
                i10 = iO;
            }
            C0(0);
            if (i10 >= 0) {
                return true;
            }
            return false;
        }
        View childAt2 = getChildAt(i12 - i11);
        left = childAt2.getLeft();
        int right3 = childAt2.getRight();
        if (left < horizontalFadingEdgeLength) {
            left = horizontalFadingEdgeLength + getHorizontalFadingEdgeLength();
        } else if (right3 > right) {
            left = (right - childAt2.getMeasuredWidth()) - getHorizontalFadingEdgeLength();
        }
        z10 = true;
        i10 = -1;
        this.f91871u2 = -1;
        removeCallbacks(this.f91858l2);
        kVar = this.f91859m2;
        if (kVar != null) {
            kVar.g();
        }
        this.f91852h2 = -1;
        R();
        this.f91948c = left;
        iO = o(i12, z10);
        if (iO >= i11) {
            this.S = 4;
            Y0();
            setSelectionInt(iO);
            j0();
            i10 = iO;
        }
        C0(0);
        if (i10 >= 0) {
            return true;
        }
        return false;
    }

    protected boolean G0() {
        if (this.f91962q >= 0 || !F0()) {
            return false;
        }
        Y0();
        return true;
    }

    protected void J0(int start, int end) {
    }

    protected boolean K0() {
        return (hasFocus() && !isInTouchMode()) || U0();
    }

    public boolean L0(float x10, float y10, int metaState) {
        int iW0 = w0((int) x10, (int) y10);
        if (iW0 != -1) {
            long itemId = this.U.getItemId(iW0);
            View childAt = getChildAt(iW0 - this.f91947b);
            if (childAt != null) {
                this.f91873v2 = U(childAt, iW0, itemId);
                return super.showContextMenuForChild(this);
            }
        }
        return L0(x10, y10, metaState);
    }

    public void M0(int distance, int duration) {
        N0(distance, duration, false);
    }

    public void N0(int distance, int duration, boolean linear) {
        if (this.f91858l2 == null) {
            this.f91858l2 = new g();
        }
        int i10 = this.f91947b;
        int childCount = getChildCount();
        int i11 = i10 + childCount;
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        if (distance != 0 && this.f91965t != 0 && childCount != 0 && ((i10 != 0 || getChildAt(0).getLeft() != paddingLeft || distance >= 0) && (i11 != this.f91965t || getChildAt(childCount - 1).getRight() != width || distance <= 0))) {
            C0(2);
            this.f91858l2.h(distance, duration, linear);
            return;
        }
        this.f91858l2.c();
        k kVar = this.f91859m2;
        if (kVar != null) {
            kVar.g();
        }
    }

    protected void O0(int position) {
        int lastVisiblePosition;
        View childAt;
        if (position < 0) {
            lastVisiblePosition = getFirstVisiblePosition();
        } else {
            lastVisiblePosition = position > 0 ? getLastVisiblePosition() : -1;
        }
        if (lastVisiblePosition <= -1 || (childAt = getChildAt(lastVisiblePosition - getFirstVisiblePosition())) == null) {
            return;
        }
        Rect rect = new Rect();
        if (childAt.getGlobalVisibleRect(rect)) {
            float fWidth = (rect.width() * rect.height()) / (childAt.getWidth() * childAt.getHeight());
            if (position < 0 && fWidth < 0.75f) {
                lastVisiblePosition++;
            } else if (position > 0 && fWidth < 0.75f) {
                lastVisiblePosition--;
            }
        }
        P0(Math.max(0, Math.min(getCount(), lastVisiblePosition + position)));
    }

    public void P0(int position) {
        if (this.f91859m2 == null) {
            this.f91859m2 = new k();
        }
        this.f91859m2.b(position);
    }

    public void Q() {
        SparseArrayCompat<Boolean> sparseArrayCompat = this.Q;
        if (sparseArrayCompat != null) {
            sparseArrayCompat.clear();
        }
        LongSparseArray<Integer> longSparseArray = this.R;
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
        this.P = 0;
    }

    public void Q0(int position, int boundPosition) {
        if (this.f91859m2 == null) {
            this.f91859m2 = new k();
        }
        this.f91859m2.c(position, boundPosition);
    }

    public void R0(int position, int offset) {
        if (this.f91859m2 == null) {
            this.f91859m2 = new k();
        }
        this.f91859m2.d(position, offset);
    }

    void S() {
        Object obj;
        boolean z10;
        Object obj2;
        this.Q.clear();
        int i10 = 0;
        boolean z11 = false;
        while (i10 < this.R.size()) {
            long jKeyAt = this.R.keyAt(i10);
            int iIntValue = this.R.valueAt(i10).intValue();
            if (jKeyAt != this.U.getItemId(iIntValue)) {
                int iMax = Math.max(0, iIntValue - 20);
                int iMin = Math.min(iIntValue + 20, this.f91965t);
                while (true) {
                    if (iMax >= iMin) {
                        z10 = false;
                        break;
                    } else {
                        if (jKeyAt == this.U.getItemId(iMax)) {
                            this.Q.put(iMax, Boolean.TRUE);
                            this.R.setValueAt(i10, Integer.valueOf(iMax));
                            z10 = true;
                            break;
                        }
                        iMax++;
                    }
                }
                if (!z10) {
                    this.R.delete(jKeyAt);
                    i10--;
                    this.P--;
                    Object obj3 = this.N;
                    if (obj3 != null && (obj2 = this.O) != null) {
                        ((qb.b) obj2).a((ActionMode) obj3, iIntValue, jKeyAt, false);
                    }
                    z11 = true;
                }
            } else {
                this.Q.put(iIntValue, Boolean.TRUE);
            }
            i10++;
        }
        if (!z11 || (obj = this.N) == null) {
            return;
        }
        ((ActionMode) obj).invalidate();
    }

    public void S0(int position, int offset, int duration) {
        if (this.f91859m2 == null) {
            this.f91859m2 = new k();
        }
        this.f91859m2.e(position, offset, duration);
    }

    ContextMenu.ContextMenuInfo U(View view, int position, long id2) {
        return new AdapterView.b(view, position, id2);
    }

    boolean U0() {
        int i10 = this.f91852h2;
        return i10 == 1 || i10 == 2;
    }

    boolean V0(int deltaX, int incrementalDeltaX) {
        int i10;
        int i11;
        int i12;
        int childCount = getChildCount();
        if (childCount == 0) {
            return true;
        }
        int left = getChildAt(0).getLeft();
        int i13 = childCount - 1;
        int right = getChildAt(i13).getRight();
        Rect rect = this.f91872v1;
        int i14 = 0 - left;
        int width = right - (getWidth() - 0);
        int width2 = (getWidth() - getPaddingRight()) - getPaddingLeft();
        int iMax = deltaX < 0 ? Math.max(-(width2 - 1), deltaX) : Math.min(width2 - 1, deltaX);
        int iMax2 = incrementalDeltaX < 0 ? Math.max(-(width2 - 1), incrementalDeltaX) : Math.min(width2 - 1, incrementalDeltaX);
        int i15 = this.f91947b;
        if (i15 == 0) {
            this.T2 = left - rect.left;
        } else {
            this.T2 += iMax2;
        }
        int i16 = i15 + childCount;
        int i17 = this.f91965t;
        if (i16 == i17) {
            this.U2 = rect.right + right;
        } else {
            this.U2 += iMax2;
        }
        boolean z10 = i15 == 0 && left >= rect.left && iMax2 >= 0;
        boolean z11 = i16 == i17 && right <= getWidth() - rect.right && iMax2 <= 0;
        if (z10 || z11) {
            return iMax2 != 0;
        }
        boolean z12 = iMax2 < 0;
        boolean zIsInTouchMode = isInTouchMode();
        if (zIsInTouchMode) {
            d0();
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = this.f91965t - getFooterViewsCount();
        if (z12) {
            int i18 = -iMax2;
            int i19 = 0;
            i11 = 0;
            while (i19 < childCount) {
                View childAt = getChildAt(i19);
                if (childAt.getRight() >= i18) {
                    break;
                }
                i11++;
                int i20 = i15 + i19;
                if (i20 >= headerViewsCount && i20 < footerViewsCount) {
                    this.f91853i1.c(childAt, i20);
                }
                i19++;
                childCount = childCount;
            }
            i10 = 0;
        } else {
            int width3 = getWidth() - iMax2;
            i10 = 0;
            i11 = 0;
            while (i13 >= 0) {
                View childAt2 = getChildAt(i13);
                if (childAt2.getLeft() <= width3) {
                    break;
                }
                i11++;
                int i21 = i15 + i13;
                if (i21 >= headerViewsCount && i21 < footerViewsCount) {
                    this.f91853i1.c(childAt2, i21);
                }
                int i22 = i13;
                i13--;
                i10 = i22;
            }
        }
        this.f91846e2 = this.f91844d2 + iMax;
        this.B = true;
        if (i11 > 0) {
            detachViewsFromParent(i10, i11);
            this.f91853i1.m();
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        r0(iMax2);
        if (z12) {
            this.f91947b += i11;
        }
        int iAbs = Math.abs(iMax2);
        if (i14 < iAbs || width < iAbs) {
            X(z12);
        }
        if (zIsInTouchMode || (i12 = this.f91962q) == -1) {
            int i23 = this.f91839b1;
            if (i23 != -1) {
                int i24 = i23 - this.f91947b;
                if (i24 >= 0 && i24 < getChildCount()) {
                    y0(-1, getChildAt(i24));
                }
            } else {
                this.f91848f1.setEmpty();
            }
        } else {
            int i25 = i12 - this.f91947b;
            if (i25 >= 0 && i25 < getChildCount()) {
                y0(this.f91962q, getChildAt(i25));
            }
        }
        this.B = false;
        j0();
        return false;
    }

    protected abstract void X(boolean after);

    protected void X0() {
        if (this.R1 != null) {
            boolean z10 = this.f91947b > 0;
            if (!z10 && getChildCount() > 0) {
                z10 = getChildAt(0).getLeft() < this.f91872v1.left;
            }
            this.R1.setVisibility(z10 ? 0 : 4);
        }
        if (this.V1 != null) {
            int childCount = getChildCount();
            boolean z11 = this.f91947b + childCount < this.f91965t;
            if (!z11 && childCount > 0) {
                z11 = getChildAt(childCount - 1).getRight() > getRight() - this.f91872v1.right;
            }
            this.V1.setVisibility(z11 ? 0 : 4);
        }
    }

    protected int Y(int x10) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return -1;
        }
        int iZ = Z(x10);
        return iZ != -1 ? iZ : (this.f91947b + childCount) - 1;
    }

    void Y0() {
        if (this.f91862p0 != null) {
            if (K0()) {
                this.f91862p0.setState(getDrawableState());
            } else {
                this.f91862p0.setState(G3);
            }
        }
    }

    protected abstract int Z(int x10);

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> views) {
        int childCount = getChildCount();
        int i10 = this.f91947b;
        ListAdapter listAdapter = this.U;
        if (listAdapter == null) {
            return;
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (listAdapter.isEnabled(i10 + i11)) {
                views.add(childAt);
            }
            childAt.addTouchables(views);
        }
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        return false;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        return p10 instanceof LayoutParams;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollExtent() {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return 0;
        }
        if (!this.f91869s2) {
            return 1;
        }
        int i10 = childCount * 100;
        View childAt = getChildAt(0);
        int left = childAt.getLeft();
        int width = childAt.getWidth();
        if (width > 0) {
            i10 += (left * 100) / width;
        }
        View childAt2 = getChildAt(childCount - 1);
        int right = childAt2.getRight();
        int width2 = childAt2.getWidth();
        return width2 > 0 ? i10 - (((right - getWidth()) * 100) / width2) : i10;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollOffset() {
        int i10 = this.f91947b;
        int childCount = getChildCount();
        int i11 = 0;
        if (i10 >= 0 && childCount > 0) {
            if (!this.f91869s2) {
                int i12 = this.f91965t;
                if (i10 != 0) {
                    i11 = i10 + childCount == i12 ? i12 : (childCount / 2) + i10;
                }
                return (int) (i10 + (childCount * (i11 / i12)));
            }
            View childAt = getChildAt(0);
            int left = childAt.getLeft();
            int width = childAt.getWidth();
            if (width > 0) {
                return Math.max(((i10 * 100) - ((left * 100) / width)) + ((int) ((getScrollX() / getWidth()) * this.f91965t * 100.0f)), 0);
            }
        }
        return 0;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollRange() {
        if (!this.f91869s2) {
            return this.f91965t;
        }
        int iMax = Math.max(this.f91965t * 100, 0);
        return getScrollX() != 0 ? iMax + Math.abs((int) ((getScrollX() / getWidth()) * this.f91965t * 100.0f)) : iMax;
    }

    protected void d0() {
        int i10 = this.f91962q;
        if (i10 != -1) {
            if (this.S != 4) {
                this.f91871u2 = i10;
            }
            int i11 = this.f91960o;
            if (i11 >= 0 && i11 != i10) {
                this.f91871u2 = i11;
            }
            setSelectedPositionInt(-1);
            setNextSelectedPositionInt(-1);
            this.f91860n2 = 0;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        boolean z10 = this.W;
        if (!z10) {
            W(canvas);
        }
        super.dispatchDraw(canvas);
        if (z10) {
            W(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean pressed) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.R2 != null) {
            int scrollX = getScrollX();
            if (!this.R2.isFinished()) {
                int iSave = canvas.save();
                Rect rect = this.f91872v1;
                int i10 = rect.top + this.X2;
                int height = (getHeight() - i10) - (rect.bottom + this.Y2);
                int iMin = Math.min(0, this.T2 + scrollX);
                canvas.rotate(-90.0f);
                canvas.translate((-getHeight()) + i10, iMin);
                this.R2.setSize(height, height);
                if (this.R2.draw(canvas)) {
                    invalidate();
                }
                canvas.restoreToCount(iSave);
            }
            if (this.S2.isFinished()) {
                return;
            }
            int iSave2 = canvas.save();
            Rect rect2 = this.f91872v1;
            int i11 = rect2.left + this.X2;
            int height2 = (getHeight() - i11) - (rect2.right + this.Y2);
            int iMax = Math.max(getWidth(), scrollX + this.U2);
            canvas.rotate(90.0f);
            canvas.translate(-i11, -iMax);
            this.S2.setSize(height2, height2);
            if (this.S2.draw(canvas)) {
                invalidate();
            }
            canvas.restoreToCount(iSave2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Y0();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -1, 0);
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public int getCacheColorHint() {
        return this.E2;
    }

    public int getCheckedItemCount() {
        return this.P;
    }

    public long[] getCheckedItemIds() {
        LongSparseArray<Integer> longSparseArray;
        if (this.M == 0 || (longSparseArray = this.R) == null || this.U == null) {
            return new long[0];
        }
        int size = longSparseArray.size();
        long[] jArr = new long[size];
        for (int i10 = 0; i10 < size; i10++) {
            jArr[i10] = longSparseArray.keyAt(i10);
        }
        return jArr;
    }

    public int getCheckedItemPosition() {
        SparseArrayCompat<Boolean> sparseArrayCompat;
        if (this.M == 1 && (sparseArrayCompat = this.Q) != null && sparseArrayCompat.size() == 1) {
            return this.Q.keyAt(0);
        }
        return -1;
    }

    public SparseArrayCompat<Boolean> getCheckedItemPositions() {
        if (this.M != 0) {
            return this.Q;
        }
        return null;
    }

    public int getChoiceMode() {
        return this.M;
    }

    @Override // android.view.View
    protected ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.f91873v2;
    }

    @Override // android.view.View
    public void getFocusedRect(Rect r10) {
        View selectedView = getSelectedView();
        if (selectedView == null || selectedView.getParent() != this) {
            super.getFocusedRect(r10);
        } else {
            selectedView.getFocusedRect(r10);
            offsetDescendantRectToMyCoords(selectedView, r10);
        }
    }

    protected int getFooterViewsCount() {
        return 0;
    }

    protected int getHeaderViewsCount() {
        return 0;
    }

    protected float getHorizontalScrollFactor() {
        if (this.f91850f3 == 0.0f) {
            TypedValue typedValue = new TypedValue();
            if (!getContext().getTheme().resolveAttribute(com.join.android.app.mgsim.wufun.R.attr.hlv_listPreferredItemWidth, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define hlv_listPreferredItemWidth.");
            }
            this.f91850f3 = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
        }
        return this.f91850f3;
    }

    @Override // android.view.View
    protected int getHorizontalScrollbarHeight() {
        return super.getHorizontalScrollbarHeight();
    }

    @Override // android.view.View
    protected float getLeftFadingEdgeStrength() {
        int childCount = getChildCount();
        float leftFadingEdgeStrength = super.getLeftFadingEdgeStrength();
        if (childCount == 0) {
            return leftFadingEdgeStrength;
        }
        if (this.f91947b > 0) {
            return 1.0f;
        }
        int left = getChildAt(0).getLeft();
        return left < getPaddingLeft() ? (-(left - getPaddingLeft())) / getHorizontalFadingEdgeLength() : leftFadingEdgeStrength;
    }

    public int getListPaddingBottom() {
        return this.f91872v1.bottom;
    }

    public int getListPaddingLeft() {
        return this.f91872v1.left;
    }

    public int getListPaddingRight() {
        return this.f91872v1.right;
    }

    public int getListPaddingTop() {
        return this.f91872v1.top;
    }

    @Override // android.view.View
    protected float getRightFadingEdgeStrength() {
        int childCount = getChildCount();
        float rightFadingEdgeStrength = super.getRightFadingEdgeStrength();
        if (childCount == 0) {
            return rightFadingEdgeStrength;
        }
        if ((this.f91947b + childCount) - 1 < this.f91965t - 1) {
            return 1.0f;
        }
        int right = getChildAt(childCount - 1).getRight();
        int width = getWidth();
        return right > width - getPaddingRight() ? ((right - width) + getPaddingRight()) / getHorizontalFadingEdgeLength() : rightFadingEdgeStrength;
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    @ViewDebug.ExportedProperty
    public View getSelectedView() {
        int i10;
        if (this.f91965t <= 0 || (i10 = this.f91962q) < 0) {
            return null;
        }
        return getChildAt(i10 - this.f91947b);
    }

    public Drawable getSelector() {
        return this.f91862p0;
    }

    @Override // android.view.View
    public int getSolidColor() {
        return this.E2;
    }

    public int getTranscriptMode() {
        return this.D2;
    }

    @TargetApi(11)
    protected void h0() {
        if (this.L.a() && (getParent() instanceof View)) {
            ((View) getParent()).invalidate();
        }
    }

    public void i0() {
        this.f91959n = true;
        r();
        requestLayout();
        invalidate();
    }

    protected void j0() {
        i iVar = this.f91868r2;
        if (iVar != null) {
            iVar.a(this, this.f91947b, getChildCount(), this.f91965t);
        }
        onScrollChanged(0, 0, 0, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f91862p0;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public boolean k0(int position) {
        SparseArrayCompat<Boolean> sparseArrayCompat;
        if (this.M == 0 || (sparseArrayCompat = this.Q) == null) {
            return false;
        }
        return sparseArrayCompat.get(position, Boolean.FALSE).booleanValue();
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    protected void l() {
        ListAdapter listAdapter;
        int i10 = this.f91965t;
        int i11 = this.f91845d3;
        this.f91845d3 = i10;
        if (this.M != 0 && (listAdapter = this.U) != null && listAdapter.hasStableIds()) {
            S();
        }
        this.f91853i1.e();
        if (i10 > 0) {
            if (this.f91952g) {
                this.f91952g = false;
                this.f91847e3 = null;
                int i12 = this.D2;
                if (i12 == 2) {
                    this.S = 3;
                    return;
                }
                if (i12 == 1) {
                    if (this.W2) {
                        this.W2 = false;
                        this.S = 3;
                        return;
                    }
                    int childCount = getChildCount();
                    int width = getWidth() - getPaddingRight();
                    View childAt = getChildAt(childCount - 1);
                    int bottom = childAt != null ? childAt.getBottom() : width;
                    if (this.f91947b + childCount >= i11 && bottom <= width) {
                        this.S = 3;
                        return;
                    }
                    awakenScrollBars();
                }
                int i13 = this.f91953h;
                if (i13 != 0) {
                    if (i13 == 1) {
                        this.S = 5;
                        this.f91949d = Math.min(Math.max(0, this.f91949d), i10 - 1);
                        return;
                    }
                } else {
                    if (isInTouchMode()) {
                        this.S = 5;
                        this.f91949d = Math.min(Math.max(0, this.f91949d), i10 - 1);
                        return;
                    }
                    int iG = g();
                    if (iG >= 0 && o(iG, true) == iG) {
                        this.f91949d = iG;
                        if (this.f91951f == getWidth()) {
                            this.S = 5;
                        } else {
                            this.S = 2;
                        }
                        setNextSelectedPositionInt(iG);
                        return;
                    }
                }
            }
            if (!isInTouchMode()) {
                int selectedItemPosition = getSelectedItemPosition();
                if (selectedItemPosition >= i10) {
                    selectedItemPosition = i10 - 1;
                }
                if (selectedItemPosition < 0) {
                    selectedItemPosition = 0;
                }
                int iO = o(selectedItemPosition, true);
                if (iO >= 0) {
                    setNextSelectedPositionInt(iO);
                    return;
                }
                int iO2 = o(selectedItemPosition, false);
                if (iO2 >= 0) {
                    setNextSelectedPositionInt(iO2);
                    return;
                }
            } else if (this.f91871u2 >= 0) {
                return;
            }
        }
        this.S = this.f91861o2 ? 3 : 1;
        this.f91962q = -1;
        this.f91963r = Long.MIN_VALUE;
        this.f91960o = -1;
        this.f91961p = Long.MIN_VALUE;
        this.f91952g = false;
        this.f91847e3 = null;
        this.f91839b1 = -1;
        f();
    }

    @ViewDebug.ExportedProperty
    public boolean l0() {
        return this.f91864p2;
    }

    @ViewDebug.ExportedProperty
    public boolean m0() {
        return this.f91869s2;
    }

    public boolean n0() {
        return this.f91861o2;
    }

    protected void o0() {
        if (isEnabled() && isClickable()) {
            Drawable drawable = this.f91862p0;
            Rect rect = this.f91848f1;
            if (drawable != null) {
                if ((isFocused() || U0()) && !rect.isEmpty()) {
                    View childAt = getChildAt(this.f91962q - this.f91947b);
                    if (childAt != null) {
                        if (childAt.hasFocusable()) {
                            return;
                        } else {
                            childAt.setPressed(true);
                        }
                    }
                    setPressed(true);
                    boolean zIsLongClickable = isLongClickable();
                    Drawable current = drawable.getCurrent();
                    if (current != null && (current instanceof TransitionDrawable)) {
                        if (zIsLongClickable) {
                            ((TransitionDrawable) current).startTransition(ViewConfiguration.getLongPressTimeout());
                        } else {
                            ((TransitionDrawable) current).resetTransition();
                        }
                    }
                    if (!zIsLongClickable || this.f91959n) {
                        return;
                    }
                    if (this.A2 == null) {
                        this.A2 = new d(this, null);
                    }
                    this.A2.a();
                    postDelayed(this.A2, ViewConfiguration.getLongPressTimeout());
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnTouchModeChangeListener(this);
        if (this.U != null && this.T == null) {
            c cVar = new c();
            this.T = cVar;
            this.U.registerDataSetObserver(cVar);
            this.f91959n = true;
            this.f91966u = this.f91965t;
            this.f91965t = this.U.getCount();
        }
        this.f91843c3 = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"Override"})
    protected int[] onCreateDrawableState(int extraSpace) {
        if (this.F2) {
            return super.onCreateDrawableState(extraSpace);
        }
        int i10 = ViewGroup.ENABLED_STATE_SET[0];
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(extraSpace + 1);
        int length = iArrOnCreateDrawableState.length - 1;
        while (true) {
            if (length < 0) {
                length = -1;
                break;
            }
            if (iArrOnCreateDrawableState[length] == i10) {
                break;
            }
            length--;
        }
        if (length >= 0) {
            System.arraycopy(iArrOnCreateDrawableState, length + 1, iArrOnCreateDrawableState, length, (iArrOnCreateDrawableState.length - length) - 1);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        return null;
    }

    @Override // it.sephiroth.android.library.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        c cVar;
        super.onDetachedFromWindow();
        this.f91853i1.d();
        getViewTreeObserver().removeOnTouchModeChangeListener(this);
        ListAdapter listAdapter = this.U;
        if (listAdapter != null && (cVar = this.T) != null) {
            listAdapter.unregisterDataSetObserver(cVar);
            this.T = null;
        }
        g gVar = this.f91858l2;
        if (gVar != null) {
            removeCallbacks(gVar);
        }
        k kVar = this.f91859m2;
        if (kVar != null) {
            kVar.g();
        }
        Runnable runnable = this.I2;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        j jVar = this.B2;
        if (jVar != null) {
            removeCallbacks(jVar);
        }
        Runnable runnable2 = this.C2;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
            this.C2 = null;
        }
        this.f91843c3 = false;
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        ListAdapter listAdapter;
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
        if (!gainFocus || this.f91962q >= 0 || isInTouchMode()) {
            return;
        }
        if (!this.f91843c3 && (listAdapter = this.U) != null) {
            this.f91959n = true;
            this.f91966u = this.f91965t;
            this.f91965t = listAdapter.getCount();
        }
        F0();
    }

    @Override // android.view.View
    @TargetApi(12)
    public boolean onGenericMotionEvent(MotionEvent event) {
        if ((event.getSource() & 2) != 0 && event.getAction() == 8 && this.f91852h2 == -1) {
            float axisValue = event.getAxisValue(10);
            if (axisValue != 0.0f) {
                int horizontalScrollFactor = (int) (axisValue * getHorizontalScrollFactor());
                if (!V0(horizontalScrollFactor, horizontalScrollFactor)) {
                    return true;
                }
            }
        }
        return super.onGenericMotionEvent(event);
    }

    @Override // it.sephiroth.android.library.widget.AdapterView, android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(AbsHListView.class.getName());
    }

    @Override // it.sephiroth.android.library.widget.AdapterView, android.view.View
    @SuppressLint({"Override"})
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(AbsHListView.class.getName());
        if (isEnabled()) {
            if (getFirstVisiblePosition() > 0) {
                info.addAction(8192);
            }
            if (getLastVisiblePosition() < getCount() - 1) {
                info.addAction(4096);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0052  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        k kVar = this.f91859m2;
        if (kVar != null) {
            kVar.g();
        }
        if (!this.f91843c3) {
            return false;
        }
        int i10 = action & 255;
        if (i10 == 0) {
            int i11 = this.f91852h2;
            if (i11 == 6 || i11 == 5) {
                this.f91855j2 = 0;
                return true;
            }
            int x10 = (int) ev.getX();
            int y10 = (int) ev.getY();
            this.O2 = ev.getPointerId(0);
            int iZ = Z(x10);
            if (i11 != 4 && iZ >= 0) {
                this.f91844d2 = getChildAt(iZ - this.f91947b).getLeft();
                this.f91849f2 = x10;
                this.f91851g2 = y10;
                this.f91842c2 = iZ;
                this.f91852h2 = 0;
                R();
            }
            this.f91854i2 = Integer.MIN_VALUE;
            f0();
            this.f91856k2.addMovement(ev);
            if (i11 == 4) {
                return true;
            }
        } else if (i10 == 1) {
            this.f91852h2 = -1;
            this.O2 = -1;
            B0();
            C0(0);
        } else if (i10 != 2) {
            if (i10 == 3) {
                this.f91852h2 = -1;
                this.O2 = -1;
                B0();
                C0(0);
            } else if (i10 == 6) {
                s0(ev);
            }
        } else if (this.f91852h2 == 0) {
            int iFindPointerIndex = ev.findPointerIndex(this.O2);
            if (iFindPointerIndex == -1) {
                this.O2 = ev.getPointerId(0);
                iFindPointerIndex = 0;
            }
            int x11 = (int) ev.getX(iFindPointerIndex);
            g0();
            this.f91856k2.addMovement(ev);
            if (T0(x11)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        int i10;
        ListAdapter listAdapter;
        if (keyCode == 23 || keyCode == 66) {
            if (!isEnabled()) {
                return true;
            }
            if (isClickable() && isPressed() && (i10 = this.f91962q) >= 0 && (listAdapter = this.U) != null && i10 < listAdapter.getCount()) {
                View childAt = getChildAt(this.f91962q - this.f91947b);
                if (childAt != null) {
                    q(childAt, this.f91962q, this.f91963r);
                    childAt.setPressed(false);
                }
                setPressed(false);
                return true;
            }
        }
        return super.onKeyUp(keyCode, event);
    }

    @Override // it.sephiroth.android.library.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        super.onLayout(changed, l10, t10, r10, b10);
        this.f91955j = true;
        if (changed) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                getChildAt(i10).forceLayout();
            }
            this.f91853i1.j();
        }
        p0();
        this.f91955j = false;
        this.f91874w2 = (r10 - l10) / 3;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.f91862p0 == null) {
            Z0();
        }
        Rect rect = this.f91872v1;
        rect.left = this.f91857l1 + getPaddingLeft();
        rect.top = this.f91863p1 + getPaddingTop();
        rect.right = this.f91865q1 + getPaddingRight();
        rect.bottom = this.f91867r1 + getPaddingBottom();
        if (this.D2 == 1) {
            int childCount = getChildCount();
            int width = getWidth() - getPaddingRight();
            View childAt = getChildAt(childCount - 1);
            this.W2 = this.f91947b + childCount >= this.f91845d3 && (childAt != null ? childAt.getRight() : width) <= width;
        }
    }

    @Override // android.view.View
    protected void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        if (getScrollX() != scrollX) {
            onScrollChanged(scrollX, getScrollY(), getScrollX(), getScrollY());
            this.L.c(scrollX);
            h0();
            awakenScrollBars();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        Object obj;
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f91959n = true;
        this.f91951f = savedState.f91887f;
        long j10 = savedState.f91883b;
        if (j10 >= 0) {
            this.f91952g = true;
            this.f91847e3 = savedState;
            this.f91950e = j10;
            this.f91949d = savedState.f91886e;
            this.f91948c = savedState.f91885d;
            this.f91953h = 0;
        } else if (savedState.f91884c >= 0) {
            setSelectedPositionInt(-1);
            setNextSelectedPositionInt(-1);
            this.f91839b1 = -1;
            this.f91952g = true;
            this.f91847e3 = savedState;
            this.f91950e = savedState.f91884c;
            this.f91949d = savedState.f91886e;
            this.f91948c = savedState.f91885d;
            this.f91953h = 1;
        }
        SparseArrayCompat<Boolean> sparseArrayCompat = savedState.f91891j;
        if (sparseArrayCompat != null) {
            this.Q = sparseArrayCompat;
        }
        LongSparseArray<Integer> longSparseArray = savedState.f91892k;
        if (longSparseArray != null) {
            this.R = longSparseArray;
        }
        this.P = savedState.f91890i;
        if (savedState.f91889h && this.M == 3 && (obj = this.O) != null) {
            this.N = startActionMode((qb.b) obj);
        }
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f91847e3;
        if (savedState2 != null) {
            savedState.f91883b = savedState2.f91883b;
            savedState.f91884c = savedState2.f91884c;
            savedState.f91885d = savedState2.f91885d;
            savedState.f91886e = savedState2.f91886e;
            savedState.f91887f = savedState2.f91887f;
            savedState.f91888g = savedState2.f91888g;
            savedState.f91889h = savedState2.f91889h;
            savedState.f91890i = savedState2.f91890i;
            savedState.f91891j = savedState2.f91891j;
            savedState.f91892k = savedState2.f91892k;
            return savedState;
        }
        boolean z10 = getChildCount() > 0 && this.f91965t > 0;
        long selectedItemId = getSelectedItemId();
        savedState.f91883b = selectedItemId;
        savedState.f91887f = getWidth();
        if (selectedItemId >= 0) {
            savedState.f91885d = this.f91860n2;
            savedState.f91886e = getSelectedItemPosition();
            savedState.f91884c = -1L;
        } else if (!z10 || this.f91947b <= 0) {
            savedState.f91885d = 0;
            savedState.f91884c = -1L;
            savedState.f91886e = 0;
        } else {
            savedState.f91885d = getChildAt(0).getLeft();
            int i10 = this.f91947b;
            int i11 = this.f91965t;
            if (i10 >= i11) {
                i10 = i11 - 1;
            }
            savedState.f91886e = i10;
            savedState.f91884c = this.U.getItemId(i10);
        }
        savedState.f91888g = null;
        savedState.f91889h = this.M == 3 && this.N != null;
        SparseArrayCompat<Boolean> sparseArrayCompat = this.Q;
        if (sparseArrayCompat != null) {
            try {
                savedState.f91891j = sparseArrayCompat.m1clone();
            } catch (NoSuchMethodError e10) {
                e10.printStackTrace();
                savedState.f91891j = new SparseArrayCompat<>();
            }
        }
        if (this.R != null) {
            LongSparseArray<Integer> longSparseArray = new LongSparseArray<>();
            int size = this.R.size();
            for (int i12 = 0; i12 < size; i12++) {
                longSparseArray.put(this.R.keyAt(i12), this.R.valueAt(i12));
            }
            savedState.f91892k = longSparseArray;
        }
        savedState.f91890i = this.P;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        if (getChildCount() > 0) {
            this.f91959n = true;
            r();
        }
    }

    @Override // android.view.View
    @SuppressLint({"Override"})
    public boolean onTouchEvent(MotionEvent ev) {
        Drawable current;
        int i10;
        int i11 = 0;
        if (!isEnabled()) {
            return isClickable() || isLongClickable();
        }
        k kVar = this.f91859m2;
        if (kVar != null) {
            kVar.g();
        }
        if (!this.f91843c3) {
            return false;
        }
        int action = ev.getAction();
        g0();
        this.f91856k2.addMovement(ev);
        int i12 = action & 255;
        if (i12 == 0) {
            if (this.f91852h2 != 6) {
                this.O2 = ev.getPointerId(0);
                int x10 = (int) ev.getX();
                int y10 = (int) ev.getY();
                int iW0 = w0(x10, y10);
                if (!this.f91959n) {
                    if (this.f91852h2 != 4 && iW0 >= 0 && getAdapter().isEnabled(iW0)) {
                        this.f91852h2 = 0;
                        if (this.f91877z2 == null) {
                            this.f91877z2 = new f();
                        }
                        postDelayed(this.f91877z2, ViewConfiguration.getTapTimeout());
                    } else if (this.f91852h2 == 4) {
                        V();
                        this.f91852h2 = 3;
                        this.f91855j2 = 0;
                        iW0 = Z(x10);
                        this.f91858l2.d();
                    }
                }
                if (iW0 >= 0) {
                    this.f91844d2 = getChildAt(iW0 - this.f91947b).getLeft();
                }
                this.f91849f2 = x10;
                this.f91851g2 = y10;
                this.f91842c2 = iW0;
                this.f91854i2 = Integer.MIN_VALUE;
            } else {
                this.f91858l2.c();
                k kVar2 = this.f91859m2;
                if (kVar2 != null) {
                    kVar2.g();
                }
                this.f91852h2 = 5;
                this.f91851g2 = (int) ev.getY();
                int x11 = (int) ev.getX();
                this.f91854i2 = x11;
                this.f91849f2 = x11;
                this.f91855j2 = 0;
                this.O2 = ev.getPointerId(0);
                this.V2 = 0;
            }
            if (t0(ev) && this.f91852h2 == 0) {
                removeCallbacks(this.f91877z2);
            }
        } else if (i12 == 1) {
            int i13 = this.f91852h2;
            if (i13 == 0 || i13 == 1 || i13 == 2) {
                int i14 = this.f91842c2;
                View childAt = getChildAt(i14 - this.f91947b);
                float x12 = ev.getX();
                boolean z10 = x12 > ((float) this.f91872v1.left) && x12 < ((float) (getWidth() - this.f91872v1.right));
                if (childAt != null && !childAt.hasFocusable() && z10) {
                    if (this.f91852h2 != 0) {
                        childAt.setPressed(false);
                    }
                    if (this.B2 == null) {
                        this.B2 = new j(this, null);
                    }
                    j jVar = this.B2;
                    jVar.f91911d = i14;
                    jVar.a();
                    this.f91871u2 = i14;
                    int i15 = this.f91852h2;
                    if (i15 == 0 || i15 == 1) {
                        Handler handler = getHandler();
                        if (handler != null) {
                            handler.removeCallbacks(this.f91852h2 == 0 ? this.f91877z2 : this.f91876y2);
                        }
                        this.S = 0;
                        if (this.f91959n || !this.U.isEnabled(i14)) {
                            this.f91852h2 = -1;
                            Y0();
                        } else {
                            this.f91852h2 = 1;
                            setSelectedPositionInt(this.f91842c2);
                            p0();
                            childAt.setPressed(true);
                            y0(this.f91842c2, childAt);
                            setPressed(true);
                            Drawable drawable = this.f91862p0;
                            if (drawable != null && (current = drawable.getCurrent()) != null && (current instanceof TransitionDrawable)) {
                                ((TransitionDrawable) current).resetTransition();
                            }
                            Runnable runnable = this.C2;
                            if (runnable != null) {
                                removeCallbacks(runnable);
                            }
                            a aVar = new a(childAt, jVar);
                            this.C2 = aVar;
                            postDelayed(aVar, ViewConfiguration.getPressedStateDuration());
                        }
                        return true;
                    }
                    if (!this.f91959n && this.U.isEnabled(i14)) {
                        jVar.run();
                    }
                }
                this.f91852h2 = -1;
                Y0();
            } else if (i13 == 3) {
                int childCount = getChildCount();
                if (childCount > 0) {
                    int left = getChildAt(0).getLeft();
                    int right = getChildAt(childCount - 1).getRight();
                    int i16 = this.f91872v1.left;
                    int width = getWidth() - this.f91872v1.right;
                    int i17 = this.f91947b;
                    if (i17 != 0 || left < i16 || i17 + childCount >= this.f91965t || right > getWidth() - width) {
                        VelocityTracker velocityTracker = this.f91856k2;
                        velocityTracker.computeCurrentVelocity(1000, this.L2);
                        int xVelocity = (int) (velocityTracker.getXVelocity(this.O2) * this.M2);
                        if (Math.abs(xVelocity) <= this.K2 || (((i10 = this.f91947b) == 0 && left == i16 - this.P2) || (i10 + childCount == this.f91965t && right == width + this.P2))) {
                            this.f91852h2 = -1;
                            C0(0);
                            g gVar = this.f91858l2;
                            if (gVar != null) {
                                gVar.c();
                            }
                            k kVar3 = this.f91859m2;
                            if (kVar3 != null) {
                                kVar3.g();
                            }
                        } else {
                            if (this.f91858l2 == null) {
                                this.f91858l2 = new g();
                            }
                            C0(2);
                            this.f91858l2.e(-xVelocity);
                        }
                    } else {
                        this.f91852h2 = -1;
                        C0(0);
                    }
                } else {
                    this.f91852h2 = -1;
                    C0(0);
                }
            } else if (i13 == 5) {
                if (this.f91858l2 == null) {
                    this.f91858l2 = new g();
                }
                VelocityTracker velocityTracker2 = this.f91856k2;
                velocityTracker2.computeCurrentVelocity(1000, this.L2);
                int xVelocity2 = (int) velocityTracker2.getXVelocity(this.O2);
                C0(2);
                if (Math.abs(xVelocity2) > this.K2) {
                    this.f91858l2.g(-xVelocity2);
                } else {
                    this.f91858l2.i();
                }
            }
            setPressed(false);
            EdgeEffectCompat edgeEffectCompat = this.R2;
            if (edgeEffectCompat != null) {
                edgeEffectCompat.onRelease();
                this.S2.onRelease();
            }
            invalidate();
            Handler handler2 = getHandler();
            if (handler2 != null) {
                handler2.removeCallbacks(this.f91876y2);
            }
            B0();
            this.O2 = -1;
        } else if (i12 == 2) {
            int iFindPointerIndex = ev.findPointerIndex(this.O2);
            if (iFindPointerIndex == -1) {
                this.O2 = ev.getPointerId(0);
            } else {
                i11 = iFindPointerIndex;
            }
            int x13 = (int) ev.getX(i11);
            if (this.f91959n) {
                p0();
            }
            int i18 = this.f91852h2;
            if (i18 == 0 || i18 == 1 || i18 == 2) {
                T0(x13);
            } else if (i18 == 3 || i18 == 5) {
                I0(x13);
            }
        } else if (i12 == 3) {
            int i19 = this.f91852h2;
            if (i19 == 5) {
                if (this.f91858l2 == null) {
                    this.f91858l2 = new g();
                }
                this.f91858l2.i();
            } else if (i19 != 6) {
                this.f91852h2 = -1;
                setPressed(false);
                View childAt2 = getChildAt(this.f91842c2 - this.f91947b);
                if (childAt2 != null) {
                    childAt2.setPressed(false);
                }
                R();
                Handler handler3 = getHandler();
                if (handler3 != null) {
                    handler3.removeCallbacks(this.f91876y2);
                }
                B0();
            }
            EdgeEffectCompat edgeEffectCompat2 = this.R2;
            if (edgeEffectCompat2 != null) {
                edgeEffectCompat2.onRelease();
                this.S2.onRelease();
            }
            this.O2 = -1;
        } else if (i12 == 5) {
            int actionIndex = ev.getActionIndex();
            int pointerId = ev.getPointerId(actionIndex);
            int x14 = (int) ev.getX(actionIndex);
            int y11 = (int) ev.getY(actionIndex);
            this.f91855j2 = 0;
            this.O2 = pointerId;
            this.f91849f2 = x14;
            this.f91851g2 = y11;
            int iW1 = w0(x14, y11);
            if (iW1 >= 0) {
                this.f91844d2 = getChildAt(iW1 - this.f91947b).getLeft();
                this.f91842c2 = iW1;
            }
            this.f91854i2 = x14;
        } else if (i12 == 6) {
            s0(ev);
            int i20 = this.f91849f2;
            int iW2 = w0(i20, this.f91851g2);
            if (iW2 >= 0) {
                this.f91844d2 = getChildAt(iW2 - this.f91947b).getLeft();
                this.f91842c2 = iW2;
            }
            this.f91854i2 = i20;
        }
        return true;
    }

    @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
    public void onTouchModeChanged(boolean isInTouchMode) {
        if (isInTouchMode) {
            d0();
            if (getWidth() > 0 && getChildCount() > 0) {
                p0();
            }
            Y0();
            return;
        }
        int i10 = this.f91852h2;
        if (i10 == 5 || i10 == 6) {
            g gVar = this.f91858l2;
            if (gVar != null) {
                gVar.c();
            }
            k kVar = this.f91859m2;
            if (kVar != null) {
                kVar.g();
            }
            if (getScrollX() != 0) {
                this.L.c(0);
                a0();
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        int i10 = !isInTouchMode() ? 1 : 0;
        if (z10) {
            int i11 = this.f91875x2;
            if (i10 != i11 && i11 != -1) {
                if (i10 == 1) {
                    F0();
                } else {
                    d0();
                    this.S = 0;
                    p0();
                }
            }
        } else {
            setChildrenDrawingCacheEnabled(false);
            g gVar = this.f91858l2;
            if (gVar != null) {
                removeCallbacks(gVar);
                this.f91858l2.c();
                k kVar = this.f91859m2;
                if (kVar != null) {
                    kVar.g();
                }
                if (getScrollX() != 0) {
                    this.L.c(0);
                    a0();
                    invalidate();
                }
            }
            if (i10 == 1) {
                this.f91871u2 = this.f91962q;
            }
        }
        this.f91875x2 = i10;
    }

    protected void p0() {
    }

    @Override // android.view.View
    @TargetApi(16)
    public boolean performAccessibilityAction(int action, Bundle arguments) {
        if (super.performAccessibilityAction(action, arguments)) {
            return true;
        }
        if (action == 4096) {
            if (!isEnabled() || getLastVisiblePosition() >= getCount() - 1) {
                return false;
            }
            int width = getWidth();
            Rect rect = this.f91872v1;
            M0((width - rect.left) - rect.right, 200);
            return true;
        }
        if (action != 8192 || !isEnabled() || this.f91947b <= 0) {
            return false;
        }
        int width2 = getWidth();
        Rect rect2 = this.f91872v1;
        M0(-((width2 - rect2.left) - rect2.right), 200);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00d4  */
    @Override // it.sephiroth.android.library.widget.AdapterView
    public boolean q(View view, int position, long id2) {
        boolean z10;
        int i10 = this.M;
        boolean z11 = false;
        boolean z12 = true;
        if (i10 != 0) {
            if (i10 == 2 || (i10 == 3 && this.N != null)) {
                boolean z13 = !this.Q.get(position, Boolean.FALSE).booleanValue();
                this.Q.put(position, Boolean.valueOf(z13));
                if (this.R != null && this.U.hasStableIds()) {
                    if (z13) {
                        this.R.put(this.U.getItemId(position), Integer.valueOf(position));
                    } else {
                        this.R.delete(this.U.getItemId(position));
                    }
                }
                if (z13) {
                    this.P++;
                } else {
                    this.P--;
                }
                Object obj = this.N;
                if (obj != null) {
                    ((qb.b) this.O).a((ActionMode) obj, position, id2, z13);
                } else {
                    z11 = true;
                }
                z10 = z11;
            } else {
                if (i10 == 1) {
                    if (!this.Q.get(position, Boolean.FALSE).booleanValue()) {
                        this.Q.clear();
                        this.Q.put(position, Boolean.TRUE);
                        if (this.R != null && this.U.hasStableIds()) {
                            this.R.clear();
                            this.R.put(this.U.getItemId(position), Integer.valueOf(position));
                        }
                        this.P = 1;
                    } else if (this.Q.size() == 0 || !this.Q.valueAt(0).booleanValue()) {
                        this.P = 0;
                    }
                    z10 = true;
                } else {
                    z10 = true;
                }
                if (z11) {
                    W0();
                }
                z12 = z10;
                z11 = true;
            }
            z11 = true;
            if (z11) {
                W0();
            }
            z12 = z10;
            z11 = true;
        }
        return z12 ? z11 | super.q(view, position, id2) : z11;
    }

    @SuppressLint({"NewApi"})
    protected View q0(int position, boolean[] isScrap) {
        View view;
        LayoutParams layoutParams;
        isScrap[0] = false;
        View viewI = this.f91853i1.i(position);
        if (viewI != null) {
            return viewI;
        }
        View viewH = this.f91853i1.h(position);
        if (viewH != null) {
            view = this.U.getView(position, viewH, this);
            if (view != null && view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (view != viewH) {
                this.f91853i1.c(viewH, position);
                int i10 = this.E2;
                if (i10 != 0) {
                    view.setDrawingCacheBackgroundColor(i10);
                }
            } else {
                isScrap[0] = true;
                view.onFinishTemporaryDetach();
            }
        } else {
            view = this.U.getView(position, null, this);
            if (view != null && view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            int i11 = this.E2;
            if (i11 != 0) {
                view.setDrawingCacheBackgroundColor(i11);
            }
        }
        if (this.V) {
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams = (LayoutParams) generateDefaultLayoutParams();
            } else {
                layoutParams = !checkLayoutParams(layoutParams2) ? (LayoutParams) generateLayoutParams(layoutParams2) : (LayoutParams) layoutParams2;
            }
            layoutParams.f91882e = this.U.getItemId(position);
            view.setLayoutParams(layoutParams);
        }
        if (this.f91967v.isEnabled() && this.Z2 == null) {
            this.Z2 = new h();
        }
        return view;
    }

    public void r0(int offset) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            getChildAt(i10).offsetLeftAndRight(offset);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        if (disallowIntercept) {
            B0();
        }
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.B || this.f91955j) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int eventType) {
        if (eventType == 4096) {
            int firstVisiblePosition = getFirstVisiblePosition();
            int lastVisiblePosition = getLastVisiblePosition();
            if (this.f91838a3 == firstVisiblePosition && this.f91841b3 == lastVisiblePosition) {
                return;
            }
            this.f91838a3 = firstVisiblePosition;
            this.f91841b3 = lastVisiblePosition;
        }
        super.sendAccessibilityEvent(eventType);
    }

    public void setCacheColorHint(int color) {
        if (color != this.E2) {
            this.E2 = color;
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                getChildAt(i10).setDrawingCacheBackgroundColor(color);
            }
            this.f91853i1.o(color);
        }
    }

    @TargetApi(11)
    public void setChoiceMode(int choiceMode) {
        ListAdapter listAdapter;
        this.M = choiceMode;
        Object obj = this.N;
        if (obj != null) {
            ((ActionMode) obj).finish();
            this.N = null;
        }
        if (this.M != 0) {
            if (this.Q == null) {
                this.Q = new SparseArrayCompat<>();
            }
            if (this.R == null && (listAdapter = this.U) != null && listAdapter.hasStableIds()) {
                this.R = new LongSparseArray<>();
            }
            if (this.M == 3) {
                Q();
                setLongClickable(true);
            }
        }
    }

    public void setDrawSelectorOnTop(boolean onTop) {
        this.W = onTop;
    }

    public void setFriction(float friction) {
        if (this.f91858l2 == null) {
            this.f91858l2 = new g();
        }
        this.f91858l2.f91902b.v(friction);
    }

    public void setItemChecked(int position, boolean value) {
        int i10 = this.M;
        if (i10 == 0) {
            return;
        }
        if (value && i10 == 3 && this.N == null) {
            Object obj = this.O;
            if (obj == null || !((qb.b) obj).b()) {
                throw new IllegalStateException("AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback.");
            }
            this.N = startActionMode((qb.b) this.O);
        }
        int i11 = this.M;
        if (i11 == 2 || i11 == 3) {
            boolean zBooleanValue = this.Q.get(position, Boolean.FALSE).booleanValue();
            this.Q.put(position, Boolean.valueOf(value));
            if (this.R != null && this.U.hasStableIds()) {
                if (value) {
                    this.R.put(this.U.getItemId(position), Integer.valueOf(position));
                } else {
                    this.R.delete(this.U.getItemId(position));
                }
            }
            if (zBooleanValue != value) {
                if (value) {
                    this.P++;
                } else {
                    this.P--;
                }
            }
            if (this.N != null) {
                ((qb.b) this.O).a((ActionMode) this.N, position, this.U.getItemId(position), value);
            }
        } else {
            boolean z10 = this.R != null && this.U.hasStableIds();
            if (value || k0(position)) {
                this.Q.clear();
                if (z10) {
                    this.R.clear();
                }
            }
            if (value) {
                this.Q.put(position, Boolean.TRUE);
                if (z10) {
                    this.R.put(this.U.getItemId(position), Integer.valueOf(position));
                }
                this.P = 1;
            } else if (this.Q.size() == 0 || !this.Q.valueAt(0).booleanValue()) {
                this.P = 0;
            }
        }
        if (this.f91955j || this.B) {
            return;
        }
        this.f91959n = true;
        r();
        requestLayout();
    }

    @TargetApi(11)
    public void setMultiChoiceModeListener(qb.a listener) {
        if (this.O == null) {
            this.O = new qb.b(this);
        }
        ((qb.b) this.O).c(listener);
    }

    public void setOnScrollListener(i l10) {
        this.f91868r2 = l10;
        j0();
    }

    public void setOverScrollEffectPadding(int topPadding, int bottomPadding) {
        this.X2 = topPadding;
        this.Y2 = bottomPadding;
    }

    @Override // android.view.View
    public void setOverScrollMode(int mode) {
        if (mode == 2) {
            this.R2 = null;
            this.S2 = null;
        } else if (this.R2 == null) {
            Context context = getContext();
            this.R2 = new EdgeEffectCompat(context);
            this.S2 = new EdgeEffectCompat(context);
        }
        super.setOverScrollMode(mode);
    }

    public void setRecyclerListener(m listener) {
        this.f91853i1.f91936a = listener;
    }

    public void setScrollIndicators(View left, View right) {
        this.R1 = left;
        this.V1 = right;
    }

    public void setScrollingCacheEnabled(boolean enabled) {
        if (this.f91864p2 && !enabled) {
            R();
        }
        this.f91864p2 = enabled;
    }

    public abstract void setSelectionInt(int position);

    public void setSelector(int resID) {
        setSelector(getResources().getDrawable(resID));
    }

    public void setSmoothScrollbarEnabled(boolean enabled) {
        this.f91869s2 = enabled;
    }

    public void setStackFromRight(boolean stackFromRight) {
        if (this.f91861o2 != stackFromRight) {
            this.f91861o2 = stackFromRight;
            D0();
        }
    }

    public void setTranscriptMode(int mode) {
        this.D2 = mode;
    }

    public void setVelocityScale(float scale) {
        this.M2 = scale;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View originalView) {
        int iK = k(originalView);
        if (iK < 0) {
            return false;
        }
        long itemId = this.U.getItemId(iK);
        AdapterView.e eVar = this.f91958m;
        boolean zA = eVar != null ? eVar.a(this, originalView, iK, itemId) : false;
        if (zA) {
            return zA;
        }
        this.f91873v2 = U(getChildAt(iK - this.f91947b), iK, itemId);
        return super.showContextMenuForChild(originalView);
    }

    @TargetApi(14)
    protected boolean t0(MotionEvent event) {
        return (event.getButtonState() & 2) != 0 && L0(event.getX(), event.getY(), event.getMetaState());
    }

    boolean u0(final View child, final int longPressPosition, final long longPressId) {
        if (this.M == 3) {
            if (this.N == null) {
                ActionMode actionModeStartActionMode = startActionMode((qb.b) this.O);
                this.N = actionModeStartActionMode;
                if (actionModeStartActionMode != null) {
                    setItemChecked(longPressPosition, true);
                    performHapticFeedback(0);
                }
            }
            return true;
        }
        AdapterView.e eVar = this.f91958m;
        boolean zA = eVar != null ? eVar.a(this, child, longPressPosition, longPressId) : false;
        if (!zA) {
            this.f91873v2 = U(child, longPressPosition, longPressId);
            zA = super.showContextMenuForChild(this);
        }
        if (zA) {
            performHapticFeedback(0);
        }
        return zA;
    }

    public long v0(int x10, int y10) {
        int iW0 = w0(x10, y10);
        if (iW0 >= 0) {
            return this.U.getItemId(iW0);
        }
        return Long.MIN_VALUE;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable dr) {
        return this.f91862p0 == dr || super.verifyDrawable(dr);
    }

    public int w0(int x10, int y10) {
        Rect rect = this.f91870t2;
        if (rect == null) {
            rect = new Rect();
            this.f91870t2 = rect;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(x10, y10)) {
                    return this.f91947b + childCount;
                }
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void y0(int position, View sel) {
        if (position != -1) {
            this.f91839b1 = position;
        }
        Rect rect = this.f91848f1;
        rect.set(sel.getLeft(), sel.getTop(), sel.getRight(), sel.getBottom());
        if (sel instanceof n) {
            ((n) sel).adjustListItemSelectionBounds(rect);
        }
        x0(rect.left, rect.top, rect.right, rect.bottom);
        boolean z10 = this.F2;
        if (sel.isEnabled() != z10) {
            this.F2 = !z10;
            if (getSelectedItemPosition() != -1) {
                refreshDrawableState();
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void z0(List<View> views) {
        int childCount = getChildCount();
        m mVar = this.f91853i1.f91936a;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams != null && this.f91853i1.q(layoutParams.f91878a)) {
                views.add(childAt);
                childAt.setAccessibilityDelegate(null);
                if (mVar != null) {
                    mVar.a(childAt);
                }
            }
        }
        this.f91853i1.l(views);
        removeAllViewsInLayout();
    }

    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f91878a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f91879b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f91880c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f91881d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f91882e;

        public LayoutParams(Context c10, AttributeSet attrs) {
            super(c10, attrs);
            this.f91882e = -1L;
        }

        public LayoutParams(int w10, int h10) {
            super(w10, h10);
            this.f91882e = -1L;
        }

        public LayoutParams(int w10, int h10, int viewType) {
            super(w10, h10);
            this.f91882e = -1L;
            this.f91878a = viewType;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.f91882e = -1L;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p10) {
        return new LayoutParams(p10);
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    public void setAdapter(ListAdapter adapter) {
        if (adapter != null) {
            boolean zHasStableIds = this.U.hasStableIds();
            this.V = zHasStableIds;
            if (this.M != 0 && zHasStableIds && this.R == null) {
                this.R = new LongSparseArray<>();
            }
        }
        SparseArrayCompat<Boolean> sparseArrayCompat = this.Q;
        if (sparseArrayCompat != null) {
            sparseArrayCompat.clear();
        }
        LongSparseArray<Integer> longSparseArray = this.R;
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public void setSelector(Drawable sel) {
        Drawable drawable = this.f91862p0;
        if (drawable != null) {
            drawable.setCallback(null);
            unscheduleDrawable(this.f91862p0);
        }
        this.f91862p0 = sel;
        Rect rect = new Rect();
        sel.getPadding(rect);
        this.f91857l1 = rect.left;
        this.f91863p1 = rect.top;
        this.f91865q1 = rect.right;
        this.f91867r1 = rect.bottom;
        sel.setCallback(this);
        Y0();
    }

    public AbsHListView(Context context, AttributeSet attrs) {
        this(context, attrs, com.join.android.app.mgsim.wufun.R.attr.hlv_absHListViewStyle);
    }

    public AbsHListView(Context context, AttributeSet attrs, int defStyle) {
        int i10;
        boolean z10;
        boolean z11;
        int i11;
        int color;
        super(context, attrs, defStyle);
        boolean z12 = false;
        this.M = 0;
        this.S = 0;
        this.W = false;
        this.f91839b1 = -1;
        this.f91848f1 = new Rect();
        this.f91853i1 = new l();
        this.f91857l1 = 0;
        this.f91863p1 = 0;
        this.f91865q1 = 0;
        this.f91867r1 = 0;
        this.f91872v1 = new Rect();
        this.L1 = 0;
        this.f91852h2 = -1;
        this.f91860n2 = 0;
        boolean z13 = true;
        this.f91869s2 = true;
        this.f91871u2 = -1;
        Drawable drawable = null;
        this.f91873v2 = null;
        this.f91875x2 = -1;
        this.G2 = 0;
        this.M2 = 1.0f;
        this.N2 = new boolean[1];
        this.O2 = -1;
        this.V2 = 0;
        e0();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, com.join.android.app.mgsim.wufun.R.styleable.AbsHListView, defStyle, 0);
        if (typedArrayObtainStyledAttributes != null) {
            drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            boolean z14 = typedArrayObtainStyledAttributes.getBoolean(1, false);
            z11 = typedArrayObtainStyledAttributes.getBoolean(6, false);
            boolean z15 = typedArrayObtainStyledAttributes.getBoolean(2, true);
            i11 = typedArrayObtainStyledAttributes.getInt(7, 0);
            color = typedArrayObtainStyledAttributes.getColor(3, 0);
            boolean z16 = typedArrayObtainStyledAttributes.getBoolean(5, true);
            int i12 = typedArrayObtainStyledAttributes.getInt(4, 0);
            typedArrayObtainStyledAttributes.recycle();
            i10 = i12;
            z12 = z14;
            z10 = z16;
            z13 = z15;
        } else {
            i10 = 0;
            z10 = true;
            z11 = false;
            i11 = 0;
            color = 0;
        }
        if (drawable != null) {
            setSelector(drawable);
        }
        this.W = z12;
        setStackFromRight(z11);
        setScrollingCacheEnabled(z13);
        setTranscriptMode(i11);
        setCacheColorHint(color);
        setSmoothScrollbarEnabled(z10);
        setChoiceMode(i10);
    }
}
