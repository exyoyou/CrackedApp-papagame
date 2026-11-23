package com.aggmoread.sdk.b;

import android.app.Activity;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.reward.AMRewardAd;
import com.aggmoread.sdk.client.reward.AMRewardInteractionListener;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class n extends c implements AMRewardAd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.s.a f3293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.s.d f3294c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AMRewardInteractionListener f3295d;

    class a implements com.aggmoread.sdk.z.c.a.a.c.s.d {
        a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void a() {
            if (n.this.f3295d != null) {
                n.this.f3295d.onAdClosed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdClicked() {
            if (n.this.f3295d != null) {
                n.this.f3295d.onAdClicked();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdExposed() {
            if (n.this.f3295d != null) {
                n.this.f3295d.onAdExposed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.s.d
        public void onAdShow() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.s.d
        public void onReward(Map map) {
            if (n.this.f3295d != null) {
                n.this.f3295d.onReward(map);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.s.d
        public void onVideoComplete() {
            if (n.this.f3295d != null) {
                n.this.f3295d.onVideoComplete();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            if (n.this.f3295d != null) {
                n.this.f3295d.onAdError(new AMError(dVar.a(), dVar.b()));
            }
        }
    }

    public n(com.aggmoread.sdk.z.c.a.a.c.s.a aVar, d dVar) {
        super(aVar, dVar);
        this.f3293b = aVar;
        this.f3294c = new a();
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void destroy() {
        this.f3295d = null;
        this.f3294c = null;
        com.aggmoread.sdk.z.c.a.a.c.s.a aVar = this.f3293b;
        if (aVar != null) {
            aVar.destroy();
        }
    }

    @Override // com.aggmoread.sdk.client.reward.AMRewardAd
    public void show(Activity activity, AMRewardInteractionListener aMRewardInteractionListener) {
        this.f3295d = aMRewardInteractionListener;
        this.f3293b.a(this.f3294c);
        this.f3293b.a(activity);
    }

    @Override // com.aggmoread.sdk.b.c
    protected Map<String, Object> a() {
        return this.f3293b.h();
    }

    @Override // com.aggmoread.sdk.client.reward.AMRewardAd
    public void show(AMRewardInteractionListener aMRewardInteractionListener) {
        this.f3295d = aMRewardInteractionListener;
        this.f3293b.a(this.f3294c);
        this.f3293b.b();
    }
}
