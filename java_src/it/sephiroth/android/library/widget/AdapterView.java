package it.sephiroth.android.library.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Adapter;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdapterView<T extends Adapter> extends ViewGroup {
    public static final String C = "AdapterView";
    public static final boolean D = false;
    public static final int E = -1;
    public static final int F = -2;
    static final int G = 0;
    static final int H = 1;
    static final int I = 100;
    public static final int J = -1;
    public static final long K = Long.MIN_VALUE;
    private AdapterView<T>.g A;
    protected boolean B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewDebug.ExportedProperty(category = "scrolling")
    protected int f91947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f91948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f91949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected long f91950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected long f91951f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f91952g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f91953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f91954i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected boolean f91955j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    f f91956k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    d f91957l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    e f91958m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f91959n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewDebug.ExportedProperty(category = "list")
    protected int f91960o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected long f91961p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewDebug.ExportedProperty(category = "list")
    protected int f91962q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected long f91963r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f91964s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewDebug.ExportedProperty(category = "list")
    protected int f91965t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected int f91966u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    AccessibilityManager f91967v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected int f91968w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected long f91969x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f91970y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f91971z;

    public static class b implements ContextMenu.ContextMenuInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f91972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f91973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f91974c;

        public b(View targetView, int position, long id2) {
            this.f91972a = targetView;
            this.f91973b = position;
            this.f91974c = id2;
        }
    }

    class c extends DataSetObserver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Parcelable f91975a = null;

        c() {
        }

        public void a() {
            this.f91975a = null;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0034  */
        @Override // android.database.DataSetObserver
        public void onChanged() {
            Parcelable parcelable;
            AdapterView adapterView = AdapterView.this;
            adapterView.f91959n = true;
            adapterView.f91966u = adapterView.f91965t;
            adapterView.f91965t = adapterView.getAdapter().getCount();
            if (!AdapterView.this.getAdapter().hasStableIds() || (parcelable = this.f91975a) == null) {
                AdapterView.this.r();
            } else {
                AdapterView adapterView2 = AdapterView.this;
                if (adapterView2.f91966u != 0 || adapterView2.f91965t <= 0) {
                    AdapterView.this.r();
                } else {
                    adapterView2.onRestoreInstanceState(parcelable);
                    this.f91975a = null;
                }
            }
            AdapterView.this.e();
            AdapterView.this.requestLayout();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AdapterView adapterView = AdapterView.this;
            adapterView.f91959n = true;
            if (adapterView.getAdapter().hasStableIds()) {
                this.f91975a = AdapterView.this.onSaveInstanceState();
            }
            AdapterView adapterView2 = AdapterView.this;
            adapterView2.f91966u = adapterView2.f91965t;
            adapterView2.f91965t = 0;
            adapterView2.f91962q = -1;
            adapterView2.f91963r = Long.MIN_VALUE;
            adapterView2.f91960o = -1;
            adapterView2.f91961p = Long.MIN_VALUE;
            adapterView2.f91952g = false;
            adapterView2.e();
            AdapterView.this.requestLayout();
        }
    }

    public interface d {
        void a(AdapterView<?> parent, View view, int position, long id2);
    }

    public interface e {
        boolean a(AdapterView<?> parent, View view, int position, long id2);
    }

    public interface f {
        void a(AdapterView<?> parent, View view, int position, long id2);

        void b(AdapterView<?> parent);
    }

    private class g implements Runnable {
        private g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdapterView adapterView = AdapterView.this;
            if (!adapterView.f91959n) {
                adapterView.h();
                AdapterView.this.p();
            } else if (adapterView.getAdapter() != null) {
                AdapterView.this.post(this);
            }
        }
    }

    public AdapterView(Context context) {
        super(context);
        this.f91947b = 0;
        this.f91950e = Long.MIN_VALUE;
        this.f91952g = false;
        this.f91955j = false;
        this.f91960o = -1;
        this.f91961p = Long.MIN_VALUE;
        this.f91962q = -1;
        this.f91963r = Long.MIN_VALUE;
        this.f91968w = -1;
        this.f91969x = Long.MIN_VALUE;
        this.B = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f91956k == null) {
            return;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition < 0) {
            this.f91956k.b(this);
        } else {
            this.f91956k.a(this, getSelectedView(), selectedItemPosition, getAdapter().getItemId(selectedItemPosition));
        }
    }

    private boolean n() {
        int count;
        Adapter adapter = getAdapter();
        if (adapter == null || (count = adapter.getCount()) <= 0) {
            return false;
        }
        return getFirstVisiblePosition() > 0 || getLastVisiblePosition() < count - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f91967v.isEnabled() && getSelectedItemPosition() >= 0) {
            sendAccessibilityEvent(4);
        }
    }

    @SuppressLint({"WrongCall"})
    private void t(boolean empty) {
        if (m()) {
            empty = false;
        }
        if (!empty) {
            View view = this.f91964s;
            if (view != null) {
                view.setVisibility(8);
            }
            setVisibility(0);
            return;
        }
        View view2 = this.f91964s;
        if (view2 != null) {
            view2.setVisibility(0);
            setVisibility(8);
        } else {
            setVisibility(0);
        }
        if (this.f91959n) {
            onLayout(false, getLeft(), getTop(), getRight(), getBottom());
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View child) {
        throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    protected boolean canAnimate() {
        return super.canAnimate() && this.f91965t > 0;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        View selectedView = getSelectedView();
        return selectedView != null && selectedView.getVisibility() == 0 && selectedView.dispatchPopulateAccessibilityEvent(event);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        dispatchThawSelfOnly(container);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
        dispatchFreezeSelfOnly(container);
    }

    protected void e() {
        Adapter adapter = getAdapter();
        boolean z10 = !(adapter == null || adapter.getCount() == 0) || m();
        super.setFocusableInTouchMode(z10 && this.f91971z);
        super.setFocusable(z10 && this.f91970y);
        if (this.f91964s != null) {
            t(adapter == null || adapter.isEmpty());
        }
    }

    protected void f() {
        if (this.f91962q == this.f91968w && this.f91963r == this.f91969x) {
            return;
        }
        s();
        this.f91968w = this.f91962q;
        this.f91969x = this.f91963r;
    }

    int g() {
        int i10 = this.f91965t;
        if (i10 == 0) {
            return -1;
        }
        long j10 = this.f91950e;
        int i11 = this.f91949d;
        if (j10 == Long.MIN_VALUE) {
            return -1;
        }
        int i12 = i10 - 1;
        int iMin = Math.min(i12, Math.max(0, i11));
        long jUptimeMillis = SystemClock.uptimeMillis() + 100;
        Adapter adapter = getAdapter();
        if (adapter == null) {
            return -1;
        }
        int i13 = iMin;
        int i14 = i13;
        loop0: while (true) {
            boolean z10 = false;
            while (SystemClock.uptimeMillis() <= jUptimeMillis) {
                if (adapter.getItemId(iMin) != j10) {
                    boolean z11 = i13 == i12;
                    boolean z12 = i14 == 0;
                    if (z11 && z12) {
                        break loop0;
                    }
                    if (z12 || (z10 && !z11)) {
                        i13++;
                        iMin = i13;
                    } else if (z11 || (!z10 && !z12)) {
                        i14--;
                        iMin = i14;
                        z10 = true;
                    }
                } else {
                    return iMin;
                }
            }
            break loop0;
        }
        return -1;
    }

    public abstract T getAdapter();

    @ViewDebug.CapturedViewProperty
    public int getCount() {
        return this.f91965t;
    }

    public View getEmptyView() {
        return this.f91964s;
    }

    public int getFirstVisiblePosition() {
        return this.f91947b;
    }

    public int getLastVisiblePosition() {
        return (this.f91947b + getChildCount()) - 1;
    }

    public final d getOnItemClickListener() {
        return this.f91957l;
    }

    public final e getOnItemLongClickListener() {
        return this.f91958m;
    }

    public final f getOnItemSelectedListener() {
        return this.f91956k;
    }

    public Object getSelectedItem() {
        Adapter adapter = getAdapter();
        int selectedItemPosition = getSelectedItemPosition();
        if (adapter == null || adapter.getCount() <= 0 || selectedItemPosition < 0) {
            return null;
        }
        return adapter.getItem(selectedItemPosition);
    }

    @ViewDebug.CapturedViewProperty
    public long getSelectedItemId() {
        return this.f91961p;
    }

    @ViewDebug.CapturedViewProperty
    public int getSelectedItemPosition() {
        return this.f91960o;
    }

    public abstract View getSelectedView();

    public Object i(int position) {
        Adapter adapter = getAdapter();
        if (adapter == null || position < 0) {
            return null;
        }
        return adapter.getItem(position);
    }

    public long j(int position) {
        Adapter adapter = getAdapter();
        if (adapter == null || position < 0) {
            return Long.MIN_VALUE;
        }
        return adapter.getItemId(position);
    }

    public int k(View view) {
        while (true) {
            try {
                View view2 = (View) view.getParent();
                if (view2.equals(this)) {
                    break;
                }
                view = view2;
            } catch (ClassCastException unused) {
            }
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (getChildAt(i10).equals(view)) {
                return this.f91947b + i10;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001d  */
    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    void l() {
        boolean z10;
        boolean z11;
        int i10 = this.f91965t;
        if (i10 > 0) {
            z10 = true;
            if (this.f91952g) {
                this.f91952g = false;
                int iG = g();
                if (iG < 0 || o(iG, true) != iG) {
                    z11 = false;
                } else {
                    setNextSelectedPositionInt(iG);
                    z11 = true;
                }
            } else {
                z11 = false;
            }
            if (z11) {
                z10 = z11;
            } else {
                int selectedItemPosition = getSelectedItemPosition();
                if (selectedItemPosition >= i10) {
                    selectedItemPosition = i10 - 1;
                }
                if (selectedItemPosition < 0) {
                    selectedItemPosition = 0;
                }
                int iO = o(selectedItemPosition, true);
                if (iO < 0) {
                    iO = o(selectedItemPosition, false);
                }
                if (iO >= 0) {
                    setNextSelectedPositionInt(iO);
                    f();
                } else {
                    z10 = z11;
                }
            }
        } else {
            z10 = false;
        }
        if (z10) {
            return;
        }
        this.f91962q = -1;
        this.f91963r = Long.MIN_VALUE;
        this.f91960o = -1;
        this.f91961p = Long.MIN_VALUE;
        this.f91952g = false;
        f();
    }

    boolean m() {
        return false;
    }

    protected int o(int position, boolean lookDown) {
        return position;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.A);
    }

    @Override // android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(AdapterView.class.getName());
        event.setScrollable(n());
        View selectedView = getSelectedView();
        if (selectedView != null) {
            event.setEnabled(selectedView.isEnabled());
        }
        event.setCurrentItemIndex(getSelectedItemPosition());
        event.setFromIndex(getFirstVisiblePosition());
        event.setToIndex(getLastVisiblePosition());
        event.setItemCount(getCount());
    }

    @Override // android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(AdapterView.class.getName());
        info.setScrollable(n());
        View selectedView = getSelectedView();
        if (selectedView != null) {
            info.setEnabled(selectedView.isEnabled());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        this.f91954i = getWidth();
    }

    @Override // android.view.ViewGroup
    @TargetApi(14)
    public boolean onRequestSendAccessibilityEvent(View child, AccessibilityEvent event) {
        if (!super.onRequestSendAccessibilityEvent(child, event)) {
            return false;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        onInitializeAccessibilityEvent(accessibilityEventObtain);
        child.dispatchPopulateAccessibilityEvent(accessibilityEventObtain);
        event.appendRecord(accessibilityEventObtain);
        return true;
    }

    public boolean q(View view, int position, long id2) {
        if (this.f91957l == null) {
            return false;
        }
        playSoundEffect(0);
        if (view != null) {
            view.sendAccessibilityEvent(1);
        }
        this.f91957l.a(this, view, position, id2);
        return true;
    }

    public void r() {
        if (getChildCount() > 0) {
            this.f91952g = true;
            this.f91951f = this.f91954i;
            int i10 = this.f91962q;
            if (i10 >= 0) {
                View childAt = getChildAt(i10 - this.f91947b);
                this.f91950e = this.f91961p;
                this.f91949d = this.f91960o;
                if (childAt != null) {
                    this.f91948c = childAt.getLeft();
                }
                this.f91953h = 0;
                return;
            }
            View childAt2 = getChildAt(0);
            Adapter adapter = getAdapter();
            int i11 = this.f91947b;
            if (i11 < 0 || i11 >= adapter.getCount()) {
                this.f91950e = -1L;
            } else {
                this.f91950e = adapter.getItemId(this.f91947b);
            }
            this.f91949d = this.f91947b;
            if (childAt2 != null) {
                this.f91948c = childAt2.getLeft();
            }
            this.f91953h = 1;
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View child) {
        throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int index) {
        throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
    }

    void s() {
        if (this.f91956k != null || this.f91967v.isEnabled()) {
            if (!this.f91955j && !this.B) {
                h();
                p();
            } else {
                if (this.A == null) {
                    this.A = new g();
                }
                post(this.A);
            }
        }
    }

    public abstract void setAdapter(T adapter);

    @TargetApi(16)
    public void setEmptyView(View emptyView) {
        this.f91964s = emptyView;
        boolean z10 = true;
        if (emptyView != null && emptyView.getImportantForAccessibility() == 0) {
            emptyView.setImportantForAccessibility(1);
        }
        Adapter adapter = getAdapter();
        if (adapter != null && !adapter.isEmpty()) {
            z10 = false;
        }
        t(z10);
    }

    @Override // android.view.View
    public void setFocusable(boolean focusable) {
        Adapter adapter = getAdapter();
        boolean z10 = true;
        boolean z11 = adapter == null || adapter.getCount() == 0;
        this.f91970y = focusable;
        if (!focusable) {
            this.f91971z = false;
        }
        if (!focusable || (z11 && !m())) {
            z10 = false;
        }
        super.setFocusable(z10);
    }

    @Override // android.view.View
    public void setFocusableInTouchMode(boolean focusable) {
        Adapter adapter = getAdapter();
        boolean z10 = false;
        boolean z11 = adapter == null || adapter.getCount() == 0;
        this.f91971z = focusable;
        if (focusable) {
            this.f91970y = true;
        }
        if (focusable && (!z11 || m())) {
            z10 = true;
        }
        super.setFocusableInTouchMode(z10);
    }

    protected void setNextSelectedPositionInt(int position) {
        this.f91960o = position;
        long j10 = j(position);
        this.f91961p = j10;
        if (this.f91952g && this.f91953h == 0 && position >= 0) {
            this.f91949d = position;
            this.f91950e = j10;
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener l10) {
        throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
    }

    public void setOnItemClickListener(d listener) {
        this.f91957l = listener;
    }

    public void setOnItemLongClickListener(e listener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.f91958m = listener;
    }

    public void setOnItemSelectedListener(f listener) {
        this.f91956k = listener;
    }

    protected void setSelectedPositionInt(int position) {
        this.f91962q = position;
        this.f91963r = j(position);
    }

    public abstract void setSelection(int position);

    @Override // android.view.ViewGroup
    public void addView(View child, int index) {
        throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View child, ViewGroup.LayoutParams params) {
        throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
    }

    public AdapterView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f91947b = 0;
        this.f91950e = Long.MIN_VALUE;
        this.f91952g = false;
        this.f91955j = false;
        this.f91960o = -1;
        this.f91961p = Long.MIN_VALUE;
        this.f91962q = -1;
        this.f91963r = Long.MIN_VALUE;
        this.f91968w = -1;
        this.f91969x = Long.MIN_VALUE;
        this.B = false;
    }

    @TargetApi(16)
    public AdapterView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f91947b = 0;
        this.f91950e = Long.MIN_VALUE;
        this.f91952g = false;
        this.f91955j = false;
        this.f91960o = -1;
        this.f91961p = Long.MIN_VALUE;
        this.f91962q = -1;
        this.f91963r = Long.MIN_VALUE;
        this.f91968w = -1;
        this.f91969x = Long.MIN_VALUE;
        this.B = false;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        if (isInEditMode()) {
            return;
        }
        this.f91967v = (AccessibilityManager) getContext().getSystemService("accessibility");
    }
}
