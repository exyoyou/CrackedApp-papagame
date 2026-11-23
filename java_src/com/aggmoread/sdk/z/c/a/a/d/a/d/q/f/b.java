package com.aggmoread.sdk.z.c.a.a.d.a.d.q.f;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class b extends com.aggmoread.sdk.z.c.a.a.d.a.d.c {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static String f4553y = "AMHTAGGDT";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.k.c f4554w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> f4555x;

    public b(com.aggmoread.sdk.z.a.k.c cVar, e eVar, f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.f4554w = cVar;
        if (cVar != null) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.b(this.f4461t, cVar.b(), fVar);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.a
    public com.aggmoread.sdk.z.c.a.a.d.b.o.a a() {
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4555x;
        return weakReference != null ? weakReference.get() : super.a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void destroy() {
        com.aggmoread.sdk.z.a.k.c cVar = this.f4554w;
        if (cVar != null) {
            cVar.g();
            this.f4554w = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    protected String getTitle() {
        return this.f4554w.c();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public View getView() {
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4555x;
        if (weakReference != null && weakReference.get() != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(f4553y, "get ");
            return this.f4555x.get();
        }
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4425i.f4948d);
        aVar.addView(this.f4554w.a(), new FrameLayout.LayoutParams(-1, -2));
        this.f4555x = new WeakReference<>(aVar);
        return aVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void render() {
        if (this.f4554w != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(f4553y, "render");
            this.f4554w.h();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void renderActivity(Activity activity) {
        render();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c, com.aggmoread.sdk.z.c.a.a.c.p.d
    public void a(com.aggmoread.sdk.z.c.a.a.c.p.a aVar) {
    }
}
