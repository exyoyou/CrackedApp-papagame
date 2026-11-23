package com.byazt.gat;

import android.text.TextUtils;
import com.byazt.ete.bm;
import com.byazt.im.sp;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RECORD_VALUE, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public tt<com.byazt.im.a, sp> f14465a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f14466c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.cc.tt f14467da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.tdq.c f14468i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.im.n f14469n;
    public sp sp;
    public volatile boolean tt;
    public volatile boolean uj;
    public volatile boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.im.a f14470x;

    public n(com.byazt.im.n nVar, tt<com.byazt.im.a, sp> ttVar, com.byazt.tdq.c cVar, com.byazt.cc.tt ttVar2) {
        if (nVar == null || ttVar == null) {
            return;
        }
        this.f14469n = nVar;
        this.f14465a = ttVar;
        this.f14468i = cVar;
        this.f14467da = ttVar2;
    }

    public void c(final int i10) {
        if (this.f14469n == null || this.f14465a == null) {
            return;
        }
        com.byazt.dz.c.c("Splash_FullLink", "loadAd Type ".concat(String.valueOf(i10)));
        if (i10 == 0) {
            new com.byazt.iox.ve().c(this.f14469n, this.f14465a);
            return;
        }
        if (i10 == 1) {
            new com.byazt.iox.c(this.f14468i).c(this.f14469n, new tt<com.byazt.im.a, sp>() { // from class: com.byazt.gat.n.1
                @Override // com.byazt.gat.tt
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public void tt(com.byazt.im.a aVar) {
                    n.this.f14465a.tt(aVar);
                    if (!com.byazt.tdq.c.c(i10) || n.this.f14468i == null || n.this.f14469n == null) {
                        return;
                    }
                    n.this.f14468i.tt(n.this.f14469n.uj(), n.this.f14469n.n());
                }

                @Override // com.byazt.gat.tt
                public void c(sp spVar) {
                    if (spVar != null && n.this.f14469n != null) {
                        n.this.f14469n.c(spVar.uj());
                        n.this.f14469n.c(spVar.ve());
                    }
                    if (n.this.f14467da == null || !n.this.f14467da.tt()) {
                        new com.byazt.iox.ve().c(n.this.f14469n, new tt<com.byazt.im.a, sp>() { // from class: com.byazt.gat.n.1.1
                            @Override // com.byazt.gat.tt
                            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                            public void tt(com.byazt.im.a aVar) {
                                if (!n.this.uj) {
                                    n.this.f14465a.tt(aVar);
                                } else {
                                    if (n.this.f14468i == null || n.this.f14469n == null) {
                                        return;
                                    }
                                    n.this.f14468i.c(aVar, n.this.f14469n.uj(), true, 1);
                                }
                            }

                            @Override // com.byazt.gat.tt
                            public void c(sp spVar2) {
                                n.this.f14465a.c(spVar2);
                                if (!com.byazt.tdq.c.c(i10) || n.this.f14468i == null || n.this.f14469n == null) {
                                    return;
                                }
                                n.this.f14468i.tt(n.this.f14469n.uj(), n.this.f14469n.n());
                            }
                        });
                    } else {
                        n.this.f14465a.c(spVar);
                    }
                }
            });
            return;
        }
        if (i10 == 2) {
            new com.byazt.iox.ve().c(this.f14469n, new tt<com.byazt.im.a, sp>() { // from class: com.byazt.gat.n.2
                @Override // com.byazt.gat.tt
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public void tt(com.byazt.im.a aVar) {
                    n.this.f14470x = aVar;
                    if (n.this.sp != null && aVar != null) {
                        aVar.c(n.this.sp.uj());
                        aVar.c(n.this.sp.ve());
                    }
                    com.byazt.dz.c.c("Splash_FullLink", "实时物料加载成功 isCache " + aVar.n());
                    n.this.f14465a.tt(aVar);
                }

                @Override // com.byazt.gat.tt
                public void c(sp spVar) {
                    com.byazt.dz.c.c("Splash_FullLink", "实时物料加载失败 ");
                    n.this.f14465a.c(spVar);
                }
            });
            new com.byazt.iox.c(this.f14468i).c(this.f14469n, new tt<com.byazt.im.a, sp>() { // from class: com.byazt.gat.n.3
                @Override // com.byazt.gat.tt
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public void tt(com.byazt.im.a aVar) {
                    com.byazt.dz.c.c("Splash_FullLink", "缓存物料加载成功 isCache " + aVar.n());
                    n.this.f14465a.tt(aVar);
                }

                @Override // com.byazt.gat.tt
                public void c(sp spVar) {
                    n.this.sp = spVar;
                    com.byazt.dz.c.c("Splash_FullLink", "缓存物料加载失败  ");
                    if (n.this.f14470x != null && spVar != null) {
                        n.this.f14470x.c(spVar.uj());
                        n.this.f14470x.c(spVar.ve());
                    }
                    n.this.f14465a.c(spVar);
                }
            });
        } else if (i10 == 3) {
            new com.byazt.iox.ve().c(this.f14469n, new tt<com.byazt.im.a, sp>() { // from class: com.byazt.gat.n.4
                @Override // com.byazt.gat.tt
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public void tt(com.byazt.im.a aVar) {
                    n.this.f14470x = aVar;
                    if (n.this.ve || n.this.uj) {
                        if (n.this.f14468i == null || n.this.f14469n == null) {
                            return;
                        }
                        n.this.f14468i.c(aVar, n.this.f14469n.uj(), true, 3);
                        return;
                    }
                    if (n.this.sp != null && aVar != null) {
                        aVar.c(n.this.sp.uj());
                        aVar.c(n.this.sp.ve());
                    }
                    n.this.ve = true;
                    n.this.f14465a.tt(aVar);
                }

                @Override // com.byazt.gat.tt
                public void c(sp spVar) {
                    n.this.f14466c = true;
                    if (n.this.tt) {
                        n.this.f14465a.c(spVar);
                    }
                    if (!com.byazt.tdq.c.c(i10) || n.this.f14468i == null || n.this.f14469n == null) {
                        return;
                    }
                    n.this.f14468i.tt(n.this.f14469n.uj(), n.this.f14469n.n());
                }
            });
            new com.byazt.iox.c(this.f14468i).c(this.f14469n, new tt<com.byazt.im.a, sp>() { // from class: com.byazt.gat.n.5
                @Override // com.byazt.gat.tt
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public void tt(com.byazt.im.a aVar) {
                    if (n.this.ve) {
                        return;
                    }
                    n.this.ve = true;
                    n.this.f14465a.tt(aVar);
                }

                @Override // com.byazt.gat.tt
                public void c(sp spVar) {
                    n.this.sp = spVar;
                    if (n.this.f14470x != null && spVar != null) {
                        n.this.f14470x.c(spVar.uj());
                        n.this.f14470x.c(spVar.ve());
                    }
                    n.this.tt = true;
                    if (n.this.f14466c) {
                        n.this.f14465a.c(spVar);
                    }
                }
            });
        } else {
            if (i10 != 4) {
                return;
            }
            new com.byazt.iox.c(this.f14468i).c(this.f14469n, new tt<com.byazt.im.a, sp>() { // from class: com.byazt.gat.n.6
                @Override // com.byazt.gat.tt
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public void tt(com.byazt.im.a aVar) {
                    n.this.f14465a.tt(aVar);
                }

                @Override // com.byazt.gat.tt
                public void c(sp spVar) {
                    n.this.f14465a.c(spVar);
                }
            });
        }
    }

    public void c() {
        this.uj = true;
    }

    public static boolean c(com.byazt.dj.tt ttVar, bm bmVar) {
        return (ttVar == null || bmVar == null || TextUtils.isEmpty(ttVar.rl()) || bmVar.f13584n > 0) ? false : true;
    }
}
