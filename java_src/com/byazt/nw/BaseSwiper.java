package com.byazt.nw;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.Scroller;
import com.byazt.an.ViewPager;
import com.byazt.gr.uj;
import com.byazt.gr.ve;
import com.byazt.nr.m;
import com.byazt.nz.BaseIndicator;
import com.byazt.nz.DotIndicator;
import com.byazt.nz.RectangleIndicator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MAX_JITTER_BUFFER_DELAY})
public abstract class BaseSwiper<T> extends FrameLayout implements ViewPager.uj {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Interpolator f17645h = new Interpolator() { // from class: com.byazt.nw.BaseSwiper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17646a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<T> f17647c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Runnable f17648d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f17649da;
    public final Runnable eo;
    public BaseIndicator gr;
    public int gt;
    public FrameLayout gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17650i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f17651m;
    public boolean md;
    public int my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f17652n;
    public boolean nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Scroller f17653p;
    public int qy;
    public boolean rh;
    public int rl;
    public String sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f17654t;
    public ViewPager tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f17655u;
    public int uj;
    public Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f17656x;
    public boolean yp;
    public com.byazt.nw.c yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f17657z;
    public c zm;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 1695})
    public class SwiperViewPager extends ViewPager {
        public SwiperViewPager(Context context) {
            super(context);
        }

        private MotionEvent c(MotionEvent motionEvent) {
            float width = getWidth();
            float height = getHeight();
            motionEvent.setLocation((motionEvent.getY() / height) * width, (motionEvent.getX() / width) * height);
            return motionEvent;
        }

        @Override // com.byazt.an.ViewPager, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (!BaseSwiper.this.f17651m) {
                return false;
            }
            try {
                if (BaseSwiper.this.qy != 1) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(c(motionEvent));
                c(motionEvent);
                return zOnInterceptTouchEvent;
            } catch (IllegalArgumentException e10) {
                m.c(e10);
                return false;
            }
        }

        @Override // com.byazt.an.ViewPager, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!BaseSwiper.this.f17651m) {
                return false;
            }
            try {
                return BaseSwiper.this.qy == 1 ? super.onTouchEvent(c(motionEvent)) : super.onTouchEvent(motionEvent);
            } catch (IllegalArgumentException e10) {
                m.c(e10);
                return false;
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 2221})
    class c extends com.byazt.an.tt {
        public c() {
        }

        @Override // com.byazt.an.tt
        public int c(Object obj) {
            return -2;
        }

        @Override // com.byazt.an.tt
        public boolean c(View view, Object obj) {
            return view == obj;
        }

        @Override // com.byazt.an.tt
        public int c() {
            if (BaseSwiper.this.f17657z) {
                return 1024;
            }
            return BaseSwiper.this.f17647c.size();
        }

        @Override // com.byazt.an.tt
        public Object c(ViewGroup viewGroup, int i10) {
            View viewC = BaseSwiper.this.c(i10, com.byazt.nw.tt.c(BaseSwiper.this.f17657z, i10, BaseSwiper.this.f17647c.size()));
            viewGroup.addView(viewC);
            return viewC;
        }

        @Override // com.byazt.an.tt
        public void c(ViewGroup viewGroup, int i10, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // com.byazt.an.tt
        public float c(int i10) {
            if (BaseSwiper.this.f17654t <= 0.0f) {
                return 1.0f;
            }
            return 1.0f / BaseSwiper.this.f17654t;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 854})
    private class tt extends Scroller {
        public tt(Context context, Interpolator interpolator) {
            super(context, interpolator);
        }

        @Override // android.widget.Scroller
        public void startScroll(int i10, int i11, int i12, int i13, int i14) {
            super.startScroll(i10, i11, i12, i13, BaseSwiper.this.sp);
        }

        @Override // android.widget.Scroller
        public void startScroll(int i10, int i11, int i12, int i13) {
            super.startScroll(i10, i11, i12, i13, BaseSwiper.this.sp);
        }
    }

    public BaseSwiper(Context context) {
        super(context);
        this.f17647c = new CopyOnWriteArrayList();
        this.uj = -1;
        this.f17652n = 2000;
        this.f17646a = 500;
        this.sp = 500;
        this.f17656x = 0;
        this.f17650i = -1;
        this.f17649da = -1;
        this.sl = "normal";
        this.f17654t = 1.0f;
        this.f17655u = true;
        this.yp = true;
        this.f17657z = true;
        this.f17651m = true;
        this.my = 0;
        this.gt = 0;
        this.rl = 0;
        this.qy = 0;
        this.md = true;
        this.f17648d = new Runnable() { // from class: com.byazt.nw.BaseSwiper.2
            @Override // java.lang.Runnable
            public void run() {
                int currentItem = BaseSwiper.this.tt.getCurrentItem() + 1;
                if (BaseSwiper.this.f17657z) {
                    if (currentItem >= 1024) {
                        BaseSwiper.this.tt.c(512, false);
                        return;
                    } else {
                        BaseSwiper.this.tt.c(currentItem, true);
                        return;
                    }
                }
                com.byazt.an.tt adapter = BaseSwiper.this.tt.getAdapter();
                if (adapter != null) {
                    if (currentItem >= adapter.c()) {
                        BaseSwiper.this.tt.c(0, false);
                    } else {
                        BaseSwiper.this.tt.c(currentItem, true);
                    }
                }
            }
        };
        this.eo = new Runnable() { // from class: com.byazt.nw.BaseSwiper.3
            @Override // java.lang.Runnable
            public void run() {
                if (BaseSwiper.this.yp) {
                    BaseSwiper.this.md = false;
                    int currentItem = BaseSwiper.this.tt.getCurrentItem() + 1;
                    if (BaseSwiper.this.f17657z) {
                        if (currentItem >= 1024) {
                            BaseSwiper.this.tt.c(512, false);
                        } else {
                            BaseSwiper.this.tt.c(currentItem, true);
                        }
                        BaseSwiper baseSwiper = BaseSwiper.this;
                        baseSwiper.postDelayed(baseSwiper.eo, BaseSwiper.this.f17652n);
                        return;
                    }
                    com.byazt.an.tt adapter = BaseSwiper.this.tt.getAdapter();
                    if (adapter != null) {
                        if (currentItem >= adapter.c()) {
                            BaseSwiper.this.tt.c(0, false);
                            BaseSwiper baseSwiper2 = BaseSwiper.this;
                            baseSwiper2.postDelayed(baseSwiper2.eo, BaseSwiper.this.f17652n);
                        } else {
                            BaseSwiper.this.tt.c(currentItem, true);
                            BaseSwiper baseSwiper3 = BaseSwiper.this;
                            baseSwiper3.postDelayed(baseSwiper3.eo, BaseSwiper.this.f17652n);
                        }
                    }
                }
            }
        };
        this.ve = context;
        this.gu = new FrameLayout(context);
        this.tt = c();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.gu.addView(this.tt, layoutParams);
        addView(this.gu);
    }

    public BaseSwiper da(int i10) {
        this.f17649da = i10;
        c(this.sl, this.f17656x, this.f17650i, i10, true);
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.yp) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                if (!this.nu) {
                    uj();
                }
            } else if (action == 0) {
                n();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public com.byazt.an.tt getAdapter() {
        return this.tt.getAdapter();
    }

    public int getCurrentItem() {
        return this.tt.getCurrentItem();
    }

    public ViewPager getViewPager() {
        return this.tt;
    }

    public BaseSwiper<T> i(int i10) {
        this.f17650i = i10;
        c(this.sl, this.f17656x, i10, this.f17649da, true);
        return this;
    }

    public void setOnPageChangeListener(com.byazt.nw.c cVar) {
        this.yv = cVar;
    }

    public void setTwoItems(boolean z10) {
        this.rh = z10;
    }

    public abstract View sl(int i10);

    public void t(int i10) {
        if (this.yv != null) {
            int iC = com.byazt.nw.tt.c(this.f17657z, i10, this.f17647c.size());
            this.yv.c(this.f17657z, iC, i10, iC == 0, iC == this.f17647c.size() - 1);
        }
        if (this.f17655u) {
            this.gr.c(i10);
        }
    }

    public void u(int i10) {
        if (i10 == 1 && this.nu) {
            n();
        }
        com.byazt.nw.c cVar = this.yv;
        if (cVar != null) {
            cVar.c(this.f17657z, i10);
        }
    }

    public void yp(int i10) {
        c(this.sl, this.f17656x, this.f17650i, this.f17649da, true);
        if (this.zm == null) {
            this.zm = new c();
            this.tt.c((ViewPager.uj) this);
            this.tt.setAdapter(this.zm);
        }
        if (this.f17657z) {
            if (i10 >= 1024) {
                this.tt.c(512, false);
                return;
            } else {
                this.tt.c(i10, true);
                return;
            }
        }
        if (i10 < 0 || i10 >= this.f17647c.size()) {
            return;
        }
        this.tt.c(i10, true);
    }

    public void z(int i10) {
        removeCallbacks(this.f17648d);
        postDelayed(this.f17648d, i10);
    }

    public BaseSwiper a(int i10) {
        this.gr.setSelectedColor(i10);
        return this;
    }

    public BaseSwiper n(int i10) {
        if (i10 < 0) {
            i10 = this.f17652n;
        }
        this.uj = i10;
        uj();
        return this;
    }

    public BaseSwiper sp(int i10) {
        this.gr.setUnSelectedColor(i10);
        return this;
    }

    public BaseSwiper tt(float f10) {
        this.gr.setIndicatorHeight((int) f10);
        return this;
    }

    public BaseSwiper uj(float f10) {
        this.gr.setIndicatorY(f10);
        return this;
    }

    public BaseSwiper ve(float f10) {
        this.gr.setIndicatorX(f10);
        return this;
    }

    public BaseSwiper x(int i10) {
        this.f17656x = i10;
        c(this.sl, i10, this.f17650i, this.f17649da, true);
        return this;
    }

    public void a() {
        int i10;
        c(this.sl, this.f17656x, this.f17650i, this.f17649da, true);
        if (this.zm == null) {
            this.zm = new c();
            this.tt.c((ViewPager.uj) this);
            this.tt.setAdapter(this.zm);
        }
        int i11 = this.my;
        if (i11 < 0 || i11 >= this.f17647c.size()) {
            this.my = 0;
        }
        if (this.f17657z) {
            i10 = this.my + 512;
        } else {
            i10 = this.my;
        }
        this.tt.c(i10, true);
    }

    public ViewPager c() {
        return new SwiperViewPager(getContext());
    }

    public void sp() {
        removeCallbacks(this.f17648d);
    }

    public BaseSwiper tt() {
        this.gr.c();
        return this;
    }

    public BaseSwiper uj(int i10) {
        this.f17652n = i10;
        uj();
        return this;
    }

    public BaseSwiper ve(int i10) {
        this.sp = i10;
        if (this.f17653p == null) {
            this.f17653p = new tt(this.ve, f17645h);
        }
        this.tt.setScroller(this.f17653p);
        return this;
    }

    private boolean x() {
        return this.f17647c.size() <= 2 && this.f17657z;
    }

    public BaseSwiper c(String str) {
        if (TextUtils.equals(str, "rectangle")) {
            this.gr = new RectangleIndicator(this.ve);
        } else {
            this.gr = new DotIndicator(this.ve);
        }
        addView(this.gr, new FrameLayout.LayoutParams(-2, -2));
        return this;
    }

    public BaseSwiper tt(String str) {
        this.gr.setIndicatorDirection(str);
        return this;
    }

    public BaseSwiper n(float f10) {
        this.f17654t = f10;
        return this;
    }

    public BaseSwiper tt(int i10) {
        this.f17646a = i10;
        return this;
    }

    public BaseSwiper uj(boolean z10) {
        this.gr.setLoop(z10);
        if (this.f17657z != z10) {
            int iC = com.byazt.nw.tt.c(z10, this.tt.getCurrentItem(), this.f17647c.size());
            this.f17657z = z10;
            c cVar = this.zm;
            if (cVar != null) {
                cVar.ve();
                this.tt.setCurrentItem(iC);
            }
        }
        return this;
    }

    public BaseSwiper n(boolean z10) {
        this.nu = z10;
        return this;
    }

    public BaseSwiper tt(boolean z10) {
        this.f17651m = z10;
        return this;
    }

    public void n() {
        removeCallbacks(this.eo);
    }

    public BaseSwiper ve(boolean z10) {
        this.f17655u = z10;
        return this;
    }

    public BaseSwiper c(float f10) {
        this.gr.setIndicatorWidth((int) f10);
        return this;
    }

    public BaseSwiper ve(String str) {
        this.sl = str;
        c(str, this.f17656x, this.f17650i, this.f17649da, true);
        return this;
    }

    public BaseSwiper c(int i10) {
        this.qy = i10;
        return this;
    }

    public BaseSwiper c(boolean z10) {
        this.yp = z10;
        uj();
        return this;
    }

    public void ve() {
        int i10;
        c(this.sl, this.f17656x, this.f17650i, this.f17649da, true);
        if (this.zm == null) {
            this.zm = new c();
            this.tt.c((ViewPager.uj) this);
            this.tt.setAdapter(this.zm);
        }
        int i11 = this.my;
        if (i11 < 0 || i11 >= this.f17647c.size()) {
            this.my = 0;
        }
        if (this.f17657z) {
            i10 = this.my + 512;
        } else {
            i10 = this.my;
        }
        this.tt.c(i10, true);
        if (!this.f17657z) {
            t(i10);
        }
        if (this.yp) {
            uj();
        }
    }

    public void c(String str, int i10, int i11, int i12, boolean z10) {
        c cVar = this.zm;
        if (cVar != null) {
            cVar.ve();
        }
        this.tt.setPageMargin(i10);
        if (i11 > 0 || i12 > 0) {
            if (this.qy == 1) {
                this.tt.setPadding(0, i11 + i10, 0, i12 + i10);
            } else {
                this.tt.setPadding(i11 + i10, 0, i12 + i10, 0);
            }
            this.gu.setClipChildren(false);
            this.tt.setClipChildren(false);
            this.tt.setClipToPadding(false);
        }
        if (this.qy == 1) {
            uj ujVar = new uj();
            ujVar.c(str);
            this.tt.c(true, (ViewPager.n) ujVar);
            this.tt.setOverScrollMode(2);
        } else if (TextUtils.equals(str, "linear")) {
            this.tt.c(false, (ViewPager.n) new ve());
        } else if (TextUtils.equals(str, "cube")) {
            this.tt.c(false, (ViewPager.n) new com.byazt.gr.c());
        } else if (TextUtils.equals(str, "fade")) {
            this.tt.c(false, (ViewPager.n) new com.byazt.gr.tt());
        } else {
            this.tt.c(false, (ViewPager.n) null);
        }
        this.tt.setOffscreenPageLimit((int) this.f17654t);
    }

    public void uj() {
        int i10;
        removeCallbacks(this.eo);
        int i11 = this.f17652n;
        if (this.md && (i10 = this.uj) > 0) {
            i11 = i10;
        }
        postDelayed(this.eo, i11);
    }

    public View c(int i10, int i11) {
        if (this.f17647c.size() == 0) {
            return new View(getContext());
        }
        View viewSl = sl(i11);
        FrameLayout frameLayout = new FrameLayout(getContext());
        if (viewSl instanceof ViewGroup) {
            frameLayout.setClipChildren(true);
        }
        if (x()) {
            viewSl.setTag("two_items_tag");
        }
        if (viewSl.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewSl.getParent()).removeView(viewSl);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.addView(viewSl, layoutParams);
        frameLayout.addView(new View(getContext()), new FrameLayout.LayoutParams(-1, -1));
        if (x()) {
            frameLayout.setTag(Integer.valueOf(i10));
        }
        return frameLayout;
    }

    public BaseSwiper<T> c(T t10) {
        if (t10 != null) {
            this.f17647c.add(t10);
            if (this.f17655u) {
                this.gr.tt();
            }
        }
        c cVar = this.zm;
        if (cVar != null) {
            cVar.ve();
            this.gr.c(this.my, this.tt.getCurrentItem());
        }
        return this;
    }

    @Override // com.byazt.an.ViewPager.uj
    public void c(int i10, float f10, int i11) {
        com.byazt.nw.c cVar = this.yv;
        if (cVar != null) {
            boolean z10 = this.f17657z;
            cVar.c(z10, com.byazt.nw.tt.c(z10, i10, this.f17647c.size()), f10, i11);
        }
        if (x()) {
            c(i10, findViewWithTag(Integer.valueOf(i10)));
            if (f10 > 0.0f) {
                int i12 = i10 + 1;
                c(i12, findViewWithTag(Integer.valueOf(i12)));
            }
        }
    }

    private void c(int i10, View view) {
        View viewFindViewWithTag;
        if ((view instanceof ViewGroup) && (viewFindViewWithTag = view.findViewWithTag("two_items_tag")) == null) {
            T t10 = this.f17647c.get(com.byazt.nw.tt.c(true, i10, this.f17647c.size()));
            if (t10 == null) {
                return;
            }
            if (t10 instanceof com.byazt.xj.ve) {
                viewFindViewWithTag = ((com.byazt.xj.ve) t10).i();
            } else if (t10 instanceof View) {
                viewFindViewWithTag = (View) t10;
            }
            if (viewFindViewWithTag == null) {
                return;
            }
            if (viewFindViewWithTag.getParent() instanceof ViewGroup) {
                ((ViewGroup) viewFindViewWithTag.getParent()).removeView(viewFindViewWithTag);
            }
            ((ViewGroup) view).addView(viewFindViewWithTag);
        }
    }
}
