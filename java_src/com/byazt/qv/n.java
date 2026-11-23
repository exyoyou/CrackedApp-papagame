package com.byazt.qv;

import android.text.TextUtils;
import com.byazt.nbs.da;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FIRST_VIDEO_SEND_OUTLET_TIME, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map<String, c> f19259c = new ConcurrentHashMap();

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FIRST_VIDEO_SEND_OUTLET_TIME, 151})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f19260c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f19261n;
        public int tt;
        public Set<String> uj;
        public Set<String> ve;
    }

    public static void c(JSONArray jSONArray) {
        int iOptInt;
        if (jSONArray == null || jSONArray.length() <= 0) {
            f19259c.clear();
            return;
        }
        f19259c.clear();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("id");
                if (!TextUtils.isEmpty(strOptString)) {
                    c cVar = new c();
                    int iOptInt2 = jSONObjectOptJSONObject.optInt(bm.aM);
                    cVar.f19260c = strOptString;
                    cVar.tt = iOptInt2;
                    if (iOptInt2 == 1) {
                        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("a");
                        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                            cVar.uj = new HashSet();
                            for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                                cVar.uj.add(jSONArrayOptJSONArray.optString(i11));
                            }
                            f19259c.put(strOptString, cVar);
                        }
                    } else if (iOptInt2 == 2) {
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("r");
                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                            cVar.ve = new HashSet();
                            for (int i12 = 0; i12 < jSONArrayOptJSONArray2.length(); i12++) {
                                cVar.ve.add(jSONArrayOptJSONArray2.optString(i12));
                            }
                            f19259c.put(strOptString, cVar);
                        }
                    } else if ((iOptInt2 == 3 || iOptInt2 == 4) && (iOptInt = jSONObjectOptJSONObject.optInt("c", -1)) != -1) {
                        cVar.f19261n = iOptInt;
                        f19259c.put(strOptString, cVar);
                    }
                }
            }
        }
    }

    private static String tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        str.hashCode();
        switch (str) {
            case "pangle":
                return "376434";
            case "sigmob":
                return "476747";
            case "ks":
                return "575683";
            case "gdt":
                return "384735";
            case "baidu":
                return "476385";
            case "unity":
                return "846469";
            case "mintegral":
                return "765380";
            default:
                return str;
        }
    }

    public static c c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return f19259c.get(str);
    }

    private static boolean c(c cVar, double d10, String str, String str2) {
        if (!f19259c.isEmpty() && cVar != null) {
            int i10 = cVar.tt;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4 && d10 > 0.0d && d10 <= cVar.f19261n) {
                            return true;
                        }
                    } else if (d10 > 0.0d && d10 >= cVar.f19261n) {
                        return true;
                    }
                } else if (cVar.ve.contains(str2)) {
                    return true;
                }
            } else if (cVar.uj.contains(tt(str))) {
                return true;
            }
        }
        return false;
    }

    public static c c(com.byazt.ll.tt ttVar, da daVar) {
        if (f19259c.isEmpty()) {
            return null;
        }
        Map<String, Object> mapCu = ttVar.cu();
        Object obj = mapCu.get("on_shield");
        Object obj2 = mapCu.get("id_list");
        if ((obj instanceof Integer) && (obj2 instanceof List) && daVar != null && ((Integer) obj).intValue() == 1) {
            ArrayList<c> arrayList = new ArrayList();
            try {
                Iterator it2 = ((List) obj2).iterator();
                boolean z10 = false;
                boolean z11 = false;
                while (it2.hasNext()) {
                    c cVarC = c((String) it2.next());
                    if (cVarC != null) {
                        int i10 = cVarC.tt;
                        if (i10 == 3) {
                            if (!z10) {
                                arrayList.add(cVarC);
                                z10 = true;
                            }
                        } else if (i10 != 4) {
                            arrayList.add(cVarC);
                        } else if (!z11) {
                            arrayList.add(cVarC);
                            z11 = true;
                        }
                    }
                }
                Collections.sort(arrayList, new Comparator<c>() { // from class: com.byazt.qv.n.1
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                    public int compare(c cVar, c cVar2) {
                        return cVar.tt - cVar2.tt;
                    }
                });
            } catch (Throwable th) {
                m.c(th);
            }
            if (!arrayList.isEmpty()) {
                c(arrayList);
                for (c cVar : arrayList) {
                    if (c(cVar, daVar.gr(), daVar.nu(), daVar.rh())) {
                        return cVar;
                    }
                }
            }
        }
        return null;
    }

    private static void c(List<c> list) {
        if (list.size() >= 2) {
            int size = list.size();
            int i10 = size - 1;
            if (list.get(i10).tt != 4) {
                return;
            }
            int i11 = size - 2;
            if (list.get(i11).tt == 3 && list.get(i11).f19261n <= list.get(i10).f19261n) {
                list.remove(list.size() - 1);
                list.remove(list.size() - 1);
            }
        }
    }
}
