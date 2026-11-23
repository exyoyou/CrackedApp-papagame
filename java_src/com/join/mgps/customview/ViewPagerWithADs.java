package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.BannerBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ViewPagerWithADs extends FrameLayout {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f65968l = 5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f65969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f65970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65971d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<BannerBean> f65972e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f65973f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65974g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65975h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PagerAdapter f65976i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f65977j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f65978k;

    public ViewPagerWithADs(@NonNull Context context) {
        super(context);
        this.f65970c = null;
        this.f65971d = 50;
        this.f65972e = null;
        this.f65973f = 40;
        this.f65974g = 2000;
        this.f65975h = 0;
        this.f65977j = 0.0f;
        this.f65978k = false;
        this.f65969b = context;
    }

    private int c(Context context, int dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void d() {
        setClipChildren(false);
        setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        int i10 = this.f65971d;
        layoutParams.setMargins(i10, 0, i10, 0);
        removeAllViews();
        a aVar = new a(this.f65969b);
        this.f65970c = aVar;
        aVar.setClipChildren(false);
        this.f65970c.setLayoutParams(layoutParams);
        this.f65970c.i(this.f65969b, this.f65972e, this.f65973f, this.f65974g);
        addView(this.f65970c);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0 || action == 1) {
            this.f65977j = 0.0f;
            this.f65978k = false;
        } else if (action == 2) {
            float f10 = this.f65977j;
            if (f10 != 0.0f) {
                this.f65977j = f10 - ev.getX();
            }
            if (Math.abs(this.f65977j) > 5.0f) {
                this.f65978k = true;
            }
            getParent().requestDisallowInterceptTouchEvent(this.f65978k);
            this.f65977j = ev.getX();
        }
        return super.dispatchTouchEvent(ev);
    }

    public void e(View view, final int position) {
        this.f65970c.h(view, position);
    }

    public void setAll(Context context, PagerAdapter mAdapter, List<BannerBean> banners, int pageMargin, int marginLR, int times) {
        this.f65969b = context;
        this.f65976i = mAdapter;
        this.f65971d = marginLR;
        this.f65972e = banners;
        this.f65973f = pageMargin;
        this.f65974g = times;
        d();
    }

    class a extends ViewPager {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f65979b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<BannerBean> f65980c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f65981d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f65982e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f65983f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private PagerAdapter f65984g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private f f65985h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Handler f65986i;

        /* JADX INFO: renamed from: com.join.mgps.customview.ViewPagerWithADs$a$a, reason: collision with other inner class name */
        class HandlerC0710a extends Handler {
            HandlerC0710a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                a aVar = a.this;
                aVar.setCurrentItem(aVar.f65981d);
                a.this.j();
            }
        }

        class b implements View.OnTouchListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private long f65989b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f65990c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ int f65991d;

            b(final int val$position) {
                this.f65991d = val$position;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                int action = event.getAction();
                if (action == 0) {
                    a.this.f65986i.removeCallbacksAndMessages(null);
                    this.f65990c = (int) event.getX();
                    this.f65989b = System.currentTimeMillis();
                } else if (action == 1) {
                    if (System.currentTimeMillis() - this.f65989b < 500 && Math.abs(this.f65990c - event.getX()) < 30.0f) {
                        if (ViewPagerWithADs.this.f65975h == 1) {
                            com.papa.sim.statistic.t.l(a.this.f65979b).u0(((this.f65991d % a.this.f65980c.size()) + 1) + "", AccountUtil_.getInstance_(a.this.f65979b).getUid());
                        }
                        IntentUtil.getInstance().intentActivity(a.this.f65979b, ((BannerBean) a.this.f65980c.get(this.f65991d % a.this.f65980c.size())).getIntentDataBean());
                    }
                    a.this.j();
                }
                return true;
            }
        }

        class c extends PagerAdapter {
            c() {
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public void destroyItem(ViewGroup container, int position, Object object) {
                container.removeView((View) object);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return Integer.MAX_VALUE;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public Object instantiateItem(ViewGroup container, int position) {
                SimpleDraweeView simpleDraweeView = new SimpleDraweeView(a.this.f65979b);
                simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
                com.join.android.app.common.utils.l.f(simpleDraweeView, R.drawable.banner_normal_icon, ((BannerBean) a.this.f65980c.get(position % a.this.f65980c.size())).getPic_remote(), com.join.android.app.common.utils.l.F(a.this.f65979b, 20.0f));
                a.this.h(simpleDraweeView, position);
                container.addView(simpleDraweeView);
                return simpleDraweeView;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public boolean isViewFromObject(View view, Object object) {
                return view == object;
            }
        }

        class d implements ViewPager.OnPageChangeListener {
            d() {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                a.this.f65981d = position;
            }
        }

        public class e implements ViewPager.PageTransformer {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private static final float f65995c = 0.85f;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public static final float f65996d = 0.5f;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private float f65997a = f65995c;

            public e() {
            }

            @TargetApi(11)
            public void a(View view, float position) {
                int width = view.getWidth();
                view.setPivotY(view.getHeight() / 2);
                view.setPivotX(width / 2);
                if (position < -1.0f) {
                    view.setScaleX(this.f65997a);
                    view.setScaleY(this.f65997a);
                    view.setPivotX(width);
                    return;
                }
                if (position > 1.0f) {
                    view.setPivotX(0.0f);
                    view.setScaleX(this.f65997a);
                    view.setScaleY(this.f65997a);
                } else {
                    if (position < 0.0f) {
                        float f10 = this.f65997a;
                        float f11 = ((position + 1.0f) * (1.0f - f10)) + f10;
                        view.setScaleX(f11);
                        view.setScaleY(f11);
                        view.setPivotX(width * (((-position) * 0.5f) + 0.5f));
                        return;
                    }
                    float f12 = 1.0f - position;
                    float f13 = this.f65997a;
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

        class f implements Runnable {
            f() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.c(a.this, 1);
                a.this.f65986i.obtainMessage().sendToTarget();
            }
        }

        class g implements View.OnTouchListener {
            g() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                int action = event.getAction();
                if (action == 0) {
                    a.this.f65986i.removeCallbacksAndMessages(null);
                    return false;
                }
                if (action == 1) {
                    a.this.j();
                    return false;
                }
                if (action != 3) {
                    return false;
                }
                a.this.j();
                return false;
            }
        }

        public a(Context context) {
            super(context);
            this.f65981d = 100;
            this.f65982e = 15;
            this.f65983f = 4000;
            this.f65985h = new f();
            this.f65986i = new HandlerC0710a();
            this.f65979b = context;
        }

        static /* synthetic */ int c(a aVar, int i10) {
            int i11 = aVar.f65981d + i10;
            aVar.f65981d = i11;
            return i11;
        }

        private void g() {
            this.f65981d = 10000;
            setPageMargin(this.f65982e);
            setOffscreenPageLimit(3);
            j();
            setPageTransformer(true, new e());
            setOnPageChangeListener(new d());
            setOnTouchListener(new g());
        }

        public void h(View view, final int position) {
            view.setOnTouchListener(new b(position));
        }

        public void i(Context context, List<BannerBean> banners, int pageMargin, int times) {
            this.f65979b = context;
            this.f65982e = pageMargin;
            this.f65980c = banners;
            this.f65983f = times;
            g();
        }

        public void j() {
            if (this.f65984g == null) {
                if (ViewPagerWithADs.this.f65976i != null) {
                    this.f65984g = ViewPagerWithADs.this.f65976i;
                } else {
                    this.f65984g = new c();
                }
                setAdapter(this.f65984g);
                setCurrentItem(this.f65981d);
            }
            this.f65986i.removeCallbacksAndMessages(null);
            this.f65986i.postDelayed(this.f65985h, this.f65983f);
        }

        @Override // androidx.viewpager.widget.ViewPager, android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
        }

        public a(Context context, AttributeSet attrs) {
            super(context, attrs);
            this.f65981d = 100;
            this.f65982e = 15;
            this.f65983f = 4000;
            this.f65985h = new f();
            this.f65986i = new HandlerC0710a();
            this.f65979b = context;
        }
    }

    public void setAll(Context context, List<BannerBean> banners, int pageMargin, int marginLR, int times, int from) {
        this.f65975h = from;
        setAll(context, (PagerAdapter) null, banners, pageMargin, marginLR, times);
    }

    public ViewPagerWithADs(Context context, AttributeSet attrs) {
        super(context, attrs, 0);
        this.f65970c = null;
        this.f65971d = 50;
        this.f65972e = null;
        this.f65973f = 40;
        this.f65974g = 2000;
        this.f65975h = 0;
        this.f65977j = 0.0f;
        this.f65978k = false;
        this.f65969b = context;
    }
}
