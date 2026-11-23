package com.aggmoread.sdk.z.c.a.a.d.a.d.q.f;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.a.l.e;
import com.aggmoread.sdk.z.a.l.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class d extends com.aggmoread.sdk.z.c.a.a.d.a.d.d {
    private com.aggmoread.sdk.z.a.l.c A;
    private String B;

    class a implements f {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.p.f.a f4556g;

        a(com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
            this.f4556g = aVar;
        }

        @Override // com.aggmoread.sdk.z.a.i.h
        public void a(com.aggmoread.sdk.z.a.g.f fVar) {
            d.this.a(new j(fVar.a(), fVar.b()));
        }

        @Override // com.aggmoread.sdk.z.a.l.f
        public void onADClicked() {
            d dVar = d.this;
            m mVarA = dVar.a(dVar.f4425i, dVar.f4426j);
            m mVarA2 = mVarA.a(m.d.f5176n, d.this.f4423g);
            d dVar2 = d.this;
            com.aggmoread.sdk.z.c.a.a.d.b.f fVar = dVar2.f4426j;
            WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = dVar2.f4432p;
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = weakReference == null ? null : weakReference.get();
            d dVar3 = d.this;
            boolean zA = mVarA2.a(fVar, aVar, dVar3.f4428l, dVar3.f4431o);
            mVarA.b();
            if (zA) {
                this.f4556g.onAdClicked();
            }
        }

        @Override // com.aggmoread.sdk.z.a.l.f
        public void onADExposed() {
            d.this.f4428l = System.currentTimeMillis();
            n.a((Object) d.this.f4431o, true, true);
            d.this.a(this.f4556g);
        }
    }

    class b implements e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.u.a f4558a;

        b(com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
            this.f4558a = aVar;
        }

        @Override // com.aggmoread.sdk.z.a.l.e.a
        public void a() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.this.B, "onMediaStart");
            com.aggmoread.sdk.z.c.a.a.c.u.a aVar = this.f4558a;
            if (aVar != null) {
                aVar.onVideoStart();
            }
        }

        @Override // com.aggmoread.sdk.z.a.l.e.a
        public void b() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.this.B, "onMediaReady ");
            com.aggmoread.sdk.z.c.a.a.c.u.a aVar = this.f4558a;
            if (aVar != null) {
                aVar.onVideoReady();
            }
        }

        @Override // com.aggmoread.sdk.z.a.l.e.a
        public void c() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.this.B, "onMediaCompleted ");
            com.aggmoread.sdk.z.c.a.a.c.u.a aVar = this.f4558a;
            if (aVar != null) {
                aVar.onVideoCompleted();
            }
        }

        @Override // com.aggmoread.sdk.z.a.l.e.a
        public void d() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.this.B, "onMediaLoading");
            com.aggmoread.sdk.z.c.a.a.c.u.a aVar = this.f4558a;
            if (aVar != null) {
                aVar.onVideoLoading();
            }
        }

        @Override // com.aggmoread.sdk.z.a.l.e.a
        public void e() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.this.B, "onMediaResume");
            com.aggmoread.sdk.z.c.a.a.c.u.a aVar = this.f4558a;
            if (aVar != null) {
                aVar.onVideoResume();
            }
        }

        @Override // com.aggmoread.sdk.z.a.l.e.a
        public void f() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.this.B, "onMediaPause ");
            com.aggmoread.sdk.z.c.a.a.c.u.a aVar = this.f4558a;
            if (aVar != null) {
                aVar.onVideoPause();
            }
        }

        @Override // com.aggmoread.sdk.z.a.l.e.a
        public void a(int i10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.this.B, "onMediaLoaded");
            com.aggmoread.sdk.z.c.a.a.c.u.a aVar = this.f4558a;
            if (aVar != null) {
                aVar.onVideoLoaded(i10);
            }
        }

        @Override // com.aggmoread.sdk.z.a.l.e.a
        public void a(com.aggmoread.sdk.z.a.g.f fVar) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.this.B, " onMediaError err " + fVar.toString());
            com.aggmoread.sdk.z.c.a.a.c.u.a aVar = this.f4558a;
            if (aVar != null) {
                aVar.a(new j(fVar.a(), fVar.b()));
            }
        }
    }

    public d(com.aggmoread.sdk.z.a.l.c cVar, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.B = "AMHTAG";
        this.A = cVar;
        if (cVar instanceof com.aggmoread.sdk.z.a.l.d) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.b(this.f4472t, ((com.aggmoread.sdk.z.a.l.d) cVar).f(), fVar);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, View view3, @NonNull com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
        String str;
        String str2;
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA;
        com.aggmoread.sdk.z.a.u.d dVar;
        if (list == null) {
            list = new ArrayList<>();
        }
        View view4 = view3 != null ? view3 : view;
        if (list.contains(view4)) {
            str = this.B;
            str2 = "ovov + true";
        } else {
            str = this.B;
            str2 = "ovov + false";
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(str, str2);
        if (p.a(this.f4426j) && !list.contains(view4)) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(this.B, "ovov ");
            list.add(view4);
        }
        this.f4424h = aVar;
        if ((view instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.a) && this.f4476x) {
            aVarA = (com.aggmoread.sdk.z.c.a.a.d.b.o.a) view;
            dVar = (com.aggmoread.sdk.z.a.u.d) aVarA.findViewWithTag(com.aggmoread.sdk.z.c.a.a.d.a.d.d.f4470y);
            com.aggmoread.sdk.z.c.a.a.e.e.b(this.B, "f n " + dVar);
        } else {
            aVarA = null;
            dVar = null;
        }
        if (aVarA == null || dVar == null) {
            dVar = (com.aggmoread.sdk.z.a.u.d) a(context);
            aVarA = a(view, view3, dVar);
        }
        this.A.a(dVar, list, new a(aVar));
        a(this.f4432p.get(), view2 != null ? new View[]{view2} : new View[0]);
        return aVarA;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected ViewGroup b(Context context) {
        return new com.aggmoread.sdk.z.a.u.m(context);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void destroy() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int f() {
        return this.A.getVideoDuration();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public com.aggmoread.sdk.z.c.a.a.c.c g() {
        com.aggmoread.sdk.z.a.g.a aVarB = this.A.b();
        if (aVarB == null) {
            return super.g();
        }
        com.aggmoread.sdk.z.c.a.a.c.c cVarA = com.aggmoread.sdk.z.c.a.a.c.c.a(aVarB.f3341a, aVarB.f3345e, aVarB.f3342b, aVarB.f3347g, aVarB.f3348h, aVarB.f3344d + "");
        List<com.aggmoread.sdk.z.a.g.a.C0068a> list = aVarB.f3346f;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < aVarB.f3346f.size(); i10++) {
                com.aggmoread.sdk.z.a.g.a.C0068a c0068a = aVarB.f3346f.get(i10);
                arrayList.add(new com.aggmoread.sdk.z.c.a.a.c.c.a(c0068a.f3349a, c0068a.f3350b));
            }
            cVarA.a(arrayList);
        }
        return cVarA;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAdPatternType() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public double getAppPrice() {
        return 0.0d;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAppScore() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAppStatus() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getDesc() {
        return this.A.getDesc();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public long getDownloadCount() {
        return 0L;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getIconUrl() {
        return this.A.getIconUrl();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getImageUrl() {
        return this.A.getImageUrl();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public List<String> getImageUrlList() {
        return this.A.c();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureHeight() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureWidth() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getProgress() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getTitle() {
        return this.A.getTitle();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getVideoCurrentPosition() {
        return this.A.getVideoCurrentPosition();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isAppAd() {
        return this.A.isAppAd();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isVideoAd() {
        return this.A.isVideoAd();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void pauseVideo() {
        this.A.pauseVideo();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resume() {
        this.A.resume();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resumeVideo() {
        this.A.resumeVideo();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void setVideoMute(boolean z10) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void startVideo() {
        this.A.startVideo();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void stopVideo() {
        this.A.stopVideo();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected ViewGroup a(Context context) {
        return new com.aggmoread.sdk.z.a.u.d(context);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected void b(ViewGroup viewGroup, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4425i.f4963s;
        com.aggmoread.sdk.z.a.t.e.b bVar2 = new com.aggmoread.sdk.z.a.t.e.b();
        if (bVar != null) {
            bVar2.a(bVar.d());
            bVar2.a(bVar.a());
            bVar2.b(bVar.f());
            bVar2.d(bVar.h());
            bVar2.e(bVar.i());
            bVar2.c(bVar.g());
        }
        if (viewGroup instanceof com.aggmoread.sdk.z.a.u.m) {
            this.A.a((com.aggmoread.sdk.z.a.u.m) viewGroup, bVar2.a(), new b(aVar));
        }
    }

    protected void a(View view, View[] viewArr) {
        n.a(this.f4425i.f4946b, this.f4431o, com.aggmoread.sdk.z.c.a.a.c.j.INFORMATION_FLOW, view, viewArr, this.f4475w, this.f4473u);
        n.b(this.f4425i.f4946b, this.f4426j.e(), this.f4426j.b());
        byte[] bArrB = this.f4425i.f4962r.b();
        if (bArrB != null) {
            n.a(this.f4425i.f4946b, bArrB);
        }
        n.a(this.f4431o, this.f4426j);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected boolean a(View view) {
        return view instanceof com.aggmoread.sdk.z.a.u.m;
    }
}
