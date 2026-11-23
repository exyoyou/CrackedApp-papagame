package com.aggmoread.sdk.z.a.r;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.aggmoread.sdk.z.a.g.f;
import com.aggmoread.sdk.z.a.m.l;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a implements com.aggmoread.sdk.z.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c f3799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.d f3800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c.a.b f3801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c.a f3802d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.a f3803e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Activity f3804f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f3805g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f3807i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private b f3809k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f3806h = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3808j = -1;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.r.a$a, reason: collision with other inner class name */
    class C0089a implements com.aggmoread.sdk.z.a.t.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f3810a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3811b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3812c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3813d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f3814e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.c.a f3815f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.s.d f3816g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.c.a.b f3817h;

        C0089a(com.aggmoread.sdk.z.a.g.c.a aVar, com.aggmoread.sdk.z.a.s.d dVar, com.aggmoread.sdk.z.a.g.c.a.b bVar) {
            this.f3815f = aVar;
            this.f3816g = dVar;
            this.f3817h = bVar;
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a() {
            a.this.f();
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void b() {
            com.aggmoread.sdk.z.a.q.a.a("onVideoSkipClosed", this.f3815f.a(3));
            com.aggmoread.sdk.z.a.q.a.a("skipClick", this.f3817h.f3407s);
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void c() {
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void d() {
            a.this.g();
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void onVideoCached() {
            com.aggmoread.sdk.z.a.q.a.a("onVideoCached", this.f3815f.a(101019));
            com.aggmoread.sdk.z.a.s.d dVar = this.f3816g;
            if (dVar != null) {
                dVar.onVideoCached();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void onVideoComplete() {
            a.this.i();
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003f  */
        /* JADX WARN: Code duplicated, block: B:21:0x0045  */
        /* JADX WARN: Code duplicated, block: B:24:0x0054  */
        /* JADX WARN: Code duplicated, block: B:26:0x005a  */
        /* JADX WARN: Code duplicated, block: B:30:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a(float f10, int i10) {
            com.aggmoread.sdk.z.a.g.c.a aVar;
            int i11;
            double d10;
            List<String> listA;
            String str;
            if (i10 < 3000 || this.f3813d) {
                if (i10 >= 5000 && !this.f3814e) {
                    this.f3814e = true;
                    aVar = this.f3815f;
                    i11 = 5;
                }
                d10 = f10;
                if (d10 < 0.25d && !this.f3810a) {
                    this.f3810a = true;
                    listA = this.f3815f.a(0.25d);
                    str = "onVideoProgress 25";
                } else if (d10 < 0.5d && !this.f3811b) {
                    this.f3811b = true;
                    listA = this.f3815f.a(0.5d);
                    str = "onVideoProgress 50";
                } else {
                    if (d10 >= 0.75d || this.f3812c) {
                        return;
                    }
                    this.f3812c = true;
                    listA = this.f3815f.a(0.75d);
                    str = "onVideoProgress 75";
                }
                com.aggmoread.sdk.z.a.q.a.a(str, listA);
            }
            this.f3813d = true;
            aVar = this.f3815f;
            i11 = 4;
            com.aggmoread.sdk.z.a.q.a.a("onVideoProgress3", aVar.a(i11));
            d10 = f10;
            if (d10 < 0.25d) {
                if (d10 < 0.5d) {
                    if (d10 >= 0.75d) {
                        return;
                    } else {
                        return;
                    }
                } else if (d10 >= 0.75d) {
                    return;
                } else {
                    return;
                }
            }
            if (d10 < 0.5d) {
                if (d10 >= 0.75d) {
                    return;
                } else {
                    return;
                }
            } else if (d10 >= 0.75d) {
                return;
            } else {
                return;
            }
            com.aggmoread.sdk.z.a.q.a.a(str, listA);
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a(Activity activity) {
            a.this.a(activity);
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a(com.aggmoread.sdk.z.a.s.a aVar) {
            a.this.f3803e = aVar;
            a.this.h();
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a(String str) {
            com.aggmoread.sdk.z.a.s.b.a(this.f3816g, new f(50003, str));
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a(Map<String, Object> map) {
            a.this.a(map);
        }
    }

    private com.aggmoread.sdk.z.a.g.d a() {
        com.aggmoread.sdk.z.a.s.a aVar = this.f3803e;
        return aVar != null ? aVar.a() : new com.aggmoread.sdk.z.a.g.d();
    }

    private void b(Activity activity) {
        com.aggmoread.sdk.z.a.d.d("AgRewardHandler_dsp", "showAD enter ");
        if (activity == null) {
            com.aggmoread.sdk.z.a.s.b.a(this.f3800b, new f(50003, "广告展示失败,Activity缺失!"));
            return;
        }
        try {
            com.aggmoread.sdk.z.a.u.b.a(this.f3809k);
            com.aggmoread.sdk.z.a.u.b.a(activity, null);
        } catch (Exception e10) {
            e10.printStackTrace();
            com.aggmoread.sdk.z.a.s.b.a(this.f3800b, new f(50003, "广告展示失败!"));
        }
    }

    private void e() {
        com.aggmoread.sdk.z.a.d.d("AgRewardHandler_dsp", "onAdClick = " + a());
        com.aggmoread.sdk.z.a.q.a.a(IAdInterListener.AdCommandType.AD_CLICK, this.f3801c.r(), this.f3803e.a());
        com.aggmoread.sdk.z.a.q.a.a("onAdClickV", this.f3802d.a(0));
        this.f3800b.onAdClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.aggmoread.sdk.z.a.q.a.a("onAdDismissed", this.f3802d.a(2));
        this.f3800b.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        com.aggmoread.sdk.z.a.q.a.a("onAdExposure", this.f3801c.s());
        com.aggmoread.sdk.z.a.q.a.a("onAdExposureV", this.f3802d.a(1));
        this.f3800b.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        com.aggmoread.sdk.z.a.q.a.a("onAdShowBegin", this.f3802d.a(101000));
        com.aggmoread.sdk.z.a.q.a.a("onAdShowMute", this.f3802d.a(101005));
        com.aggmoread.sdk.z.a.q.a.a("onAdShowMute", this.f3802d.a(101006));
        com.aggmoread.sdk.z.a.q.a.a("onAdShowFull", this.f3802d.a(101001));
        this.f3800b.onAdShow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        com.aggmoread.sdk.z.a.q.a.a("onAdVideoComplete", this.f3802d.a(101002));
        com.aggmoread.sdk.z.a.q.a.a("onAdVideoComplete7", this.f3802d.a(7));
        this.f3800b.onVideoCompleted();
    }

    @Override // com.aggmoread.sdk.z.a.a
    public String c() {
        com.aggmoread.sdk.z.a.g.c.a.b bVar = this.f3801c;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override // com.aggmoread.sdk.z.a.a
    public int d() {
        return this.f3808j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity) {
        e();
        if (com.aggmoread.sdk.z.a.m.a.a(activity)) {
            com.aggmoread.sdk.z.a.s.b.a(this.f3800b, f.f3448c);
        } else {
            if (activity == null || activity.getWindow() == null) {
                return;
            }
            l.a(activity.getWindow().getDecorView(), this.f3799a, this.f3801c, a(), this.f3800b);
        }
    }

    @Override // com.aggmoread.sdk.z.a.a
    public boolean b() {
        return a(this.f3804f, (ViewGroup) null);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x015a  */
    public void a(com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.s.d dVar) {
        f fVar;
        com.aggmoread.sdk.z.a.g.c.a aVar;
        com.aggmoread.sdk.z.a.g.c.a.C0069a.C0070a c0070a;
        com.aggmoread.sdk.z.a.d.d("AgRewardHandler_dsp", "handle   enter");
        this.f3799a = cVar;
        this.f3800b = dVar;
        this.f3804f = cVar.e().f();
        Context contextL = cVar.e().l();
        this.f3805g = contextL;
        if (this.f3804f == null && (contextL instanceof Activity)) {
            this.f3804f = (Activity) contextL;
        }
        List<com.aggmoread.sdk.z.a.g.c.a> list = cVar.f3380e;
        if (list == null || list.isEmpty() || (aVar = cVar.f3380e.get(0)) == null) {
            fVar = new f(MindUserHandle.f89947v, "广告数据异常");
        } else {
            this.f3802d = aVar;
            com.aggmoread.sdk.z.a.g.c.a.b bVarB = aVar.b();
            if (bVarB != null) {
                this.f3801c = bVarB;
                this.f3808j = bVarB.f3408t;
                this.f3807i = bVarB.i();
                com.aggmoread.sdk.z.a.d.d("AgRewardHandler_dsp", "clickUrl = " + this.f3807i);
                com.aggmoread.sdk.z.a.g.c.a.C0069a c0069aA = aVar.a();
                com.aggmoread.sdk.z.a.d.d("AgRewardHandler_dsp", "contentInfoBean = " + c0069aA);
                if (c0069aA != null) {
                    c0070a = c0069aA.f3385b;
                    com.aggmoread.sdk.z.a.d.d("AgRewardHandler_dsp", "videoObj = " + c0070a);
                } else {
                    c0070a = null;
                }
                com.aggmoread.sdk.z.a.t.d dVar2 = new com.aggmoread.sdk.z.a.t.d();
                if (c0070a != null) {
                    dVar2.f3980b = c0070a.f3386a;
                    com.aggmoread.sdk.z.a.g.c.a.b bVar = this.f3801c;
                    dVar2.f3992n = bVar.f3411w;
                    dVar2.f3983e = bVar.l();
                    dVar2.f3981c = TextUtils.isEmpty(c0069aA.f3384a) ? this.f3801c.a() : c0069aA.f3384a;
                    dVar2.f3982d = this.f3801c.f();
                    c0070a.a();
                    throw null;
                }
                com.aggmoread.sdk.z.a.g.c.a.b bVar2 = this.f3801c;
                dVar2.f3992n = bVar2.f3411w;
                bVar2.k();
                dVar2.f3980b = this.f3801c.q();
                dVar2.f3983e = this.f3801c.l();
                dVar2.f3981c = this.f3801c.a();
                dVar2.f3982d = this.f3801c.f();
                dVar2.f3988j = this.f3801c.k();
                dVar2.f3985g = 30;
                if (!TextUtils.isEmpty(dVar2.f3980b)) {
                    b bVar3 = new b();
                    this.f3809k = bVar3;
                    bVar3.a(dVar2);
                    this.f3806h = true;
                    com.aggmoread.sdk.z.a.s.d dVar3 = this.f3800b;
                    if (dVar3 != null) {
                        dVar3.a(this);
                    }
                    this.f3809k.a(new C0089a(aVar, dVar, bVarB));
                    if (!cVar.e().r()) {
                        b(this.f3804f);
                        return;
                    }
                    b bVar4 = this.f3809k;
                    Context context = this.f3804f;
                    if (context == null) {
                        context = this.f3805g;
                    }
                    bVar4.a(context, dVar2.f3980b);
                    return;
                }
                fVar = new f(MindUserHandle.f89947v, "暂无视频广告素材，广告加载失败!");
            } else {
                fVar = new f(MindUserHandle.f89947v, "广告数据异常");
            }
        }
        com.aggmoread.sdk.z.a.s.b.a(dVar, fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map) {
        com.aggmoread.sdk.z.a.q.a.a("onAdReward", this.f3802d.a(101017));
        this.f3800b.onReward(map);
    }

    @Override // com.aggmoread.sdk.z.a.a
    public boolean a(Activity activity, ViewGroup viewGroup) {
        if (!this.f3799a.e().r() || !this.f3806h) {
            return false;
        }
        b(activity);
        return true;
    }
}
