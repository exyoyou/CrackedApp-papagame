package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import androidx.core.view.MotionEventCompat;
import com.join.mgps.enums.ScrollState;

/* JADX INFO: loaded from: classes3.dex */
public class ObservableListView extends ListView {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f65397u = "ObservableListView";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.join.mgps.callbacks.o f65398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65400d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65401e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SparseIntArray f65402f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65403g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65404h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ScrollState f65405i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f65406j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f65407k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f65408l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private AbsListView.OnScrollListener f65409m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private AbsListView.OnScrollListener f65410n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f65411o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f65412p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    float f65413q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    float f65414r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    boolean f65415s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f65416t;

    class a implements AbsListView.OnScrollListener {
        a() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            if (ObservableListView.this.f65409m != null) {
                ObservableListView.this.f65409m.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
            }
            ObservableListView.this.d();
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView view, int scrollState) {
            if (ObservableListView.this.f65409m != null) {
                ObservableListView.this.f65409m.onScrollStateChanged(view, scrollState);
            }
        }
    }

    public ObservableListView(Context context) {
        super(context);
        this.f65400d = -1;
        this.f65408l = false;
        this.f65410n = new a();
        this.f65411o = 0.0f;
        this.f65412p = 0.0f;
        this.f65415s = false;
        this.f65416t = 0;
        c();
    }

    private void c() {
        this.f65402f = new SparseIntArray();
        super.setOnScrollListener(this.f65410n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        int height;
        int height2;
        if (this.f65398b == null || getChildCount() <= 0) {
            return;
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        int firstVisiblePosition2 = getFirstVisiblePosition();
        int i10 = 0;
        while (firstVisiblePosition2 <= getLastVisiblePosition()) {
            if (this.f65402f.indexOfKey(firstVisiblePosition2) < 0 || getChildAt(i10).getHeight() != this.f65402f.get(firstVisiblePosition2)) {
                this.f65402f.put(firstVisiblePosition2, getChildAt(i10).getHeight());
            }
            firstVisiblePosition2++;
            i10++;
        }
        View childAt = getChildAt(0);
        if (childAt != null) {
            int i11 = this.f65399c;
            if (i11 < firstVisiblePosition) {
                if (firstVisiblePosition - i11 != 1) {
                    height2 = 0;
                    for (int i12 = firstVisiblePosition - 1; i12 > this.f65399c; i12--) {
                        height2 += this.f65402f.indexOfKey(i12) > 0 ? this.f65402f.get(i12) : childAt.getHeight();
                    }
                } else {
                    height2 = 0;
                }
                this.f65401e += this.f65400d + height2;
                this.f65400d = childAt.getHeight();
            } else if (firstVisiblePosition < i11) {
                if (i11 - firstVisiblePosition != 1) {
                    height = 0;
                    for (int i13 = i11 - 1; i13 > firstVisiblePosition; i13--) {
                        height += this.f65402f.indexOfKey(i13) > 0 ? this.f65402f.get(i13) : childAt.getHeight();
                    }
                } else {
                    height = 0;
                }
                this.f65401e -= childAt.getHeight() + height;
                this.f65400d = childAt.getHeight();
            } else if (firstVisiblePosition == 0) {
                this.f65400d = childAt.getHeight();
            }
            if (this.f65400d < 0) {
                this.f65400d = 0;
            }
            this.f65404h = this.f65401e - childAt.getTop();
            this.f65399c = firstVisiblePosition;
            if (childAt.getTop() == 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            this.f65398b.a(this.f65404h, this.f65406j, this.f65407k);
            if (this.f65406j) {
                this.f65406j = false;
            }
            int i14 = this.f65403g;
            int i15 = this.f65404h;
            if (i14 < i15) {
                this.f65405i = ScrollState.UP;
            } else if (i15 < i14) {
                this.f65405i = ScrollState.DOWN;
            } else {
                this.f65405i = ScrollState.STOP;
            }
            this.f65403g = i15;
        }
    }

    public int getCurrentScrollY() {
        return this.f65404h;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        float x10 = ev.getX();
        float y10 = ev.getY();
        if (MotionEventCompat.getActionMasked(ev) == 0) {
            this.f65407k = false;
            this.f65411o = x10;
            this.f65412p = y10;
        }
        if (this.f65408l) {
            return true;
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f65398b != null) {
            int actionMasked = ev.getActionMasked();
            if (actionMasked == 0) {
                this.f65415s = false;
                this.f65407k = true;
                this.f65406j = true;
                this.f65413q = ev.getX();
                this.f65414r = ev.getY();
                getParent().requestDisallowInterceptTouchEvent(true);
            } else if (actionMasked == 1) {
                getParent().requestDisallowInterceptTouchEvent(false);
            } else if (actionMasked == 2) {
                if (!this.f65415s) {
                    if (Math.abs(ev.getX() - this.f65413q) > Math.abs(ev.getY() - this.f65414r)) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                    } else {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    this.f65415s = true;
                }
                if (this.f65404h == 0) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
            } else if (actionMasked == 3) {
                this.f65407k = false;
                this.f65398b.c(this.f65405i);
            }
        }
        return super.onTouchEvent(ev);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener l10) {
        this.f65409m = l10;
    }

    public void setScrollViewCallbacks(com.join.mgps.callbacks.o listener) {
        this.f65398b = listener;
    }

    public ObservableListView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65400d = -1;
        this.f65408l = false;
        this.f65410n = new a();
        this.f65411o = 0.0f;
        this.f65412p = 0.0f;
        this.f65415s = false;
        this.f65416t = 0;
        c();
    }

    public ObservableListView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65400d = -1;
        this.f65408l = false;
        this.f65410n = new a();
        this.f65411o = 0.0f;
        this.f65412p = 0.0f;
        this.f65415s = false;
        this.f65416t = 0;
        c();
    }
}
