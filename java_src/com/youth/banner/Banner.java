package com.youth.banner;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.youth.banner.loader.ImageLoaderInterface;
import com.youth.banner.view.BannerViewPager;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class Banner extends FrameLayout implements ViewPager.OnPageChangeListener {
    private int A;
    private List<String> B;
    private List C;
    private List<View> D;
    private List<ImageView> E;
    private Context F;
    private BannerViewPager G;
    private TextView H;
    private TextView I;
    private TextView J;
    private LinearLayout K;
    private LinearLayout L;
    private LinearLayout M;
    private ImageView N;
    private ImageLoaderInterface O;
    private b P;
    private ViewPager.OnPageChangeListener Q;
    private com.youth.banner.b R;
    private ya.a S;
    private ya.b T;
    private DisplayMetrics U;
    private e V;
    private final Runnable W;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f90221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f90222c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f90223d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f90224e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f90225f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f90226g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f90227h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f90228i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f90229j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f90230k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f90231l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f90232m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f90233n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f90234o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f90235p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f90236q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f90237r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f90238s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f90239t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f90240u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f90241v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f90242w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f90243x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f90244y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f90245z;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Banner.this.f90242w <= 1 || !Banner.this.f90232m) {
                return;
            }
            Banner banner = Banner.this;
            banner.f90243x = (banner.f90243x % (Banner.this.f90242w + 1)) + 1;
            if (Banner.this.f90243x == 1) {
                Banner.this.G.setCurrentItem(Banner.this.f90243x, false);
                Banner.this.V.d(Banner.this.W);
            } else {
                Banner.this.G.setCurrentItem(Banner.this.f90243x);
                Banner.this.V.h(Banner.this.W, Banner.this.f90230k);
            }
        }
    }

    class b extends PagerAdapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f90248b;

            a(int i10) {
                this.f90248b = i10;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = Banner.this.f90221b;
                Banner.this.S.OnBannerClick(this.f90248b);
            }
        }

        /* JADX INFO: renamed from: com.youth.banner.Banner$b$b, reason: collision with other inner class name */
        class ViewOnClickListenerC1142b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f90250b;

            ViewOnClickListenerC1142b(int i10) {
                this.f90250b = i10;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Banner.this.T.OnBannerClick(Banner.this.L(this.f90250b));
            }
        }

        b() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return Banner.this.D.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i10) {
            viewGroup.addView((View) Banner.this.D.get(i10));
            View view = (View) Banner.this.D.get(i10);
            if (Banner.this.S != null) {
                view.setOnClickListener(new a(i10));
            }
            if (Banner.this.T != null) {
                view.setOnClickListener(new ViewOnClickListenerC1142b(i10));
            }
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    public Banner(Context context) {
        this(context, null);
    }

    private void G() {
        if (this.B.size() != this.C.size()) {
            throw new RuntimeException("[Banner] --> The number of titles and images is different");
        }
        int i10 = this.f90238s;
        if (i10 != -1) {
            this.M.setBackgroundColor(i10);
        }
        if (this.f90237r != -1) {
            this.M.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.f90237r));
        }
        int i11 = this.f90239t;
        if (i11 != -1) {
            this.H.setTextColor(i11);
        }
        int i12 = this.f90240u;
        if (i12 != -1) {
            this.H.setTextSize(0, i12);
        }
        List<String> list = this.B;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.H.setText(this.B.get(0));
        this.H.setVisibility(0);
        this.M.setVisibility(0);
    }

    private void l() {
        LinearLayout.LayoutParams layoutParams;
        this.E.clear();
        this.K.removeAllViews();
        this.L.removeAllViews();
        for (int i10 = 0; i10 < this.f90242w; i10++) {
            ImageView imageView = new ImageView(this.F);
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            if (i10 == 0) {
                layoutParams = new LinearLayout.LayoutParams(this.f90225f, this.f90226g);
                imageView.setImageResource(this.f90234o);
            } else {
                layoutParams = new LinearLayout.LayoutParams(this.f90223d, this.f90224e);
                imageView.setImageResource(this.f90235p);
            }
            int i11 = this.f90222c;
            layoutParams.leftMargin = i11;
            layoutParams.rightMargin = i11;
            this.E.add(imageView);
            int i12 = this.f90229j;
            if (i12 == 1 || i12 == 4) {
                this.K.addView(imageView, layoutParams);
            } else if (i12 == 5) {
                this.L.addView(imageView, layoutParams);
            }
        }
    }

    private void m(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Banner);
        this.f90223d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_indicator_width, this.f90227h);
        this.f90224e = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_indicator_height, this.f90227h);
        this.f90225f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_indicator_selected_width, this.f90227h);
        this.f90226g = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_indicator_selected_height, this.f90227h);
        this.f90222c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_indicator_margin, 5);
        this.f90234o = typedArrayObtainStyledAttributes.getResourceId(R.styleable.Banner_indicator_drawable_selected, R.drawable.gray_radius);
        this.f90235p = typedArrayObtainStyledAttributes.getResourceId(R.styleable.Banner_indicator_drawable_unselected, R.drawable.white_radius);
        this.A = typedArrayObtainStyledAttributes.getInt(R.styleable.Banner_image_scale_type, this.A);
        this.f90230k = typedArrayObtainStyledAttributes.getInt(R.styleable.Banner_delay_time, 2000);
        this.f90231l = typedArrayObtainStyledAttributes.getInt(R.styleable.Banner_scroll_time, 800);
        this.f90232m = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Banner_is_auto_play, true);
        this.f90238s = typedArrayObtainStyledAttributes.getColor(R.styleable.Banner_title_background, -1);
        this.f90237r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_title_height, -1);
        this.f90239t = typedArrayObtainStyledAttributes.getColor(R.styleable.Banner_title_textcolor, -1);
        this.f90240u = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_title_textsize, -1);
        this.f90236q = typedArrayObtainStyledAttributes.getResourceId(R.styleable.Banner_banner_layout, this.f90236q);
        this.f90228i = typedArrayObtainStyledAttributes.getResourceId(R.styleable.Banner_banner_default_image, R.drawable.no_banner);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void n() {
        this.D.clear();
        int i10 = this.f90229j;
        if (i10 == 1 || i10 == 4 || i10 == 5) {
            l();
            return;
        }
        if (i10 == 3) {
            this.I.setText("1/" + this.f90242w);
            return;
        }
        if (i10 == 2) {
            this.J.setText("1/" + this.f90242w);
        }
    }

    private void o(Context context, AttributeSet attributeSet) {
        this.D.clear();
        m(context, attributeSet);
        View viewInflate = LayoutInflater.from(context).inflate(this.f90236q, (ViewGroup) this, true);
        this.N = (ImageView) viewInflate.findViewById(R.id.bannerDefaultImage);
        this.G = (BannerViewPager) viewInflate.findViewById(R.id.bannerViewPager);
        this.M = (LinearLayout) viewInflate.findViewById(R.id.titleView);
        this.K = (LinearLayout) viewInflate.findViewById(R.id.circleIndicator);
        this.L = (LinearLayout) viewInflate.findViewById(R.id.indicatorInside);
        this.H = (TextView) viewInflate.findViewById(R.id.bannerTitle);
        this.J = (TextView) viewInflate.findViewById(R.id.numIndicator);
        this.I = (TextView) viewInflate.findViewById(R.id.numIndicatorInside);
        this.N.setImageResource(this.f90228i);
        p();
    }

    private void p() {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            com.youth.banner.b bVar = new com.youth.banner.b(this.G.getContext());
            this.R = bVar;
            bVar.a(this.f90231l);
            declaredField.set(this.G, this.R);
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    private void setImageList(List<?> list) {
        Object obj;
        if (list == null || list.size() <= 0) {
            this.N.setVisibility(0);
            return;
        }
        this.N.setVisibility(8);
        n();
        int i10 = 0;
        while (true) {
            int i11 = this.f90242w;
            if (i10 > i11 + 1) {
                return;
            }
            if (i10 == 0) {
                obj = list.get(i11 - 1);
            } else {
                obj = i10 == i11 + 1 ? list.get(0) : list.get(i10 - 1);
            }
            ImageLoaderInterface imageLoaderInterface = this.O;
            View viewCreateImageView = imageLoaderInterface != null ? imageLoaderInterface.createImageView(this.F, obj) : null;
            if (viewCreateImageView == null) {
                viewCreateImageView = new ImageView(this.F);
            }
            setScaleType(viewCreateImageView);
            this.D.add(viewCreateImageView);
            ImageLoaderInterface imageLoaderInterface2 = this.O;
            if (imageLoaderInterface2 != null) {
                imageLoaderInterface2.displayImage(this.F, obj, viewCreateImageView);
            }
            i10++;
        }
    }

    private void setScaleType(View view) {
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            switch (this.A) {
                case 0:
                    imageView.setScaleType(ImageView.ScaleType.CENTER);
                    break;
                case 1:
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    break;
                case 2:
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    break;
                case 3:
                    imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    break;
                case 4:
                    imageView.setScaleType(ImageView.ScaleType.FIT_END);
                    break;
                case 5:
                    imageView.setScaleType(ImageView.ScaleType.FIT_START);
                    break;
                case 6:
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    break;
                case 7:
                    imageView.setScaleType(ImageView.ScaleType.MATRIX);
                    break;
            }
        }
    }

    private void u() {
        int i10 = this.f90242w > 1 ? 0 : 8;
        int i11 = this.f90229j;
        if (i11 == 1) {
            this.K.setVisibility(i10);
            return;
        }
        if (i11 == 2) {
            this.J.setVisibility(i10);
            return;
        }
        if (i11 == 3) {
            this.I.setVisibility(i10);
            G();
        } else if (i11 == 4) {
            this.K.setVisibility(i10);
            G();
        } else {
            if (i11 != 5) {
                return;
            }
            this.L.setVisibility(i10);
            G();
        }
    }

    private void w() {
        int i10 = this.f90241v;
        if (i10 != 0) {
            this.f90243x = i10;
        } else {
            this.f90243x = 1;
        }
        b bVar = this.P;
        if (bVar == null) {
            this.P = new b();
            this.G.addOnPageChangeListener(this);
            this.G.setAdapter(this.P);
        } else {
            bVar.notifyDataSetChanged();
        }
        this.G.setFocusable(true);
        this.G.setCurrentItem(this.f90243x);
        int i11 = this.f90244y;
        if (i11 != -1) {
            this.K.setGravity(i11);
        }
        if (!this.f90233n || this.f90242w <= 1) {
            this.G.setScrollable(false);
        } else {
            this.G.setScrollable(true);
        }
        if (this.f90232m) {
            J();
        }
    }

    public Banner A(int i10) {
        if (i10 == 5) {
            this.f90244y = 19;
        } else if (i10 == 6) {
            this.f90244y = 17;
        } else if (i10 == 7) {
            this.f90244y = 21;
        }
        return this;
    }

    public Banner B(int i10) {
        BannerViewPager bannerViewPager = this.G;
        if (bannerViewPager != null) {
            bannerViewPager.setOffscreenPageLimit(i10);
        }
        return this;
    }

    @Deprecated
    public Banner C(ya.a aVar) {
        this.S = aVar;
        return this;
    }

    public Banner D(ya.b bVar) {
        this.T = bVar;
        return this;
    }

    public Banner E(boolean z10, ViewPager.PageTransformer pageTransformer) {
        this.G.setPageTransformer(z10, pageTransformer);
        return this;
    }

    public Banner F(int i10) {
        this.f90241v = i10;
        return this;
    }

    public Banner H(boolean z10) {
        this.f90233n = z10;
        return this;
    }

    public Banner I() {
        u();
        setImageList(this.C);
        w();
        return this;
    }

    public void J() {
        this.V.i(this.W);
        this.V.h(this.W, this.f90230k);
    }

    public void K() {
        this.V.i(this.W);
    }

    public int L(int i10) {
        int i11 = this.f90242w;
        int i12 = i11 != 0 ? (i10 - 1) % i11 : 0;
        return i12 < 0 ? i12 + i11 : i12;
    }

    public void M(int i10) {
        this.K.setVisibility(8);
        this.J.setVisibility(8);
        this.I.setVisibility(8);
        this.L.setVisibility(8);
        this.H.setVisibility(8);
        this.M.setVisibility(8);
        this.f90229j = i10;
        I();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f90232m) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                J();
            } else if (action == 0) {
                K();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i10) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.Q;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i10);
        }
        if (i10 == 0) {
            int i11 = this.f90243x;
            if (i11 == 0) {
                this.G.setCurrentItem(this.f90242w, false);
                return;
            } else {
                if (i11 == this.f90242w + 1) {
                    this.G.setCurrentItem(1, false);
                    return;
                }
                return;
            }
        }
        if (i10 != 1) {
            return;
        }
        int i12 = this.f90243x;
        int i13 = this.f90242w;
        if (i12 == i13 + 1) {
            this.G.setCurrentItem(1, false);
        } else if (i12 == 0) {
            this.G.setCurrentItem(i13, false);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i10, float f10, int i11) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.Q;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(L(i10), f10, i11);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i10) {
        this.f90243x = i10;
        ViewPager.OnPageChangeListener onPageChangeListener = this.Q;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(L(i10));
        }
        int i11 = this.f90229j;
        if (i11 == 1 || i11 == 4 || i11 == 5) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f90225f, this.f90226g);
            int i12 = this.f90222c;
            layoutParams.leftMargin = i12;
            layoutParams.rightMargin = i12;
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.f90223d, this.f90224e);
            int i13 = this.f90222c;
            layoutParams2.leftMargin = i13;
            layoutParams2.rightMargin = i13;
            List<ImageView> list = this.E;
            int i14 = this.f90245z - 1;
            int i15 = this.f90242w;
            list.get((i14 + i15) % i15).setImageResource(this.f90235p);
            List<ImageView> list2 = this.E;
            int i16 = this.f90245z - 1;
            int i17 = this.f90242w;
            list2.get((i16 + i17) % i17).setLayoutParams(layoutParams2);
            List<ImageView> list3 = this.E;
            int i18 = i10 - 1;
            int i19 = this.f90242w;
            list3.get((i18 + i19) % i19).setImageResource(this.f90234o);
            List<ImageView> list4 = this.E;
            int i20 = this.f90242w;
            list4.get((i18 + i20) % i20).setLayoutParams(layoutParams);
            this.f90245z = i10;
        }
        if (i10 == 0) {
            i10 = this.f90242w;
        }
        if (i10 > this.f90242w) {
            i10 = 1;
        }
        int i21 = this.f90229j;
        if (i21 == 2) {
            this.J.setText(i10 + net.lingala.zip4j.util.e.F0 + this.f90242w);
            return;
        }
        if (i21 != 3) {
            if (i21 == 4) {
                this.H.setText(this.B.get(i10 - 1));
                return;
            } else {
                if (i21 != 5) {
                    return;
                }
                this.H.setText(this.B.get(i10 - 1));
                return;
            }
        }
        this.I.setText(i10 + net.lingala.zip4j.util.e.F0 + this.f90242w);
        this.H.setText(this.B.get(i10 - 1));
    }

    public Banner q(boolean z10) {
        this.f90232m = z10;
        return this;
    }

    public void r() {
        this.V.k(null);
    }

    public Banner s(Class<? extends ViewPager.PageTransformer> cls) {
        try {
            E(true, cls.newInstance());
        } catch (Exception unused) {
        }
        return this;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.Q = onPageChangeListener;
    }

    public Banner t(int i10) {
        this.f90229j = i10;
        return this;
    }

    public void update(List<?> list, List<String> list2) {
        this.B.clear();
        this.B.addAll(list2);
        update(list);
    }

    public Banner v(List<String> list) {
        this.B = list;
        return this;
    }

    public Banner x(int i10) {
        this.f90230k = i10;
        return this;
    }

    public Banner y(ImageLoaderInterface imageLoaderInterface) {
        this.O = imageLoaderInterface;
        return this;
    }

    public Banner z(List<?> list) {
        this.C.addAll(list);
        this.f90242w = list.size();
        return this;
    }

    public Banner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Banner(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f90221b = "banner";
        this.f90222c = 5;
        this.f90229j = 1;
        this.f90230k = 2000;
        this.f90231l = 800;
        this.f90232m = true;
        this.f90233n = true;
        this.f90234o = R.drawable.gray_radius;
        this.f90235p = R.drawable.white_radius;
        this.f90236q = R.layout.banner;
        this.f90242w = 0;
        this.f90244y = -1;
        this.f90245z = 1;
        this.A = 1;
        this.V = new e();
        this.W = new a();
        this.F = context;
        this.B = new ArrayList();
        this.C = new ArrayList();
        this.D = new ArrayList();
        this.E = new ArrayList();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.U = displayMetrics;
        this.f90227h = displayMetrics.widthPixels / 80;
        o(context, attributeSet);
    }

    public void update(List<?> list) {
        this.C.clear();
        this.D.clear();
        this.E.clear();
        this.C.addAll(list);
        this.f90242w = this.C.size();
        I();
    }
}
