package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class n extends b<com.aggmoread.sdk.z.c.a.a.c.p.f> {

    class a implements com.aggmoread.sdk.z.c.a.a.c.p.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b.g f4688a;

        a(n nVar, b.g gVar) {
            this.f4688a = gVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            b.g gVar = this.f4688a;
            if (gVar != null) {
                gVar.a();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.g
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.p.f> list) {
            b.g gVar = this.f4688a;
            if (gVar != null) {
                gVar.onAdLoaded(list);
            }
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected com.aggmoread.sdk.z.c.a.a.c.g a(com.aggmoread.sdk.z.c.a.a.c.g gVar, b.g<com.aggmoread.sdk.z.c.a.a.c.p.f> gVar2) {
        return new a(this, gVar2);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected void a(com.aggmoread.sdk.z.c.a.a.c.g gVar, List<com.aggmoread.sdk.z.c.a.a.c.p.f> list) {
        if (gVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.g) {
            ((com.aggmoread.sdk.z.c.a.a.c.p.g) gVar).onAdLoaded(list);
        }
    }
}
