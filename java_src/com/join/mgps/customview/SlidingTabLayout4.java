package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.mgps.Util.h1;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabLayout4 extends SlidingTabLayout1 {
    private Handler K;
    private c L;
    private int M;
    private ScrollType N;
    private int O;
    private Runnable P;

    enum ScrollType {
        IDLE,
        TOUCH_SCROLL,
        FLING
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f65785b;

        a(final int val$position) {
            this.f65785b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SlidingTabLayout4.this.h(this.f65785b, 0);
            ViewPager viewPager = SlidingTabLayout4.this.f65714g;
            if (viewPager != null) {
                viewPager.setCurrentItem(this.f65785b);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SlidingTabLayout4.this.getScrollX() == SlidingTabLayout4.this.M) {
                h1.e("scrollRunnable", "停止滚动");
                SlidingTabLayout4.this.N = ScrollType.IDLE;
                if (SlidingTabLayout4.this.L != null) {
                    SlidingTabLayout4.this.L.a(SlidingTabLayout4.this.N);
                }
                if (SlidingTabLayout4.this.K != null) {
                    SlidingTabLayout4.this.K.removeCallbacks(this);
                    return;
                }
                return;
            }
            h1.e("scrollRunnable", "Fling...");
            SlidingTabLayout4.this.N = ScrollType.FLING;
            if (SlidingTabLayout4.this.L != null) {
                SlidingTabLayout4.this.L.a(SlidingTabLayout4.this.N);
            }
            SlidingTabLayout4 slidingTabLayout4 = SlidingTabLayout4.this;
            slidingTabLayout4.M = slidingTabLayout4.getScrollX();
            if (SlidingTabLayout4.this.K != null) {
                SlidingTabLayout4.this.K.postDelayed(this, SlidingTabLayout4.this.O);
            }
        }
    }

    public interface c {
        void a(ScrollType scrollType);
    }

    public SlidingTabLayout4(Context context) {
        super(context);
        this.M = -9999999;
        this.N = ScrollType.IDLE;
        this.O = 50;
        this.P = new b();
        q(context);
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
        tab.setOnClickListener(new a(position));
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
        super.g();
        if (this.f65714g.getAdapter().getCount() <= 4) {
            setShouldExpand(true);
        } else {
            setShouldExpand(false);
        }
    }

    public int getCurrentPosition() {
        return this.f65716i;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 1) {
            Handler handler = this.K;
            if (handler != null) {
                handler.post(this.P);
            }
        } else if (action == 2) {
            ScrollType scrollType = ScrollType.TOUCH_SCROLL;
            this.N = scrollType;
            c cVar = this.L;
            if (cVar != null) {
                cVar.a(scrollType);
            }
            Handler handler2 = this.K;
            if (handler2 != null) {
                handler2.removeCallbacks(this.P);
            }
        }
        return super.onTouchEvent(ev);
    }

    void q(Context context) {
        this.f65720m = -756480;
        setHandler(new Handler());
        this.f65728u = 0;
        this.f65730w = (int) TypedValue.applyDimension(1, 22.0f, getResources().getDisplayMetrics());
    }

    public void setCurrentPosition(int currentPosition) {
        this.f65716i = currentPosition;
    }

    public void setHandler(Handler handler) {
        this.K = handler;
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65712e = listener;
    }

    public void setOnScrollStateChangedListener(c listener) {
        this.L = listener;
    }

    public SlidingTabLayout4(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.M = -9999999;
        this.N = ScrollType.IDLE;
        this.O = 50;
        this.P = new b();
        q(context);
    }

    public SlidingTabLayout4(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.M = -9999999;
        this.N = ScrollType.IDLE;
        this.O = 50;
        this.P = new b();
        q(context);
    }
}
