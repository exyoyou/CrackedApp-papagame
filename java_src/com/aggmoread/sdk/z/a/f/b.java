package com.aggmoread.sdk.z.a.f;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.aggmoread.sdk.z.a.m.p;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f3309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f3310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f3311c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f3312d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ViewTreeObserver.OnGlobalLayoutListener f3313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f3314f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.u.g<ImageView> f3315g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected ViewGroup f3316h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.h f3317i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private l f3318j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AtomicBoolean f3319k = new AtomicBoolean();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f3320l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected com.aggmoread.sdk.z.a.s.a f3321m;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup viewGroup = b.this.f3316h;
            if (viewGroup != null && viewGroup.getParent() != null) {
                ((ViewGroup) b.this.f3316h.getParent()).removeView(b.this.f3316h);
            }
            if (b.this.f3318j != null) {
                b.this.f3318j.b();
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.f.b$b, reason: collision with other inner class name */
    class C0067b extends com.aggmoread.sdk.z.a.u.h {
        C0067b(Context context) {
            super(context);
        }

        @Override // com.aggmoread.sdk.z.a.u.h
        public boolean a(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            return true;
        }

        @Override // android.view.View
        protected void onWindowVisibilityChanged(int i10) {
            if (i10 != 0 || b.this.f3319k.get()) {
                return;
            }
            b.this.a(this);
        }
    }

    class c implements ViewTreeObserver.OnScrollChangedListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            b bVar = b.this;
            bVar.a(bVar.f3316h);
        }
    }

    class d implements ViewTreeObserver.OnGlobalLayoutListener {
        d() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            b bVar = b.this;
            bVar.a(bVar.f3316h);
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.f();
        }
    }

    class f implements com.aggmoread.sdk.z.a.p.a.g {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f3328b;

            a(Bitmap bitmap) {
                this.f3328b = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                ((ImageView) b.this.f3315g.a()).setImageBitmap(this.f3328b);
                b.this.d();
            }
        }

        f() {
        }

        @Override // com.aggmoread.sdk.z.a.p.a.g
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.a.g.f fVar) {
            String str;
            b bVar = b.this;
            if (fVar != null) {
                str = "广告渲染失败：code = " + fVar.a() + ", msg = " + fVar.b();
            } else {
                if (bArr != null) {
                    p.a().post(new a(com.aggmoread.sdk.z.a.n.a.a().a(bVar.f3315g.getWidth(), b.this.f3315g.getHeight(), Bitmap.Config.ARGB_8888, ImageView.ScaleType.CENTER_INSIDE, bArr)));
                    return;
                }
                str = "广告素材为空!";
            }
            bVar.a(str);
        }
    }

    class g implements com.aggmoread.sdk.z.a.s.a.InterfaceC0092a {
        g() {
        }

        @Override // com.aggmoread.sdk.z.a.s.a.InterfaceC0092a
        public void a(View view, com.aggmoread.sdk.z.a.g.d dVar) {
            b.this.e();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3331b;

        h(String str) {
            this.f3331b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f3318j != null) {
                b.this.f3318j.a(this.f3331b);
            }
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f3318j != null) {
                b.this.f3318j.onRenderSuccess();
            }
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            b.this.f3321m.a(com.aggmoread.sdk.z.a.m.b.a(bVar.f3316h, bVar.f3315g, b.this.f3317i.f3465f, b.this.f3317i.f3467h));
            if (b.this.f3318j != null) {
                b.this.f3318j.a();
            }
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f3318j == null || !b.this.f3319k.get()) {
                return;
            }
            b.this.f3318j.c();
        }
    }

    public interface l {
        void a();

        void a(String str);

        void b();

        void c();

        void onRenderSuccess();
    }

    public b(Context context) {
        this.f3314f = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f3320l = true;
        p.a().post(new i());
    }

    public View a() {
        if (!this.f3320l) {
            h();
        }
        if (this.f3316h == null) {
            this.f3316h = a(this.f3314f);
        }
        this.f3321m = com.aggmoread.sdk.z.a.s.a.a(this.f3316h, new g());
        return this.f3316h;
    }

    public int b() {
        return -1;
    }

    public String c() {
        return "";
    }

    public void h() {
        String str;
        if (this.f3320l) {
            return;
        }
        if (this.f3317i == null) {
            a("广告素材为空!");
            return;
        }
        if (this.f3316h == null) {
            this.f3316h = a(this.f3314f);
        }
        this.f3312d = new c();
        this.f3313e = new d();
        this.f3316h.getViewTreeObserver().addOnGlobalLayoutListener(this.f3313e);
        this.f3316h.getViewTreeObserver().addOnScrollChangedListener(this.f3312d);
        if (TextUtils.isEmpty(this.f3317i.f3464e)) {
            str = "";
        } else {
            this.f3310b.setText(this.f3317i.f3464e);
            str = this.f3317i.f3464e;
        }
        if (!TextUtils.isEmpty(this.f3317i.f3463d)) {
            str = this.f3317i.f3463d;
        }
        this.f3309a.setText(str);
        this.f3311c.setOnClickListener(new e());
        com.aggmoread.sdk.z.a.p.a.a(this.f3317i.f3460a, null, new f());
    }

    private ViewGroup a(Context context) {
        C0067b c0067b = new C0067b(context);
        c0067b.setBackgroundColor(-1);
        int iA = com.aggmoread.sdk.z.a.m.b.a(context, 10.0d);
        c0067b.setPadding(iA, iA, iA, iA);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, com.aggmoread.sdk.z.a.m.b.a(this.f3314f, 48.0d)));
        this.f3315g = new com.aggmoread.sdk.z.a.u.g<>(context);
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f3315g.a(imageView);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 0.25f;
        layoutParams.rightMargin = iA;
        this.f3315g.setLayoutParams(layoutParams);
        linearLayout.addView(this.f3315g);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -1);
        layoutParams2.weight = 0.75f;
        relativeLayout.setLayoutParams(layoutParams2);
        this.f3310b = new TextView(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(10);
        layoutParams3.rightMargin = com.aggmoread.sdk.z.a.m.b.a(context, 15.0d);
        this.f3310b.setLayoutParams(layoutParams3);
        this.f3310b.setMaxLines(2);
        this.f3310b.setTextSize(15.0f);
        this.f3310b.setEllipsize(TextUtils.TruncateAt.END);
        this.f3310b.setTextColor(-16777216);
        this.f3310b.setText("  ");
        relativeLayout.addView(this.f3310b);
        this.f3309a = new TextView(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(12);
        layoutParams4.rightMargin = com.aggmoread.sdk.z.a.m.b.a(context, 30.0d);
        this.f3309a.setLayoutParams(layoutParams4);
        this.f3309a.setMaxLines(1);
        this.f3309a.setTextSize(14.0f);
        this.f3309a.setEllipsize(TextUtils.TruncateAt.END);
        this.f3309a.setTextColor(Color.parseColor("#8a8a8a"));
        this.f3309a.setText("  ");
        relativeLayout.addView(this.f3309a);
        linearLayout.addView(relativeLayout);
        c0067b.addView(linearLayout);
        this.f3311c = new ImageView(context);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(context, 16.0d), com.aggmoread.sdk.z.a.m.b.a(context, 16.0d));
        layoutParams5.gravity = 53;
        this.f3311c.setLayoutParams(layoutParams5);
        com.aggmoread.sdk.z.a.m.j.a(this.f3311c, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAABaklEQVRYR+2VP0vEQBDF31tsBfHTWO5saWOjoOefQq5RK0v9AtpZqYVi4X9QCyutJqn8OqK1OLKSwBHPu9wtEoSkTObN/PJ2ZpZo+GHD9dECtA60Dgx1QFUfAMw457re+6c6Y6uqswBOSL6IyMIgzVCALMveAUwC+DCz+RDC46CEqjpH8h7AhJm9hRCmkgBUtUPyEgDN7JPkmohc9UuaZdmymZ2TdADMzFZCCNdJAFEcEwO4iBBF4m4I4aw3saqukzwtYwCs/gbaqxt6BGVwBQIkN733x/F7nucbZnZUxFrd4jG+NkAfJ+Kr7aLowTjFRwaIgorVvW6O9OelcCQHSlEfiNhwP/qizsj+P4BGj6A6CQB2Cpv3/rwJGx3DRhdRnudLZhZX7/cqds4teu/v6qxiAB0RuU1axSmXEYBXEZlOBdg3swWSWyLyXGe243VM8tDMbkIIu0kAdQqmxIy1iFIKVrUtQOtA68AX4HzJIQMvlE8AAAAASUVORK5CYII=");
        c0067b.addView(this.f3311c);
        try {
            com.aggmoread.sdk.z.a.g.i iVarE = com.aggmoread.sdk.z.a.h.a.d().e();
            if (iVarE != null) {
                ImageView imageView2 = new ImageView(this.f3314f);
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
                layoutParams6.gravity = 85;
                c0067b.addView(imageView2, layoutParams6);
            }
        } catch (Exception unused) {
        }
        return c0067b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        p.a().post(new k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        p.a().post(new a());
    }

    public void g() {
        ViewGroup viewGroup = this.f3316h;
        if (viewGroup != null) {
            if (this.f3312d != null) {
                viewGroup.getViewTreeObserver().removeOnScrollChangedListener(this.f3312d);
                this.f3312d = null;
            }
            if (this.f3313e != null) {
                this.f3316h.getViewTreeObserver().removeOnGlobalLayoutListener(this.f3313e);
                this.f3313e = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (this.f3319k.get() || !com.aggmoread.sdk.z.a.m.b.a(view)) {
            return;
        }
        view.getViewTreeObserver().removeOnScrollChangedListener(this.f3312d);
        view.getViewTreeObserver().removeOnGlobalLayoutListener(this.f3313e);
        this.f3319k.set(true);
        p.a().post(new j());
    }

    public void a(l lVar) {
        this.f3318j = lVar;
    }

    public void a(com.aggmoread.sdk.z.a.g.h hVar) {
        this.f3317i = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        p.a().post(new h(str));
    }
}
