package com.aggmoread.sdk.z.c.a.a.d.a.d.v.f;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.aggmoread.sdk.z.c.a.a.d.a.c;
import com.aggmoread.sdk.z.c.a.a.d.a.d.v.d;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.ads.nativ.NativeExpressMediaListener;
import com.qq.e.comm.pi.AdData;
import com.qq.e.comm.util.AdError;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a extends com.aggmoread.sdk.z.c.a.a.d.a.d.b implements NativeExpressMediaListener {
    private static String A = "AMDRAWTAGGDT";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private NativeExpressADView f4793x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private AdData f4794y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> f4795z;

    public a(NativeExpressADView nativeExpressADView, e eVar, f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.f4793x = nativeExpressADView;
        this.f4454w = eVar.f4964t;
        if (nativeExpressADView != null) {
            AdData boundData = nativeExpressADView.getBoundData();
            this.f4794y = boundData;
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4451t, boundData, fVar);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.a
    public com.aggmoread.sdk.z.c.a.a.d.b.o.a a() {
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4795z;
        return weakReference != null ? weakReference.get() : super.a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.b
    public void b(int i10) {
        d.a(this.f4793x, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void destroy() {
        NativeExpressADView nativeExpressADView = this.f4793x;
        if (nativeExpressADView != null) {
            nativeExpressADView.destroy();
            this.f4793x = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.b
    protected String getTitle() {
        return this.f4794y.getTitle();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public View getView() {
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4795z;
        if (weakReference != null && weakReference.get() != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(A, "get ");
            return this.f4795z.get();
        }
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4425i.f4948d.getApplicationContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        aVar.addView(this.f4793x, layoutParams);
        this.f4795z = new WeakReference<>(aVar);
        return aVar;
    }

    public com.aggmoread.sdk.z.c.a.a.c.o.b j() {
        return this.f4453v;
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoCached(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.o.d dVar = this.f4452u;
        if (dVar != null) {
            dVar.onVideoCached();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoComplete(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.o.d dVar = this.f4452u;
        if (dVar != null) {
            dVar.onVideoComplete();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoError(NativeExpressADView nativeExpressADView, AdError adError) {
        com.aggmoread.sdk.z.c.a.a.c.o.d dVar = this.f4452u;
        if (dVar != null) {
            dVar.a(new j(adError.getErrorCode(), adError.getErrorMsg()));
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoInit(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.o.d dVar = this.f4452u;
        if (dVar != null) {
            dVar.onVideoInit();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoLoading(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.o.d dVar = this.f4452u;
        if (dVar != null) {
            dVar.onVideoLoading();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoPageClose(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.o.d dVar = this.f4452u;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoPageOpen(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.o.d dVar = this.f4452u;
        if (dVar != null) {
            dVar.c();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoPause(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.o.d dVar = this.f4452u;
        if (dVar != null) {
            dVar.onVideoPause();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoReady(NativeExpressADView nativeExpressADView, long j10) {
        com.aggmoread.sdk.z.c.a.a.c.o.d dVar = this.f4452u;
        if (dVar != null) {
            dVar.a(j10);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoStart(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.o.d dVar = this.f4452u;
        if (dVar != null) {
            dVar.onVideoStart();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void render() {
        NativeExpressADView nativeExpressADView = this.f4793x;
        if (nativeExpressADView != null) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(nativeExpressADView, c());
            if (this.f4452u != null) {
                this.f4793x.setMediaListener(this);
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b(A, "render");
            this.f4793x.render();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void renderActivity(Activity activity) {
        render();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(c cVar) {
        this.f4454w = cVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.b
    public void b(int i10, int i11, String str) {
        d.a(this.f4793x, i11, i10, str);
    }
}
