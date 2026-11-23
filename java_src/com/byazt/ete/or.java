package com.byazt.ete;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 579})
public class or {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f13827c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static int f13828da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f13830i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f13831m;
    public static int nu;
    public static int rh;
    public static int sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f13834t;
    public static int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f13835u;
    public static int uj;
    public static int ve;
    public static int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f13837z;
    public final int gr;
    public final int gt;
    public final int gu;
    public final int my;
    public final int qy;
    public final int rl;
    public final String zm;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final ArrayList<int[]> f13832n = new ArrayList<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayList<int[]> f13826a = new ArrayList<>();
    public static final ArrayList<int[]> sp = new ArrayList<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final ArrayList<int[]> f13836x = new ArrayList<>();
    public static String yv = "已为您延迟到奖励下发后再播放下一个";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f13833p = 3;
    public static int md = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f13829h = 0;

    public or(JSONObject jSONObject) {
        this.gr = jSONObject.optInt("carousel_pos", -1);
        this.my = jSONObject.optInt("insert_ad_control", 0);
        this.gt = jSONObject.optInt("refresh_ad_control", 0);
        this.gu = jSONObject.optInt("refresh_ad_imp_max_time", 0);
        this.rl = jSONObject.optInt("force_refresh_ad_control", 0);
        this.qy = jSONObject.optInt("web_refresh_control", 0);
        this.zm = jSONObject.optString("carousel_tip_content", "秒后将继续播放下一个");
    }

    public static int a() {
        return uj;
    }

    public static void c(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject != null) {
            try {
                int iOptInt = jSONObjectOptJSONObject.optInt("insert_ad_control", 1);
                f13827c = iOptInt;
                if (iOptInt < 0 || iOptInt > 1) {
                    f13827c = 1;
                }
                int iOptInt2 = jSONObjectOptJSONObject.optInt("insert_ad_control_fs", 1);
                tt = iOptInt2;
                if (iOptInt2 < 0 || iOptInt2 > 1) {
                    tt = 1;
                }
                ve = jSONObjectOptJSONObject.optInt("insert_ad_req_num", 3);
                uj = jSONObjectOptJSONObject.optInt("insert_ad_req_num_fs", 2);
                f13830i = jSONObjectOptJSONObject.optInt("insert_ad_toast_max_time", 5);
                f13828da = jSONObjectOptJSONObject.optInt("insert_ad_tip_max_time", 0);
                sl = jSONObjectOptJSONObject.optInt("insert_ad_tip_max_time_fs", 3);
                f13834t = jSONObjectOptJSONObject.optInt("refresh_ad_tip_max_time", 3);
                f13835u = jSONObjectOptJSONObject.optInt("refresh_ad_tip_max_time_fs", 3);
                int iOptInt3 = jSONObjectOptJSONObject.optInt("refresh_ad_control", 1);
                yp = iOptInt3;
                if (iOptInt3 < 0 || iOptInt3 > 1) {
                    yp = 1;
                }
                f13837z = jSONObjectOptJSONObject.optInt("refresh_ad_req_num", 3);
                int iOptInt4 = jSONObjectOptJSONObject.optInt("force_refresh_ad_control", 1);
                f13831m = iOptInt4;
                if (iOptInt4 < 0 || iOptInt4 > 1) {
                    f13831m = 1;
                }
                nu = jSONObjectOptJSONObject.optInt("force_refresh_ad_pause_over_time", 5000);
                rh = jSONObjectOptJSONObject.optInt("refresh_ad_reduce_time", 0);
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("insert_ad_pt_show_time");
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                    f13832n.add(new int[]{0, 500});
                } else {
                    f13832n.clear();
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        JSONArray jSONArrayOptJSONArray2 = jSONArrayOptJSONArray.optJSONArray(i10);
                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() == 2) {
                            f13832n.add(new int[]{jSONArrayOptJSONArray2.optInt(0), jSONArrayOptJSONArray2.optInt(1)});
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject.optJSONArray("insert_ad_vd_show_time");
                if (jSONArrayOptJSONArray3 == null || jSONArrayOptJSONArray3.length() <= 0) {
                    f13826a.add(new int[]{0, 500});
                } else {
                    f13826a.clear();
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray3.length(); i11++) {
                        JSONArray jSONArrayOptJSONArray4 = jSONArrayOptJSONArray3.optJSONArray(i11);
                        if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() == 2) {
                            f13826a.add(new int[]{jSONArrayOptJSONArray4.optInt(0), jSONArrayOptJSONArray4.optInt(1)});
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray5 = jSONObjectOptJSONObject.optJSONArray("insert_ad_pt_show_time_fs");
                if (jSONArrayOptJSONArray5 == null || jSONArrayOptJSONArray5.length() <= 0) {
                    sp.add(new int[]{0, 500});
                } else {
                    sp.clear();
                    for (int i12 = 0; i12 < jSONArrayOptJSONArray5.length(); i12++) {
                        JSONArray jSONArrayOptJSONArray6 = jSONArrayOptJSONArray5.optJSONArray(i12);
                        if (jSONArrayOptJSONArray6 != null && jSONArrayOptJSONArray6.length() == 2) {
                            sp.add(new int[]{jSONArrayOptJSONArray6.optInt(0), jSONArrayOptJSONArray6.optInt(1)});
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray7 = jSONObjectOptJSONObject.optJSONArray("insert_ad_vd_show_time_fs");
                if (jSONArrayOptJSONArray7 == null || jSONArrayOptJSONArray7.length() <= 0) {
                    f13836x.add(new int[]{0, 500});
                } else {
                    f13836x.clear();
                    for (int i13 = 0; i13 < jSONArrayOptJSONArray7.length(); i13++) {
                        JSONArray jSONArrayOptJSONArray8 = jSONArrayOptJSONArray7.optJSONArray(i13);
                        if (jSONArrayOptJSONArray8 != null && jSONArrayOptJSONArray8.length() == 2) {
                            f13836x.add(new int[]{jSONArrayOptJSONArray8.optInt(0), jSONArrayOptJSONArray8.optInt(1)});
                        }
                    }
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("reward_aggregation_config");
                if (jSONObjectOptJSONObject2 != null) {
                    yv = jSONObjectOptJSONObject2.optString("refresh_ad_clickafter_tip_content", "已为您延迟到奖励下发后再播放下一个");
                    f13833p = jSONObjectOptJSONObject2.optInt("refresh_ad_clickafter_tip_content_max_time", 3);
                    md = jSONObjectOptJSONObject2.optInt("refresh_ad_ifclick_swtich");
                    f13829h = jSONObjectOptJSONObject2.optInt("refresh_ad_ifclick_swtich_fs");
                }
            } catch (Exception unused) {
            }
        }
    }

    public static int da() {
        return rh / 1000;
    }

    public static int i() {
        return nu;
    }

    public static int n() {
        return ve;
    }

    public static String sl() {
        return yv;
    }

    public static int sp() {
        return f13837z;
    }

    public static int t() {
        return f13833p;
    }

    public static boolean tt() {
        return tt == 1;
    }

    public static int u() {
        return md;
    }

    public static boolean uj() {
        return f13831m == 1;
    }

    public static boolean ve() {
        return yp == 1;
    }

    public static int x() {
        return f13830i;
    }

    public static int yp() {
        return f13829h;
    }

    public static String a(ic icVar) {
        or orVarSp = sp(icVar);
        return orVarSp == null ? "秒后将继续播放下一个" : orVarSp.zm;
    }

    public static int n(ic icVar) {
        or orVarSp = sp(icVar);
        if (orVarSp == null) {
            return 0;
        }
        return orVarSp.gu;
    }

    private static or sp(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.hq();
    }

    public static int tt(boolean z10) {
        return z10 ? f13834t : f13835u;
    }

    public static int uj(ic icVar) {
        or orVarSp = sp(icVar);
        if (orVarSp == null) {
            return -1;
        }
        return orVarSp.gr;
    }

    public static int ve(ic icVar) {
        or orVarSp = sp(icVar);
        if (orVarSp == null) {
            return 0;
        }
        return orVarSp.rl;
    }

    private static boolean tt(boolean z10, int i10) {
        if (z10) {
            for (int[] iArr : f13836x) {
                if (i10 >= iArr[0] && i10 <= iArr[1]) {
                    return true;
                }
            }
        } else {
            for (int[] iArr2 : sp) {
                if (i10 >= iArr2[0] && i10 <= iArr2[1]) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean uj(ic icVar, boolean z10) {
        return (!z10 || tt == 1) && c(icVar) == 1 && uj(icVar) > 0;
    }

    private static boolean ve(ic icVar, boolean z10) {
        return (!z10 || f13827c == 1) && c(icVar) == 1 && uj(icVar) > 0;
    }

    public static void tt(com.byazt.it.n nVar) {
        try {
            nVar.put("insert_ad_control", f13827c);
            nVar.put("insert_ad_control_fs", tt);
            nVar.put("insert_ad_req_num", ve);
            nVar.put("insert_ad_req_num_fs", uj);
            nVar.put("insert_ad_toast_max_time", f13830i);
            nVar.put("insert_ad_tip_max_time", f13828da);
            nVar.put("insert_ad_tip_max_time_fs", sl);
            nVar.put("refresh_ad_tip_max_time", f13834t);
            nVar.put("refresh_ad_tip_max_time_fs", f13835u);
            nVar.put("refresh_ad_control", yp);
            nVar.put("refresh_ad_req_num", f13837z);
            nVar.put("force_refresh_ad_control", f13831m);
            nVar.put("force_refresh_ad_pause_over_time", nu);
            nVar.put("refresh_ad_reduce_time", rh);
            ArrayList<int[]> arrayList = f13832n;
            if (!arrayList.isEmpty()) {
                HashSet hashSet = new HashSet();
                for (int[] iArr : arrayList) {
                    if (iArr != null && iArr.length == 2) {
                        hashSet.add(iArr[0] + "," + iArr[1]);
                    }
                }
                nVar.put("insert_ad_pt_show_time", hashSet);
            }
            ArrayList<int[]> arrayList2 = f13826a;
            if (!arrayList2.isEmpty()) {
                HashSet hashSet2 = new HashSet();
                for (int[] iArr2 : arrayList2) {
                    if (iArr2 != null && iArr2.length == 2) {
                        hashSet2.add(iArr2[0] + "," + iArr2[1]);
                    }
                }
                nVar.put("insert_ad_vd_show_time", hashSet2);
            }
            ArrayList<int[]> arrayList3 = sp;
            if (!arrayList3.isEmpty()) {
                HashSet hashSet3 = new HashSet();
                for (int[] iArr3 : arrayList3) {
                    if (iArr3 != null && iArr3.length == 2) {
                        hashSet3.add(iArr3[0] + "," + iArr3[1]);
                    }
                }
                nVar.put("insert_ad_pt_show_time_fs", hashSet3);
            }
            ArrayList<int[]> arrayList4 = f13836x;
            if (!arrayList4.isEmpty()) {
                HashSet hashSet4 = new HashSet();
                for (int[] iArr4 : arrayList4) {
                    if (iArr4 != null && iArr4.length == 2) {
                        hashSet4.add(iArr4[0] + "," + iArr4[1]);
                    }
                }
                nVar.put("insert_ad_vd_show_time_fs", hashSet4);
            }
            nVar.put("refresh_ad_ifclick_swtich_fs", f13829h);
            nVar.put("refresh_ad_ifclick_swtich", md);
            nVar.put("refresh_ad_clickafter_tip_content", yv);
            nVar.put("refresh_ad_clickafter_tip_content_max_time", f13833p);
        } catch (Exception unused) {
        }
    }

    public void tt(JSONObject jSONObject) {
        try {
            jSONObject.put("carousel_pos", this.gr);
            jSONObject.put("insert_ad_control", this.my);
            jSONObject.put("refresh_ad_control", this.gt);
            jSONObject.put("refresh_ad_imp_max_time", this.gu);
            jSONObject.put("force_refresh_ad_control", this.rl);
            jSONObject.put("web_refresh_control", this.qy);
            jSONObject.put("carousel_tip_content", this.zm);
        } catch (JSONException unused) {
        }
    }

    public static int tt(ic icVar) {
        or orVarSp = sp(icVar);
        if (orVarSp == null) {
            return 0;
        }
        return orVarSp.gt;
    }

    public static boolean tt(ic icVar, boolean z10) {
        return (!z10 || f13831m == 1) && ve(icVar) == 1 && uj(icVar) > 0;
    }

    public static boolean tt(boolean z10, ic icVar, boolean z11) {
        return c(z10, icVar, z11) || c(icVar, z11) || tt(icVar, z11);
    }

    public static boolean c() {
        return f13827c == 1;
    }

    public static int c(boolean z10) {
        if (z10) {
            return f13828da;
        }
        return sl;
    }

    public static boolean c(boolean z10, boolean z11, int i10) {
        return z10 ? c(z11, i10) : tt(z11, i10);
    }

    private static boolean c(boolean z10, int i10) {
        if (z10) {
            for (int[] iArr : f13826a) {
                if (i10 >= iArr[0] && i10 <= iArr[1]) {
                    return true;
                }
            }
        } else {
            for (int[] iArr2 : f13832n) {
                if (i10 >= iArr2[0] && i10 <= iArr2[1]) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean c(int i10, ic icVar, boolean z10) {
        return n(icVar) > 0 && i10 * 1000 >= n(icVar) - (tt(z10) * 1000);
    }

    public static boolean c(int i10, ic icVar) {
        return n(icVar) > 0 && i10 * 1000 >= n(icVar);
    }

    public static void c(com.byazt.it.n nVar) {
        try {
            f13827c = nVar.getInt("insert_ad_control", 1);
            tt = nVar.getInt("insert_ad_control_fs", 1);
            ve = nVar.getInt("insert_ad_req_num", 3);
            uj = nVar.getInt("insert_ad_req_num_fs", 2);
            f13830i = nVar.getInt("insert_ad_toast_max_time", 5);
            f13828da = nVar.getInt("insert_ad_tip_max_time", 0);
            sl = nVar.getInt("insert_ad_tip_max_time_fs", 3);
            f13834t = nVar.getInt("refresh_ad_tip_max_time", 3);
            f13835u = nVar.getInt("refresh_ad_tip_max_time_fs", 3);
            yp = nVar.getInt("refresh_ad_control", 1);
            f13837z = nVar.getInt("refresh_ad_req_num", 3);
            f13831m = nVar.getInt("force_refresh_ad_control", 1);
            nu = nVar.getInt("force_refresh_ad_pause_over_time", 5000);
            rh = nVar.getInt("refresh_ad_reduce_time", 0);
            Set<String> stringSet = nVar.getStringSet("insert_ad_pt_show_time", null);
            if (stringSet != null && !stringSet.isEmpty()) {
                f13832n.clear();
                Iterator<String> it2 = stringSet.iterator();
                while (it2.hasNext()) {
                    String[] strArrSplit = it2.next().split(",");
                    if (strArrSplit.length == 2) {
                        f13832n.add(new int[]{Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1])});
                    }
                }
            }
            Set<String> stringSet2 = nVar.getStringSet("insert_ad_vd_show_time", null);
            if (stringSet2 != null && !stringSet2.isEmpty()) {
                f13826a.clear();
                Iterator<String> it3 = stringSet2.iterator();
                while (it3.hasNext()) {
                    String[] strArrSplit2 = it3.next().split(",");
                    if (strArrSplit2.length == 2) {
                        f13826a.add(new int[]{Integer.parseInt(strArrSplit2[0]), Integer.parseInt(strArrSplit2[1])});
                    }
                }
            }
            Set<String> stringSet3 = nVar.getStringSet("insert_ad_pt_show_time_fs", null);
            if (stringSet3 != null && !stringSet3.isEmpty()) {
                sp.clear();
                Iterator<String> it4 = stringSet3.iterator();
                while (it4.hasNext()) {
                    String[] strArrSplit3 = it4.next().split(",");
                    if (strArrSplit3.length == 2) {
                        sp.add(new int[]{Integer.parseInt(strArrSplit3[0]), Integer.parseInt(strArrSplit3[1])});
                    }
                }
            }
            Set<String> stringSet4 = nVar.getStringSet("insert_ad_vd_show_time_fs", null);
            if (stringSet4 != null && !stringSet4.isEmpty()) {
                f13836x.clear();
                Iterator<String> it5 = stringSet4.iterator();
                while (it5.hasNext()) {
                    String[] strArrSplit4 = it5.next().split(",");
                    if (strArrSplit4.length == 2) {
                        f13836x.add(new int[]{Integer.parseInt(strArrSplit4[0]), Integer.parseInt(strArrSplit4[1])});
                    }
                }
            }
            yv = nVar.getString("refresh_ad_clickafter_tip_content", "已为您延迟到奖励下发后再播放下一个");
            f13833p = nVar.getInt("refresh_ad_clickafter_tip_content_max_time", 3);
            md = nVar.getInt("refresh_ad_ifclick_swtich", 0);
            f13829h = nVar.getInt("refresh_ad_ifclick_swtich_fs", 0);
        } catch (Exception unused) {
        }
    }

    public static int c(ic icVar) {
        or orVarSp = sp(icVar);
        if (orVarSp == null) {
            return 0;
        }
        return orVarSp.my;
    }

    public static boolean c(boolean z10, ic icVar, boolean z11) {
        return z10 ? ve(icVar, z11) : uj(icVar, z11);
    }

    public static boolean c(ic icVar, boolean z10) {
        return (!z10 || yp == 1) && tt(icVar) == 1 && uj(icVar) > 0;
    }
}
