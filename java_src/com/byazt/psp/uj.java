package com.byazt.psp;

import android.text.TextUtils;
import com.byazt.nbs.da;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsIsEncryptVersion, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map<String, com.byazt.nbs.tt> f18863c = new ConcurrentHashMap();

    public static void c(int i10, String str, int i11, double d10) {
        com.byazt.nbs.tt ttVarC;
        com.byazt.nbs.uj ujVarN;
        if (com.byazt.bp.tt.tt().kk() && (ttVarC = com.byazt.bp.tt.tt().c(str, i11, 101)) != null) {
            if (ttVarC.i() == 1 && i10 == 1) {
                n.uj().c(i11, d10);
                return;
            }
            if (ttVarC.i() != 2 || (ujVarN = com.byazt.bp.tt.tt().n(str)) == null) {
                return;
            }
            if (i10 == 2 && ujVarN.ve() == 2) {
                tt.uj().c(str, 2, d10);
            } else {
                if (i10 != 1 || ujVarN.ve() == 2) {
                    return;
                }
                tt.uj().c(str, ujVarN.ve(), d10);
            }
        }
    }

    public static void c(com.byazt.nbs.tt ttVar, double d10, String str, int i10) {
        if (!com.byazt.bp.tt.tt().kk() || ttVar == null) {
            return;
        }
        if (ttVar.i() == 2) {
            c(2, str, i10, d10);
        } else if (ttVar.i() == 3 || ttVar.i() == 4) {
            tt.uj().c(ttVar.nb(), "_last_load_cpm_", ttVar.cu(), d10);
        }
    }

    public static void c(String str, String str2, int i10, JSONObject jSONObject) {
        com.byazt.nbs.tt ttVarC;
        if (com.byazt.bp.tt.tt().kk() && (ttVarC = com.byazt.ck.uj.c().c(str, i10, 101)) != null) {
            if ("mediation_request".equals(str2)) {
                if (ttVarC.i() == 1) {
                    n.uj().c(String.valueOf(i10), jSONObject, ttVarC.x());
                    return;
                } else {
                    if (ttVarC.i() == 2) {
                        tt.uj().c(String.valueOf(i10), jSONObject, ttVarC.x());
                        return;
                    }
                    return;
                }
            }
            if (ttVarC.i() != 2 || "sdk_init".equals(str2) || "sdk_init_end".equals(str2) || "get_config_start".equals(str2) || "get_config_final".equals(str2)) {
                return;
            }
            tt.uj().ve(String.valueOf(i10), jSONObject, ttVarC.x());
        }
    }

    public static com.byazt.nbs.tt c(com.byazt.nbs.tt ttVar, int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (ttVar != null && com.byazt.bp.tt.tt().kk()) {
            if (i10 == 101) {
                return f18863c.get(ttVar.nb());
            }
            if (i10 == 100 && (ttVar.i() == 2 || ttVar.i() == 3 || ttVar.i() == 4)) {
                List<da> listC = ve.c(ttVar, ttVar.nb());
                Object obj = ttVar.x().get("rule_in_use");
                int iIntValue = obj != null ? ((Integer) obj).intValue() : -1;
                ttVar.x().put("cost_time", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                if (listC == null || iIntValue == 0) {
                    return ttVar;
                }
                com.byazt.nbs.tt ttVarClone = ttVar.clone();
                if (ttVarClone.yp()) {
                    ttVarClone.tt(listC);
                } else {
                    ttVarClone.c(listC);
                }
                Object obj2 = ttVarClone.x().get("max_ecpm");
                Object obj3 = ttVarClone.x().get("min_ecpm");
                if (obj2 != null) {
                    ttVarClone.uj(((Double) obj2).doubleValue());
                }
                if (obj3 != null) {
                    ttVarClone.n(((Double) obj3).doubleValue());
                }
                f18863c.put(ttVar.nb(), ttVarClone);
                ttVarClone.x().put("cost_time", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                return ttVarClone;
            }
        }
        return null;
    }

    public static int c(String str, int i10, Map<String, Object> map) {
        com.byazt.nbs.uj ujVarN;
        int iC;
        if (!TextUtils.isEmpty(str) && i10 == 1 && (ujVarN = com.byazt.bp.tt.tt().n(str)) != null) {
            int iVe = ujVarN.ve();
            String strUj = ujVarN.uj();
            if (iVe > 0 && !TextUtils.isEmpty(strUj)) {
                double dC = tt.uj().c(3, str, iVe);
                List<com.byazt.nbs.ve> listA = com.byazt.bp.tt.tt().a(String.valueOf(i10));
                if (listA != null && listA.size() > 0) {
                    Iterator<com.byazt.nbs.ve> it2 = listA.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            iC = 0;
                            break;
                        }
                        com.byazt.nbs.ve next = it2.next();
                        if (dC > next.a() && dC <= next.n()) {
                            iC = ujVarN.c(String.valueOf(next.ve()));
                            map.put("refresh_time", Integer.valueOf(iC));
                            break;
                        }
                    }
                } else {
                    iC = 0;
                    break;
                }
                if (iC >= 10000 && iC <= 180000) {
                    return iC;
                }
            }
        }
        return 0;
    }

    public static void c(int i10, String str, JSONObject jSONObject) {
        com.byazt.nbs.uj ujVarN;
        if (com.byazt.bp.tt.tt().kk() && i10 == 2 && (ujVarN = com.byazt.bp.tt.tt().n(str)) != null) {
            try {
                jSONObject.putOpt("dynamic_rule_id", ujVarN.uj());
            } catch (JSONException e10) {
                m.c(e10);
            }
        }
    }

    public static void c(List<com.byazt.yl.ve> list, com.byazt.nbs.tt ttVar) {
        Object obj;
        if (!com.byazt.bp.tt.tt().kk() || list == null || ttVar == null) {
            return;
        }
        for (com.byazt.yl.ve veVar : list) {
            if (veVar != null) {
                if (ttVar.i() == 1) {
                    veVar.getMediaExtraInfo().put(MediationConstant.KEY_GM_USB, n.ve(ttVar.pf()));
                } else if (ttVar.i() == 2 && (obj = ttVar.x().get("user_label_value")) != null) {
                    veVar.getMediaExtraInfo().put(MediationConstant.KEY_GM_USB, ((com.byazt.nbs.ve) obj).c());
                }
            }
        }
    }

    public static void c(boolean z10, com.byazt.ng.uj ujVar, JSONObject jSONObject, Map<String, Object> map) {
        if (ujVar == null || !com.byazt.bp.tt.tt().kk()) {
            return;
        }
        n.uj().c(z10, ujVar, jSONObject, map);
    }

    public static void c(int i10, List<da> list, Map<String, Object> map) {
        if (list == null || list.size() == 0) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        for (da daVar : list) {
            if (daVar != null && daVar.my() == 0) {
                jSONArray.put(daVar.rh());
            }
        }
        if (map != null) {
            map.put("rit_ids", jSONArray);
        }
    }
}
