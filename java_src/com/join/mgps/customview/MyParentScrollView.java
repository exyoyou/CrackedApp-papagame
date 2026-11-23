package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes3.dex */
public class MyParentScrollView extends ScrollView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f65319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f65321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f65322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f65323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f65324g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f65325h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f65326i;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int scrollY = MyParentScrollView.this.getScrollY();
            if (MyParentScrollView.this.f65320c != scrollY) {
                MyParentScrollView.this.f65320c = scrollY;
                MyParentScrollView.this.f65322e.sendMessageDelayed(MyParentScrollView.this.f65322e.obtainMessage(), 20L);
            }
            if (MyParentScrollView.this.f65319b != null) {
                MyParentScrollView.this.f65319b.a(scrollY);
            }
        }
    }

    public interface b {
        void a(int scrollY);
    }

    public MyParentScrollView(Context context) {
        super(context, null);
        this.f65322e = new a();
    }

    public boolean e() {
        return this.f65321d;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            this.f65324g = 0.0f;
            this.f65323f = 0.0f;
            this.f65325h = ev.getX();
            this.f65326i = ev.getY();
        } else if (action == 2) {
            float x10 = ev.getX();
            float y10 = ev.getY();
            this.f65323f += Math.abs(x10 - this.f65325h);
            float fAbs = this.f65324g + Math.abs(y10 - this.f65326i);
            this.f65324g = fAbs;
            this.f65325h = x10;
            this.f65326i = y10;
            if (this.f65323f > fAbs) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        b bVar = this.f65319b;
        if (bVar != null) {
            int scrollY = getScrollY();
            this.f65320c = scrollY;
            bVar.a(scrollY);
        }
        if (ev.getAction() == 1) {
            Handler handler = this.f65322e;
            handler.sendMessageDelayed(handler.obtainMessage(), 20L);
        }
        return super.onTouchEvent(ev);
    }

    public void setIsInnerScroll(boolean isInnerScroll) {
        this.f65321d = isInnerScroll;
    }

    public void setOnScrollListener(b onScrollListener) {
        this.f65319b = onScrollListener;
    }

    public MyParentScrollView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65322e = new a();
    }

    public MyParentScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65322e = new a();
    }
}
