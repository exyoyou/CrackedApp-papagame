package com.aggmoread.sdk.b;

import android.app.Activity;
import android.view.View;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.draw.AMDrawAd;
import com.aggmoread.sdk.client.draw.AMDrawAdInteractionListener;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class g extends c implements AMDrawAd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.o.a f3266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected AMDrawAdInteractionListener f3267c;

    class a implements com.aggmoread.sdk.z.c.a.a.c.o.b {
        a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.b
        public void a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.b
        public void onADCloseOverlay() {
            AMDrawAdInteractionListener aMDrawAdInteractionListener = g.this.f3267c;
            if (aMDrawAdInteractionListener != null) {
                aMDrawAdInteractionListener.onADCloseOverlay();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.b
        public void onADLeftApplication() {
            AMDrawAdInteractionListener aMDrawAdInteractionListener = g.this.f3267c;
            if (aMDrawAdInteractionListener != null) {
                aMDrawAdInteractionListener.onADLeftApplication();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.b
        public void onADOpenOverlay() {
            AMDrawAdInteractionListener aMDrawAdInteractionListener = g.this.f3267c;
            if (aMDrawAdInteractionListener != null) {
                aMDrawAdInteractionListener.onADOpenOverlay();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.b
        public void onAdClicked() {
            AMDrawAdInteractionListener aMDrawAdInteractionListener = g.this.f3267c;
            if (aMDrawAdInteractionListener != null) {
                aMDrawAdInteractionListener.onAdClicked();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.b
        public void onAdExposed() {
            AMDrawAdInteractionListener aMDrawAdInteractionListener = g.this.f3267c;
            if (aMDrawAdInteractionListener != null) {
                aMDrawAdInteractionListener.onAdExposed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.b
        public void onRenderFail() {
            AMDrawAdInteractionListener aMDrawAdInteractionListener = g.this.f3267c;
            if (aMDrawAdInteractionListener != null) {
                aMDrawAdInteractionListener.onRenderFail();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.b
        public void onRenderSuccess() {
            AMDrawAdInteractionListener aMDrawAdInteractionListener = g.this.f3267c;
            if (aMDrawAdInteractionListener != null) {
                aMDrawAdInteractionListener.onRenderSuccess();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
        }
    }

    class b implements com.aggmoread.sdk.z.c.a.a.c.o.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AMDrawAd.DrawVideoListener f3269a;

        b(g gVar, AMDrawAd.DrawVideoListener drawVideoListener) {
            this.f3269a = drawVideoListener;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.d
        public void a(long j10) {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.d
        public void b() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.d
        public void c() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.d
        public void onVideoCached() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.d
        public void onVideoComplete() {
            AMDrawAd.DrawVideoListener drawVideoListener = this.f3269a;
            if (drawVideoListener != null) {
                drawVideoListener.onVideoComplete();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.d
        public void onVideoInit() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.d
        public void onVideoLoading() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.d
        public void onVideoPause() {
            AMDrawAd.DrawVideoListener drawVideoListener = this.f3269a;
            if (drawVideoListener != null) {
                drawVideoListener.onVideoPause();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.d
        public void onVideoStart() {
            AMDrawAd.DrawVideoListener drawVideoListener = this.f3269a;
            if (drawVideoListener != null) {
                drawVideoListener.onVideoStart();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.d
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            AMDrawAd.DrawVideoListener drawVideoListener = this.f3269a;
            if (drawVideoListener != null) {
                drawVideoListener.onVideoError(new AMError(dVar.a(), dVar.b()));
            }
        }
    }

    public g(com.aggmoread.sdk.z.c.a.a.c.o.a aVar, d dVar) {
        super(aVar, dVar);
        this.f3266b = aVar;
        aVar.a(new a());
    }

    @Override // com.aggmoread.sdk.b.c
    protected Map<String, Object> a() {
        return this.f3266b.h();
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void destroy() {
        this.f3266b.destroy();
        this.f3267c = null;
    }

    @Override // com.aggmoread.sdk.client.draw.AMDrawAd
    public View getView() {
        return this.f3266b.getView();
    }

    @Override // com.aggmoread.sdk.client.draw.AMDrawAd
    public void recycle() {
        this.f3266b.destroy();
    }

    @Override // com.aggmoread.sdk.client.draw.AMDrawAd
    public void render() {
        this.f3266b.render();
    }

    @Override // com.aggmoread.sdk.client.draw.AMDrawAd
    public void renderActivity(Activity activity) {
        this.f3266b.renderActivity(activity);
    }

    @Override // com.aggmoread.sdk.client.draw.AMDrawAd
    public void setInteractionListener(AMDrawAdInteractionListener aMDrawAdInteractionListener) {
        this.f3267c = aMDrawAdInteractionListener;
    }

    @Override // com.aggmoread.sdk.client.draw.AMDrawAd
    public void setVideoListener(AMDrawAd.DrawVideoListener drawVideoListener) {
        this.f3266b.a(new b(this, drawVideoListener));
    }
}
