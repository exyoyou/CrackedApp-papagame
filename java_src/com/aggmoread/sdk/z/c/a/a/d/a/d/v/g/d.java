package com.aggmoread.sdk.z.c.a.a.d.a.d.v.g;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.ads.nativ.NativeExpressMediaListener;
import com.qq.e.comm.pi.AdData;
import com.qq.e.comm.util.AdError;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class d extends com.aggmoread.sdk.z.c.a.a.d.a.d.c implements NativeExpressMediaListener {
    private static String A = "AMEPTAGGDT";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private NativeExpressADView f4804w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private AdData f4805x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> f4806y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.p.a f4807z;

    public d(NativeExpressADView nativeExpressADView, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.f4804w = nativeExpressADView;
        if (nativeExpressADView != null) {
            AdData boundData = nativeExpressADView.getBoundData();
            this.f4805x = boundData;
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4461t, boundData, fVar);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.a
    public com.aggmoread.sdk.z.c.a.a.d.b.o.a a() {
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4806y;
        return weakReference != null ? weakReference.get() : super.a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    public void b(int i10) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.a(this.f4804w, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void destroy() {
        NativeExpressADView nativeExpressADView = this.f4804w;
        if (nativeExpressADView != null) {
            nativeExpressADView.destroy();
            this.f4804w = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    protected String getTitle() {
        return this.f4805x.getTitle();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public View getView() {
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4806y;
        if (weakReference != null && weakReference.get() != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(A, "get ");
            return this.f4806y.get();
        }
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4425i.f4948d);
        aVar.addView(this.f4804w, new FrameLayout.LayoutParams(-1, -2));
        this.f4806y = new WeakReference<>(aVar);
        return aVar;
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoCached(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.p.a aVar = this.f4807z;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoComplete(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.p.a aVar = this.f4807z;
        if (aVar != null) {
            aVar.h(this);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoError(NativeExpressADView nativeExpressADView, AdError adError) {
        com.aggmoread.sdk.z.c.a.a.c.p.a aVar = this.f4807z;
        if (aVar != null) {
            aVar.a(this, new j(adError.getErrorCode(), adError.getErrorMsg()));
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoInit(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.p.a aVar = this.f4807z;
        if (aVar != null) {
            aVar.e(this);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoLoading(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.p.a aVar = this.f4807z;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoPageClose(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.p.a aVar = this.f4807z;
        if (aVar != null) {
            aVar.g(this);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoPageOpen(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.p.a aVar = this.f4807z;
        if (aVar != null) {
            aVar.c(this);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoPause(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.p.a aVar = this.f4807z;
        if (aVar != null) {
            aVar.d(this);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoReady(NativeExpressADView nativeExpressADView, long j10) {
        com.aggmoread.sdk.z.c.a.a.c.p.a aVar = this.f4807z;
        if (aVar != null) {
            aVar.a(this, j10);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
    public void onVideoStart(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.c.p.a aVar = this.f4807z;
        if (aVar != null) {
            aVar.f(this);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void render() {
        NativeExpressADView nativeExpressADView = this.f4804w;
        if (nativeExpressADView != null) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(nativeExpressADView, c());
            if (this.f4807z != null) {
                this.f4804w.setMediaListener(this);
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b(A, "render");
            this.f4804w.render();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void renderActivity(Activity activity) {
        render();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c, com.aggmoread.sdk.z.c.a.a.c.p.d
    public void a(com.aggmoread.sdk.z.c.a.a.c.p.a aVar) {
        this.f4807z = aVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.a(this.f4804w, i11, i10, str);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        this.f4462u = cVar;
    }
}
