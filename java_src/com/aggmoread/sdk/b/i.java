package com.aggmoread.sdk.b;

import android.app.Activity;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.fullscreen.AMFullScreenAd;
import com.aggmoread.sdk.client.fullscreen.AMFullScreenAdInteractionListener;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class i extends c implements AMFullScreenAd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.q.b f3276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.q.a f3277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AMFullScreenAdInteractionListener f3278d;

    class a implements com.aggmoread.sdk.z.c.a.a.c.q.a {
        a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void a() {
            if (i.this.f3278d != null) {
                i.this.f3278d.onAdClosed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.e
        public void onADLeftApplication() {
            if (i.this.f3278d != null) {
                i.this.f3278d.onADLeftApplication();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdClicked() {
            if (i.this.f3278d != null) {
                i.this.f3278d.onAdClicked();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdExposed() {
            if (i.this.f3278d != null) {
                i.this.f3278d.onAdExposed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.e
        public void onAdShow() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.e
        public void onAdVideoCompleted() {
            if (i.this.f3278d != null) {
                i.this.f3278d.onAdVideoCompleted();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            if (i.this.f3278d != null) {
                i.this.f3278d.onAdError(new AMError(dVar.a(), dVar.b()));
            }
        }
    }

    public i(com.aggmoread.sdk.z.c.a.a.c.q.b bVar, d dVar) {
        super(bVar, dVar);
        this.f3276b = bVar;
        this.f3277c = new a();
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void destroy() {
        this.f3276b.destroy();
        this.f3278d = null;
        this.f3277c = null;
    }

    @Override // com.aggmoread.sdk.client.fullscreen.AMFullScreenAd
    public void show(Activity activity, AMFullScreenAdInteractionListener aMFullScreenAdInteractionListener) {
        this.f3278d = aMFullScreenAdInteractionListener;
        this.f3276b.a(this.f3277c);
        this.f3276b.a(activity);
    }

    @Override // com.aggmoread.sdk.b.c
    protected Map<String, Object> a() {
        return this.f3276b.h();
    }

    @Override // com.aggmoread.sdk.client.fullscreen.AMFullScreenAd
    public void show(AMFullScreenAdInteractionListener aMFullScreenAdInteractionListener) {
        this.f3278d = aMFullScreenAdInteractionListener;
        this.f3276b.a(this.f3277c);
        this.f3276b.b();
    }
}
