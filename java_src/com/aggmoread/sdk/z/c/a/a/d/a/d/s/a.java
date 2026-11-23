package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a extends b<com.aggmoread.sdk.z.c.a.a.c.n.a> {

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.s.a$a, reason: collision with other inner class name */
    class C0142a implements com.aggmoread.sdk.z.c.a.a.c.n.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b.g f4636a;

        C0142a(a aVar, b.g gVar) {
            this.f4636a = gVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            b.g gVar = this.f4636a;
            if (gVar != null) {
                gVar.a();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.n.b
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.n.a> list) {
            b.g gVar = this.f4636a;
            if (gVar != null) {
                gVar.onAdLoaded(list);
            }
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected com.aggmoread.sdk.z.c.a.a.c.g a(com.aggmoread.sdk.z.c.a.a.c.g gVar, b.g<com.aggmoread.sdk.z.c.a.a.c.n.a> gVar2) {
        return new C0142a(this, gVar2);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected void a(com.aggmoread.sdk.z.c.a.a.c.g gVar, List<com.aggmoread.sdk.z.c.a.a.c.n.a> list) {
        if (gVar instanceof com.aggmoread.sdk.z.c.a.a.c.n.b) {
            ((com.aggmoread.sdk.z.c.a.a.c.n.b) gVar).onAdLoaded(list);
        }
    }
}
