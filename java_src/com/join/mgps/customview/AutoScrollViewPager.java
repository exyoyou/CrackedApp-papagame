package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AutoScrollViewPager<T> extends FrameLayout implements View.OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f64330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ViewPager f64331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f64332f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f64333g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64334h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64335i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AutoScrollViewPager<T>.c f64336j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AutoScrollViewPager<T>.b f64337k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f64338l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f64339m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f64340n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<T> f64341o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Handler f64342p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private e f64343q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private f f64344r;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what != 1) {
                return;
            }
            AutoScrollViewPager.c(AutoScrollViewPager.this);
            AutoScrollViewPager.this.f64331e.setCurrentItem(AutoScrollViewPager.this.f64334h);
            AutoScrollViewPager.this.f64342p.sendEmptyMessageDelayed(1, AutoScrollViewPager.this.f64328b);
        }
    }

    private class b implements ViewPager.OnPageChangeListener {
        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            int size = position % AutoScrollViewPager.this.f64341o.size();
            AutoScrollViewPager.this.f64334h = position;
            AutoScrollViewPager.this.f64335i = size;
        }

        /* synthetic */ b(AutoScrollViewPager autoScrollViewPager, a aVar) {
            this();
        }
    }

    private class c extends PagerAdapter {
        private c() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return AutoScrollViewPager.this.f64341o.size() > 0 ? Integer.MAX_VALUE : 0;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup container, int position) {
            AutoScrollViewPager autoScrollViewPager = AutoScrollViewPager.this;
            View viewJ = autoScrollViewPager.j(position % autoScrollViewPager.f64341o.size());
            viewJ.setClickable(false);
            container.addView(viewJ);
            return viewJ;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        /* synthetic */ c(AutoScrollViewPager autoScrollViewPager, a aVar) {
            this();
        }
    }

    private class d implements ViewPager.PageTransformer {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final float f64348c = 0.85f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final float f64349d = 0.5f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f64350a = f64348c;

        public d() {
        }

        @TargetApi(11)
        public void a(View view, float position) {
            int width = view.getWidth();
            view.setPivotY(view.getHeight() / 2);
            view.setPivotX(width / 2);
            if (position < -1.0f) {
                view.setScaleX(this.f64350a);
                view.setScaleY(this.f64350a);
                view.setPivotX(width);
                return;
            }
            if (position > 1.0f) {
                view.setPivotX(0.0f);
                view.setScaleX(this.f64350a);
                view.setScaleY(this.f64350a);
            } else {
                if (position < 0.0f) {
                    float f10 = this.f64350a;
                    float f11 = ((position + 1.0f) * (1.0f - f10)) + f10;
                    view.setScaleX(f11);
                    view.setScaleY(f11);
                    view.setPivotX(width * (((-position) * 0.5f) + 0.5f));
                    return;
                }
                float f12 = 1.0f - position;
                float f13 = this.f64350a;
                float f14 = ((1.0f - f13) * f12) + f13;
                view.setScaleX(f14);
                view.setScaleY(f14);
                view.setPivotX(width * f12 * 0.5f);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.PageTransformer
        public void transformPage(View view, float position) {
            a(view, position);
        }
    }

    public interface e {
        View a(int position);
    }

    public interface f {
        void a(View view, int position);
    }

    public AutoScrollViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64332f = 5000;
        this.f64333g = 1;
        this.f64341o = new ArrayList();
        this.f64342p = new a();
        this.f64328b = 5000;
        this.f64330d = true;
        k();
    }

    static /* synthetic */ int c(AutoScrollViewPager autoScrollViewPager) {
        int i10 = autoScrollViewPager.f64334h;
        autoScrollViewPager.f64334h = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View j(final int currentIndex) {
        e eVar = this.f64343q;
        if (eVar != null) {
            return eVar.a(currentIndex);
        }
        throw new NullPointerException("view is not null");
    }

    private void k() {
        int i10;
        this.f64334h = -1;
        this.f64335i = -1;
        int i11 = this.f64328b;
        if (i11 > 0 && i11 < 5000) {
            this.f64328b = 5000;
        }
        int i12 = this.f64329c;
        if (i12 <= 0 || i12 <= (i10 = this.f64328b)) {
            return;
        }
        this.f64329c = i10;
    }

    public void l(int marginLR, int pageMargin, List<T> datas) {
        this.f64342p.removeCallbacksAndMessages(null);
        setClipChildren(false);
        setBackgroundColor(0);
        this.f64331e = new ViewPager(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        layoutParams.setMargins(marginLR, 0, marginLR, 0);
        removeAllViews();
        this.f64331e.setClipChildren(false);
        this.f64331e.setLayoutParams(layoutParams);
        this.f64331e.setPageMargin(pageMargin);
        this.f64331e.setPageTransformer(true, new d());
        this.f64331e.setOnTouchListener(this);
        if (this.f64341o.size() > 0) {
            this.f64341o.clear();
        }
        this.f64341o.addAll(datas);
        addView(this.f64331e);
    }

    public void m() {
        this.f64334h = this.f64341o.size() * 1000;
        this.f64335i = -1;
        a aVar = null;
        AutoScrollViewPager<T>.b bVar = new b(this, aVar);
        this.f64337k = bVar;
        this.f64331e.setOnPageChangeListener(bVar);
        AutoScrollViewPager<T>.c cVar = new c(this, aVar);
        this.f64336j = cVar;
        this.f64331e.setAdapter(cVar);
        this.f64336j.notifyDataSetChanged();
        this.f64331e.setCurrentItem(this.f64334h);
        this.f64342p.removeCallbacksAndMessages(null);
        this.f64342p.sendEmptyMessageDelayed(1, this.f64328b);
    }

    public void n() {
        Handler handler = this.f64342p;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent event) {
        f fVar;
        int action = event.getAction();
        if (action == 0) {
            ((ViewGroup) view).requestDisallowInterceptTouchEvent(true);
            this.f64338l = event.getX();
            this.f64339m = event.getY();
            this.f64340n = System.currentTimeMillis();
            if (this.f64328b > 0 && this.f64330d) {
                this.f64342p.removeCallbacksAndMessages(null);
            }
        } else if (action == 1) {
            ((ViewGroup) view).requestDisallowInterceptTouchEvent(true);
            Math.abs(event.getX() - this.f64338l);
            Math.abs(event.getY() - this.f64339m);
            Math.abs(System.currentTimeMillis() - this.f64340n);
            if (Math.abs(event.getX() - this.f64338l) < 20.0f && Math.abs(event.getY() - this.f64339m) < 20.0f && System.currentTimeMillis() - this.f64340n < 200 && (fVar = this.f64344r) != null) {
                fVar.a(view, this.f64335i);
            }
            int i10 = this.f64328b;
            if (i10 > 0 && this.f64330d) {
                this.f64342p.sendEmptyMessageDelayed(1, i10);
            }
        } else if (action == 7) {
            ((ViewGroup) view).requestDisallowInterceptTouchEvent(true);
        }
        return super.onTouchEvent(event);
    }

    public void setLoopTime(int loopTime) {
        this.f64328b = loopTime;
    }

    public void setOnCreateItemViewListener(e onCreateItemViewListener) {
        this.f64343q = onCreateItemViewListener;
    }

    public void setOnItemClickListener(f onItemClickListener) {
        this.f64344r = onItemClickListener;
    }
}
