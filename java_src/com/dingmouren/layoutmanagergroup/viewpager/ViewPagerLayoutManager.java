package com.dingmouren.layoutmanagergroup.viewpager;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes9.dex */
public class ViewPagerLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f26166s = "ViewPagerLayoutManager";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private PagerSnapHelper f26167n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.dingmouren.layoutmanagergroup.viewpager.a f26168o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private RecyclerView f26169p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f26170q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private RecyclerView.OnChildAttachStateChangeListener f26171r;

    class a implements RecyclerView.OnChildAttachStateChangeListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(View view) {
            if (ViewPagerLayoutManager.this.f26168o == null || ViewPagerLayoutManager.this.getChildCount() != 1) {
                return;
            }
            ViewPagerLayoutManager.this.f26168o.b();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(View view) {
            if (ViewPagerLayoutManager.this.f26170q >= 0) {
                if (ViewPagerLayoutManager.this.f26168o != null) {
                    ViewPagerLayoutManager.this.f26168o.a(true, ViewPagerLayoutManager.this.getPosition(view));
                }
            } else if (ViewPagerLayoutManager.this.f26168o != null) {
                ViewPagerLayoutManager.this.f26168o.a(false, ViewPagerLayoutManager.this.getPosition(view));
            }
        }
    }

    public ViewPagerLayoutManager(Context context, int i10) {
        super(context, i10, false);
        this.f26171r = new a();
        e();
    }

    private void e() {
        this.f26167n = new PagerSnapHelper();
    }

    public void f(com.dingmouren.layoutmanagergroup.viewpager.a aVar) {
        this.f26168o = aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f26167n.attachToRecyclerView(recyclerView);
        this.f26169p = recyclerView;
        recyclerView.addOnChildAttachStateChangeListener(this.f26171r);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        super.onLayoutChildren(recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i10) {
        if (i10 == 0) {
            int position = getPosition(this.f26167n.findSnapView(this));
            if (this.f26168o == null || getChildCount() != 1) {
                return;
            }
            this.f26168o.c(position, position == getItemCount() - 1);
            return;
        }
        if (i10 == 1) {
            getPosition(this.f26167n.findSnapView(this));
        } else {
            if (i10 != 2) {
                return;
            }
            getPosition(this.f26167n.findSnapView(this));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.f26170q = i10;
        return super.scrollHorizontallyBy(i10, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.f26170q = i10;
        return super.scrollVerticallyBy(i10, recycler, state);
    }

    public ViewPagerLayoutManager(Context context, int i10, boolean z10) {
        super(context, i10, z10);
        this.f26171r = new a();
        e();
    }
}
