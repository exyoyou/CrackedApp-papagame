package com.byazt.psp;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.uy.sp;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.posting.PostingActivity_;
import com.kuaishou.weapon.p0.t;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.xinzhu.overmind.server.os.f;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsIsEncryptVersion, 20})
public abstract class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, String> f18861c = new HashMap();
    public final com.byazt.it.ve tt;

    public c(String str) {
        this.tt = com.byazt.vif.uj.c(com.byazt.bp.c.t().u(), str);
        ve();
    }

    public static String c(int i10) {
        switch (i10) {
            case 1:
                return "banner";
            case 2:
                return MediationConstant.RIT_TYPE_INTERSTITIAL;
            case 3:
            case 4:
                return MediationConstant.RIT_TYPE_SPLASH;
            case 5:
                return "native";
            case 6:
            default:
                return null;
            case 7:
                return MediationConstant.RIT_TYPE_REWARD_VIDEO;
            case 8:
                return "fullscreenVideo";
            case 9:
                return MediationConstant.RIT_TYPE_DRAW;
            case 10:
                return MediationConstant.RIT_TYPE_INTERSTITIAL_FULL;
        }
    }

    private void ve(int i10, String str, double d10) {
        if (TextUtils.isEmpty(str) || i10 != 3) {
            return;
        }
        this.tt.put(str, d10 + "_" + System.currentTimeMillis());
        c(str);
    }

    public abstract Map<String, String> c();

    public abstract JSONObject c(com.byazt.nbs.ve veVar);

    public abstract void c(String str, int i10, String str2);

    public abstract void c(String str, String str2);

    public void tt() {
        Map all = this.tt.getAll();
        if (all != null) {
            for (Map.Entry entry : all.entrySet()) {
                if (entry != null) {
                    c(String.valueOf(entry.getKey()), String.valueOf(entry.getValue()));
                }
            }
        }
    }

    public abstract boolean tt(String str, JSONObject jSONObject, Map<String, Object> map);

    public void c(int i10, String str, int i11, double d10) {
        if (i11 == 1) {
            c(i10, str, d10);
        } else if (i11 == 3) {
            tt(i10, str, d10);
        } else if (i11 == 2) {
            ve(i10, str, d10);
        }
    }

    private void tt(int i10, String str, double d10) {
        if (TextUtils.isEmpty(str) || i10 != 3) {
            return;
        }
        this.tt.put(str, d10 + "_" + System.currentTimeMillis());
        c(str);
    }

    private String ve(int i10, String str) {
        if (!TextUtils.isEmpty(str) && i10 == 3) {
            String string = this.tt.getString(str, null);
            if (!TextUtils.isEmpty(string) && !"0".equals(string)) {
                String[] strArrSplit = string.split("_");
                String str2 = strArrSplit[0];
                String str3 = strArrSplit[1];
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    if (str3.matches("[0-9]+")) {
                        try {
                            if (com.byazt.bp.tt.tt().c(System.currentTimeMillis() - Long.parseLong(str3))) {
                                return str2;
                            }
                            this.tt.remove(str);
                        } catch (NumberFormatException unused) {
                            this.tt.remove(str);
                            sp.c("自定义上报 saveTime format exception valueTimestamp " + string);
                        }
                    } else {
                        this.tt.remove(str);
                        sp.c("自定义上报 saveTime is not number valueTimestamp " + string);
                    }
                }
            }
        }
        return "0";
    }

    public double c(int i10, String str, int i11) {
        if (i11 == 1) {
            return BigDecimal.valueOf(Double.parseDouble(c(i10, str))).setScale(2, RoundingMode.HALF_UP).doubleValue();
        }
        if (i11 == 3) {
            return BigDecimal.valueOf(Double.parseDouble(tt(i10, str))).setScale(2, RoundingMode.HALF_UP).doubleValue();
        }
        if (i11 == 2) {
            return BigDecimal.valueOf(Double.parseDouble(ve(i10, str))).setScale(2, RoundingMode.HALF_UP).doubleValue();
        }
        return 0.0d;
    }

    public void c(double d10, double d11, String str, String str2) {
        if (this.tt == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        c(str, "_last_post_cpm_", str2, d10);
        c(str, "_last_bidding_cpm_", str2, d11);
    }

    private String tt(int i10, String str) {
        if (!TextUtils.isEmpty(str) && i10 == 3) {
            String string = this.tt.getString(str, null);
            if (!TextUtils.isEmpty(string) && !"0".equals(string)) {
                String[] strArrSplit = string.split("_");
                String str2 = strArrSplit[0];
                String str3 = strArrSplit[1];
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    if (com.byazt.bp.tt.tt().c(System.currentTimeMillis() - Long.parseLong(str3))) {
                        return str2;
                    }
                    this.tt.remove(str);
                }
            }
        }
        return "0";
    }

    /* JADX WARN: Code duplicated, block: B:14:0x008f  */
    /* JADX WARN: Code duplicated, block: B:27:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:41:0x0100  */
    /* JADX WARN: Code duplicated, block: B:70:0x013d  */
    public double[] c(int i10, double d10, double d11, String str, String str2) {
        double dDoubleValue;
        double dDoubleValue2;
        double dDoubleValue3;
        int i11;
        int i12;
        String string = this.tt.getString(str2 + "_last_post_cpm_", "");
        String string2 = this.tt.getString(str2 + "_last_load_cpm_", "");
        String string3 = this.tt.getString(str2 + "_last_bidding_cpm_", "");
        if (TextUtils.isEmpty(string)) {
            dDoubleValue = 0.0d;
        } else {
            String[] strArrSplit = string.split("_");
            if (strArrSplit.length == 2) {
                String str3 = strArrSplit[0];
                if (TextUtils.isEmpty(str3) || !TextUtils.equals(str3, str)) {
                    dDoubleValue = 0.0d;
                } else {
                    String str4 = strArrSplit[1];
                    if (TextUtils.isEmpty(str4)) {
                        str4 = "0";
                    }
                    dDoubleValue = BigDecimal.valueOf(Double.parseDouble(str4)).setScale(2, RoundingMode.HALF_UP).doubleValue();
                }
            } else {
                dDoubleValue = 0.0d;
            }
        }
        if (TextUtils.isEmpty(string2)) {
            dDoubleValue2 = 0.0d;
        } else {
            String[] strArrSplit2 = string2.split("_");
            if (strArrSplit2.length == 2) {
                String str5 = strArrSplit2[0];
                if (TextUtils.isEmpty(str5) || !TextUtils.equals(str5, str)) {
                    dDoubleValue2 = 0.0d;
                } else {
                    String str6 = strArrSplit2[1];
                    if (TextUtils.isEmpty(str6)) {
                        str6 = "0";
                    }
                    dDoubleValue2 = BigDecimal.valueOf(Double.parseDouble(str6)).setScale(2, RoundingMode.HALF_UP).doubleValue();
                }
            } else {
                dDoubleValue2 = 0.0d;
            }
        }
        if (TextUtils.isEmpty(string3)) {
            dDoubleValue3 = 0.0d;
        } else {
            String[] strArrSplit3 = string3.split("_");
            if (strArrSplit3.length == 2) {
                String str7 = strArrSplit3[0];
                if (TextUtils.isEmpty(str7) || !TextUtils.equals(str7, str)) {
                    dDoubleValue3 = 0.0d;
                } else {
                    String str8 = strArrSplit3[1];
                    dDoubleValue3 = BigDecimal.valueOf(Double.parseDouble(TextUtils.isEmpty(str8) ? "0" : str8)).setScale(2, RoundingMode.HALF_UP).doubleValue();
                }
            } else {
                dDoubleValue3 = 0.0d;
            }
        }
        if (d10 == 0.0d && dDoubleValue == 0.0d && dDoubleValue2 == 0.0d && d11 == 0.0d && dDoubleValue3 == 0.0d) {
            return new double[]{0.0d, 0.0d};
        }
        if (d10 != 0.0d) {
            dDoubleValue = d10;
            i11 = 2;
        } else {
            i11 = 3;
        }
        if (d11 != 0.0d) {
            dDoubleValue3 = d11;
            i12 = 5;
        } else {
            i12 = 4;
        }
        if (dDoubleValue >= dDoubleValue2) {
            if (dDoubleValue >= dDoubleValue3) {
                dDoubleValue2 = dDoubleValue;
            } else {
                dDoubleValue2 = dDoubleValue3;
                i11 = i12;
            }
        } else if (dDoubleValue2 > dDoubleValue3) {
            i11 = 1;
        } else {
            dDoubleValue2 = dDoubleValue3;
            i11 = i12;
        }
        if (i10 == 3 && i11 == 3) {
            i11 = 2;
        }
        return new double[]{dDoubleValue2, (i10 == 3 && i11 == 4) ? 5 : i11};
    }

    public String tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        StringBuilder sb2 = new StringBuilder();
        for (char c10 : charArray) {
            sb2.append(this.f18861c.get(String.valueOf(c10)));
        }
        return sb2.toString();
    }

    public void ve() {
        this.f18861c.put("0", "a");
        this.f18861c.put("1", t.f74887l);
        this.f18861c.put("2", "c");
        this.f18861c.put("3", t.f74895t);
        this.f18861c.put("4", "e");
        this.f18861c.put("5", f.TAG);
        this.f18861c.put("6", "g");
        this.f18861c.put("7", "h");
        this.f18861c.put(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "i");
        this.f18861c.put("9", "j");
        this.f18861c.put(o0.f49827a, t.f74876a);
    }

    public void c(String str, String str2, String str3, double d10) {
        String str4 = str + str2;
        this.tt.put(str4, str3 + "_" + d10);
    }

    private synchronized void c(int i10, String str, double d10) {
        String str2 = "label_size_" + str;
        int i11 = this.tt.getInt(str2, 0) + 1;
        String strC = c(str, i11);
        String strC2 = c(str, d10);
        c(strC, i10, strC2);
        this.tt.put(strC, strC2);
        this.tt.put(str2, i11);
    }

    private String c(int i10, String str) {
        if (TextUtils.isEmpty(str) || i10 != 3) {
            return "0";
        }
        double[] dArr = new double[2];
        Iterator<Map.Entry<String, String>> it2 = c().entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, String> next = it2.next();
            if (next != null) {
                String value = next.getValue();
                if (!TextUtils.isEmpty(value) && value.contains(str)) {
                    String[] strArrSplit = value.split("_");
                    String str2 = strArrSplit[0];
                    String str3 = strArrSplit[1];
                    String str4 = strArrSplit[2];
                    if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                        if (com.byazt.bp.tt.tt().c(System.currentTimeMillis() - Long.parseLong(str4))) {
                            dArr[0] = dArr[0] + 1.0d;
                            dArr[1] = dArr[1] + Double.parseDouble(str3);
                        } else {
                            it2.remove();
                            this.tt.remove(next.getKey());
                            String str5 = "label_size_" + str;
                            int i11 = this.tt.getInt(str5, 0);
                            if (i11 > 0) {
                                this.tt.put(str5, i11 - 1);
                            }
                        }
                    }
                }
            }
        }
        return c(dArr);
    }

    public void c(String str) {
        for (int i10 = this.tt.getInt("label_size_" + str, 0); i10 > 0; i10--) {
            try {
                String strC = c(str, i10);
                this.tt.remove(strC);
                c().remove(strC);
            } catch (Throwable th) {
                com.byazt.eu.tt.uj("CalculateLabelValueImpl", "clearFromSpByRit,ignore:" + th.toString());
            }
        }
    }

    private String c(String str, int i10) {
        return "cpm_key_" + str + "_" + i10;
    }

    private String c(String str, double d10) {
        return str + "_" + d10 + "_" + System.currentTimeMillis();
    }

    public String c(double[] dArr) {
        double d10 = dArr[0];
        return d10 != 0.0d ? new BigDecimal(dArr[1] / d10).setScale(2, RoundingMode.HALF_UP).toString() : "-1.0";
    }

    public void c(String str, JSONObject jSONObject, Map<String, Object> map) {
        if (!com.byazt.bp.tt.tt().kk() || TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (tt(str, jSONObject2, map == null ? new HashMap<>() : map)) {
            try {
                jSONObject.putOpt(PostingActivity_.LABEL_EXTRA, jSONObject2);
                if (map == null || map.get("cost_time") == null) {
                    return;
                }
                jSONObject.put("uvalueExcTime", map.get("cost_time"));
            } catch (JSONException e10) {
                m.c(e10);
            }
        }
    }
}
