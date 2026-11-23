package com.aggmoread.sdk.z.c.a.a.d.a.d.w.f;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.aggmoread.sdk.z.c.a.a.c.j;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.api.KsFeedAd;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class c extends com.aggmoread.sdk.z.c.a.a.d.a.d.c {
    private AtomicBoolean A;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f4858w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private KsFeedAd f4859x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.b.o.a f4860y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private View f4861z;

    private class b implements InvocationHandler {
        private b() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            if ("onAdClicked".equals(name)) {
                c.this.s();
                return null;
            }
            if ("onAdShow".equals(name)) {
                c.this.onAdShow();
                return null;
            }
            if ("onDislikeClicked".equals(name)) {
                c.this.t();
                return null;
            }
            if ("onDownloadTipsDialogShow".equals(name)) {
                c.this.v();
                return null;
            }
            if (!"onDownloadTipsDialogDismiss".equals(name)) {
                return null;
            }
            c.this.u();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public c(KsFeedAd ksFeedAd, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.f4858w = "AMEPTAGKS";
        this.A = new AtomicBoolean();
        this.f4859x = ksFeedAd;
        KsAdVideoPlayConfig ksAdVideoPlayConfigBuild = null;
        this.f4859x.setAdInteractionListener((KsFeedAd.AdInteractionListener) Proxy.newProxyInstance(c.class.getClassLoader(), new Class[]{KsFeedAd.AdInteractionListener.class}, new b()));
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = eVar.f4963s;
        if (bVar != null) {
            KsAdVideoPlayConfig.Builder builder = new KsAdVideoPlayConfig.Builder();
            builder.videoSoundEnable(!bVar.d());
            builder.dataFlowAutoStart(bVar.a() == 1);
            ksAdVideoPlayConfigBuild = builder.build();
        }
        this.f4859x.setVideoPlayConfig(ksAdVideoPlayConfigBuild);
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.f4461t, com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a((Object) ksFeedAd), fVar);
    }

    private void r() {
    }

    private void w() {
        KsFeedAd ksFeedAd = this.f4859x;
        if (ksFeedAd == null) {
            return;
        }
        if (this.f4861z == null) {
            this.f4861z = ksFeedAd.getFeedView(this.f4425i.f4948d.getApplicationContext());
        }
        if (this.f4861z != null && this.f4860y == null) {
            this.f4860y = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4425i.f4948d.getApplicationContext());
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.a
    public com.aggmoread.sdk.z.c.a.a.d.b.o.a a() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4858w, "ac " + this.f4860y);
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = this.f4860y;
        return aVar != null ? aVar : super.a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    public void b(int i10) {
        super.b(i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.f4859x, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void destroy() {
        if (this.f4859x != null) {
            this.f4859x = null;
            this.f4861z = null;
            this.f4860y = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    protected String getTitle() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a().a(this.f4859x);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public View getView() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4858w, "getView");
        w();
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4858w, "getView " + this.f4860y);
        return this.f4860y;
    }

    public void onAdShow() {
        this.f4428l = System.currentTimeMillis();
        n.a((Object) this.f4431o, true, true);
        if (q()) {
            k();
        }
    }

    public boolean q() {
        return this.A.compareAndSet(false, true);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void render() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4858w, "render");
        w();
        View view = this.f4861z;
        if (view == null || this.f4859x == null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4858w, "render failed");
            return;
        }
        if (view.getParent() != null || this.f4860y == null) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4858w, "render enter ");
        r();
        View[] viewArr = new View[0];
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = this.f4860y;
        if (aVar != null) {
            aVar.addView(this.f4861z, new FrameLayout.LayoutParams(-1, -2));
        }
        n.a((View) this.f4860y, this.f4431o);
        n.a(this.f4425i.f4946b, this.f4431o, j.INFORMATION_FLOW, this.f4860y, viewArr, new WeakReference(this.f4860y), null, Integer.valueOf(this.f4426j.f()));
        n.b(this.f4425i.f4946b, this.f4426j.e(), this.f4426j.b());
        byte[] bArrB = this.f4425i.f4962r.b();
        if (bArrB != null) {
            n.a(this.f4425i.f4946b, bArrB);
        }
        n.a(this.f4431o, this.f4426j);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void renderActivity(Activity activity) {
        render();
    }

    public void s() {
        i();
    }

    public void t() {
        j();
    }

    public void u() {
    }

    public void v() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4859x, i11);
    }
}
