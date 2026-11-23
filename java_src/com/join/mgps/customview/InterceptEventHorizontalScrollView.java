package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import com.join.mgps.Util.g1;

/* JADX INFO: loaded from: classes3.dex */
public class InterceptEventHorizontalScrollView extends HorizontalRecyclerView {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f65139j = "InterceptEventHorizontalScrollView";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f65140i;

    class a implements ViewTreeObserver.OnScrollChangedListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
        }
    }

    public InterceptEventHorizontalScrollView(Context context) {
        super(context);
        init();
    }

    private void init() {
        getViewTreeObserver().addOnScrollChangedListener(new a());
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005a  */
    @Override // com.join.mgps.customview.HorizontalRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        int action = event.getAction();
        int scrollX = getScrollX();
        g1.b(f65139j, "----scrollX---: " + scrollX);
        int i10 = action & 255;
        if (i10 == 0) {
            g1.b(f65139j, "----onInterceptTouchEvent ACTION_DOWN--- ");
        } else if (i10 == 1) {
            g1.b(f65139j, "---onInterceptTouchEvent ACTION_UP | ACTION_CANCEL ");
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (i10 != 2) {
            if (i10 == 3) {
                g1.b(f65139j, "---onInterceptTouchEvent ACTION_UP | ACTION_CANCEL ");
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else if (scrollX == 0) {
            g1.b(f65139j, "----onInterceptTouchEvent ACTION_MOVE 最左边不拦截事件--- ");
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (this.f65140i) {
            g1.b(f65139j, "----onInterceptTouchEvent ACTION_MOVE 最右边，不拦截事件--- ");
            getParent().requestDisallowInterceptTouchEvent(false);
        } else {
            g1.b(f65139j, "---onInterceptTouchEvent ACTION_MOVE 中间，拦截事件--- ");
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(event);
    }

    public InterceptEventHorizontalScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public InterceptEventHorizontalScrollView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }
}
