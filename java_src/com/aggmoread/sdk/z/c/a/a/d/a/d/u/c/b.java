package com.aggmoread.sdk.z.c.a.a.d.a.d.u.c;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.a.l.c;
import com.aggmoread.sdk.z.a.l.f;
import com.aggmoread.sdk.z.c.a.a.d.a.d.d;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class b extends d {
    private String A;
    private c B;

    class a implements f {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.p.f.a f4758g;

        a(com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
            this.f4758g = aVar;
        }

        @Override // com.aggmoread.sdk.z.a.i.h
        public void a(com.aggmoread.sdk.z.a.g.f fVar) {
            b.this.a(new j(fVar.a(), fVar.b()));
        }

        @Override // com.aggmoread.sdk.z.a.l.f
        public void onADClicked() {
            b bVar = b.this;
            m mVarA = bVar.a(bVar.f4425i, bVar.f4426j);
            m mVarA2 = mVarA.a(m.d.f5176n, b.this.f4423g);
            b bVar2 = b.this;
            com.aggmoread.sdk.z.c.a.a.d.b.f fVar = bVar2.f4426j;
            WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = bVar2.f4432p;
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = weakReference == null ? null : weakReference.get();
            b bVar3 = b.this;
            boolean zA = mVarA2.a(fVar, aVar, bVar3.f4428l, bVar3.f4431o);
            mVarA.b();
            if (zA) {
                this.f4758g.onAdClicked();
            }
        }

        @Override // com.aggmoread.sdk.z.a.l.f
        public void onADExposed() {
            b.this.f4428l = System.currentTimeMillis();
            n.a((Object) b.this.f4431o, true, true);
            b.this.a(this.f4758g);
        }
    }

    public b(c cVar, e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.A = "AMHTAG";
        this.B = cVar;
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
            str = this.A;
            str2 = "ovov + true";
        } else {
            str = this.A;
            str2 = "ovov + false";
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(str, str2);
        if (p.a(this.f4426j) && !list.contains(view4)) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(this.A, "ovov ");
            list.add(view4);
        }
        this.f4424h = aVar;
        if ((view instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.a) && this.f4476x) {
            aVarA = (com.aggmoread.sdk.z.c.a.a.d.b.o.a) view;
            dVar = (com.aggmoread.sdk.z.a.u.d) aVarA.findViewWithTag(d.f4470y);
            com.aggmoread.sdk.z.c.a.a.e.e.b(this.A, "f n " + dVar);
        } else {
            aVarA = null;
            dVar = null;
        }
        if (aVarA == null || dVar == null) {
            dVar = (com.aggmoread.sdk.z.a.u.d) a(context);
            aVarA = a(view, view3, dVar);
        }
        this.B.a(dVar, list, new a(aVar));
        a(this.f4432p.get(), view2 != null ? new View[]{view2} : new View[0]);
        return aVarA;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void destroy() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int f() {
        return 0;
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
        return this.B.getDesc();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public long getDownloadCount() {
        return 0L;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getIconUrl() {
        return this.B.getIconUrl();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getImageUrl() {
        return this.B.getImageUrl();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public List<String> getImageUrlList() {
        return this.B.c();
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
        return this.B.getTitle();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getVideoCurrentPosition() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isAppAd() {
        return this.B.isAppAd();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isVideoAd() {
        return false;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void pauseVideo() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resume() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resumeVideo() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void setVideoMute(boolean z10) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void startVideo() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void stopVideo() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected ViewGroup a(Context context) {
        return new com.aggmoread.sdk.z.a.u.d(context);
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

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void a(@NonNull ViewGroup viewGroup, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
    }
}
