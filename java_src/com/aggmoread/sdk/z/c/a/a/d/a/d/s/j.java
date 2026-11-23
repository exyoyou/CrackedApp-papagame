package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class j extends b<com.aggmoread.sdk.z.c.a.a.c.a> {

    class a implements com.aggmoread.sdk.z.c.a.a.c.p.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b.g f4684a;

        a(j jVar, b.g gVar) {
            this.f4684a = gVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.c
        public void b(List<com.aggmoread.sdk.z.c.a.a.c.p.d> list) {
            if (this.f4684a != null) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.aggmoread.sdk.z.c.a.a.c.p.d> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
                this.f4684a.onAdLoaded(arrayList);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.c
        public void a(List<com.aggmoread.sdk.z.c.a.a.c.p.f> list) {
            ArrayList arrayList = new ArrayList();
            Iterator<com.aggmoread.sdk.z.c.a.a.c.p.f> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            this.f4684a.onAdLoaded(arrayList);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected com.aggmoread.sdk.z.c.a.a.c.g a(com.aggmoread.sdk.z.c.a.a.c.g gVar, b.g<com.aggmoread.sdk.z.c.a.a.c.a> gVar2) {
        return new a(this, gVar2);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b
    protected void a(com.aggmoread.sdk.z.c.a.a.c.g gVar, List<com.aggmoread.sdk.z.c.a.a.c.a> list) {
        if (gVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.c) {
            com.aggmoread.sdk.z.c.a.a.c.a aVar = list.get(0);
            if (aVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.d) {
                ArrayList arrayList = new ArrayList();
                arrayList.add((com.aggmoread.sdk.z.c.a.a.c.p.d) aVar);
                ((com.aggmoread.sdk.z.c.a.a.c.p.c) gVar).b(arrayList);
            } else if (aVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.f) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add((com.aggmoread.sdk.z.c.a.a.c.p.f) aVar);
                ((com.aggmoread.sdk.z.c.a.a.c.p.c) gVar).a(arrayList2);
            }
        }
    }
}
