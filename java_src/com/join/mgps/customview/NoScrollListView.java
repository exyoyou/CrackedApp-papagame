package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;

/* JADX INFO: loaded from: classes3.dex */
public class NoScrollListView extends ListView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f65394c;

    class a implements AbsListView.OnScrollListener {
        a() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int firstVisibleItem, int i10, int i11) {
            if (firstVisibleItem == 0) {
                View childAt = NoScrollListView.this.getChildAt(0);
                if (childAt == null || childAt.getTop() != 0) {
                    NoScrollListView.this.f65394c = false;
                } else {
                    NoScrollListView.this.f65394c = true;
                }
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }
    }

    public NoScrollListView(Context context) {
        super(context);
        this.f65393b = false;
    }

    private void b() {
        setOnScrollListener(new a());
    }

    public boolean c() {
        return this.f65393b;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public void setListViewHeightBasedOnChildren(ListView listView) {
        ListAdapter adapter = listView.getAdapter();
        if (adapter == null) {
            return;
        }
        int measuredHeight = 0;
        for (int i10 = 0; i10 < adapter.getCount(); i10++) {
            View view = adapter.getView(i10, null, listView);
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("height   ");
            sb2.append(view.getMeasuredHeight());
            sb2.append("  ");
            measuredHeight += view.getMeasuredHeight();
        }
        ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
        layoutParams.height = measuredHeight + (listView.getDividerHeight() * (adapter.getCount() - 1)) + (adapter.getCount() * 10);
        listView.setLayoutParams(layoutParams);
    }

    public void setmPullRequesting(boolean mPullRequesting) {
        this.f65393b = mPullRequesting;
    }

    public NoScrollListView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65393b = false;
        b();
    }

    public NoScrollListView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65393b = false;
        b();
    }
}
