package com.aggmoread.sdk.z.b.d;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.aggmoread.sdk.z.a.m.p;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.player.C;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a implements com.aggmoread.sdk.z.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.aggmoread.sdk.z.b.a.a f4301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.e f4302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.b.a.a.C0106a.C0107a f4303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.a f4304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Activity f4305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f4306f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f4307g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView f4308h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewGroup f4309i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f4310j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ImageView f4311k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f4312l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f4314n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.aggmoread.sdk.z.b.e.a f4315o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f4316p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private byte[] f4318r;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f4313m = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f4317q = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.i f4319s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.aggmoread.sdk.z.b.e.a.b f4320t = new i();

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.d.a$a, reason: collision with other inner class name */
    class C0113a implements com.aggmoread.sdk.z.a.p.a.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.s.e f4321a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.b.a.a f4322b;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.d.a$a$a, reason: collision with other inner class name */
        class RunnableC0114a implements Runnable {
            RunnableC0114a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0113a c0113a = C0113a.this;
                com.aggmoread.sdk.z.a.s.e eVar = c0113a.f4321a;
                if (eVar instanceof com.aggmoread.sdk.z.a.s.f) {
                    ((com.aggmoread.sdk.z.a.s.f) eVar).a(a.this);
                }
            }
        }

        C0113a(com.aggmoread.sdk.z.a.s.e eVar, com.aggmoread.sdk.z.b.a.a aVar) {
            this.f4321a = eVar;
            this.f4322b = aVar;
        }

        @Override // com.aggmoread.sdk.z.a.p.a.g
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.a.g.f fVar) {
            if (fVar != null) {
                com.aggmoread.sdk.z.a.s.b.a(this.f4321a, com.aggmoread.sdk.z.a.g.f.f3450e);
                return;
            }
            a.this.f4318r = bArr;
            if (a.this.f4318r == null) {
                com.aggmoread.sdk.z.a.s.b.a(this.f4321a, com.aggmoread.sdk.z.a.g.f.f3450e);
                return;
            }
            p.a().post(new RunnableC0114a());
            if (this.f4322b.e().r()) {
                a.this.f4313m = true;
            } else {
                a aVar = a.this;
                aVar.a(aVar.f4309i, a.this.f4310j);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f4325b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f4326c;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.d.a$b$a, reason: collision with other inner class name */
        class RunnableC0115a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f4328b;

            RunnableC0115a(Bitmap bitmap) {
                this.f4328b = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!a.this.f4301a.e().r() && (a.this.f4302b instanceof com.aggmoread.sdk.z.a.s.f)) {
                    ((com.aggmoread.sdk.z.a.s.f) a.this.f4302b).a(a.this);
                }
                a aVar = a.this;
                Bitmap bitmap = this.f4328b;
                ImageView imageView = aVar.f4308h;
                b bVar = b.this;
                aVar.a(bitmap, imageView, bVar.f4325b, bVar.f4326c);
            }
        }

        b(ViewGroup viewGroup, View view) {
            this.f4325b = viewGroup;
            this.f4326c = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup viewGroup = this.f4325b;
            if (viewGroup == null) {
                com.aggmoread.sdk.z.a.s.b.a(a.this.f4302b, com.aggmoread.sdk.z.a.g.f.f3449d);
                return;
            }
            int width = viewGroup.getWidth();
            int height = this.f4325b.getHeight();
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "adcontainer w = " + width + " , h = " + height);
            p.a().post(new RunnableC0115a(com.aggmoread.sdk.z.a.n.a.a().a(width, height, Bitmap.Config.ARGB_8888, ImageView.ScaleType.CENTER_INSIDE, a.this.f4318r)));
        }
    }

    class c implements com.aggmoread.sdk.z.a.s.a.InterfaceC0092a {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.d.a$c$a, reason: collision with other inner class name */
        class C0116a implements Handler.Callback {
            C0116a() {
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                a.this.g();
                return false;
            }
        }

        c() {
        }

        @Override // com.aggmoread.sdk.z.a.s.a.InterfaceC0092a
        public void a(View view, com.aggmoread.sdk.z.a.g.d dVar) {
            List<String> listA;
            com.aggmoread.sdk.z.a.g.d dVarA;
            String str;
            a.this.a();
            a.this.f();
            if (a.this.f4303c.f4266e != null && !TextUtils.isEmpty(a.this.f4303c.f4266e)) {
                Intent intent = new Intent();
                try {
                    intent.setData(Uri.parse(a.this.f4303c.f4266e));
                    a.this.f4301a.e().f().startActivity(intent);
                    com.aggmoread.sdk.z.a.q.a.a("onStartAppSuccess", a.this.f4303c.a(3), a.this.f4304d.a());
                    new Handler(new C0116a()).sendEmptyMessageDelayed(0, 1000L);
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    if (e10 instanceof ActivityNotFoundException) {
                        listA = a.this.f4303c.a(0);
                        dVarA = a.this.f4304d.a();
                        str = "onAppNotExist";
                    } else {
                        listA = a.this.f4303c.a(2);
                        dVarA = a.this.f4304d.a();
                        str = "onStartAppFailed";
                    }
                    com.aggmoread.sdk.z.a.q.a.a(str, listA, dVarA);
                    com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", str);
                }
            }
            if (!a.this.f4303c.c()) {
                a.this.k();
                return;
            }
            if (TextUtils.isEmpty(a.this.f4303c.f4277p)) {
                a.this.e();
                return;
            }
            if (a.this.f4315o == null) {
                com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "DL s");
                a aVar = a.this;
                aVar.f4315o = new com.aggmoread.sdk.z.b.e.a(aVar.f4320t);
                a.this.f4315o.a(a.this.f4305e, a.this.f4303c.f4277p);
            }
            a.this.f4315o.a(a.this.f4305e, a.this.f4310j);
        }
    }

    class d implements com.aggmoread.sdk.z.a.u.c.a {
        d() {
        }

        @Override // com.aggmoread.sdk.z.a.u.c.a
        public void onShow() {
            a.this.g();
        }
    }

    class e implements Handler.Callback {
        e() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            a.this.g();
            return false;
        }
    }

    class f extends com.aggmoread.sdk.z.a.j.c {
        f() {
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void a() {
            super.a();
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "apkIsDownLoading  ");
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void b() {
            super.b();
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "onStartDownload  ");
            com.aggmoread.sdk.z.a.q.a.a("onStartDownload", a.this.f4303c.f4271j, a.this.f4304d.a());
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void c(long j10) {
            super.c(j10);
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "onStartApkInstaller  ");
            com.aggmoread.sdk.z.a.q.a.a("onStartApkInstaller", a.this.f4303c.f4272k, a.this.f4304d.a());
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void a(long j10) {
            super.a(j10);
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "onApkInstalled  ");
            com.aggmoread.sdk.z.a.q.a.a("onApkInstalled", a.this.f4303c.f4276o, a.this.f4304d.a());
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void b(long j10) {
            super.b(j10);
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "onDownloadSuccess  ");
            com.aggmoread.sdk.z.a.q.a.a("onDownloadCompleted", a.this.f4303c.f4275n, a.this.f4304d.a());
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void a(long j10, int i10, String str) {
            super.a(j10, i10, str);
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "onApkInstalledError  ");
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void b(long j10, int i10, String str) {
            super.b(j10, i10, str);
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "onDownloadFail  ");
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Rect bounds = a.this.f4308h.getDrawable().getBounds();
            int iWidth = bounds.width();
            int iHeight = bounds.height();
            if (iWidth <= 1 || iHeight <= 1) {
                a.this.f4302b.a(com.aggmoread.sdk.z.a.g.f.f3451f);
                return;
            }
            a.this.a();
            if (a.this.f4302b instanceof com.aggmoread.sdk.z.a.s.f) {
                ((com.aggmoread.sdk.z.a.s.f) a.this.f4302b).e();
            }
            a.this.g();
        }
    }

    class h implements com.aggmoread.sdk.z.a.s.i.a {
        h() {
        }

        @Override // com.aggmoread.sdk.z.a.s.i.a
        public void a() {
            a.this.g();
        }

        @Override // com.aggmoread.sdk.z.a.s.i.a
        public void a(long j10) {
            if (a.this.f4302b instanceof com.aggmoread.sdk.z.a.s.f) {
                ((com.aggmoread.sdk.z.a.s.f) a.this.f4302b).onAdTick(j10);
            }
        }
    }

    class i implements com.aggmoread.sdk.z.b.e.a.b {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.d.a$i$a, reason: collision with other inner class name */
        class RunnableC0117a implements Runnable {
            RunnableC0117a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.g();
            }
        }

        i() {
        }

        @Override // com.aggmoread.sdk.z.b.e.a.b
        public void a() {
            a.this.e();
        }

        @Override // com.aggmoread.sdk.z.b.e.a.b
        public void onDismiss() {
            if (a.this.f4315o != null) {
                a.this.f4315o.a();
                a.this.f4315o = null;
            }
            p.a().postDelayed(new RunnableC0117a(), 1000L);
        }

        @Override // com.aggmoread.sdk.z.b.e.a.b
        public void onRenderSuccess() {
            a.this.f4316p = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Intent intentA;
        Context contextA = com.aggmoread.sdk.z.a.h.a.d().a();
        String str = this.f4303c.f4270i;
        if (!com.aggmoread.sdk.z.a.m.d.c(contextA, str) || (intentA = com.aggmoread.sdk.z.a.m.d.a(contextA, str)) == null) {
            b(this.f4303c.a());
            return;
        }
        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "intent = " + intentA);
        intentA.addFlags(C.ENCODING_PCM_MU_LAW);
        contextA.startActivity(intentA);
    }

    private void i() {
        this.f4302b.onAdShow();
    }

    @Override // com.aggmoread.sdk.z.a.a
    public int d() {
        return -1;
    }

    public void j() {
        a(this.f4309i, this.f4310j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        com.aggmoread.sdk.z.a.s.i iVar = this.f4319s;
        if (iVar != null) {
            iVar.cancel();
            this.f4319s = null;
        }
    }

    private void b(String str) {
        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "DL");
        a(str);
        new Handler(new e()).sendEmptyMessageDelayed(0, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "onAdClick = " + this.f4304d.a());
        com.aggmoread.sdk.z.a.q.a.a(IAdInterListener.AdCommandType.AD_CLICK, this.f4303c.f4274m, this.f4304d.a());
        this.f4302b.onAdClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.f4302b.a();
    }

    private void h() {
        com.aggmoread.sdk.z.a.q.a.a("onAdExposure", this.f4303c.f4273l);
        this.f4302b.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        String str = this.f4303c.f4265d;
        if (TextUtils.isEmpty(str)) {
            com.aggmoread.sdk.z.b.c.a.a(this.f4302b, com.aggmoread.sdk.z.a.g.f.f3452g);
            return;
        }
        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "startWebActivity = " + str);
        String strA = com.aggmoread.sdk.z.a.q.a.a(str, this.f4304d.a());
        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "startWebActivity final = " + strA);
        com.aggmoread.sdk.z.a.u.c.a(this.f4305e, this.f4303c.f4262a, strA, new d());
    }

    @Override // com.aggmoread.sdk.z.a.a
    public String c() {
        com.aggmoread.sdk.z.b.a.a.C0106a.C0107a c0107a = this.f4303c;
        if (c0107a != null) {
            return TextUtils.isEmpty(c0107a.f4262a) ? this.f4303c.f4263b : this.f4303c.f4262a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bitmap bitmap, ImageView imageView, ViewGroup viewGroup, View view) {
        View view2;
        View view3;
        com.aggmoread.sdk.z.a.s.e eVar;
        com.aggmoread.sdk.z.a.g.f fVar;
        Context context;
        if (bitmap == null) {
            eVar = this.f4302b;
            fVar = com.aggmoread.sdk.z.a.g.f.f3450e;
        } else {
            if (this.f4305e == null && (context = viewGroup.getContext()) != null && (context instanceof Activity)) {
                this.f4305e = (Activity) context;
            }
            if (!TextUtils.isEmpty(this.f4303c.f4277p)) {
                com.aggmoread.sdk.z.b.e.a aVar = new com.aggmoread.sdk.z.b.e.a(this.f4320t);
                this.f4315o = aVar;
                aVar.a(this.f4305e, this.f4303c.f4277p);
            }
            if (!com.aggmoread.sdk.z.a.m.a.a(this.f4305e)) {
                if (!com.aggmoread.sdk.z.a.m.b.a(viewGroup)) {
                    com.aggmoread.sdk.z.b.c.a.a(this.f4302b, com.aggmoread.sdk.z.a.g.f.f3448c);
                    return;
                }
                com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "isDownload = " + this.f4303c.c() + " , interaction_type = " + this.f4303c.f4269h + " , downloadUrl = " + this.f4303c.a());
                if (!com.aggmoread.sdk.z.a.i.d.a().a(this.f4301a.e().j()) || (view3 = this.f4312l) == null) {
                    view2 = imageView;
                } else {
                    view3.setVisibility(0);
                    view2 = this.f4312l;
                    imageView.setClickable(false);
                    if (this.f4317q) {
                        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "CKT");
                        view2 = imageView;
                    }
                }
                this.f4304d = com.aggmoread.sdk.z.a.s.a.a(view2, new c());
                imageView.setImageBitmap(bitmap);
                if (this.f4311k != null && this.f4301a.e().q()) {
                    this.f4311k.setVisibility(0);
                }
                a(view);
                return;
            }
            eVar = this.f4302b;
            fVar = com.aggmoread.sdk.z.a.g.f.f3448c;
        }
        com.aggmoread.sdk.z.b.c.a.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.a.a
    public boolean b() {
        if (!this.f4301a.e().r() || !this.f4313m) {
            return false;
        }
        j();
        return true;
    }

    private void a(View view) {
        i();
        h();
        com.aggmoread.sdk.z.b.b.a aVarE = this.f4301a.e();
        if (aVarE.h() == null) {
            this.f4307g.setVisibility(0);
        } else {
            this.f4307g = aVarE.h();
        }
        this.f4307g.setOnClickListener(new g());
        com.aggmoread.sdk.z.a.s.i iVar = new com.aggmoread.sdk.z.a.s.i(this.f4307g, new h(), 5200L, 500L);
        this.f4319s = iVar;
        iVar.start();
    }

    private void a(ViewGroup viewGroup) {
        com.aggmoread.sdk.z.a.i.d.b bVarA = com.aggmoread.sdk.z.a.i.d.a().a(this.f4306f, viewGroup, com.aggmoread.sdk.z.a.h.a.d().b(com.aggmoread.sdk.z.a.h.a.EnumC0074a.f3483c), this.f4301a.e());
        if (bVarA != null) {
            this.f4310j = bVarA.f3498a;
            this.f4308h = bVarA.f3499b;
            ImageView imageView = bVarA.f3500c;
            this.f4311k = imageView;
            imageView.setVisibility(8);
            this.f4307g = bVarA.f3501d;
            this.f4312l = bVarA.f3502e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ViewGroup viewGroup, View view) {
        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "showAD enter");
        p.a(new b(viewGroup, view));
    }

    public void a(com.aggmoread.sdk.z.b.a.a aVar, com.aggmoread.sdk.z.a.s.e eVar) {
        com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "handle   enter");
        this.f4301a = aVar;
        this.f4302b = eVar;
        this.f4305e = aVar.e().f();
        this.f4306f = aVar.e().l();
        com.aggmoread.sdk.z.b.a.a.C0106a.C0107a c0107aA = aVar.f4260e.a();
        if (c0107aA != null) {
            this.f4303c = c0107aA;
            this.f4314n = c0107aA.b();
            c0107aA.a();
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "imageUrl = " + this.f4314n);
            com.aggmoread.sdk.z.a.j.g.a(this.f4314n);
            if (!TextUtils.isEmpty(this.f4314n)) {
                ViewGroup viewGroupG = aVar.e().g();
                this.f4309i = viewGroupG;
                a(viewGroupG);
                this.f4311k.setVisibility(8);
                View view = this.f4312l;
                if (view != null) {
                    view.setVisibility(8);
                }
                com.aggmoread.sdk.z.a.p.a.a(this.f4314n, null, new C0113a(eVar, aVar));
                return;
            }
        }
        com.aggmoread.sdk.z.b.c.a.a(eVar, new com.aggmoread.sdk.z.a.g.f(MindUserHandle.f89947v, "广告数据异常"));
    }

    private void a(String str) {
        try {
            com.aggmoread.sdk.z.b.a.a.C0106a.C0107a c0107a = this.f4303c;
            new com.aggmoread.sdk.z.a.j.b(this.f4306f.getApplicationContext(), this.f4301a.e().k(), new f()).a(str, c0107a.f4270i, c0107a.f4262a);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.aggmoread.sdk.z.a.a
    public boolean a(Activity activity, ViewGroup viewGroup) {
        if (!this.f4301a.e().r()) {
            return false;
        }
        if (viewGroup != null) {
            View view = this.f4309i;
            if (view == null) {
                view = this.f4310j;
            }
            ViewGroup viewGroup2 = (ViewGroup) view.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(view);
            }
            com.aggmoread.sdk.z.a.d.d("ApiSplashHandler_dsp", "show add adContainer tmpView = " + view);
            viewGroup.addView(view, new ViewGroup.LayoutParams(-1, -1));
            this.f4309i = viewGroup;
            this.f4305e = activity;
        }
        return b();
    }
}
