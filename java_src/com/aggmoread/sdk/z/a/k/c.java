package com.aggmoread.sdk.z.a.k;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.aggmoread.sdk.z.a.m.p;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f3646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f3647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f3648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f3649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.aggmoread.sdk.z.a.s.a f3650e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f3651f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.u.g<ImageView> f3652g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected ViewGroup f3653h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.h f3654i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private k f3655j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AtomicBoolean f3656k = new AtomicBoolean();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AtomicBoolean f3657l = new AtomicBoolean();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f3658m = false;

    class a extends com.aggmoread.sdk.z.a.u.h {
        a(Context context) {
            super(context);
        }

        @Override // com.aggmoread.sdk.z.a.u.h
        public boolean a(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            c.this.a(this);
        }

        @Override // android.view.View
        protected void onWindowVisibilityChanged(int i10) {
            if (i10 == 0 && !c.this.f3656k.get() && com.aggmoread.sdk.z.a.m.b.a(this)) {
                c.this.a(this);
            }
        }
    }

    class b implements ViewTreeObserver.OnScrollChangedListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            c cVar = c.this;
            cVar.a(cVar.f3653h);
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.k.c$c, reason: collision with other inner class name */
    class ViewOnClickListenerC0079c implements View.OnClickListener {
        ViewOnClickListenerC0079c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c.this.f();
        }
    }

    class d implements com.aggmoread.sdk.z.a.p.a.g {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f3663b;

            a(Bitmap bitmap) {
                this.f3663b = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                ((ImageView) c.this.f3652g.a()).setImageBitmap(this.f3663b);
                c.this.d();
            }
        }

        d() {
        }

        @Override // com.aggmoread.sdk.z.a.p.a.g
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.a.g.f fVar) {
            String str;
            c cVar = c.this;
            if (fVar != null) {
                str = "广告渲染失败：code = " + fVar.a() + ", msg = " + fVar.b();
            } else {
                if (bArr != null) {
                    p.a().post(new a(com.aggmoread.sdk.z.a.n.a.a().a(cVar.f3652g.getWidth(), c.this.f3652g.getHeight(), Bitmap.Config.ARGB_8888, ImageView.ScaleType.CENTER_INSIDE, bArr)));
                    return;
                }
                str = "广告素材为空!";
            }
            cVar.a(str);
        }
    }

    class e implements com.aggmoread.sdk.z.a.s.a.InterfaceC0092a {
        e() {
        }

        @Override // com.aggmoread.sdk.z.a.s.a.InterfaceC0092a
        public void a(View view, com.aggmoread.sdk.z.a.g.d dVar) {
            c.this.e();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3666b;

        f(String str) {
            this.f3666b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f3655j != null) {
                c.this.f3655j.a(this.f3666b);
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f3655j != null) {
                c.this.f3655j.onRenderSuccess();
            }
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f3655j != null) {
                c.this.f3655j.a();
            }
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f3655j == null || !c.this.f3656k.get()) {
                return;
            }
            c.this.f3655j.c();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup viewGroup = c.this.f3653h;
            if (viewGroup != null && viewGroup.getParent() != null) {
                ViewParent parent = c.this.f3653h.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(c.this.f3653h);
                }
            }
            if (c.this.f3655j != null) {
                c.this.f3655j.b();
            }
        }
    }

    public interface k {
        void a();

        void a(String str);

        void b();

        void c();

        void onRenderSuccess();
    }

    public c(Context context) {
        this.f3651f = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f3658m = true;
        p.a().post(new g());
    }

    public View a() {
        if (this.f3653h == null) {
            this.f3653h = a(this.f3651f);
        }
        this.f3650e = com.aggmoread.sdk.z.a.s.a.a(this.f3653h, new e());
        return this.f3653h;
    }

    public int b() {
        return -1;
    }

    public String c() {
        return "";
    }

    public void g() {
        ViewGroup viewGroup = this.f3653h;
        if (viewGroup == null || this.f3649d == null) {
            return;
        }
        viewGroup.getViewTreeObserver().removeOnScrollChangedListener(this.f3649d);
        this.f3649d = null;
    }

    public void h() {
        String str;
        if (this.f3658m) {
            return;
        }
        if (this.f3654i == null) {
            a("广告素材为空!");
            return;
        }
        this.f3657l.set(true);
        if (this.f3653h == null) {
            this.f3653h = a(this.f3651f);
        }
        this.f3649d = new b();
        this.f3653h.getViewTreeObserver().addOnScrollChangedListener(this.f3649d);
        if (TextUtils.isEmpty(this.f3654i.f3464e)) {
            str = "";
        } else {
            this.f3647b.setText(this.f3654i.f3464e);
            str = this.f3654i.f3464e;
        }
        if (!TextUtils.isEmpty(this.f3654i.f3463d)) {
            str = this.f3654i.f3463d;
        }
        this.f3646a.setText(str);
        this.f3648c.setOnClickListener(new ViewOnClickListenerC0079c());
        com.aggmoread.sdk.z.a.p.a.a(this.f3654i.f3460a, null, new d());
        a(this.f3653h);
    }

    private ViewGroup a(Context context) {
        a aVar = new a(context);
        aVar.setBackgroundColor(-1);
        int iA = com.aggmoread.sdk.z.a.m.b.a(context, 10.0d);
        aVar.setPadding(iA, iA, iA, iA);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, com.aggmoread.sdk.z.a.m.b.a(context, 90.0d)));
        this.f3652g = new com.aggmoread.sdk.z.a.u.g<>(context);
        ImageView imageView = new ImageView(context);
        this.f3652g.a(imageView);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 1.0f;
        layoutParams.rightMargin = iA;
        this.f3652g.setLayoutParams(layoutParams);
        linearLayout.addView(this.f3652g);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -1);
        layoutParams2.weight = 1.0f;
        layoutParams2.leftMargin = iA;
        relativeLayout.setLayoutParams(layoutParams2);
        this.f3647b = new TextView(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(10);
        layoutParams3.rightMargin = com.aggmoread.sdk.z.a.m.b.a(context, 15.0d);
        this.f3647b.setLayoutParams(layoutParams3);
        this.f3647b.setMaxLines(2);
        this.f3647b.setTextSize(15.0f);
        this.f3647b.setEllipsize(TextUtils.TruncateAt.END);
        this.f3647b.setTextColor(-16777216);
        this.f3647b.setText("广告详细信息广告详细信息广告详细信息广告详细信息广告详细信息");
        relativeLayout.addView(this.f3647b);
        this.f3646a = new TextView(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(12);
        layoutParams4.rightMargin = com.aggmoread.sdk.z.a.m.b.a(context, 30.0d);
        this.f3646a.setLayoutParams(layoutParams4);
        this.f3646a.setMaxLines(1);
        this.f3646a.setTextSize(13.0f);
        this.f3646a.setEllipsize(TextUtils.TruncateAt.END);
        this.f3646a.setTextColor(Color.parseColor("#8a8a8a"));
        this.f3646a.setText("广告标题信息广告标题信息");
        relativeLayout.addView(this.f3646a);
        linearLayout.addView(relativeLayout);
        aVar.addView(linearLayout);
        this.f3648c = new ImageView(context);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(context, 16.0d), com.aggmoread.sdk.z.a.m.b.a(context, 16.0d));
        layoutParams5.gravity = 85;
        this.f3648c.setLayoutParams(layoutParams5);
        com.aggmoread.sdk.z.a.m.j.a(this.f3648c, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAe9JREFUOE+lk79rVEEQx2du94GdhYlgdxCbiNjGJipJIYIIASuxiNhoYSnHO3Yfw5vlHsHKykpiYZeQgAiSIuKPJoJYKGIViFUK9Q+Q9+ZG97g9ngeK6LYz82H3O59F+M+D0/NE1BWR2wAwDwCXxvVnAPDJGPOAiA7aM78AvPerAPAQEa/Wdf2qqqpvsTnP82NZlp1T1U0AuMnMjxJkAvDeL6rqcgiB/vQq5xwh4i4zv459IwARzYjIITNnzrklAPgcQthvg/I8P2WMOR5CeOG9r40xJ4jo6wjgvb+nqi9DCE/7/f5pY8wHVT2ZIM65OQDYQsRrzPzROXcZEc8z890E2Gma5npVVV8isA2x1n4XkS0RuTUYDN6NM5m11j5m5osJ0DCzbV+5BXlrrb1DRHvtuvd+NJMAdXx/u6HX6x3NsmwHERfaz0k9MYc4kwBPmqa5kdZGREdEZBMR7zdNczidSVyrtXadma8kwBoi7pVluU1EHRHZUNX1GOp0JjHYoihWVPUsM/fSGrvD4XC/LEvjnLsAADMhhCjN5MRMrLXzZVluFEUhnU5nLlrZFmlVVbt/KdJBsnFa5UUAeK6qKyLyJq01z/NZY8wCIm4DwFKycGJi+6pjK3s/xTkDAMvj2i4AvDfGrEX7fvuZ/uVn/wBrwwgg6o7CmAAAAABJRU5ErkJggg==");
        aVar.addView(this.f3648c);
        try {
            com.aggmoread.sdk.z.a.g.i iVarE = com.aggmoread.sdk.z.a.h.a.d().e();
            if (iVarE != null) {
                ImageView imageView2 = new ImageView(this.f3651f);
                if (iVarE.f3469a != 0) {
                    imageView2.setImageResource(com.aggmoread.sdk.z.a.h.a.d().e().f3469a);
                } else {
                    Bitmap bitmap = iVarE.f3470b;
                    if (bitmap != null) {
                        imageView2.setImageBitmap(bitmap);
                    }
                }
                imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
                layoutParams6.gravity = 53;
                aVar.addView(imageView2, layoutParams6);
            }
        } catch (Exception unused) {
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        p.a().post(new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        p.a().post(new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (this.f3657l.get() && !this.f3656k.get() && com.aggmoread.sdk.z.a.m.b.a(view)) {
            view.getViewTreeObserver().removeOnScrollChangedListener(this.f3649d);
            this.f3656k.set(true);
            ViewGroup viewGroup = this.f3653h;
            com.aggmoread.sdk.z.a.u.g<ImageView> gVar = this.f3652g;
            com.aggmoread.sdk.z.a.g.h hVar = this.f3654i;
            this.f3650e.a(com.aggmoread.sdk.z.a.m.b.a(viewGroup, gVar, hVar.f3465f, hVar.f3467h));
            p.a().post(new h());
        }
    }

    public void a(com.aggmoread.sdk.z.a.g.h hVar) {
        this.f3654i = hVar;
    }

    public void a(k kVar) {
        this.f3655j = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        p.a().post(new f(str));
    }
}
