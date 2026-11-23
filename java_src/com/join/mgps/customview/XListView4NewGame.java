package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes3.dex */
public class XListView4NewGame extends XListView2 {
    public static final String I = "XListView4NewGame";
    private int G;
    private GestureDetector H;

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent e10, MotionEvent e11, float distanceX, float distanceY) {
            return Math.abs(distanceY) > Math.abs(distanceX) * 1.5f;
        }
    }

    public XListView4NewGame(Context context) {
        super(context);
        this.G = 0;
        this.H = new GestureDetector(new a());
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (!this.H.onTouchEvent(ev)) {
            if (this.G != 0) {
                return false;
            }
            this.G = 1;
            if (ev.getAction() == 1) {
                this.G = 0;
            }
        }
        this.G = 0;
        return super.onInterceptTouchEvent(ev);
    }

    @Override // com.join.mgps.customview.XListView2, android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 2) {
            ev.getRawY();
            this.f66087b = ev.getRawY();
            ev.getRawX();
            this.f66088c = ev.getRawX();
            if (!this.H.onTouchEvent(ev)) {
                return false;
            }
        }
        return super.onTouchEvent(ev);
    }

    public XListView4NewGame(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.G = 0;
        this.H = new GestureDetector(new a());
    }

    public XListView4NewGame(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.G = 0;
        this.H = new GestureDetector(new a());
    }
}
