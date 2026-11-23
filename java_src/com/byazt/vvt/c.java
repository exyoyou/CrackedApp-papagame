package com.byazt.vvt;

import android.text.TextUtils;
import android.util.LruCache;
import com.byazt.aas.nb;
import com.byazt.bwm.sp;
import com.byazt.ete.bm;
import com.byazt.ete.ic;
import com.byazt.nc.yp;
import com.byazt.nr.m;
import com.byazt.ogz.i;
import com.byazt.omf.h;
import com.byazt.omf.rh;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 210, 20})
public abstract class c<T, V> {
    public static LruCache<String, Integer> tt = new LruCache<>(20);
    public static LruCache<String, Integer> ve = new LruCache<>(20);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.iu.uj f21354c = new com.byazt.iu.uj(c());

    public static LruCache<String, Integer> tt() {
        return tt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.lh.tt uj() {
        return (com.byazt.lh.tt) com.byazt.ip.n.c(0);
    }

    public static LruCache<String, Integer> ve() {
        return ve;
    }

    public abstract int c();

    public abstract List<String> c(V v10);

    public abstract void c(T t10, int i10, String str);

    public abstract void c(T t10, V v10);

    public abstract String tt(V v10);

    public void tt(String str) {
        uj().c(str, com.byazt.hi.tt.REQED);
    }

    public bm c(boolean z10, boolean z11, long j10, int i10, com.byazt.dj.tt ttVar, com.byazt.rob.uj ujVar) {
        bm bmVar = new bm();
        bmVar.f13582i = j10;
        if (z10) {
            bmVar.f13580c = 2;
        }
        if (z11) {
            bmVar.sp = 2;
        }
        if (ujVar != null && ujVar.n()) {
            bmVar.nu = ujVar.ve();
            bmVar.rh = ujVar.uj();
            bmVar.gt = true;
        }
        if (ttVar != null) {
            bmVar.c(i10, ttVar.uj(), ttVar.t(), ttVar);
        } else {
            bmVar.c(i10, "", 1, ttVar);
        }
        return bmVar;
    }

    public String tt(List<yp> list) {
        Map<String, Object> mediaExtraInfo;
        if (list == null || list.isEmpty() || (mediaExtraInfo = list.get(0).getMediaExtraInfo()) == null || mediaExtraInfo.get("request_id") == null) {
            return null;
        }
        return (String) mediaExtraInfo.get("request_id");
    }

    public void c(int i10, final com.byazt.dj.tt ttVar, final T t10) {
        String str;
        final String string = UUID.randomUUID().toString();
        if (ttVar == null || !TextUtils.isEmpty(ttVar.rl())) {
            str = null;
        } else {
            String string2 = UUID.randomUUID().toString();
            c(string2, ttVar, i10);
            str = string2;
        }
        c(str);
        if (!i.c()) {
            c(str, null, false, new com.byazt.lq.ve(1000, "广告请求开关已关闭,请联系穿山甲管理员"));
            c(t10, 1000, "广告请求开关已关闭,请联系穿山甲管理员");
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = "loadNativeAd";
        if (i10 != 1) {
            if (i10 == 5) {
                str2 = "loadFeedAd";
            } else if (i10 == 9) {
                str2 = "loadDrawFeedAd";
            } else if (i10 == 6) {
                str2 = "loadStream";
            }
        }
        final String str3 = str2;
        com.byazt.iyp.tt.c(ttVar, true, string);
        final String str4 = str;
        sp spVar = new sp(str3) { // from class: com.byazt.vvt.c.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.c(ttVar, t10, jCurrentTimeMillis, (com.byazt.rob.uj) null, str4, string);
                } catch (Throwable th) {
                    c.this.c(str4, null, false, new com.byazt.lq.ve(4000, " msg = " + th.getMessage()));
                    c.this.c(t10, 4000, " msg = " + th.getMessage());
                    m.ve("BaseLoadManager", str3 + " Error msg = ", th.getMessage());
                }
            }
        };
        if (!rh.f18098c) {
            m.uj("BaseLoadManager", h.NOT_INIT_TIPS_MSG);
            c(str, null, false, new com.byazt.lq.ve(10000, h.NOT_INIT_TIPS_MSG));
            c(t10, 10000, h.NOT_INIT_TIPS_MSG);
        } else {
            h.execLoadAd(spVar, i10);
            com.byazt.ktv.c.c().c(i10, ttVar.uj());
        }
    }

    public void c(com.byazt.dj.tt ttVar, com.byazt.rob.uj ujVar, T t10) {
        c(ttVar, t10, System.currentTimeMillis(), ujVar, (String) null, (String) null);
        com.byazt.rob.ve.c(ujVar.c(), true, ujVar.ve(), 0);
    }

    public void c(final com.byazt.dj.tt ttVar, final T t10, long j10, final com.byazt.rob.uj ujVar, final String str, final String str2) {
        tt(str);
        final bm bmVarC = c(false, false, j10, c(), ttVar, ujVar);
        bmVarC.my = str2;
        ttVar.uj();
        if (this.f21354c != null) {
            final AtomicReference atomicReference = new AtomicReference(str);
            this.f21354c.c(ttVar, bmVarC, new com.byazt.iu.n<V>() { // from class: com.byazt.vvt.c.2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.byazt.iu.n
                public void c(V v10, boolean z10, ic icVar) {
                    String strTt = (String) atomicReference.get();
                    if (TextUtils.isEmpty(strTt) && !TextUtils.isEmpty(ttVar.rl())) {
                        strTt = c.this.uj().tt(c.this.tt(v10));
                        atomicReference.set(strTt);
                    }
                    c.this.c(strTt, true);
                    bmVarC.c(v10, z10 ? 3 : 2);
                    ttVar.uj();
                    c cVar = c.this;
                    cVar.c(strTt, cVar.c(v10), true, null);
                    com.byazt.rob.uj ujVar2 = ujVar;
                    if (ujVar2 != null && ujVar2.n()) {
                        ujVar.tt(icVar);
                    }
                    c.this.c(t10, v10);
                    if (icVar == null || TextUtils.isEmpty(str2)) {
                        return;
                    }
                    icVar.c(str2);
                    com.byazt.iyp.tt.c(icVar, nb.tt(c.this.c()));
                }

                @Override // com.byazt.iu.n
                public void c(V v10) {
                    ttVar.uj();
                    String strTt = (String) atomicReference.get();
                    if (TextUtils.isEmpty(strTt) && !TextUtils.isEmpty(ttVar.rl())) {
                        strTt = c.this.uj().tt(c.this.tt(v10));
                        atomicReference.set(strTt);
                    }
                    if (!com.byazt.wi.a.c().c(c.this.c()) || TextUtils.isEmpty(strTt)) {
                        return;
                    }
                    com.byazt.wi.a.c().tt(strTt, System.currentTimeMillis());
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // com.byazt.iu.n
                public void c(int i10, String str3) {
                    c.this.c(str, false);
                    bmVarC.c((Object) null, 1);
                    ttVar.uj();
                    c.this.c(str, null, false, new com.byazt.lq.ve(i10, str3));
                    c.this.c(t10, i10, str3);
                }
            });
        }
    }

    public void c(int i10, final com.byazt.dj.tt ttVar, final com.byazt.nh.a aVar) {
        String str;
        String str2;
        final String string = UUID.randomUUID().toString();
        if (ttVar == null || !TextUtils.isEmpty(ttVar.rl())) {
            str = null;
        } else {
            String string2 = UUID.randomUUID().toString();
            c(string2, ttVar, i10);
            str = string2;
        }
        c(str);
        if (!i.c()) {
            c(str, null, false, new com.byazt.lq.ve(1000, "广告请求开关已关闭,请联系穿山甲管理员"));
            aVar.c(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            return;
        }
        if (i10 == 1) {
            str2 = "loadBannerExpressAd";
        } else if (i10 == 5) {
            str2 = "loadNativeExpressAd";
        } else {
            str2 = i10 == 9 ? "loadExpressDrawFeedAd" : "loadExpressAd";
        }
        final String str3 = str2;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.byazt.iyp.tt.c(ttVar, true, string);
        final String str4 = str;
        sp spVar = new sp(str3) { // from class: com.byazt.vvt.c.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (h.checkExpressAdParamValid(ttVar, false)) {
                        c.this.c(ttVar, aVar, jCurrentTimeMillis, str4, string);
                    } else {
                        c.this.c(str4, null, false, new com.byazt.lq.ve(110, com.byazt.omf.sp.c(110)));
                        aVar.c(110, com.byazt.omf.sp.c(110));
                    }
                } catch (Throwable th) {
                    c.this.c(str4, null, false, new com.byazt.lq.ve(4000, " msg = " + th.getMessage()));
                    aVar.c(4000, " msg = " + th.getMessage());
                    m.ve("BaseLoadManager", str3 + " error, pls check", th);
                }
            }
        };
        if (!rh.f18098c) {
            m.uj("BaseLoadManager", h.NOT_INIT_TIPS_MSG);
            c(str, null, false, new com.byazt.lq.ve(10000, h.NOT_INIT_TIPS_MSG));
            aVar.c(10000, h.NOT_INIT_TIPS_MSG);
        } else {
            h.execLoadAd(spVar, i10);
            com.byazt.ktv.c.c().c(i10, ttVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final com.byazt.dj.tt ttVar, final com.byazt.nh.a aVar, long j10, final String str, final String str2) {
        final bm bmVarC = c(false, true, j10, c(), ttVar, (com.byazt.rob.uj) null);
        bmVarC.my = str2;
        ttVar.uj();
        tt(str);
        com.byazt.iu.uj ujVar = this.f21354c;
        if (ujVar != null) {
            ujVar.c(ttVar, bmVarC, new com.byazt.iu.n<List<yp>>() { // from class: com.byazt.vvt.c.4
                @Override // com.byazt.iu.n
                public void c(List<yp> list, boolean z10, ic icVar) {
                    com.byazt.dj.tt ttVar2;
                    String strTt = str;
                    if (TextUtils.isEmpty(strTt) && (ttVar2 = ttVar) != null && !TextUtils.isEmpty(ttVar2.rl())) {
                        strTt = c.this.uj().tt(c.this.tt(list));
                    }
                    c.this.c(strTt, true);
                    bmVarC.c(list, z10 ? 3 : 2);
                    ttVar.uj();
                    c cVar = c.this;
                    cVar.c(strTt, cVar.c(list), true, null);
                    com.byazt.nh.a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.c(list);
                    }
                    if (icVar == null || TextUtils.isEmpty(str2)) {
                        return;
                    }
                    icVar.c(str2);
                    com.byazt.iyp.tt.c(icVar, nb.tt(c.this.c()));
                }

                @Override // com.byazt.iu.n
                public void c(List<yp> list) {
                    ttVar.uj();
                }

                @Override // com.byazt.iu.n
                public void c(int i10, String str3) {
                    c.this.c(str, false);
                    bmVarC.c((Object) null, 1);
                    ttVar.uj();
                    c.this.c(str, null, false, new com.byazt.lq.ve(i10, str3));
                    com.byazt.nh.a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.c(i10, str3);
                    }
                }
            });
        }
    }

    public static c c(int i10) {
        if (i10 == 1) {
            return com.byazt.sg.c.uj();
        }
        if (i10 == 9) {
            return com.byazt.wb.c.uj();
        }
        if (i10 == 5) {
            return com.byazt.pro.c.uj();
        }
        if (i10 != 6) {
            return null;
        }
        return com.byazt.ob.c.uj();
    }

    public void c(ic icVar) {
        com.byazt.iu.uj ujVar = this.f21354c;
        if (ujVar != null) {
            ujVar.tt().c(icVar);
        }
    }

    public static void c(int i10, ic icVar) {
        c cVarC = c(i10);
        if (cVarC != null) {
            cVarC.c(icVar);
        }
    }

    private void c(String str, final com.byazt.dj.tt ttVar, final int i10) {
        com.byazt.lh.tt ttVar2 = (com.byazt.lh.tt) com.byazt.ip.n.c(0);
        ttVar2.tt(str, ttVar.or());
        ttVar2.c(str, new com.byazt.ky.ve());
        if (com.byazt.wi.a.c().c(i10)) {
            ttVar2.c(str, new com.byazt.wi.ve());
        }
        ttVar2.c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.vvt.c.5
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar3) {
                if (ttVar3 instanceof com.byazt.ha.tt) {
                    com.byazt.ha.tt ttVar4 = (com.byazt.ha.tt) ttVar3;
                    com.byazt.dj.tt ttVar5 = ttVar;
                    ttVar4.f14873c = ttVar5;
                    ttVar4.sp = i10;
                    if (ttVar5 != null) {
                        ttVar4.f15453x = ttVar5.uj();
                    }
                }
            }
        });
    }

    public void c(String str) {
        uj().c(str, com.byazt.hi.tt.STARTED);
    }

    public void c(String str, final boolean z10) {
        uj().c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.vvt.c.6
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar) {
                if (ttVar instanceof com.byazt.ha.tt) {
                    ((com.byazt.ha.tt) ttVar).tt = z10;
                }
            }
        });
        uj().c(str, com.byazt.hi.tt.RECEIVED);
    }

    public void c(final String str, final List<String> list, final boolean z10, final com.byazt.lq.ve veVar) {
        uj().c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.vvt.c.7
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar) {
                if (ttVar instanceof com.byazt.ha.tt) {
                    com.byazt.ha.tt ttVar2 = (com.byazt.ha.tt) ttVar;
                    ttVar2.ve = z10;
                    ttVar2.uj = veVar;
                    List list2 = list;
                    if (list2 != null) {
                        ttVar2.f14874n.addAll(list2);
                    }
                }
            }
        });
        com.byazt.lh.ve veVar2 = (com.byazt.lh.ve) com.byazt.ip.n.c(1);
        if (list != null) {
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                veVar2.c(it2.next(), new com.byazt.ip.uj.c() { // from class: com.byazt.vvt.c.8
                    @Override // com.byazt.ip.uj.c
                    public void c(com.byazt.ip.tt ttVar) {
                        if (ttVar instanceof com.byazt.ha.ve) {
                            ((com.byazt.ha.ve) ttVar).f14877c = str;
                        }
                    }
                });
            }
        }
        uj().c(str, com.byazt.hi.tt.LOADED);
    }

    public List<String> c(List<yp> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<yp> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getLifecycleId());
        }
        return arrayList;
    }
}
