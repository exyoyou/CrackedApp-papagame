package com.join.mgps.customview;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.Adapter;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AdapterView<T extends Adapter> extends ViewGroup {
    public static final int B = -1;
    public static final int C = -2;
    static final int D = 0;
    static final int E = 1;
    static final int F = 100;
    public static final int G = -1;
    public static final long H = Long.MIN_VALUE;
    boolean A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewDebug.ExportedProperty
    int f64283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f64284c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f64285d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f64286e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f64287f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f64288g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f64289h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64290i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f64291j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    f f64292k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    d f64293l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    e f64294m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    boolean f64295n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewDebug.ExportedProperty
    int f64296o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    long f64297p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewDebug.ExportedProperty
    int f64298q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    long f64299r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    View f64300s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewDebug.ExportedProperty
    int f64301t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f64302u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f64303v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    long f64304w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f64305x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f64306y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private AdapterView<T>.g f64307z;

    public static class b implements ContextMenu.ContextMenuInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f64308a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64309b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f64310c;

        public b(final View targetView, final int position, final long id2) {
            this.f64308a = targetView;
            this.f64309b = position;
            this.f64310c = id2;
        }
    }

    class c extends DataSetObserver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Parcelable f64311a = null;

        c() {
        }

        public void a() {
            this.f64311a = null;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0034  */
        @Override // android.database.DataSetObserver
        public void onChanged() {
            Parcelable parcelable;
            AdapterView adapterView = AdapterView.this;
            adapterView.f64295n = true;
            adapterView.f64302u = adapterView.f64301t;
            adapterView.f64301t = adapterView.getAdapter().getCount();
            if (!AdapterView.this.getAdapter().hasStableIds() || (parcelable = this.f64311a) == null) {
                AdapterView.this.o();
            } else {
                AdapterView adapterView2 = AdapterView.this;
                if (adapterView2.f64302u != 0 || adapterView2.f64301t <= 0) {
                    AdapterView.this.o();
                } else {
                    adapterView2.onRestoreInstanceState(parcelable);
                    this.f64311a = null;
                }
            }
            AdapterView.this.d();
            AdapterView.this.requestLayout();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AdapterView adapterView = AdapterView.this;
            adapterView.f64295n = true;
            if (adapterView.getAdapter().hasStableIds()) {
                this.f64311a = AdapterView.this.onSaveInstanceState();
            }
            AdapterView adapterView2 = AdapterView.this;
            adapterView2.f64302u = adapterView2.f64301t;
            adapterView2.f64301t = 0;
            adapterView2.f64298q = -1;
            adapterView2.f64299r = Long.MIN_VALUE;
            adapterView2.f64296o = -1;
            adapterView2.f64297p = Long.MIN_VALUE;
            adapterView2.f64288g = false;
            adapterView2.e();
            AdapterView.this.d();
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
        void a(AdapterView<?> parent);

        void b(AdapterView<?> parent, View view, int position, long id2);
    }

    private class g extends Handler implements Runnable {
        private g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdapterView adapterView = AdapterView.this;
            if (adapterView.f64295n) {
                post(this);
            } else {
                adapterView.g();
            }
        }
    }

    public AdapterView(final Context context) {
        super(context);
        this.f64283b = 0;
        this.f64286e = Long.MIN_VALUE;
        this.f64288g = false;
        this.f64291j = false;
        this.f64296o = -1;
        this.f64297p = Long.MIN_VALUE;
        this.f64298q = -1;
        this.f64299r = Long.MIN_VALUE;
        this.f64303v = -1;
        this.f64304w = Long.MIN_VALUE;
        this.A = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f64292k == null) {
            return;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition < 0) {
            this.f64292k.a(this);
        } else {
            this.f64292k.b(this, getSelectedView(), selectedItemPosition, getAdapter().getItemId(selectedItemPosition));
        }
    }

    private void q(boolean empty) {
        if (l()) {
            empty = false;
        }
        if (!empty) {
            View view = this.f64300s;
            if (view != null) {
                view.setVisibility(8);
            }
            setVisibility(0);
            return;
        }
        View view2 = this.f64300s;
        if (view2 != null) {
            view2.setVisibility(0);
            setVisibility(8);
        } else {
            setVisibility(0);
        }
        if (this.f64295n) {
            layout(getLeft(), getTop(), getRight(), getBottom());
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(final View child) {
        throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    protected final boolean canAnimate() {
        return super.canAnimate() && this.f64301t > 0;
    }

    void d() {
        Adapter adapter = getAdapter();
        boolean z10 = !(adapter == null || adapter.getCount() == 0) || l();
        super.setFocusableInTouchMode(z10 && this.f64306y);
        super.setFocusable(z10 && this.f64305x);
        if (this.f64300s != null) {
            q(adapter == null || adapter.isEmpty());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchRestoreInstanceState(final SparseArray<Parcelable> container) {
        dispatchThawSelfOnly(container);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchSaveInstanceState(final SparseArray<Parcelable> container) {
        dispatchFreezeSelfOnly(container);
    }

    void e() {
        if (this.f64298q == this.f64303v && this.f64299r == this.f64304w) {
            return;
        }
        p();
        this.f64303v = this.f64298q;
        this.f64304w = this.f64299r;
    }

    final int f() {
        int i10 = this.f64301t;
        if (i10 == 0) {
            return -1;
        }
        long j10 = this.f64286e;
        int i11 = this.f64285d;
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

    public int getCount() {
        return this.f64301t;
    }

    public final View getEmptyView() {
        return this.f64300s;
    }

    public final int getFirstVisiblePosition() {
        return this.f64283b;
    }

    public final int getLastVisiblePosition() {
        return (this.f64283b + getChildCount()) - 1;
    }

    public final d getOnItemClickListener() {
        return this.f64293l;
    }

    public final e getOnItemLongClickListener() {
        return this.f64294m;
    }

    public final f getOnItemSelectedListener() {
        return this.f64292k;
    }

    public final Object getSelectedItem() {
        Adapter adapter = getAdapter();
        int selectedItemPosition = getSelectedItemPosition();
        if (adapter == null || adapter.getCount() <= 0 || selectedItemPosition < 0) {
            return null;
        }
        return adapter.getItem(selectedItemPosition);
    }

    public final long getSelectedItemId() {
        return this.f64297p;
    }

    public final int getSelectedItemPosition() {
        return this.f64296o;
    }

    public abstract View getSelectedView();

    public Object h(final int position) {
        Adapter adapter = getAdapter();
        if (adapter == null || position < 0) {
            return null;
        }
        return adapter.getItem(position);
    }

    public long i(final int position) {
        Adapter adapter = getAdapter();
        if (adapter == null || position < 0) {
            return Long.MIN_VALUE;
        }
        return adapter.getItemId(position);
    }

    public final int j(final View view) {
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
                return this.f64283b + i10;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001d  */
    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    void k() {
        boolean z10;
        boolean z11;
        int i10 = this.f64301t;
        if (i10 > 0) {
            z10 = true;
            if (this.f64288g) {
                this.f64288g = false;
                int iF = f();
                if (iF < 0 || m(iF, true) != iF) {
                    z11 = false;
                } else {
                    setNextSelectedPositionInt(iF);
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
                int iM = m(selectedItemPosition, true);
                if (iM < 0) {
                    iM = m(selectedItemPosition, false);
                }
                if (iM >= 0) {
                    setNextSelectedPositionInt(iM);
                    e();
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
        this.f64298q = -1;
        this.f64299r = Long.MIN_VALUE;
        this.f64296o = -1;
        this.f64297p = Long.MIN_VALUE;
        this.f64288g = false;
        e();
    }

    final boolean l() {
        return false;
    }

    final int m(final int position, final boolean lookDown) {
        return position;
    }

    public final boolean n(final View view, final int position, final long id2) {
        if (this.f64293l == null) {
            return false;
        }
        playSoundEffect(0);
        this.f64293l.a(this, view, position, id2);
        return true;
    }

    final void o() {
        if (getChildCount() > 0) {
            this.f64288g = true;
            this.f64287f = this.f64290i;
            int i10 = this.f64298q;
            if (i10 >= 0) {
                View childAt = getChildAt(i10 - this.f64283b);
                this.f64286e = this.f64297p;
                this.f64285d = this.f64296o;
                if (childAt != null) {
                    this.f64284c = childAt.getTop();
                }
                this.f64289h = 0;
                return;
            }
            View childAt2 = getChildAt(0);
            Adapter adapter = getAdapter();
            int i11 = this.f64283b;
            if (i11 < 0 || i11 >= adapter.getCount()) {
                this.f64286e = -1L;
            } else {
                this.f64286e = adapter.getItemId(this.f64283b);
            }
            this.f64285d = this.f64283b;
            if (childAt2 != null) {
                this.f64284c = childAt2.getTop();
            }
            this.f64289h = 1;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(final boolean changed, final int left, final int top, final int right, final int bottom) {
        this.f64290i = getHeight();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void p() {
        if (this.f64292k != null) {
            if (!this.f64291j && !this.A) {
                g();
                return;
            }
            if (this.f64307z == null) {
                this.f64307z = new g();
            }
            g gVar = (AdapterView<T>.g) this.f64307z;
            gVar.post(gVar);
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(final View child) {
        throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(final int index) {
        throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
    }

    public abstract void setAdapter(T adapter);

    public final void setEmptyView(final View emptyView) {
        this.f64300s = emptyView;
        Adapter adapter = getAdapter();
        q(adapter == null || adapter.isEmpty());
    }

    @Override // android.view.View
    public final void setFocusable(final boolean focusable) {
        Adapter adapter = getAdapter();
        boolean z10 = true;
        boolean z11 = adapter == null || adapter.getCount() == 0;
        this.f64305x = focusable;
        if (!focusable) {
            this.f64306y = false;
        }
        if (!focusable || (z11 && !l())) {
            z10 = false;
        }
        super.setFocusable(z10);
    }

    @Override // android.view.View
    public final void setFocusableInTouchMode(final boolean focusable) {
        Adapter adapter = getAdapter();
        boolean z10 = false;
        boolean z11 = adapter == null || adapter.getCount() == 0;
        this.f64306y = focusable;
        if (focusable) {
            this.f64305x = true;
        }
        if (focusable && (!z11 || l())) {
            z10 = true;
        }
        super.setFocusableInTouchMode(z10);
    }

    void setNextSelectedPositionInt(final int position) {
        this.f64296o = position;
        long jI = i(position);
        this.f64297p = jI;
        if (this.f64288g && this.f64289h == 0 && position >= 0) {
            this.f64285d = position;
            this.f64286e = jI;
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(final View.OnClickListener l10) {
        throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
    }

    public final void setOnItemClickListener(final d listener) {
        this.f64293l = listener;
    }

    public final void setOnItemLongClickListener(final e listener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.f64294m = listener;
    }

    public final void setOnItemSelectedListener(final f listener) {
        this.f64292k = listener;
    }

    void setSelectedPositionInt(final int position) {
        this.f64298q = position;
        this.f64299r = i(position);
    }

    public abstract void setSelection(int position);

    @Override // android.view.ViewGroup
    public final void addView(final View child, final int index) {
        throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(final View child, final ViewGroup.LayoutParams params) {
        throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public final void addView(final View child, final int index, final ViewGroup.LayoutParams params) {
        throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
    }

    public AdapterView(final Context context, final AttributeSet attrs) {
        super(context, attrs);
        this.f64283b = 0;
        this.f64286e = Long.MIN_VALUE;
        this.f64288g = false;
        this.f64291j = false;
        this.f64296o = -1;
        this.f64297p = Long.MIN_VALUE;
        this.f64298q = -1;
        this.f64299r = Long.MIN_VALUE;
        this.f64303v = -1;
        this.f64304w = Long.MIN_VALUE;
        this.A = false;
    }

    public AdapterView(final Context context, final AttributeSet attrs, final int defStyle) {
        super(context, attrs, defStyle);
        this.f64283b = 0;
        this.f64286e = Long.MIN_VALUE;
        this.f64288g = false;
        this.f64291j = false;
        this.f64296o = -1;
        this.f64297p = Long.MIN_VALUE;
        this.f64298q = -1;
        this.f64299r = Long.MIN_VALUE;
        this.f64303v = -1;
        this.f64304w = Long.MIN_VALUE;
        this.A = false;
    }
}
