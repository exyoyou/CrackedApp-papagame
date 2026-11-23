package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.h1;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabLayout5 extends SlidingTabLayout1 {
    private int K;
    private int L;
    private int M;
    private int N;
    private Handler O;
    private c P;
    private int Q;
    private ScrollType R;
    private int S;
    private Runnable T;

    enum ScrollType {
        IDLE,
        TOUCH_SCROLL,
        FLING
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f65788b;

        a(final int val$position) {
            this.f65788b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SlidingTabLayout5.this.h(this.f65788b, 0);
            ViewPager viewPager = SlidingTabLayout5.this.f65714g;
            if (viewPager != null) {
                viewPager.setCurrentItem(this.f65788b);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SlidingTabLayout5.this.getScrollX() == SlidingTabLayout5.this.Q) {
                h1.e("scrollRunnable", "停止滚动");
                SlidingTabLayout5.this.R = ScrollType.IDLE;
                if (SlidingTabLayout5.this.P != null) {
                    SlidingTabLayout5.this.P.a(SlidingTabLayout5.this.R);
                }
                if (SlidingTabLayout5.this.O != null) {
                    SlidingTabLayout5.this.O.removeCallbacks(this);
                    return;
                }
                return;
            }
            h1.e("scrollRunnable", "Fling...");
            SlidingTabLayout5.this.R = ScrollType.FLING;
            if (SlidingTabLayout5.this.P != null) {
                SlidingTabLayout5.this.P.a(SlidingTabLayout5.this.R);
            }
            SlidingTabLayout5 slidingTabLayout5 = SlidingTabLayout5.this;
            slidingTabLayout5.Q = slidingTabLayout5.getScrollX();
            if (SlidingTabLayout5.this.O != null) {
                SlidingTabLayout5.this.O.postDelayed(this, SlidingTabLayout5.this.S);
            }
        }
    }

    public interface c {
        void a(ScrollType scrollType);
    }

    public SlidingTabLayout5(Context context) {
        super(context);
        this.Q = -9999999;
        this.R = ScrollType.IDLE;
        this.S = 50;
        this.T = new b();
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
        textView.setTypeface(Typeface.DEFAULT, 1);
        textView.setTextSize(getContext().getResources().getDimensionPixelSize(R.dimen.wdp30));
        c(position, textView);
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void e(Canvas canvas) {
        int i10;
        if (isInEditMode() || this.f65715h == 0) {
            return;
        }
        int height = getHeight();
        this.f65718k.setColor(this.f65720m);
        View childAt = this.f65713f.getChildAt(this.f65716i);
        float left = childAt.getLeft() * 1.0f;
        float right = childAt.getRight();
        if (this.f65717j > 0.0f && (i10 = this.f65716i) < this.f65715h - 1) {
            View childAt2 = this.f65713f.getChildAt(i10 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f10 = this.f65717j;
            left = (left2 * f10) + ((1.0f - f10) * left);
            right = (right2 * f10) + ((1.0f - f10) * right);
        }
        int i11 = (int) (((right - left) - this.K) / 2.0f);
        int i12 = this.L;
        int i13 = (height - i12) - this.M;
        float f11 = i11;
        int i14 = this.N;
        canvas.drawRoundRect(left + f11, i13, right - f11, i13 + i12, i14, i14, this.f65718k);
        this.f65718k.setColor(this.f65721n);
        canvas.drawRect(0.0f, height - this.f65728u, this.f65713f.getWidth(), height, this.f65718k);
        this.f65719l.setColor(this.f65722o);
        for (int i15 = 0; i15 < this.f65715h - 1; i15++) {
            View childAt3 = this.f65713f.getChildAt(i15);
            canvas.drawLine(childAt3.getRight(), this.f65729v, childAt3.getRight(), height - this.f65729v, this.f65719l);
        }
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

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void i() {
        for (int i10 = 0; i10 < this.f65715h; i10++) {
            View childAt = this.f65713f.getChildAt(i10);
            childAt.setBackgroundResource(this.F);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f65732y);
                textView.setTextColor(this.A);
                ViewPager viewPager = this.f65714g;
                if (viewPager == null || i10 != viewPager.getCurrentItem()) {
                    textView.setTypeface(this.C, 0);
                } else {
                    textView.setTextColor(this.B);
                    textView.setTypeface(this.C, 1);
                }
                if (this.f65724q) {
                    textView.setAllCaps(true);
                }
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 1) {
            Handler handler = this.O;
            if (handler != null) {
                handler.post(this.T);
            }
        } else if (action == 2) {
            ScrollType scrollType = ScrollType.TOUCH_SCROLL;
            this.R = scrollType;
            c cVar = this.P;
            if (cVar != null) {
                cVar.a(scrollType);
            }
            Handler handler2 = this.O;
            if (handler2 != null) {
                handler2.removeCallbacks(this.T);
            }
        }
        return super.onTouchEvent(ev);
    }

    void q(Context context) {
        this.f65723p = true;
        this.f65720m = -756480;
        this.A = -5723992;
        this.B = -16777216;
        this.f65730w = 0;
        setHandler(new Handler());
        this.f65732y = getContext().getResources().getDimensionPixelOffset(R.dimen.wdp30);
        this.K = getContext().getResources().getDimensionPixelOffset(R.dimen.wdp20);
        this.L = getContext().getResources().getDimensionPixelOffset(R.dimen.wdp6);
        this.M = getContext().getResources().getDimensionPixelOffset(R.dimen.wdp9);
        this.N = getContext().getResources().getDimensionPixelOffset(R.dimen.wdp3);
        this.f65728u = 0;
    }

    public void setCurrentPosition(int currentPosition) {
        this.f65716i = currentPosition;
    }

    public void setHandler(Handler handler) {
        this.O = handler;
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65712e = listener;
    }

    public void setOnScrollStateChangedListener(c listener) {
        this.P = listener;
    }

    public SlidingTabLayout5(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.Q = -9999999;
        this.R = ScrollType.IDLE;
        this.S = 50;
        this.T = new b();
        q(context);
    }

    public SlidingTabLayout5(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.Q = -9999999;
        this.R = ScrollType.IDLE;
        this.S = 50;
        this.T = new b();
        q(context);
    }
}
