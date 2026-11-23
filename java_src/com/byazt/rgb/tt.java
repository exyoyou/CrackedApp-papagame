package com.byazt.rgb;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ete.ic;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, SparseArray<Object>> f19448c = new ConcurrentHashMap();

    public static void c(final ic icVar, final com.byazt.dj.tt ttVar, final int i10, String str) {
        if (icVar == null || ttVar == null) {
            return;
        }
        com.byazt.lh.ve veVarC = c();
        veVarC.tt(str, ttVar.or());
        veVarC.c(str, new com.byazt.ky.uj());
        if (com.byazt.wi.a.c().c(i10)) {
            veVarC.c(str, new com.byazt.wi.uj());
        }
        veVarC.c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.rgb.tt.1
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar2) {
                if (ttVar2 instanceof com.byazt.ha.ve) {
                    com.byazt.ha.ve veVar = (com.byazt.ha.ve) ttVar2;
                    veVar.f15452i = icVar;
                    com.byazt.dj.tt ttVar3 = ttVar;
                    if (ttVar3 != null) {
                        veVar.sp = i10;
                        veVar.f15453x = ttVar3.uj();
                    }
                }
            }
        });
        c(str);
    }

    private static void n(String str) {
        synchronized (f19448c) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (f19448c.get(str) == null) {
                f19448c.put(str, new SparseArray<>());
            }
        }
    }

    public static void tt(String str) {
        com.byazt.lh.ve veVarC = c();
        if (veVarC != null) {
            veVarC.c(str, com.byazt.hi.ve.STARTED);
        }
    }

    public static Object uj(String str, int i10) {
        Object obj;
        synchronized (f19448c) {
            n(str);
            obj = f19448c.get(str).get(i10);
        }
        return obj;
    }

    public static void ve(String str) {
        com.byazt.lh.ve veVarC = c();
        if (veVarC != null) {
            veVarC.c(str, com.byazt.hi.ve.CLICKED);
        }
    }

    public static void tt(String str, final int i10) {
        com.byazt.lh.ve veVarC = c();
        if (veVarC != null) {
            veVarC.c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.rgb.tt.5
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar) {
                    if (ttVar instanceof com.byazt.ha.ve) {
                        ((com.byazt.ha.ve) ttVar).ve = i10;
                    }
                }
            });
            veVarC.c(str, com.byazt.hi.ve.INVISIBLED);
        }
    }

    public static void ve(String str, final int i10) {
        com.byazt.lh.ve veVarC = c();
        if (veVarC != null) {
            veVarC.c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.rgb.tt.6
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar) {
                    if (ttVar instanceof com.byazt.ha.ve) {
                        ((com.byazt.ha.ve) ttVar).tt = i10;
                    }
                }
            });
            veVarC.c(str, com.byazt.hi.ve.END);
        }
        if (i10 == 1 || i10 == 2) {
            uj.tt(str, i10);
        }
    }

    public static void uj(String str) {
        synchronized (f19448c) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            f19448c.remove(str);
        }
    }

    public static void c(String str) {
        if (c() != null) {
            c().c(str, com.byazt.hi.ve.CREATED);
        }
    }

    public static void c(String str, final boolean z10, final boolean z11) {
        com.byazt.lh.ve veVarC = c();
        if (veVarC != null) {
            veVarC.c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.rgb.tt.2
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar) {
                    if (ttVar instanceof com.byazt.ha.ve) {
                        com.byazt.ha.ve veVar = (com.byazt.ha.ve) ttVar;
                        veVar.uj = z10;
                        veVar.f14878n = z11 ? 1 : 0;
                    }
                }
            });
            veVarC.c(str, com.byazt.hi.ve.SHOWED);
        }
    }

    public static void c(String str, final boolean z10) {
        com.byazt.lh.ve veVarC = c();
        if (veVarC != null) {
            veVarC.c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.rgb.tt.3
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar) {
                    if (ttVar instanceof com.byazt.ha.ve) {
                        ((com.byazt.ha.ve) ttVar).uj = z10;
                    }
                }
            });
            veVarC.c(str, com.byazt.hi.ve.SHOWED);
        }
    }

    public static void c(String str, final int i10) {
        com.byazt.lh.ve veVarC = c();
        if (veVarC != null) {
            veVarC.c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.rgb.tt.4
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar) {
                    if (ttVar instanceof com.byazt.ha.ve) {
                        ((com.byazt.ha.ve) ttVar).ve = i10;
                    }
                }
            });
            veVarC.c(str, com.byazt.hi.ve.VISIBLED);
        }
    }

    public static com.byazt.lh.ve c() {
        return (com.byazt.lh.ve) com.byazt.ip.n.c(1);
    }

    public static void c(String str, int i10, Object obj) {
        synchronized (f19448c) {
            n(str);
            f19448c.get(str).put(i10, obj);
        }
    }
}
