package com.join.mgps.customview;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.Scroller;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes3.dex */
public class HorizontalListView extends android.widget.AdapterView<ListAdapter> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f65090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected ListAdapter f65091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65093e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f65094f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f65095g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65096h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65097i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected Scroller f65098j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private GestureDetector f65099k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Queue<View> f65100l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private android.widget.AdapterView.OnItemSelectedListener f65101m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private android.widget.AdapterView.OnItemClickListener f65102n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private android.widget.AdapterView.OnItemLongClickListener f65103o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f65104p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private DataSetObserver f65105q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private GestureDetector.OnGestureListener f65106r;

    class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            synchronized (HorizontalListView.this) {
                HorizontalListView.this.f65104p = true;
            }
            HorizontalListView.this.invalidate();
            HorizontalListView.this.requestLayout();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            HorizontalListView.this.p();
            HorizontalListView.this.invalidate();
            HorizontalListView.this.requestLayout();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HorizontalListView.this.requestLayout();
        }
    }

    class c extends GestureDetector.SimpleOnGestureListener {
        c() {
        }

        private boolean a(MotionEvent e10, View child) {
            Rect rect = new Rect();
            int[] iArr = new int[2];
            child.getLocationOnScreen(iArr);
            int i10 = iArr[0];
            int width = child.getWidth() + i10;
            int i11 = iArr[1];
            rect.set(i10, i11, width, child.getHeight() + i11);
            return rect.contains((int) e10.getRawX(), (int) e10.getRawY());
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent e10) {
            return HorizontalListView.this.l(e10);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
            return HorizontalListView.this.m(e10, e11, velocityX, velocityY);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent e10) {
            int childCount = HorizontalListView.this.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = HorizontalListView.this.getChildAt(i10);
                if (a(e10, childAt)) {
                    if (HorizontalListView.this.f65103o != null) {
                        android.widget.AdapterView.OnItemLongClickListener onItemLongClickListener = HorizontalListView.this.f65103o;
                        HorizontalListView horizontalListView = HorizontalListView.this;
                        int i11 = horizontalListView.f65092d + 1 + i10;
                        HorizontalListView horizontalListView2 = HorizontalListView.this;
                        onItemLongClickListener.onItemLongClick(horizontalListView, childAt, i11, horizontalListView2.f65091c.getItemId(horizontalListView2.f65092d + 1 + i10));
                        return;
                    }
                    return;
                }
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent e10, MotionEvent e11, float distanceX, float distanceY) {
            HorizontalListView horizontalListView;
            synchronized (HorizontalListView.this) {
                horizontalListView = HorizontalListView.this;
                horizontalListView.f65095g += (int) distanceX;
            }
            horizontalListView.requestLayout();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent e10) {
            for (int i10 = 0; i10 < HorizontalListView.this.getChildCount(); i10++) {
                View childAt = HorizontalListView.this.getChildAt(i10);
                if (a(e10, childAt)) {
                    if (HorizontalListView.this.f65102n != null) {
                        android.widget.AdapterView.OnItemClickListener onItemClickListener = HorizontalListView.this.f65102n;
                        HorizontalListView horizontalListView = HorizontalListView.this;
                        int i11 = horizontalListView.f65092d + 1 + i10;
                        HorizontalListView horizontalListView2 = HorizontalListView.this;
                        onItemClickListener.onItemClick(horizontalListView, childAt, i11, horizontalListView2.f65091c.getItemId(horizontalListView2.f65092d + 1 + i10));
                    }
                    if (HorizontalListView.this.f65101m == null) {
                        break;
                    }
                    android.widget.AdapterView.OnItemSelectedListener onItemSelectedListener = HorizontalListView.this.f65101m;
                    HorizontalListView horizontalListView3 = HorizontalListView.this;
                    int i12 = horizontalListView3.f65092d + 1 + i10;
                    HorizontalListView horizontalListView4 = HorizontalListView.this;
                    onItemSelectedListener.onItemSelected(horizontalListView3, childAt, i12, horizontalListView4.f65091c.getItemId(horizontalListView4.f65092d + 1 + i10));
                    break;
                }
            }
            return true;
        }
    }

    public HorizontalListView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65090b = true;
        this.f65092d = -1;
        this.f65093e = 0;
        this.f65096h = Integer.MAX_VALUE;
        this.f65097i = 0;
        this.f65100l = new LinkedList();
        this.f65104p = false;
        this.f65105q = new a();
        this.f65106r = new c();
        k();
    }

    private void g(final View child, int viewPos) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        }
        addViewInLayout(child, viewPos, layoutParams, true);
        child.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
    }

    private void h(final int dx) {
        View childAt = getChildAt(getChildCount() - 1);
        j(childAt != null ? childAt.getRight() : 0, dx);
        View childAt2 = getChildAt(0);
        i(childAt2 != null ? childAt2.getLeft() : 0, dx);
    }

    private void i(int leftEdge, final int dx) {
        int i10;
        while (leftEdge + dx > 0 && (i10 = this.f65092d) >= 0) {
            View view = this.f65091c.getView(i10, this.f65100l.poll(), this);
            g(view, 0);
            leftEdge -= view.getMeasuredWidth();
            this.f65092d--;
            this.f65097i -= view.getMeasuredWidth();
        }
    }

    private void j(int rightEdge, final int dx) {
        while (rightEdge + dx < getWidth() && this.f65093e < this.f65091c.getCount()) {
            View view = this.f65091c.getView(this.f65093e, this.f65100l.poll(), this);
            g(view, -1);
            rightEdge += view.getMeasuredWidth();
            if (this.f65093e == this.f65091c.getCount() - 1) {
                this.f65096h = (this.f65094f + rightEdge) - getWidth();
            }
            if (this.f65096h < 0) {
                this.f65096h = 0;
            }
            this.f65093e++;
        }
    }

    private synchronized void k() {
        this.f65092d = -1;
        this.f65093e = 0;
        this.f65097i = 0;
        this.f65094f = 0;
        this.f65095g = 0;
        this.f65096h = Integer.MAX_VALUE;
        this.f65098j = new Scroller(getContext());
        this.f65099k = new GestureDetector(getContext(), this.f65106r);
    }

    private void n(final int dx) {
        if (getChildCount() > 0) {
            int paddingRight = this.f65097i + dx;
            this.f65097i = paddingRight;
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                int measuredWidth = childAt.getMeasuredWidth();
                childAt.layout(paddingRight, 0, paddingRight + measuredWidth, childAt.getMeasuredHeight());
                paddingRight += measuredWidth + childAt.getPaddingRight();
            }
        }
    }

    private void o(final int dx) {
        View childAt = getChildAt(0);
        while (childAt != null && childAt.getRight() + dx <= 0) {
            this.f65097i += childAt.getMeasuredWidth();
            this.f65100l.offer(childAt);
            removeViewInLayout(childAt);
            this.f65092d++;
            childAt = getChildAt(0);
        }
        View childAt2 = getChildAt(getChildCount() - 1);
        while (childAt2 != null && childAt2.getLeft() + dx >= getWidth()) {
            this.f65100l.offer(childAt2);
            removeViewInLayout(childAt2);
            this.f65093e--;
            childAt2 = getChildAt(getChildCount() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        k();
        removeAllViewsInLayout();
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        return this.f65099k.onTouchEvent(ev) | super.dispatchTouchEvent(ev);
    }

    @Override // android.widget.AdapterView
    public View getSelectedView() {
        return null;
    }

    protected boolean l(MotionEvent e10) {
        this.f65098j.forceFinished(true);
        return true;
    }

    protected boolean m(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
        synchronized (this) {
            this.f65098j.fling(this.f65095g, 0, (int) (-velocityX), (int) (velocityY / 4.0f), 0, this.f65096h, 0, 0);
        }
        requestLayout();
        return true;
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected synchronized void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.f65091c == null) {
            return;
        }
        if (this.f65104p) {
            int i10 = this.f65094f;
            k();
            removeAllViewsInLayout();
            this.f65095g = i10;
            this.f65104p = false;
        }
        if (this.f65098j.computeScrollOffset()) {
            this.f65095g = this.f65098j.getCurrX();
        }
        if (this.f65095g <= 0) {
            this.f65095g = 0;
            this.f65098j.forceFinished(true);
        }
        int i11 = this.f65095g;
        int i12 = this.f65096h;
        if (i11 >= i12) {
            this.f65095g = i12;
            this.f65098j.forceFinished(true);
        }
        int i13 = this.f65094f - this.f65095g;
        o(i13);
        h(i13);
        n(i13);
        this.f65094f = this.f65095g;
        if (!this.f65098j.isFinished()) {
            post(new b());
        }
    }

    public synchronized void q(int x10) {
        Scroller scroller = this.f65098j;
        int i10 = this.f65095g;
        scroller.startScroll(i10, 0, x10 - (i10 * 2), 0);
        requestLayout();
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(android.widget.AdapterView.OnItemClickListener listener) {
        this.f65102n = listener;
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(android.widget.AdapterView.OnItemLongClickListener listener) {
        this.f65103o = listener;
    }

    @Override // android.widget.AdapterView
    public void setOnItemSelectedListener(android.widget.AdapterView.OnItemSelectedListener listener) {
        this.f65101m = listener;
    }

    @Override // android.widget.AdapterView
    public void setSelection(int position) {
    }

    @Override // android.widget.AdapterView
    public ListAdapter getAdapter() {
        return this.f65091c;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter adapter) {
        ListAdapter listAdapter = this.f65091c;
        if (listAdapter != null) {
            listAdapter.unregisterDataSetObserver(this.f65105q);
        }
        this.f65091c = adapter;
        adapter.registerDataSetObserver(this.f65105q);
        p();
    }
}
