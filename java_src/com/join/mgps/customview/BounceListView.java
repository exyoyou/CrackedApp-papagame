package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class BounceListView extends ListView implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f64358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f64359c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f64360d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f64361e;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view = BounceListView.this.f64358b;
            view.setPadding(view.getPaddingLeft(), ((Integer) valueAnimator.getAnimatedValue()).intValue(), BounceListView.this.f64358b.getPaddingRight(), BounceListView.this.f64358b.getPaddingBottom());
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view = BounceListView.this.f64359c;
            view.setPadding(view.getPaddingLeft(), BounceListView.this.f64359c.getPaddingTop(), BounceListView.this.f64359c.getPaddingRight(), ((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public BounceListView(Context context) {
        super(context);
        d(context);
    }

    private void d(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.header_footer_bounce_listview, (ViewGroup) this, false);
        this.f64358b = viewInflate;
        addHeaderView(viewInflate);
        View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.header_footer_bounce_listview, (ViewGroup) this, false);
        this.f64359c = viewInflate2;
        addFooterView(viewInflate2);
        super.setOnScrollListener(this);
    }

    protected void b(MotionEvent ev) {
        int historySize = ev.getHistorySize();
        for (int i10 = 0; i10 < historySize; i10++) {
            int historicalY = (this.f64361e - ((int) ev.getHistoricalY(i10))) / 2;
            View view = this.f64359c;
            view.setPadding(view.getPaddingLeft(), this.f64359c.getPaddingTop(), this.f64359c.getPaddingRight(), historicalY);
        }
    }

    protected void c(MotionEvent ev) {
        int historySize = ev.getHistorySize();
        for (int i10 = 0; i10 < historySize; i10++) {
            int historicalY = (((int) ev.getHistoricalY(i10)) - this.f64361e) / 2;
            View view = this.f64358b;
            view.setPadding(view.getPaddingLeft(), historicalY, this.f64358b.getPaddingRight(), this.f64358b.getPaddingBottom());
        }
    }

    protected void e() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.f64359c.getPaddingBottom(), 0);
        valueAnimatorOfInt.addUpdateListener(new b());
        valueAnimatorOfInt.setDuration(200L);
        valueAnimatorOfInt.start();
    }

    protected void f() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.f64358b.getPaddingTop(), 0);
        valueAnimatorOfInt.addUpdateListener(new a());
        valueAnimatorOfInt.setDuration(200L);
        valueAnimatorOfInt.start();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        if (this.f64360d == 1) {
            if (firstVisibleItem == 0) {
                this.f64358b.setVisibility(0);
            } else {
                this.f64358b.setVisibility(8);
                f();
            }
            if (getLastVisiblePosition() == totalItemCount - 1) {
                this.f64359c.setVisibility(0);
            } else {
                this.f64359c.setVisibility(8);
                e();
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.f64360d = scrollState;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent event) {
        int y10 = (int) event.getY();
        int action = event.getAction();
        if (action == 0) {
            this.f64361e = y10;
        } else if (action == 1) {
            if (getFirstVisiblePosition() == 0 && (this.f64358b.getBottom() < 0 || this.f64358b.getTop() <= 0)) {
                f();
            }
            ListAdapter adapter = getAdapter();
            if (adapter != null && getLastVisiblePosition() == adapter.getCount() - 1 && (this.f64359c.getTop() < getBottom() || this.f64359c.getBottom() <= getBottom())) {
                e();
            }
        } else if (action == 2) {
            c(event);
            b(event);
        }
        return super.onTouchEvent(event);
    }

    public BounceListView(Context context, AttributeSet attrs) {
        super(context, attrs);
        d(context);
    }

    public BounceListView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        d(context);
    }
}
