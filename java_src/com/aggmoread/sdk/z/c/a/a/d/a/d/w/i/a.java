package com.aggmoread.sdk.z.c.a.a.d.a.d.w.i;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aggmoread.sdk.z.c.a.a.d.a.d.j;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.haima.hmcp.widgets.BaseVideoView;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsRewardVideoAd;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.KsVideoPlayConfig;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends j implements com.aggmoread.sdk.z.c.a.a.d.a.d.w.i.b.a {
    private static String A = "AMRTAGKS";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private KsRewardVideoAd f4896v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private AtomicBoolean f4897w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f4898x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private KsVideoPlayConfig f4899y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    int f4900z;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.w.i.a$a, reason: collision with other inner class name */
    class C0180a implements Handler.Callback {
        C0180a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            a.this.w();
            return false;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.a(((j) a.this).f4520s, 2);
            a.this.B();
        }
    }

    private class c implements InvocationHandler {
        private c() {
        }

        /* JADX WARN: Code duplicated, block: B:28:0x008d  */
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Map map;
            String name = method.getName();
            if ("onAdClicked".equals(name)) {
                a.this.onAdClicked();
            } else if ("onPageDismiss".equals(name)) {
                a.this.y();
            } else if ("onVideoPlayError".equals(name)) {
                a.this.c(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue());
            } else if ("onVideoPlayEnd".equals(name)) {
                a.this.z();
            } else if ("onVideoSkipToEnd".equals(name)) {
                a.this.a(((Long) objArr[0]).longValue());
            } else if ("onVideoPlayStart".equals(name)) {
                a.this.A();
            } else if ("onRewardVerify".equals(name)) {
                if (objArr == null || objArr.length <= 0) {
                    map = null;
                } else {
                    Object obj2 = objArr[0];
                    if (obj2 instanceof Map) {
                        map = (Map) obj2;
                    } else {
                        map = null;
                    }
                }
                a.this.c(map);
            } else if ("onRewardStepVerify".equals(name)) {
                a.this.b(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue());
            } else if ("onExtraRewardVerify".equals(name)) {
                a.this.e(((Integer) objArr[0]).intValue());
            }
            return null;
        }

        /* synthetic */ c(a aVar, C0180a c0180a) {
            this();
        }
    }

    public a(e eVar, f fVar) {
        super(eVar, fVar);
        this.f4897w = new AtomicBoolean();
        this.f4898x = false;
        this.f4900z = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.f4898x || this.f4900z > 5) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "find cc ");
        this.f4900z++;
        q.a(new b(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        try {
            String strC = this.f4911i.f5003c.c(f.c.f5015a0);
            String strTrim = strC.replace("L", "").trim();
            long j10 = Long.parseLong(strTrim);
            com.aggmoread.sdk.z.c.a.a.e.e.b(A, "slotId = " + strC + ",slotIdStr = " + strTrim + ",_slotId = " + j10);
            HashMap map = new HashMap();
            com.aggmoread.sdk.z.c.a.a.c.s.c cVar = this.f4910h.f4960p;
            if (cVar != null) {
                map.put("thirdUserId", cVar.e());
                String strA = p.a(this.f4910h.f4960p.a(), strC);
                com.aggmoread.sdk.z.c.a.a.e.e.b(A, "_ext " + strA);
                map.put(BaseVideoView.COMPONENT_EXTRA_DATA, strA);
            }
            KsAdSDK.getLoadManager().loadRewardVideoAd(new KsScene.Builder(j10).rewardCallbackExtraData(map).build(), new com.aggmoread.sdk.z.c.a.a.d.a.d.w.i.b(this).a());
            com.aggmoread.sdk.z.c.a.a.e.e.b(A, "load ad");
            if (this.f4910h.f4963s != null) {
                this.f4899y = new KsVideoPlayConfig.Builder().videoSoundEnable(!this.f4910h.f4963s.d()).build();
            }
            a(this.f4910h, this.f4911i).a(0).b();
        } catch (Exception unused) {
            b(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002008, "广告ID配置错误，广告加载失败！"));
        }
    }

    private void x() {
    }

    public void A() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "onVideoPlayStart");
        e eVar = this.f4910h;
        n.a(eVar.f4946b, this.f4520s, eVar.f4949e, Integer.valueOf(this.f4911i.f()));
        n.b(this.f4910h.f4946b, this.f4911i.e(), this.f4911i.b());
        if (this.f4910h.f() != null) {
            e eVar2 = this.f4910h;
            n.a(eVar2.f4946b, eVar2.f());
        }
        byte[] bArrB = this.f4910h.f4962r.b();
        if (bArrB != null) {
            n.a(this.f4910h.f4946b, bArrB);
        }
        n.a((Object) this.f4520s, true, true);
        n.a(this.f4520s, this.f4911i);
        t();
        s();
    }

    public void a(long j10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "onVideoSkipToEnd");
        B();
        a((Map<String, Object>) null);
    }

    public void b(int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "onRewardStepVerify " + i10 + ", " + i11);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        super.c(i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.f4896v, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.i.b.a
    public void d(@Nullable List<KsRewardVideoAd> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "ad loaded");
        if (list != null && list.size() > 0) {
            this.f4896v = list.get(0);
            this.f4896v.setRewardAdInteractionListener((KsRewardVideoAd.RewardAdInteractionListener) Proxy.newProxyInstance(a.class.getClassLoader(), new Class[]{KsRewardVideoAd.RewardAdInteractionListener.class}, new c(this, null)));
        }
        int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a((Object) this.f4896v);
        if (com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4911i, iA)) {
            a(iA, 0);
            return;
        }
        b(iA);
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.f4909g, iA, this.f4911i);
        d(1);
        u();
    }

    public void e(int i10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "onExtraRewardVerify " + i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a().a(this.f4896v);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        if (com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4910h.f4948d, this.f4911i.f5003c.a(f.c.f5023e0, ""))) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4911i, this.f4914l, new C0180a());
        } else {
            b(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002008, "广告加载失败！"));
        }
    }

    public void onAdClicked() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "onAdClicked");
        q();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.i.b.a
    public void onError(int i10, String str) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(A, "onAdError %s,%s", Integer.valueOf(i10), str);
        b(new com.aggmoread.sdk.z.c.a.a.d.b.j(i10, str));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.i.b.a
    public void onRequestResult(int i10) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(A, "onRequestResult %s", Integer.valueOf(i10));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j
    public void v() {
        Context context = this.f4910h.f4948d;
        if (context instanceof Activity) {
            b((Activity) context);
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "act = null " + this.f4521t);
        if (this.f4521t) {
            onError(1001002009, "当前传入Activity为空");
        }
    }

    public void y() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "onPageDismiss");
        r();
    }

    public void z() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "onVideoPlayEnd");
        B();
        a((Map<String, Object>) null);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4896v, i11);
    }

    public void c(int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(A, "onVideoPlayError %s,%s", Integer.valueOf(i10), Integer.valueOf(i11));
        c(new com.aggmoread.sdk.z.c.a.a.d.b.j(i10, i11 + ""));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j
    public void b(Activity activity) {
        KsRewardVideoAd ksRewardVideoAd = this.f4896v;
        if (ksRewardVideoAd != null && ksRewardVideoAd.isAdEnable() && this.f4897w.compareAndSet(false, true)) {
            x();
            this.f4896v.showRewardVideoAd(activity, this.f4899y);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.i.b.a
    public void c(@Nullable List<KsRewardVideoAd> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "onRewardVideoResult " + list);
    }

    public void c(Map map) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(A, "onRewardVerify " + map);
        n.a(this.f4520s, 1);
        if (map != null) {
            try {
                this.f4519r.putAll(map);
            } catch (Exception unused) {
            }
        }
        b(this.f4519r);
    }
}
