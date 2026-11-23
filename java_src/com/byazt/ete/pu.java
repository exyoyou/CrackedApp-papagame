package com.byazt.ete;

import android.text.TextUtils;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 569})
public class pu {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static JSONObject f13849i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public dz f13850a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13851c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13852n;
    public ma sp;
    public int tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public JSONObject f13853x;

    public pu(JSONObject jSONObject, String str, bm bmVar) {
        this.f13851c = 2;
        this.tt = 0;
        this.ve = 1;
        this.uj = 0;
        this.f13852n = 100;
        if (jSONObject == null) {
            return;
        }
        this.f13851c = jSONObject.optInt("render_control", bmVar != null ? bmVar.sp : 1);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("render");
        if (jSONObjectOptJSONObject != null) {
            this.tt = jSONObjectOptJSONObject.optInt("render_sequence", 0);
            this.ve = jSONObjectOptJSONObject.optInt("backup_render_control", 1);
            this.uj = jSONObjectOptJSONObject.optInt("render_thread", 0);
            this.f13852n = jSONObjectOptJSONObject.optInt("reserve_time", 100);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("tpl_info");
        if (jSONObjectOptJSONObject2 != null) {
            dz dzVar = new dz();
            dzVar.tt(jSONObjectOptJSONObject2.optString("id"));
            dzVar.ve(jSONObjectOptJSONObject2.optString(TKDownloadReason.KSAD_TK_MD5));
            dzVar.uj(jSONObjectOptJSONObject2.optString("url"));
            dzVar.n(jSONObjectOptJSONObject2.optString("data"));
            dzVar.a(jSONObjectOptJSONObject2.optString("diff_data"));
            dzVar.sp(jSONObjectOptJSONObject2.optString("dynamic_creative"));
            dzVar.c(jSONObjectOptJSONObject2.optString("version"));
            dzVar.x(jSONObjectOptJSONObject2.optString("material_type"));
            dzVar.i(jSONObjectOptJSONObject2.optString("ugen_url"));
            dzVar.da(jSONObjectOptJSONObject2.optString("ugen_md5"));
            dzVar.t(jSONObjectOptJSONObject2.optString("express_gesture_priority"));
            dzVar.sl(jSONObjectOptJSONObject2.optString("engine_version"));
            this.f13850a = dzVar;
            com.byazt.ku.uj ujVarC = c(str);
            if (ujVarC != null) {
                com.byazt.six.tt.c(ujVarC);
            }
            com.byazt.xs.da.c(dzVar.i(), dzVar.da(), (com.byazt.xs.ve) null);
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("tpl_info_v3");
        if (jSONObjectOptJSONObject3 != null) {
            ma maVarC = ma.c(jSONObjectOptJSONObject3);
            this.sp = maVarC;
            com.byazt.nq.tt.c().c(maVarC, str, "ad");
        }
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("dynamic_creative");
        if (jSONObjectOptJSONObject4 != null) {
            this.f13853x = jSONObjectOptJSONObject4;
        }
    }

    public static dz a(ic icVar) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return null;
        }
        return puVarYp.f13850a;
    }

    public static void c(ic icVar, int i10) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return;
        }
        puVarYp.f13851c = i10;
    }

    public static boolean da(ic icVar) {
        return icVar != null && tt(icVar) == 7;
    }

    public static com.byazt.ku.uj i(ic icVar) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return null;
        }
        return puVarYp.c(String.valueOf(com.byazt.aas.nb.t(icVar)));
    }

    public static int n(ic icVar) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return 100;
        }
        return puVarYp.f13852n;
    }

    public static boolean sl(ic icVar) {
        return icVar != null && tt(icVar) == 3;
    }

    public static ma sp(ic icVar) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return null;
        }
        return puVarYp.sp;
    }

    public static boolean t(ic icVar) {
        return icVar != null && tt(icVar) == 10;
    }

    public static void tt(com.byazt.it.n nVar) {
        try {
            f13849i = new JSONObject(nVar.getString("dark_mode_config", ""));
        } catch (Exception unused) {
        }
    }

    public static JSONObject u(ic icVar) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return null;
        }
        return puVarYp.f13853x;
    }

    public static int uj(ic icVar) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return 0;
        }
        return puVarYp.uj;
    }

    public static int ve(ic icVar) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return 1;
        }
        return puVarYp.ve;
    }

    public static boolean x(ic icVar) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return false;
        }
        dz dzVar = puVarYp.f13850a;
        if (dzVar != null) {
            return !TextUtils.isEmpty(dzVar.sl());
        }
        int i10 = puVarYp.tt;
        return i10 == 9 || i10 == 10;
    }

    private static pu yp(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.gy();
    }

    public void tt(JSONObject jSONObject) {
        try {
            jSONObject.put("render_control", this.f13851c);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("render_sequence", this.tt);
            jSONObject2.put("backup_render_control", this.ve);
            jSONObject2.put("render_thread", this.uj);
            jSONObject2.put("reserve_time", this.f13852n);
            jSONObject.put("render", jSONObject2);
            if (this.f13850a != null) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("id", this.f13850a.tt());
                jSONObject3.put(TKDownloadReason.KSAD_TK_MD5, this.f13850a.ve());
                jSONObject3.put("url", this.f13850a.uj());
                jSONObject3.put("data", this.f13850a.n());
                jSONObject3.put("diff_data", this.f13850a.a());
                jSONObject3.put("version", this.f13850a.c());
                jSONObject3.put("dynamic_creative", this.f13850a.sp());
                jSONObject3.put("material_type", this.f13850a.x());
                jSONObject3.put("ugen_url", this.f13850a.i());
                jSONObject3.put("ugen_md5", this.f13850a.da());
                jSONObject3.put("engine_version", this.f13850a.sl());
                jSONObject3.put("express_gesture_priority", this.f13850a.t());
                jSONObject.put("tpl_info", jSONObject3);
            }
            jSONObject.put("dynamic_creative", this.f13853x);
            ma maVar = this.sp;
            if (maVar != null) {
                jSONObject.put("tpl_info_v3", maVar.i());
            }
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public static void c(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
                if (jSONObjectOptJSONObject != null) {
                    f13849i = jSONObjectOptJSONObject.optJSONObject("dark_mode_config");
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void c(com.byazt.it.n nVar) {
        try {
            nVar.put("dark_mode_config", f13849i.toString());
        } catch (Exception unused) {
        }
    }

    public static JSONObject c() {
        return f13849i;
    }

    private com.byazt.ku.uj c(String str) {
        dz dzVar = this.f13850a;
        if (dzVar == null) {
            return null;
        }
        String strTt = dzVar.tt();
        String strUj = this.f13850a.uj();
        String strVe = this.f13850a.ve();
        String strN = this.f13850a.n();
        return com.byazt.ku.uj.c().c(strTt).tt(strVe).ve(strUj).uj(strN).n(this.f13850a.c()).a(String.valueOf(str));
    }

    public static int c(ic icVar) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return 2;
        }
        return puVarYp.f13851c;
    }

    public static boolean c(int i10) {
        JSONObject jSONObject = f13849i;
        if (jSONObject == null) {
            return i10 == 1 || i10 == 5 || i10 == 8;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("support_slot_type");
            if (jSONArrayOptJSONArray == null) {
                return i10 == 1 || i10 == 5 || i10 == 8;
            }
            int length = jSONArrayOptJSONArray.length();
            if (length == 0) {
                return i10 == 1 || i10 == 5 || i10 == 8;
            }
            for (int i11 = 0; i11 < length; i11++) {
                if (i10 == jSONArrayOptJSONArray.optInt(i11)) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return i10 == 1 || i10 == 5 || i10 == 8;
        }
    }

    public static double c(ic icVar, double d10) {
        JSONObject jSONObject;
        double d11;
        pu puVarYp = yp(icVar);
        if (puVarYp == null || puVarYp.f13851c != 2) {
            return 0.0d;
        }
        int i10 = puVarYp.tt;
        if ((i10 != 10 && i10 != 9) || (jSONObject = puVarYp.f13853x) == null) {
            return 0.0d;
        }
        try {
            int iOptInt = jSONObject.optInt("layout_type");
            if (iOptInt <= 0) {
                return 0.0d;
            }
            switch (iOptInt) {
                case 1:
                case 2:
                    d11 = 0.8999999761581421d;
                    break;
                case 3:
                    d11 = 1.0d;
                    break;
                case 4:
                    d11 = 0.5d;
                    break;
                case 5:
                case 6:
                    d11 = 2.4000000953674316d;
                    break;
                case 7:
                    d11 = 2.0d;
                    break;
                default:
                    return 0.0d;
            }
            return d10 / d11;
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    public static int tt(ic icVar) {
        pu puVarYp = yp(icVar);
        if (puVarYp == null) {
            return 0;
        }
        return puVarYp.tt;
    }
}
