package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

import com.aggmoread.sdk.client.AMConst;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes7.dex */
public class e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SortedSet<a<T>> f4675a = Collections.synchronizedSortedSet(new TreeSet());

    public static class a<T> implements Comparable<a> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public T f4676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f4677c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f4679e = 1800000;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f4678d = System.currentTimeMillis();

        public a(T t10, int i10) {
            this.f4676b = t10;
            this.f4677c = i10;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            int i10 = aVar.f4677c - this.f4677c;
            if (i10 != 0) {
                return i10;
            }
            long j10 = this.f4678d - aVar.f4678d;
            if (j10 > 0) {
                return 1;
            }
            return j10 < 0 ? -1 : 0;
        }

        public boolean a() {
            return this.f4679e > System.currentTimeMillis() - this.f4678d;
        }

        public void b() {
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACCDTAG", "nr ");
            T t10 = this.f4676b;
            if (t10 instanceof com.aggmoread.sdk.z.c.a.a.c.a) {
                ((com.aggmoread.sdk.z.c.a.a.c.a) t10).a(1, this.f4677c + 10, "");
            }
        }
    }

    public e(String str) {
    }

    public void a() {
        SortedSet<a<T>> sortedSet = this.f4675a;
        if (sortedSet != null) {
            synchronized (sortedSet) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("ACCDTAG", "checkExpire, size " + this.f4675a.size());
                Iterator<a<T>> it2 = this.f4675a.iterator();
                while (it2.hasNext()) {
                    a<T> next = it2.next();
                    if (next != null && !next.a()) {
                        it2.remove();
                        next.b();
                        a("checkExpire", next);
                    }
                }
            }
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACCDTAG", "checkExpire end , size = " + this.f4675a.size());
    }

    public a<T> b() {
        synchronized (this.f4675a) {
            if (this.f4675a.isEmpty()) {
                return null;
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACCDTAG", "pollFirst data  " + Thread.currentThread().getName());
            a<T> aVarFirst = this.f4675a.first();
            this.f4675a.remove(aVarFirst);
            return aVarFirst;
        }
    }

    public void a(a<T> aVar) {
        com.aggmoread.sdk.z.c.a.a.d.b.f fVar;
        com.aggmoread.sdk.z.c.a.a.d.b.e eVar;
        synchronized (this.f4675a) {
            if (aVar != null) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("ACCDTAG", "addAdData   " + aVar);
                T t10 = aVar.f4676b;
                if (t10 instanceof com.aggmoread.sdk.z.c.a.a.d.b.a) {
                    com.aggmoread.sdk.z.c.a.a.d.b.e eVar2 = ((com.aggmoread.sdk.z.c.a.a.d.b.a) t10).f4910h;
                    fVar = ((com.aggmoread.sdk.z.c.a.a.d.b.a) t10).f4911i;
                    if (eVar2 != null) {
                        Object objB = eVar2.b();
                        if (objB instanceof com.aggmoread.sdk.z.c.a.a.d.b.e) {
                            eVar = (com.aggmoread.sdk.z.c.a.a.d.b.e) objB;
                            eVar.f4948d = com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getApplicationContext();
                            ((com.aggmoread.sdk.z.c.a.a.d.b.a) t10).f4910h = eVar;
                            fVar.f5001a = eVar;
                        }
                    }
                } else if (t10 instanceof com.aggmoread.sdk.z.c.a.a.d.a.a) {
                    com.aggmoread.sdk.z.c.a.a.d.b.e eVar3 = ((com.aggmoread.sdk.z.c.a.a.d.a.a) t10).f4425i;
                    fVar = ((com.aggmoread.sdk.z.c.a.a.d.a.a) t10).f4426j;
                    if (eVar3 != null) {
                        Object objB2 = eVar3.b();
                        if (objB2 instanceof com.aggmoread.sdk.z.c.a.a.d.b.e) {
                            eVar = (com.aggmoread.sdk.z.c.a.a.d.b.e) objB2;
                            eVar.f4948d = com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getApplicationContext();
                            ((com.aggmoread.sdk.z.c.a.a.d.a.a) t10).f4425i = eVar;
                            fVar.f5001a = eVar;
                        }
                    }
                }
                this.f4675a.add(aVar);
                if (this.f4675a.size() > 9) {
                    this.f4675a.remove(this.f4675a.last());
                }
            }
        }
    }

    private void a(String str, a<T> aVar) {
        String string;
        if (com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue()) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACCDTAG", "dump " + str + ", adData " + aVar);
            T t10 = aVar.f4676b;
            if (t10 instanceof com.aggmoread.sdk.z.c.a.a.c.a) {
                Map<String, Object> mapH = ((com.aggmoread.sdk.z.c.a.a.c.a) t10).h();
                if (mapH != null) {
                    StringBuilder sb2 = new StringBuilder("ExtrasInfo:\n");
                    sb2.append("time = " + ((a) aVar).f4678d);
                    sb2.append("\n\t");
                    sb2.append("slot_id = " + mapH.get(AMConst.ExtrasKey.AD_PLACEMENT_ID));
                    sb2.append("\n\t");
                    sb2.append("ecpm = " + mapH.get(AMConst.ExtrasKey.AD_PRICE));
                    sb2.append("\n\t End");
                    string = sb2.toString();
                } else {
                    string = "extrasMap is empty ";
                }
                com.aggmoread.sdk.z.c.a.a.e.e.b("ACCDTAG", string);
            }
        }
    }
}
