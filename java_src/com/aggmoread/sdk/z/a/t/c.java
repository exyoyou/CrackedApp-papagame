package com.aggmoread.sdk.z.a.t;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f3976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3977b = null;

    class a implements g.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ g.b f3978a;

        a(g.b bVar) {
            this.f3978a = bVar;
        }

        @Override // com.aggmoread.sdk.z.a.t.g.b
        public void a(int i10, String str) {
            com.aggmoread.sdk.z.a.d.d("VideoEngineTAG", "preloadLoad onFail " + i10 + ", message " + str);
            g.b bVar = this.f3978a;
            if (bVar != null) {
                bVar.a(i10, str);
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.g.b
        public void a(String str) {
            com.aggmoread.sdk.z.a.d.d("VideoEngineTAG", "preloadLoad onCached " + str);
            c.this.f3977b = str;
            g.b bVar = this.f3978a;
            if (bVar != null) {
                bVar.a(str);
            }
        }
    }

    public interface b {
        void a();

        void a(float f10, int i10);

        void a(Activity activity);

        void a(com.aggmoread.sdk.z.a.s.a aVar);

        void a(String str);

        void a(Map<String, Object> map);

        void b();

        void c();

        void d();

        void onVideoCached();

        void onVideoComplete();
    }

    public abstract void a(Activity activity);

    public abstract void a(d dVar);

    public abstract View b();

    public void a() {
        g gVar = this.f3976a;
        if (gVar != null) {
            gVar.b();
        }
    }

    public void a(Activity activity, d dVar) {
        if (!TextUtils.isEmpty(this.f3977b)) {
            dVar.f3980b = this.f3977b;
        }
        g gVar = this.f3976a;
        if (gVar != null) {
            gVar.a();
        }
        a(activity);
        a(dVar);
        activity.setContentView(b());
    }

    public void a(Context context, String str, g.b bVar) {
        g gVar = new g(context, str);
        this.f3976a = gVar;
        gVar.a(new a(bVar));
    }
}
