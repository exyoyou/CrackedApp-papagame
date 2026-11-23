package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.mgps.Util.h1;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabForumLayout extends SlidingTabLayout1 {
    private List<ForumBean.ForumTabBean> K;
    private e L;
    private Handler M;
    private f N;
    private int O;
    private ScrollType P;
    private int Q;
    private Runnable R;

    enum ScrollType {
        IDLE,
        TOUCH_SCROLL,
        FLING
    }

    class a implements f {
        a() {
        }

        @Override // com.join.mgps.customview.SlidingTabForumLayout.f
        public void a(ScrollType scrollType) {
            SlidingTabForumLayout.this.t();
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @SuppressLint({"NewApi"})
        public void onGlobalLayout() {
            SlidingTabForumLayout.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            SlidingTabForumLayout slidingTabForumLayout = SlidingTabForumLayout.this;
            slidingTabForumLayout.h(slidingTabForumLayout.f65716i, 0);
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f65690b;

        c(final int val$position) {
            this.f65690b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SlidingTabForumLayout.this.h(this.f65690b, 0);
            if (SlidingTabForumLayout.this.L != null) {
                SlidingTabForumLayout.this.L.onItemClick(this.f65690b);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SlidingTabForumLayout.this.getScrollX() == SlidingTabForumLayout.this.O) {
                h1.e("scrollRunnable", "停止滚动");
                SlidingTabForumLayout.this.P = ScrollType.IDLE;
                if (SlidingTabForumLayout.this.N != null) {
                    SlidingTabForumLayout.this.N.a(SlidingTabForumLayout.this.P);
                }
                if (SlidingTabForumLayout.this.M != null) {
                    SlidingTabForumLayout.this.M.removeCallbacks(this);
                    return;
                }
                return;
            }
            h1.e("scrollRunnable", "Fling...");
            SlidingTabForumLayout.this.P = ScrollType.FLING;
            if (SlidingTabForumLayout.this.N != null) {
                SlidingTabForumLayout.this.N.a(SlidingTabForumLayout.this.P);
            }
            SlidingTabForumLayout slidingTabForumLayout = SlidingTabForumLayout.this;
            slidingTabForumLayout.O = slidingTabForumLayout.getScrollX();
            if (SlidingTabForumLayout.this.M != null) {
                SlidingTabForumLayout.this.M.postDelayed(this, SlidingTabForumLayout.this.Q);
            }
        }
    }

    public interface e {
        void a(int position, int offset, int scrollX);

        void onItemClick(int position);
    }

    public interface f {
        void a(ScrollType scrollType);
    }

    public SlidingTabForumLayout(Context context) {
        super(context);
        this.O = -9999999;
        this.P = ScrollType.IDLE;
        this.Q = 50;
        this.R = new d();
        s(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        e eVar = this.L;
        if (eVar != null) {
            eVar.a(getCurrentPosition(), getScrollOffset(), getScrollX());
        }
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void b(final int position, int resId) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageResource(resId);
        c(position, imageButton);
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void c(final int position, View tab) {
        tab.setFocusable(true);
        tab.setOnClickListener(new c(position));
        int i10 = this.f65730w;
        tab.setPadding(i10, 0, i10, 0);
        this.f65713f.addView(tab, position, this.f65723p ? this.f65710c : this.f65709b);
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void d(final int position, String title) {
        TextView textView = new TextView(getContext());
        textView.setText(title);
        textView.setGravity(17);
        textView.setSingleLine();
        c(position, textView);
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void g() {
        this.f65713f.removeAllViews();
        List<ForumBean.ForumTabBean> list = this.K;
        this.f65715h = list == null ? 0 : list.size();
        for (int i10 = 0; i10 < this.f65715h; i10++) {
            d(i10, this.K.get(i10).getTab_name().toString());
        }
        i();
        getViewTreeObserver().addOnGlobalLayoutListener(new b());
    }

    public int getCurrentPosition() {
        return this.f65716i;
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void h(int position, int positionOffset) {
        this.f65716i = position;
        this.f65717j = 0.0f;
        if (this.f65713f.getChildAt(position) != null) {
            int i10 = this.f65716i;
            super.h(i10, (int) (this.f65717j * this.f65713f.getChildAt(i10).getWidth()));
        }
        t();
        invalidate();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 1) {
            Handler handler = this.M;
            if (handler != null) {
                handler.post(this.R);
            }
        } else if (action == 2) {
            ScrollType scrollType = ScrollType.TOUCH_SCROLL;
            this.P = scrollType;
            f fVar = this.N;
            if (fVar != null) {
                fVar.a(scrollType);
            }
            Handler handler2 = this.M;
            if (handler2 != null) {
                handler2.removeCallbacks(this.R);
            }
        }
        return super.onTouchEvent(ev);
    }

    void s(Context context) {
        this.f65720m = -756480;
        setHandler(new Handler());
        setOnScrollStateChangedListener(new a());
    }

    public void setCurrentPosition(int currentPosition) {
        this.f65716i = currentPosition;
    }

    public void setHandler(Handler handler) {
        this.M = handler;
    }

    public void setItem(List<ForumBean.ForumTabBean> items) {
        List<ForumBean.ForumTabBean> list = this.K;
        if (list != null) {
            list.clear();
        }
        if (this.K == null) {
            this.K = new ArrayList();
        }
        if (items == null || items.size() == 0) {
            return;
        }
        this.K.addAll(items);
        g();
    }

    public void setOnForumSlidingTabListener(e l10) {
        this.L = l10;
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65712e = listener;
    }

    public void setOnScrollStateChangedListener(f listener) {
        this.N = listener;
    }

    public SlidingTabForumLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.O = -9999999;
        this.P = ScrollType.IDLE;
        this.Q = 50;
        this.R = new d();
        s(context);
    }

    public SlidingTabForumLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.O = -9999999;
        this.P = ScrollType.IDLE;
        this.Q = 50;
        this.R = new d();
        s(context);
    }
}
