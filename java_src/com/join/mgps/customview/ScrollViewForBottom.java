package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes3.dex */
public class ScrollViewForBottom extends ScrollView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f65588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    float f65589c;

    public interface a {
        void a(ScrollViewForBottom scrollView, int x10, int y10, int oldx, int oldy);
    }

    public ScrollViewForBottom(Context context) {
        super(context);
        this.f65589c = 0.0f;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x006e  */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            this.f65589c = event.getY();
            getParent().getParent().getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 1) {
            getParent().getParent().getParent().requestDisallowInterceptTouchEvent(false);
        } else if (action == 2) {
            float y10 = this.f65589c - event.getY();
            this.f65589c = event.getY();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("direction:");
            sb2.append(y10);
            try {
                if (getScrollY() > 0 || y10 >= -5.0f) {
                    getParent().getParent().getParent().requestDisallowInterceptTouchEvent(true);
                } else {
                    getParent().getParent().getParent().requestDisallowInterceptTouchEvent(false);
                    ((View) getParent().getParent().getParent()).onTouchEvent(event);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else if (action == 3) {
            getParent().getParent().getParent().requestDisallowInterceptTouchEvent(false);
        }
        return super.dispatchTouchEvent(event);
    }

    @Override // android.view.View
    protected void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        super.onScrollChanged(l10, t10, oldl, oldt);
        a aVar = this.f65588b;
        if (aVar != null) {
            aVar.a(this, l10, t10, oldl, oldt);
        }
    }

    public void setOnScroll(a onScroll) {
        this.f65588b = onScroll;
    }

    public ScrollViewForBottom(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65589c = 0.0f;
    }

    public ScrollViewForBottom(Context context, AttributeSet attrs, int style) {
        super(context, attrs, style);
        this.f65589c = 0.0f;
    }
}
