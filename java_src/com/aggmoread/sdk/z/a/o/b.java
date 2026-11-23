package com.aggmoread.sdk.z.a.o;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.aggmoread.sdk.z.a.g.c;
import com.aggmoread.sdk.z.a.g.d;
import com.aggmoread.sdk.z.a.g.f;
import com.aggmoread.sdk.z.a.g.h;
import com.aggmoread.sdk.z.a.m.l;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.xinzhu.overmind.server.user.MindUserHandle;

/* JADX INFO: loaded from: classes7.dex */
public class b implements com.aggmoread.sdk.z.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f3760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.c f3761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c.a.b f3762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.a f3763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Activity f3764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f3765f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f3767h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.o.a f3769j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3766g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3768i = -1;

    class a implements com.aggmoread.sdk.z.a.o.a.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.s.c f3770a;

        a(com.aggmoread.sdk.z.a.s.c cVar) {
            this.f3770a = cVar;
        }

        @Override // com.aggmoread.sdk.z.a.o.a.j
        public void a() {
            b.this.i();
        }

        @Override // com.aggmoread.sdk.z.a.o.a.j
        public void b() {
        }

        @Override // com.aggmoread.sdk.z.a.o.a.j
        public void c() {
            com.aggmoread.sdk.z.a.s.c cVar = this.f3770a;
            if (cVar != null) {
                cVar.onVideoCached();
            }
        }

        @Override // com.aggmoread.sdk.z.a.o.a.j
        public void d() {
            b.this.f();
        }

        @Override // com.aggmoread.sdk.z.a.o.a.j
        public void a(int i10, String str) {
            com.aggmoread.sdk.z.a.s.b.a(this.f3770a, new f(i10, str));
        }

        @Override // com.aggmoread.sdk.z.a.o.a.j
        public void a(Activity activity) {
            b.this.a(activity);
        }

        @Override // com.aggmoread.sdk.z.a.o.a.j
        public void a(com.aggmoread.sdk.z.a.s.a aVar) {
            b.this.f3763d = aVar;
            b.this.h();
            b.this.g();
        }
    }

    private d a() {
        com.aggmoread.sdk.z.a.s.a aVar = this.f3763d;
        return aVar != null ? aVar.a() : new d();
    }

    private void b(Activity activity) {
        com.aggmoread.sdk.z.a.d.d("JHInterHandler_dsp", "showAD enter ");
        if (activity == null) {
            com.aggmoread.sdk.z.a.s.b.a(this.f3761b, new f(50003, "广告展示失败,Activity缺失!"));
            return;
        }
        try {
            com.aggmoread.sdk.z.a.u.a.a(this.f3769j);
            com.aggmoread.sdk.z.a.u.a.a(activity, null);
        } catch (Exception e10) {
            e10.printStackTrace();
            com.aggmoread.sdk.z.a.s.b.a(this.f3761b, new f(50003, "广告展示失败!"));
        }
    }

    private void e() {
        com.aggmoread.sdk.z.a.d.d("JHInterHandler_dsp", "onAdClick = " + a());
        com.aggmoread.sdk.z.a.q.a.a(IAdInterListener.AdCommandType.AD_CLICK, this.f3762c.r(), a());
        this.f3761b.onAdClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f3761b.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        com.aggmoread.sdk.z.a.q.a.a("onAdExposure", this.f3762c.s());
        this.f3761b.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        this.f3761b.onAdShow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f3761b.onVideoCompleted();
    }

    @Override // com.aggmoread.sdk.z.a.a
    public String c() {
        c.a.b bVar = this.f3762c;
        if (bVar != null) {
            return TextUtils.isEmpty(bVar.a()) ? this.f3762c.f() : this.f3762c.a();
        }
        return null;
    }

    @Override // com.aggmoread.sdk.z.a.a
    public int d() {
        return this.f3768i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity) {
        e();
        if (com.aggmoread.sdk.z.a.m.a.a(activity)) {
            com.aggmoread.sdk.z.a.s.b.a(this.f3761b, f.f3448c);
        } else {
            com.aggmoread.sdk.z.a.o.a aVar = this.f3769j;
            l.a(aVar != null ? aVar.c() : null, this.f3760a, this.f3762c, a(), this.f3761b);
        }
    }

    @Override // com.aggmoread.sdk.z.a.a
    public boolean b() {
        return a(this.f3764e, (ViewGroup) null);
    }

    public void a(c cVar, com.aggmoread.sdk.z.a.s.c cVar2) {
        com.aggmoread.sdk.z.a.d.d("JHInterHandler_dsp", "handle   enter");
        this.f3760a = cVar;
        this.f3761b = cVar2;
        this.f3764e = cVar.e().f();
        Context contextL = cVar.e().l();
        this.f3765f = contextL;
        if (this.f3764e == null && (contextL instanceof Activity)) {
            this.f3764e = (Activity) contextL;
        }
        c.a.b bVarB = cVar.f3380e.get(0).b();
        if (bVarB == null) {
            com.aggmoread.sdk.z.a.s.b.a(cVar2, new f(MindUserHandle.f89947v, "广告数据异常"));
            return;
        }
        this.f3762c = bVarB;
        this.f3768i = bVarB.f3408t;
        this.f3767h = bVarB.i();
        com.aggmoread.sdk.z.a.d.d("JHInterHandler_dsp", "clickUrl = " + this.f3767h);
        h hVar = new h();
        hVar.f3460a = bVarB.k();
        hVar.f3463d = bVarB.a();
        hVar.f3464e = bVarB.f();
        hVar.f3465f = cVar.e().j();
        hVar.f3467h = cVar.e().o();
        hVar.f3461b = bVarB.q();
        hVar.f3466g = bVarB.f3411w;
        com.aggmoread.sdk.z.a.o.a aVar = new com.aggmoread.sdk.z.a.o.a();
        this.f3769j = aVar;
        aVar.a(hVar);
        this.f3766g = true;
        com.aggmoread.sdk.z.a.s.c cVar3 = this.f3761b;
        if (cVar3 != null) {
            cVar3.a(this);
        }
        this.f3769j.a(new a(cVar2));
        if (cVar.e().r()) {
            return;
        }
        b(this.f3764e);
    }

    @Override // com.aggmoread.sdk.z.a.a
    public boolean a(Activity activity, ViewGroup viewGroup) {
        if (!this.f3760a.e().r() || !this.f3766g) {
            return false;
        }
        b(activity);
        return true;
    }
}
