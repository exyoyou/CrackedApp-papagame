package com.aggmoread.sdk.z.a.s;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.aggmoread.sdk.z.a.m.l;
import com.aggmoread.sdk.z.a.m.p;
import com.aggmoread.sdk.z.a.u.q;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.xinzhu.overmind.server.user.MindUserHandle;

/* JADX INFO: loaded from: classes7.dex */
public class g implements com.aggmoread.sdk.z.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c f3898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.e f3899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c.a.b f3900c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.a f3901d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Activity f3902e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f3903f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f3904g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ViewGroup f3905h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ImageView f3906i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f3907j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ImageView f3908k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f3910m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f3911n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f3912o;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f3909l = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f3913p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private i f3914q = null;

    class a implements com.aggmoread.sdk.z.a.p.a.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.s.e f3915a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.c f3916b;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.s.g$a$a, reason: collision with other inner class name */
        class RunnableC0096a implements Runnable {
            RunnableC0096a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                com.aggmoread.sdk.z.a.s.e eVar = aVar.f3915a;
                if (eVar instanceof com.aggmoread.sdk.z.a.s.f) {
                    ((com.aggmoread.sdk.z.a.s.f) eVar).a(g.this);
                }
            }
        }

        a(com.aggmoread.sdk.z.a.s.e eVar, com.aggmoread.sdk.z.a.g.c cVar) {
            this.f3915a = eVar;
            this.f3916b = cVar;
        }

        @Override // com.aggmoread.sdk.z.a.p.a.g
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.a.g.f fVar) {
            if (fVar != null) {
                com.aggmoread.sdk.z.a.s.b.a(this.f3915a, com.aggmoread.sdk.z.a.g.f.f3450e);
                return;
            }
            g.this.f3911n = bArr;
            if (g.this.f3911n == null) {
                com.aggmoread.sdk.z.a.s.b.a(this.f3915a, com.aggmoread.sdk.z.a.g.f.f3450e);
                return;
            }
            p.a().post(new RunnableC0096a());
            if (this.f3916b.e().r()) {
                g.this.f3909l = true;
            } else {
                g gVar = g.this;
                gVar.a(gVar.f3906i, g.this.f3905h, g.this.f3907j);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f3919b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView f3920c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f3921d;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f3923b;

            a(Bitmap bitmap) {
                this.f3923b = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!g.this.f3898a.e().r() && (g.this.f3899b instanceof com.aggmoread.sdk.z.a.s.f)) {
                    ((com.aggmoread.sdk.z.a.s.f) g.this.f3899b).a(g.this);
                }
                b bVar = b.this;
                g.this.a(this.f3923b, bVar.f3920c, bVar.f3919b, bVar.f3921d);
            }
        }

        b(ViewGroup viewGroup, ImageView imageView, View view) {
            this.f3919b = viewGroup;
            this.f3920c = imageView;
            this.f3921d = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup viewGroup = this.f3919b;
            if (viewGroup == null) {
                com.aggmoread.sdk.z.a.s.b.a(g.this.f3899b, com.aggmoread.sdk.z.a.g.f.f3449d);
                return;
            }
            int width = viewGroup.getWidth();
            int height = this.f3919b.getHeight();
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_api", "adcontainer w = " + width + " , h = " + height);
            p.a().post(new a(com.aggmoread.sdk.z.a.n.a.a().a(width, height, Bitmap.Config.ARGB_8888, ImageView.ScaleType.CENTER_INSIDE, g.this.f3911n)));
        }
    }

    class c implements com.aggmoread.sdk.z.a.s.a.InterfaceC0092a {

        class a implements com.aggmoread.sdk.z.a.u.c.a {
            a() {
            }

            @Override // com.aggmoread.sdk.z.a.u.c.a
            public void onShow() {
                g.this.f();
            }
        }

        class b implements l.d {

            class a implements Handler.Callback {
                a() {
                }

                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    g.this.f();
                    return false;
                }
            }

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.s.g$c$b$b, reason: collision with other inner class name */
            class C0097b implements Handler.Callback {
                C0097b() {
                }

                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    g.this.f();
                    return false;
                }
            }

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.s.g$c$b$c, reason: collision with other inner class name */
            class C0098c implements Handler.Callback {
                C0098c() {
                }

                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    g.this.f();
                    return false;
                }
            }

            b() {
            }

            @Override // com.aggmoread.sdk.z.a.m.l.d
            public void a() {
                g.this.f();
            }

            @Override // com.aggmoread.sdk.z.a.m.l.d
            public void b() {
                new Handler(new a()).sendEmptyMessageDelayed(0, 1000L);
            }

            @Override // com.aggmoread.sdk.z.a.m.l.d
            public void c() {
                new Handler(new C0098c()).sendEmptyMessageDelayed(0, 1000L);
            }

            @Override // com.aggmoread.sdk.z.a.m.l.d
            public void d() {
                new Handler(new C0097b()).sendEmptyMessageDelayed(0, 1000L);
            }

            @Override // com.aggmoread.sdk.z.a.m.l.d
            public void e() {
            }

            @Override // com.aggmoread.sdk.z.a.m.l.d
            public void f() {
            }
        }

        c() {
        }

        @Override // com.aggmoread.sdk.z.a.s.a.InterfaceC0092a
        public void a(View view, com.aggmoread.sdk.z.a.g.d dVar) {
            g.this.a();
            g.this.e();
            l.a(view, g.this.f3898a, g.this.f3900c, g.this.f3901d.a(), g.this.f3899b, new a(), new b());
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f3931b;

        d(g gVar, View view) {
            this.f3931b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((q) this.f3931b).e();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Rect bounds = g.this.f3906i.getDrawable().getBounds();
            int iWidth = bounds.width();
            int iHeight = bounds.height();
            if (iWidth <= 1 || iHeight <= 1) {
                g.this.f3899b.a(com.aggmoread.sdk.z.a.g.f.f3451f);
                return;
            }
            g.this.a();
            if (g.this.f3899b instanceof com.aggmoread.sdk.z.a.s.f) {
                ((com.aggmoread.sdk.z.a.s.f) g.this.f3899b).e();
            }
            g.this.f();
        }
    }

    class f implements i.a {
        f() {
        }

        @Override // com.aggmoread.sdk.z.a.s.i.a
        public void a() {
            g.this.f();
        }

        @Override // com.aggmoread.sdk.z.a.s.i.a
        public void a(long j10) {
            if (g.this.f3899b instanceof com.aggmoread.sdk.z.a.s.f) {
                ((com.aggmoread.sdk.z.a.s.f) g.this.f3899b).onAdTick(j10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        i iVar = this.f3914q;
        if (iVar != null) {
            iVar.cancel();
            this.f3914q = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_api", "onAdClick = " + this.f3901d.a());
        com.aggmoread.sdk.z.a.q.a.a(IAdInterListener.AdCommandType.AD_CLICK, this.f3900c.r(), this.f3901d.a());
        this.f3899b.onAdClicked();
    }

    @Override // com.aggmoread.sdk.z.a.a
    public int d() {
        com.aggmoread.sdk.z.a.g.c.a.b bVar = this.f3900c;
        if (bVar != null) {
            return bVar.p();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bitmap bitmap, ImageView imageView, ViewGroup viewGroup, View view) {
        View view2;
        View view3;
        com.aggmoread.sdk.z.a.s.e eVar;
        com.aggmoread.sdk.z.a.g.f fVar;
        Context context;
        if (bitmap == null) {
            eVar = this.f3899b;
            fVar = com.aggmoread.sdk.z.a.g.f.f3450e;
        } else {
            if (this.f3902e == null && (context = viewGroup.getContext()) != null && (context instanceof Activity)) {
                this.f3902e = (Activity) context;
            }
            if (!com.aggmoread.sdk.z.a.m.a.a(this.f3902e)) {
                if (!com.aggmoread.sdk.z.a.m.b.a(viewGroup)) {
                    com.aggmoread.sdk.z.a.s.b.a(this.f3899b, com.aggmoread.sdk.z.a.g.f.f3448c);
                    return;
                }
                if (!com.aggmoread.sdk.z.a.i.d.a().a(this.f3898a.e().j()) || (view3 = this.f3912o) == null) {
                    view2 = imageView;
                } else {
                    view3.setVisibility(0);
                    view2 = this.f3912o;
                    imageView.setClickable(false);
                    if (this.f3913p) {
                        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_api", "CKT");
                        view2 = imageView;
                    }
                }
                com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_api", "isDownload = " + this.f3900c.t() + " , downType = " + this.f3900c.h() + " , downloadUrl = " + this.f3900c.i() + ", clickView " + view2);
                this.f3901d = com.aggmoread.sdk.z.a.s.a.a(imageView, view2, new c());
                imageView.setImageBitmap(bitmap);
                if (this.f3908k != null && this.f3898a.e().q()) {
                    this.f3908k.setVisibility(0);
                }
                try {
                    View viewFindViewWithTag = view.findViewWithTag(com.aggmoread.sdk.z.a.i.c.f3495a);
                    if (viewFindViewWithTag instanceof q) {
                        viewFindViewWithTag.postDelayed(new d(this, viewFindViewWithTag), 1000L);
                    }
                } catch (Exception unused) {
                }
                a(view);
                return;
            }
            eVar = this.f3899b;
            fVar = com.aggmoread.sdk.z.a.g.f.f3448c;
        }
        com.aggmoread.sdk.z.a.s.b.a(eVar, fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f3899b.a();
        try {
            View view = this.f3912o;
            if (view != null) {
                View viewFindViewWithTag = view.findViewWithTag(com.aggmoread.sdk.z.a.i.c.f3495a);
                if (viewFindViewWithTag instanceof q) {
                    ((q) viewFindViewWithTag).c();
                }
            }
        } catch (Exception unused) {
        }
    }

    private void g() {
        com.aggmoread.sdk.z.a.q.a.a("onAdExposure", this.f3900c.s());
        this.f3899b.d();
    }

    private void h() {
        this.f3899b.onAdShow();
    }

    @Override // com.aggmoread.sdk.z.a.a
    public boolean b() {
        if (!this.f3898a.e().r() || !this.f3909l) {
            return false;
        }
        i();
        return true;
    }

    @Override // com.aggmoread.sdk.z.a.a
    public String c() {
        com.aggmoread.sdk.z.a.g.c.a.b bVar = this.f3900c;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    public void i() {
        a(this.f3906i, this.f3905h, this.f3907j);
    }

    private void a(View view) {
        h();
        g();
        com.aggmoread.sdk.z.a.h.c cVarE = this.f3898a.e();
        if (cVarE.h() == null) {
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_api", "getAdSkipView = null");
            this.f3904g.setVisibility(0);
        } else {
            this.f3904g = cVarE.h();
        }
        this.f3904g.setOnClickListener(new e());
        i iVar = new i(this.f3904g, new f(), 5200L, 500L);
        this.f3914q = iVar;
        iVar.start();
    }

    private void a(ViewGroup viewGroup) {
        com.aggmoread.sdk.z.a.i.d.b bVarA = com.aggmoread.sdk.z.a.i.d.a().a(this.f3903f, viewGroup, com.aggmoread.sdk.z.a.h.a.d().e(), this.f3898a.e());
        if (bVarA != null) {
            this.f3907j = bVarA.f3498a;
            this.f3906i = bVarA.f3499b;
            ImageView imageView = bVarA.f3500c;
            this.f3908k = imageView;
            imageView.setVisibility(8);
            this.f3904g = bVarA.f3501d;
            this.f3912o = bVarA.f3502e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ImageView imageView, ViewGroup viewGroup, View view) {
        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_api", "showAD enter");
        p.a(new b(viewGroup, imageView, view));
    }

    public void a(com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.s.e eVar) {
        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_api", "handle enter");
        this.f3898a = cVar;
        this.f3899b = eVar;
        this.f3902e = cVar.e().f();
        this.f3903f = cVar.e().l();
        com.aggmoread.sdk.z.a.g.c.a.b bVarB = cVar.f3380e.get(0).b();
        if (bVarB != null) {
            this.f3900c = bVarB;
            this.f3910m = bVarB.k();
            bVarB.i();
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_api", "imageUrl = " + this.f3910m);
            com.aggmoread.sdk.z.a.j.g.a(this.f3910m);
            if (!TextUtils.isEmpty(this.f3910m)) {
                ViewGroup viewGroupG = cVar.e().g();
                this.f3905h = viewGroupG;
                a(viewGroupG);
                com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_api", "imageView = " + this.f3906i);
                com.aggmoread.sdk.z.a.p.a.a(this.f3910m, null, new a(eVar, cVar));
                return;
            }
        }
        com.aggmoread.sdk.z.a.s.b.a(eVar, new com.aggmoread.sdk.z.a.g.f(MindUserHandle.f89947v, "广告数据异常"));
    }

    @Override // com.aggmoread.sdk.z.a.a
    public boolean a(Activity activity, ViewGroup viewGroup) {
        if (!this.f3898a.e().r()) {
            return false;
        }
        if (viewGroup != null) {
            View view = this.f3905h;
            if (view == null) {
                view = this.f3907j;
            }
            ViewGroup viewGroup2 = (ViewGroup) view.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(view);
            }
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_api", "show add adContainer tmpView = " + view);
            viewGroup.addView(view, new ViewGroup.LayoutParams(-1, -1));
            this.f3905h = viewGroup;
            this.f3902e = activity;
        }
        return b();
    }
}
