package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes3.dex */
public class MyScrollView extends ScrollView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f65343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f65344c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f65345d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65346e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private GestureDetector f65347f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    View.OnTouchListener f65348g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f65349h;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int scrollY = MyScrollView.this.getScrollY();
            if (MyScrollView.this.f65346e != scrollY) {
                MyScrollView.this.f65346e = scrollY;
                MyScrollView.this.f65349h.sendMessageDelayed(MyScrollView.this.f65349h.obtainMessage(), 20L);
            }
            if (MyScrollView.this.f65343b != null) {
                MyScrollView.this.f65343b.a(scrollY);
            }
        }
    }

    public interface b {
        void a(int scrollY);
    }

    public interface c {
        void a();
    }

    class d extends GestureDetector.SimpleOnGestureListener {
        d() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent e10, MotionEvent e11, float distanceX, float distanceY) {
            return Math.abs(distanceY) > Math.abs(distanceX);
        }
    }

    public MyScrollView(Context context) {
        super(context, null);
        this.f65344c = true;
        this.f65349h = new a();
    }

    public boolean e() {
        return this.f65344c;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (this.f65347f.onTouchEvent(ev)) {
            return true;
        }
        return super.onInterceptTouchEvent(ev) && this.f65344c;
    }

    @Override // android.view.View
    protected void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        if (t10 + getHeight() >= computeVerticalScrollRange()) {
            this.f65345d.a();
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        b bVar = this.f65343b;
        if (bVar != null) {
            this.f65344c = true;
            int scrollY = getScrollY();
            this.f65346e = scrollY;
            bVar.a(scrollY);
        }
        if (ev.getAction() == 1) {
            Handler handler = this.f65349h;
            handler.sendMessageDelayed(handler.obtainMessage(), 20L);
        }
        return super.onTouchEvent(ev);
    }

    public void setOnScrollListener(b onScrollListener) {
        this.f65343b = onScrollListener;
    }

    public void setOtherTouchEvent(boolean otherTouchEvent) {
        this.f65344c = otherTouchEvent;
    }

    public void setScrollBottomListener(c scrollBottomListener) {
        this.f65345d = scrollBottomListener;
    }

    public MyScrollView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65344c = true;
        this.f65349h = new a();
    }

    public MyScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65344c = true;
        this.f65349h = new a();
        this.f65347f = new GestureDetector(new d());
    }
}
