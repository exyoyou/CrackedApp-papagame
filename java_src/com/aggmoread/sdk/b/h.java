package com.aggmoread.sdk.b;

import android.app.Activity;
import android.view.View;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.feedlist.AMExpressAd;
import com.aggmoread.sdk.client.feedlist.AMExpressInteractionListener;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class h extends c implements AMExpressAd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.p.d f3270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected AMExpressInteractionListener f3271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.p.b f3272d;

    class a implements com.aggmoread.sdk.z.c.a.a.c.p.b {
        a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void a() {
            h hVar = h.this;
            AMExpressInteractionListener aMExpressInteractionListener = hVar.f3271c;
            if (aMExpressInteractionListener != null) {
                aMExpressInteractionListener.onAdClosed(hVar);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.b
        public void onADCloseOverlay() {
            h hVar = h.this;
            AMExpressInteractionListener aMExpressInteractionListener = hVar.f3271c;
            if (aMExpressInteractionListener != null) {
                aMExpressInteractionListener.onADCloseOverlay(hVar);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.b
        public void onADLeftApplication() {
            h hVar = h.this;
            AMExpressInteractionListener aMExpressInteractionListener = hVar.f3271c;
            if (aMExpressInteractionListener != null) {
                aMExpressInteractionListener.onADLeftApplication(hVar);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.b
        public void onADOpenOverlay() {
            h hVar = h.this;
            AMExpressInteractionListener aMExpressInteractionListener = hVar.f3271c;
            if (aMExpressInteractionListener != null) {
                aMExpressInteractionListener.onADOpenOverlay(hVar);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdClicked() {
            h hVar = h.this;
            AMExpressInteractionListener aMExpressInteractionListener = hVar.f3271c;
            if (aMExpressInteractionListener != null) {
                aMExpressInteractionListener.onAdClicked(hVar);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdExposed() {
            h hVar = h.this;
            AMExpressInteractionListener aMExpressInteractionListener = hVar.f3271c;
            if (aMExpressInteractionListener != null) {
                aMExpressInteractionListener.onAdExposed(hVar);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.b
        public void onRenderFail() {
            h hVar = h.this;
            AMExpressInteractionListener aMExpressInteractionListener = hVar.f3271c;
            if (aMExpressInteractionListener != null) {
                aMExpressInteractionListener.onRenderFail(hVar);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.b
        public void onRenderSuccess() {
            h hVar = h.this;
            AMExpressInteractionListener aMExpressInteractionListener = hVar.f3271c;
            if (aMExpressInteractionListener != null) {
                aMExpressInteractionListener.onRenderSuccess(hVar);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
        }
    }

    class b implements com.aggmoread.sdk.z.c.a.a.c.p.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AMExpressAd.ExpressMediaListener f3274a;

        b(AMExpressAd.ExpressMediaListener expressMediaListener) {
            this.f3274a = expressMediaListener;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.a
        public void a(com.aggmoread.sdk.z.c.a.a.c.p.d dVar) {
            AMExpressAd.ExpressMediaListener expressMediaListener = this.f3274a;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoLoading(h.this);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.a
        public void b(com.aggmoread.sdk.z.c.a.a.c.p.d dVar) {
            AMExpressAd.ExpressMediaListener expressMediaListener = this.f3274a;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoCached(h.this);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.a
        public void c(com.aggmoread.sdk.z.c.a.a.c.p.d dVar) {
            AMExpressAd.ExpressMediaListener expressMediaListener = this.f3274a;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoPageOpen(h.this);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.a
        public void d(com.aggmoread.sdk.z.c.a.a.c.p.d dVar) {
            AMExpressAd.ExpressMediaListener expressMediaListener = this.f3274a;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoPause(h.this);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.a
        public void e(com.aggmoread.sdk.z.c.a.a.c.p.d dVar) {
            AMExpressAd.ExpressMediaListener expressMediaListener = this.f3274a;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoInit(h.this);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.a
        public void f(com.aggmoread.sdk.z.c.a.a.c.p.d dVar) {
            AMExpressAd.ExpressMediaListener expressMediaListener = this.f3274a;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoStart(h.this);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.a
        public void g(com.aggmoread.sdk.z.c.a.a.c.p.d dVar) {
            AMExpressAd.ExpressMediaListener expressMediaListener = this.f3274a;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoPageClose(h.this);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.a
        public void h(com.aggmoread.sdk.z.c.a.a.c.p.d dVar) {
            AMExpressAd.ExpressMediaListener expressMediaListener = this.f3274a;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoComplete(h.this);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.a
        public void a(com.aggmoread.sdk.z.c.a.a.c.p.d dVar, long j10) {
            AMExpressAd.ExpressMediaListener expressMediaListener = this.f3274a;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoReady(h.this, j10);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.a
        public void a(com.aggmoread.sdk.z.c.a.a.c.p.d dVar, com.aggmoread.sdk.z.c.a.a.c.d dVar2) {
            AMExpressAd.ExpressMediaListener expressMediaListener = this.f3274a;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoError(h.this, new AMError(dVar2.a(), dVar2.b()));
            }
        }
    }

    public h(com.aggmoread.sdk.z.c.a.a.c.p.d dVar, d dVar2) {
        super(dVar, dVar2);
        this.f3270b = dVar;
        this.f3272d = new a();
    }

    @Override // com.aggmoread.sdk.b.c
    protected Map<String, Object> a() {
        return this.f3270b.h();
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void destroy() {
        this.f3270b.destroy();
        this.f3272d = null;
        this.f3271c = null;
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMExpressAd
    public View getView() {
        return this.f3270b.getView();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMExpressAd
    public void recycle() {
        this.f3270b.destroy();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMExpressAd
    public void render() {
        this.f3270b.render();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMExpressAd
    public void renderActivity(Activity activity) {
        this.f3270b.renderActivity(activity);
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMExpressAd
    public void setInteractionListener(AMExpressInteractionListener aMExpressInteractionListener) {
        this.f3271c = aMExpressInteractionListener;
        this.f3270b.a(this.f3272d);
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMExpressAd
    public void setMediaListener(AMExpressAd.ExpressMediaListener expressMediaListener) {
        this.f3270b.a(new b(expressMediaListener));
    }
}
