package com.aggmoread.sdk.z.c.a.a.d.a.d.v.j;

import android.app.Activity;
import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.a.c;
import com.aggmoread.sdk.z.c.a.a.d.a.d.g;
import com.aggmoread.sdk.z.c.a.a.d.a.d.j;
import com.aggmoread.sdk.z.c.a.a.d.a.d.v.b;
import com.aggmoread.sdk.z.c.a.a.d.a.d.v.d;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.util.AdError;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends j implements RewardVideoADListener {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private RewardVideoAD f4836v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private AtomicBoolean f4837w;

    public a(e eVar, f fVar) {
        super(eVar, fVar);
        this.f4837w = new AtomicBoolean();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(c cVar) {
        this.f4912j = cVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        d.a(this.f4836v, i11, i10, str);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        d.a(this.f4836v, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return b.c().a(this.f4910h);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "handle");
        e eVar = this.f4910h;
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = eVar.f4963s;
        Context context = eVar.f4948d;
        com.aggmoread.sdk.z.c.a.a.e.f fVar = this.f4911i.f5003c;
        Object obj = f.c.f5023e0;
        b.a(context, fVar.a(obj, ""));
        Context contextA = g.a(this.f4910h, this.f4911i, this.f4914l);
        b.a(this.f4911i, this.f4914l);
        boolean zD = bVar != null ? bVar.d() : true;
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "mute = " + zD);
        b.c().a(this.f4911i, this.f4910h);
        String strA = this.f4911i.f5003c.a(obj, "");
        com.aggmoread.sdk.z.c.a.a.e.f fVar2 = this.f4911i.f5003c;
        Object obj2 = f.c.f5015a0;
        this.f4836v = (RewardVideoAD) d.a(contextA, strA, fVar2.a(obj2, ""), d.e.REWARD, this.f4913k, this, Boolean.valueOf(true ^ zD));
        this.f4521t = false;
        if (this.f4910h.f4960p != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "set ssv");
            String strE = this.f4910h.f4960p.e();
            String strA2 = this.f4910h.f4960p.a();
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "u = " + strE + ", cd = " + strA2);
            String strA3 = p.a(strA2, this.f4911i.f5003c.c(obj2));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" _extrasInfo = ");
            sb2.append(strA3);
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", sb2.toString());
            this.f4836v.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().setUserId(strE).setCustomData(strA3).build());
        }
        a(this.f4910h, this.f4911i).a(0).b();
        this.f4836v.loadAD();
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onADClick() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "onADClick");
        q();
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onADClose() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "onADClose");
        r();
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onADExpose() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "onADExpose");
        s();
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onADLoad() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "onADLoad");
        if (o()) {
            int iA = b.a(this.f4836v);
            if (b.a(this.f4911i, iA)) {
                a(iA, 0);
                return;
            }
            b(iA);
        }
        b.a(this.f4909g, this.f4836v, this.f4911i);
        d(1);
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onADShow() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "onADShow");
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
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onError(AdError adError) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "onError " + adError.getErrorCode() + ", " + adError.getErrorMsg());
        b(b.a(adError));
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onReward(Map<String, Object> map) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "reward onReward map");
        n.a(this.f4520s, 1);
        if (map != null) {
            this.f4519r.putAll(map);
        }
        b(this.f4519r);
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onVideoCached() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "onVideoCached");
        u();
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onVideoComplete() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "onVideoComplete");
        n.a(this.f4520s, 2);
        a((Map<String, Object>) null);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j
    public void v() {
        RewardVideoAD rewardVideoAD;
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "showInner ");
        if (!this.f4521t || (rewardVideoAD = this.f4836v) == null || rewardVideoAD.hasShown() || !this.f4837w.compareAndSet(false, true)) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(this.f4836v, k());
        this.f4836v.showAD();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j
    public void b(Activity activity) {
        RewardVideoAD rewardVideoAD;
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGGDT", "showInner ac");
        if (!this.f4521t || (rewardVideoAD = this.f4836v) == null || rewardVideoAD.hasShown() || !this.f4837w.compareAndSet(false, true)) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(this.f4836v, k());
        this.f4836v.showAD(activity);
    }
}
