package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class g extends b<com.aggmoread.sdk.z.c.a.a.c.p.d> {

    class a implements com.aggmoread.sdk.z.c.a.a.c.p.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b.g f4681a;

        a(g gVar, b.g gVar2) {
            this.f4681a = gVar2;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            b.g gVar = this.f4681a;
            if (gVar != null) {
                gVar.a();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.e
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.p.d> list) {
            b.g gVar = this.f4681a;
            if (gVar != null) {
                gVar.onAdLoaded(list);
            }
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected com.aggmoread.sdk.z.c.a.a.c.g a(com.aggmoread.sdk.z.c.a.a.c.g gVar, b.g<com.aggmoread.sdk.z.c.a.a.c.p.d> gVar2) {
        return new a(this, gVar2);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected void a(com.aggmoread.sdk.z.c.a.a.c.g gVar, List<com.aggmoread.sdk.z.c.a.a.c.p.d> list) {
        if (gVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.e) {
            ((com.aggmoread.sdk.z.c.a.a.c.p.e) gVar).onAdLoaded(list);
        }
    }
}
