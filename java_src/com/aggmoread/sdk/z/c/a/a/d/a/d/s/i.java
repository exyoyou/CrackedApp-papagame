package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class i extends b<com.aggmoread.sdk.z.c.a.a.c.r.b> {

    class a implements com.aggmoread.sdk.z.c.a.a.c.r.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b.g f4683a;

        a(i iVar, b.g gVar) {
            this.f4683a = gVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            b.g gVar = this.f4683a;
            if (gVar != null) {
                gVar.a();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.r.c
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.r.b> list) {
            b.g gVar = this.f4683a;
            if (gVar != null) {
                gVar.onAdLoaded(list);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.r.c
        public void onAdVideoCached() {
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected com.aggmoread.sdk.z.c.a.a.c.g a(com.aggmoread.sdk.z.c.a.a.c.g gVar, b.g<com.aggmoread.sdk.z.c.a.a.c.r.b> gVar2) {
        return new a(this, gVar2);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected void a(com.aggmoread.sdk.z.c.a.a.c.g gVar, List<com.aggmoread.sdk.z.c.a.a.c.r.b> list) {
        if (gVar instanceof com.aggmoread.sdk.z.c.a.a.c.r.c) {
            ((com.aggmoread.sdk.z.c.a.a.c.r.c) gVar).onAdLoaded(list);
        }
    }
}
