package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class h extends b<com.aggmoread.sdk.z.c.a.a.c.q.b> {

    class a implements com.aggmoread.sdk.z.c.a.a.c.q.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b.g f4682a;

        a(h hVar, b.g gVar) {
            this.f4682a = gVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            b.g gVar = this.f4682a;
            if (gVar != null) {
                gVar.a();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.q.c
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.q.b> list) {
            b.g gVar = this.f4682a;
            if (gVar != null) {
                gVar.onAdLoaded(list);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.q.c
        public void onAdVideoCached() {
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected com.aggmoread.sdk.z.c.a.a.c.g a(com.aggmoread.sdk.z.c.a.a.c.g gVar, b.g<com.aggmoread.sdk.z.c.a.a.c.q.b> gVar2) {
        return new a(this, gVar2);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected void a(com.aggmoread.sdk.z.c.a.a.c.g gVar, List<com.aggmoread.sdk.z.c.a.a.c.q.b> list) {
        if (gVar instanceof com.aggmoread.sdk.z.c.a.a.c.q.c) {
            ((com.aggmoread.sdk.z.c.a.a.c.q.c) gVar).onAdLoaded(list);
        }
    }
}
