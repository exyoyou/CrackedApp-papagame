package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

import android.os.CountDownTimer;
import androidx.core.app.NotificationCompat;
import com.aggmoread.sdk.client.AMConst;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected LinkedHashMap<String, com.aggmoread.sdk.z.c.a.a.d.a.d.s.e<T>> f4637a = new LinkedHashMap<>();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f4638b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f4639c;

        a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
            this.f4638b = eVar;
            this.f4639c = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.b(this.f4638b, this.f4639c);
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.s.b$b, reason: collision with other inner class name */
    class CountDownTimerC0143b extends CountDownTimer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f4641a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f4642b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.a.d.s.e f4643c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ f f4644d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.g f4645e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        CountDownTimerC0143b(long j10, long j11, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, com.aggmoread.sdk.z.c.a.a.d.a.d.s.e eVar2, f fVar2, com.aggmoread.sdk.z.c.a.a.c.g gVar) {
            super(j10, j11);
            this.f4641a = eVar;
            this.f4642b = fVar;
            this.f4643c = eVar2;
            this.f4644d = fVar2;
            this.f4645e = gVar;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            b.this.a(this.f4641a, this.f4642b, this.f4643c, this.f4644d, this.f4645e, false, "onFinish");
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f4647b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f4648c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ f f4649d;

        c(b bVar, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, f fVar2) {
            this.f4647b = eVar;
            this.f4648c = fVar;
            this.f4649d = fVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.b(this.f4647b, this.f4648c, this.f4649d, null, "timeOut");
        }
    }

    class d implements g<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f4650a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f4651b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CountDownTimer f4652c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f4653d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f4654e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.a.d.s.e f4655f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ f f4656g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.g f4657h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ f f4658i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ Runnable f4659j;

        d(List list, CountDownTimer countDownTimer, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, com.aggmoread.sdk.z.c.a.a.d.a.d.s.e eVar2, f fVar2, com.aggmoread.sdk.z.c.a.a.c.g gVar, f fVar3, Runnable runnable) {
            this.f4651b = list;
            this.f4652c = countDownTimer;
            this.f4653d = eVar;
            this.f4654e = fVar;
            this.f4655f = eVar2;
            this.f4656g = fVar2;
            this.f4657h = gVar;
            this.f4658i = fVar3;
            this.f4659j = runnable;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b.g
        public void a() {
            this.f4650a++;
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "err c " + this.f4650a + ",total " + this.f4651b.size());
            if (this.f4650a >= this.f4651b.size()) {
                this.f4652c.cancel();
                b.this.a(this.f4653d, this.f4654e, this.f4655f, this.f4656g, this.f4657h, false, "err end");
                b.b(this.f4653d, this.f4654e, this.f4658i, this.f4659j, NotificationCompat.CATEGORY_ERROR);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.s.b.g
        public void onAdLoaded(List<T> list) {
            if (list != null) {
                for (T t10 : list) {
                    if (t10 != null) {
                        this.f4655f.a(new com.aggmoread.sdk.z.c.a.a.d.a.d.s.e.a<>(t10, b.a(t10)));
                    }
                }
            }
            this.f4650a++;
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "load c " + this.f4650a + ",total " + this.f4651b.size());
            b.this.a(this.f4653d, this.f4654e, this.f4655f, this.f4656g, this.f4657h, false, "loaded end ");
            if (this.f4650a >= this.f4651b.size()) {
                this.f4652c.cancel();
                b.b(this.f4653d, this.f4654e, this.f4658i, this.f4659j, "load");
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f4661b;

        e(b bVar, com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
            this.f4661b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4661b.f4951g.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001004001, "广告无填充"));
        }
    }

    private static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f4662a;

        private f() {
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    protected interface g<K> {
        void a();

        void onAdLoaded(List<K> list);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003e  */
    protected static int a(Object obj) {
        int i10;
        Map<String, Object> mapH;
        if ((obj instanceof com.aggmoread.sdk.z.c.a.a.c.a) && (mapH = ((com.aggmoread.sdk.z.c.a.a.c.a) obj).h()) != null && mapH.containsKey(AMConst.ExtrasKey.AD_PRICE)) {
            Object obj2 = mapH.get(AMConst.ExtrasKey.AD_PRICE);
            if (obj2 instanceof String) {
                try {
                    i10 = Integer.parseInt((String) obj2);
                } catch (Exception e10) {
                    com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "gap error : " + e10.getMessage());
                    i10 = -1;
                }
            } else {
                i10 = -1;
            }
        } else {
            i10 = -1;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "gap p : " + i10);
        return i10;
    }

    protected static int b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Object obj) {
        int iB = obj instanceof com.aggmoread.sdk.z.c.a.a.c.a ? com.aggmoread.sdk.z.c.a.a.e.p.b(eVar, fVar, ((com.aggmoread.sdk.z.c.a.a.c.a) obj).h()) : -1;
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "grap t : " + iB);
        return iB;
    }

    protected abstract com.aggmoread.sdk.z.c.a.a.c.g a(com.aggmoread.sdk.z.c.a.a.c.g gVar, g<T> gVar2);

    protected abstract void a(com.aggmoread.sdk.z.c.a.a.c.g gVar, List<T> list);

    private com.aggmoread.sdk.z.c.a.a.c.g b(com.aggmoread.sdk.z.c.a.a.c.g gVar, g<T> gVar2) {
        try {
            return a(gVar, gVar2);
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "Exception err " + e10.getMessage());
            e10.printStackTrace();
            return gVar;
        }
    }

    protected long a() {
        return BaseCloudFileManager.ACK_TIMEOUT;
    }

    protected static String a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Object obj) {
        String strA = obj instanceof com.aggmoread.sdk.z.c.a.a.c.a ? com.aggmoread.sdk.z.c.a.a.e.p.a(eVar, fVar, ((com.aggmoread.sdk.z.c.a.a.c.a) obj).h()) : WMConstants.TIMER_STAGE_NONE;
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "grap p : " + strA);
        return strA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        com.aggmoread.sdk.z.c.a.a.e.f fVar2;
        Map<Object, Object> map;
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "loadAdInner enter ");
        if (fVar == null || (fVar2 = fVar.f5002b) == null || (map = fVar2.f5230a) == null) {
            return;
        }
        List list = (List) map.get(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5014a);
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            for (int i10 = 0; i10 < list.size(); i10++) {
                com.aggmoread.sdk.z.c.a.a.e.f fVar3 = new com.aggmoread.sdk.z.c.a.a.e.f((Map) list.get(i10));
                if (fVar3.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5019c0) > eVar.f4966v) {
                    com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "loadAdInner list " + i10);
                    if (fVar3.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5033j0) == 0) {
                        com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "loadAdInner bidAd");
                        arrayList.add(new k(fVar, fVar3, i10));
                    } else {
                        o oVar = new o(i10, (Map) list.get(i10));
                        int iB = fVar3.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5025f0);
                        if (iB == 1) {
                            arrayList4.add(oVar);
                        } else if (iB == 100) {
                            arrayList2.add(oVar);
                        } else if (iB == 101) {
                            arrayList3.add(oVar);
                        } else if (iB == 107) {
                            arrayList5.add(oVar);
                        } else {
                            arrayList6.add(oVar);
                        }
                    }
                }
            }
            if (!arrayList6.isEmpty()) {
                arrayList.add(new p(eVar, fVar, arrayList6, -1));
            }
            if (!arrayList2.isEmpty()) {
                arrayList.add(new p(eVar, fVar, arrayList2, 100));
            }
            if (!arrayList3.isEmpty()) {
                arrayList.add(new p(eVar, fVar, arrayList3, 101));
            }
            if (!arrayList4.isEmpty()) {
                arrayList.add(new p(eVar, fVar, arrayList4, 1));
            }
            if (!arrayList5.isEmpty()) {
                arrayList.add(new p(eVar, fVar, arrayList5, 107));
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "adConcurrentResponseList size : " + arrayList.size());
        }
        if (!arrayList.isEmpty()) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "loadAdInner placementId : " + eVar.f4953i);
            com.aggmoread.sdk.z.c.a.a.c.g gVar = eVar.f4951g;
            a aVar = null;
            f fVar4 = new f(aVar);
            f fVar5 = new f(aVar);
            com.aggmoread.sdk.z.c.a.a.d.a.d.s.e<T> eVar2 = this.f4637a.get(eVar.f4953i);
            if (eVar2 == null) {
                eVar2 = new com.aggmoread.sdk.z.c.a.a.d.a.d.s.e<>(eVar.f4953i);
                this.f4637a.put(eVar.f4953i, eVar2);
            } else {
                eVar2.a();
            }
            com.aggmoread.sdk.z.c.a.a.d.a.d.s.e<T> eVar3 = eVar2;
            long jA = eVar.A;
            if (jA <= 0) {
                jA = a();
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "loadAdInner placementId : " + eVar.f4953i + ", requestTimeOut = " + jA);
            CountDownTimerC0143b countDownTimerC0143b = new CountDownTimerC0143b(jA, 500L, eVar, fVar, eVar3, fVar4, gVar);
            c cVar = new c(this, eVar, fVar, fVar5);
            eVar.f4951g = b(gVar, new d(arrayList, countDownTimerC0143b, eVar, fVar, eVar3, fVar4, gVar, fVar5, cVar));
            a(eVar, fVar, eVar3, fVar4, gVar, true, "bef load");
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                com.aggmoread.sdk.z.c.a.a.d.b.h.a(eVar, (com.aggmoread.sdk.z.c.a.a.d.a.d.s.c) it2.next());
            }
            q.a().postDelayed(cVar, 20000L);
            if (fVar4.f4662a) {
                return;
            }
            countDownTimerC0143b.start();
            return;
        }
        q.a(new e(this, eVar));
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002a A[PHI: r0 r2
      0x002a: PHI (r0v6 com.aggmoread.sdk.z.c.a.a.d.b.f) = (r0v5 com.aggmoread.sdk.z.c.a.a.d.b.f), (r0v18 com.aggmoread.sdk.z.c.a.a.d.b.f) binds: [B:12:0x0028, B:7:0x0018] A[DONT_GENERATE, DONT_INLINE]
      0x002a: PHI (r2v2 com.aggmoread.sdk.z.c.a.a.d.b.e) = (r2v1 com.aggmoread.sdk.z.c.a.a.d.b.e), (r2v12 com.aggmoread.sdk.z.c.a.a.d.b.e) binds: [B:12:0x0028, B:7:0x0018] A[DONT_GENERATE, DONT_INLINE]] */
    private void a(com.aggmoread.sdk.z.c.a.a.c.g gVar, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, com.aggmoread.sdk.z.c.a.a.d.a.d.s.e.a<T> aVar) {
        com.aggmoread.sdk.z.c.a.a.d.b.e eVar2;
        com.aggmoread.sdk.z.c.a.a.d.b.f fVar2;
        Map<String, Object> mapH;
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "notify ");
        if (aVar == null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "notify err");
            if (gVar != null) {
                gVar.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001005006, "全部广告请求失败，无合适广告返回!"));
                return;
            }
            return;
        }
        T t10 = aVar.f4676b;
        if (t10 instanceof com.aggmoread.sdk.z.c.a.a.d.b.a) {
            com.aggmoread.sdk.z.c.a.a.d.b.a aVar2 = (com.aggmoread.sdk.z.c.a.a.d.b.a) t10;
            eVar2 = aVar2.f4910h;
            aVar2.f4910h = eVar;
            fVar2 = aVar2.f4911i;
            if (fVar2 != null) {
                fVar2.f5001a = eVar;
            }
        } else if (t10 instanceof com.aggmoread.sdk.z.c.a.a.d.a.a) {
            com.aggmoread.sdk.z.c.a.a.d.a.a aVar3 = (com.aggmoread.sdk.z.c.a.a.d.a.a) t10;
            eVar2 = aVar3.f4425i;
            aVar3.f4425i = eVar;
            fVar2 = aVar3.f4426j;
            if (fVar2 != null) {
                fVar2.f5001a = eVar;
            }
        } else {
            eVar2 = null;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "rca " + (eVar2 != null ? eVar2.f4947c : "") + ", cc " + (eVar != null ? eVar.f4947c : ""));
        if ((t10 instanceof com.aggmoread.sdk.z.c.a.a.c.a) && (mapH = ((com.aggmoread.sdk.z.c.a.a.c.a) t10).h()) != null) {
            mapH.put(AMConst.ExtrasKey.AD_ID, eVar.f4947c);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(t10);
        new com.aggmoread.sdk.z.c.a.a.d.b.m(eVar, fVar).a(9).c(b(eVar, fVar, t10)).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, a(eVar, fVar, t10)).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.C, Integer.valueOf(arrayList.size())).b();
        a(gVar, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, f fVar2, Runnable runnable, String str) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "try rle , " + fVar2.f4662a + ", info : " + str + ", rid : " + (eVar != null ? eVar.f4947c : ""));
        if (fVar2.f4662a) {
            return;
        }
        fVar2.f4662a = true;
        if (runnable != null) {
            q.a().removeCallbacks(runnable);
        }
        if (fVar != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "tryEnd");
            fVar.k();
        }
    }

    public void a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "loadAd enter ");
        q.a(new a(eVar, fVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, com.aggmoread.sdk.z.c.a.a.d.a.d.s.e<T> eVar2, f fVar2, com.aggmoread.sdk.z.c.a.a.c.g gVar, boolean z10, String str) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACBHTAG", "try rca ,  : " + fVar2.f4662a + ", info : " + str + ", preLoad " + eVar.f4970z);
        if (fVar2.f4662a || eVar.f4970z) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.d.a.d.s.e.a<T> aVarB = eVar2.b();
        if (z10 && aVarB == null) {
            return;
        }
        fVar2.f4662a = true;
        a(gVar, eVar, fVar, aVarB);
    }
}
