package com.byazt.le;

import android.text.TextUtils;
import com.byazt.aas.my;
import com.byazt.dna.n;
import com.byazt.dna.u;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.ut.uj;
import com.byazt.vx.eo;
import com.byazt.vx.rl;
import com.byazt.vx.ve;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1581, 13})
public class tt implements c<com.byazt.ng.c> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f16635c = new byte[0];

    private byte[] tt(List<com.byazt.ng.c> list) throws Throwable {
        GZIPOutputStream gZIPOutputStream = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONObject jSONObjectVe = ve(list);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        try {
            try {
                try {
                    GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
                    try {
                        gZIPOutputStream2.write(jSONObjectVe.toString().getBytes());
                        gZIPOutputStream2.close();
                    } catch (Exception e10) {
                        e = e10;
                        gZIPOutputStream = gZIPOutputStream2;
                        m.c(e);
                        if (gZIPOutputStream != null) {
                            gZIPOutputStream.close();
                        }
                        return byteArrayOutputStream.toByteArray();
                    } catch (Throwable th) {
                        th = th;
                        gZIPOutputStream = gZIPOutputStream2;
                        if (gZIPOutputStream != null) {
                            try {
                                gZIPOutputStream.close();
                            } catch (IOException e11) {
                                m.c(e11);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e12) {
                    m.c(e12);
                }
            } catch (Exception e13) {
                e = e13;
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private byte[] uj(List<com.byazt.ng.c> list) {
        try {
            return c(ve.c(ve(list)).toString());
        } catch (Throwable th) {
            m.c(th);
            return null;
        }
    }

    private JSONObject ve(List<com.byazt.ng.c> list) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_user_agent", ((u) uj.getService("device_info_new")).getUserAgent());
            jSONObject.put("client_ip", my.c());
            jSONObject.put("header", rl.tt());
            JSONArray jSONArray = new JSONArray();
            Iterator<com.byazt.ng.c> it2 = list.iterator();
            while (it2.hasNext()) {
                jSONArray.put(it2.next().tt);
            }
            jSONObject.put("event_v3", jSONArray);
            jSONObject.put("magic_tag", "ss_app_log");
            jSONObject.put("_gen_time", System.currentTimeMillis());
        } catch (JSONException e10) {
            m.c(e10);
        }
        return jSONObject;
    }

    @Override // com.byazt.le.c
    public boolean c() {
        n nVarA = eo.a();
        return (com.byazt.bp.tt.tt().uj() || nVarA == null || !nVarA.getArmorLoadStatus()) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x007c  */
    private com.byazt.ng.n c(String str, byte[] bArr, boolean z10) {
        String str2;
        boolean z11;
        String str3;
        com.byazt.va.n nVarTt = com.byazt.yp.tt.c().tt().tt();
        nVarTt.c(str);
        String strX = com.byazt.bp.c.t().x();
        if (!TextUtils.isEmpty(strX)) {
            nVarTt.tt("X-Tt-Env", strX);
            nVarTt.tt("x-use-ppe", "1");
        }
        if (z10) {
            nVarTt.tt("x-pglcypher", "4");
            nVarTt.tt("Content-Encoding", "union_sdk_encode");
            str2 = "application/octet-stream";
        } else {
            str2 = "application/octet-stream;tt-data=a";
        }
        nVarTt.tt("User-Agent", com.byazt.yl.tt.f22288c);
        nVarTt.c(str2, bArr);
        com.byazt.hm.tt ttVarC = nVarTt.c();
        boolean z12 = true;
        if (ttVarC != null) {
            try {
                if (c(new JSONObject(ttVarC.n()))) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            } catch (JSONException e10) {
                com.byazt.eu.tt.uj("uploadEvent", "ignore:" + e10.toString());
                m.c(e10);
            }
        } else {
            z11 = false;
        }
        int iTt = ttVarC != null ? ttVarC.tt() : 0;
        if (z11 || iTt != 200) {
            if (ttVarC != null) {
                String strVe = ttVarC.ve();
                if (z11) {
                    str3 = strVe;
                } else {
                    str3 = strVe + "::" + ttVarC.n();
                }
            } else {
                str3 = "error unknown";
            }
            z12 = false;
        } else {
            str3 = "server say not success";
        }
        return new com.byazt.ng.n(z11, iTt, str3, z12);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0070  */
    private com.byazt.ng.n c(String str, byte[] bArr) {
        boolean z10;
        String str2;
        com.byazt.va.n nVarTt = com.byazt.yp.tt.c().tt().tt();
        nVarTt.c(str);
        String strX = com.byazt.bp.c.t().x();
        if (!TextUtils.isEmpty(strX)) {
            nVarTt.tt("X-Tt-Env", strX);
            nVarTt.tt("x-use-ppe", "1");
        }
        nVarTt.tt("User-Agent", com.byazt.yl.tt.f22288c);
        nVarTt.tt("Content-Encoding", "union_sdk_encode");
        nVarTt.c("application/json; charset=utf-8", bArr);
        com.byazt.hm.tt ttVarC = nVarTt.c();
        boolean z11 = true;
        if (ttVarC != null) {
            try {
                if (c(new JSONObject(ttVarC.n()))) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } catch (JSONException e10) {
                com.byazt.eu.tt.uj("uploadEvent", "ignore:" + e10.toString());
                m.c(e10);
            }
        } else {
            z10 = false;
        }
        int iTt = ttVarC != null ? ttVarC.tt() : 0;
        if (z10 || iTt != 200) {
            if (ttVarC != null) {
                String strVe = ttVarC.ve();
                if (z10) {
                    str2 = strVe;
                } else {
                    str2 = strVe + "::" + ttVarC.n();
                }
            } else {
                str2 = "error unknown";
            }
            z11 = false;
        } else {
            str2 = "server say not success";
        }
        return new com.byazt.ng.n(z10, iTt, str2, z11);
    }

    @Override // com.byazt.le.c
    public com.byazt.ng.n c(List<com.byazt.ng.c> list) {
        if (list == null) {
            return null;
        }
        try {
            if (list.isEmpty()) {
                return null;
            }
            com.byazt.eu.tt.tt(MediationConstant.TAG, "--==-- v3: " + list.size());
            boolean zC = c();
            byte[] bArrC = c(list, zC);
            if (bArrC != null && bArrC.length > 0) {
                return c(com.byazt.bp.ve.tt(), bArrC, zC);
            }
            return c(com.byazt.bp.ve.tt(), gt.tt().jf() == 1 ? f16635c : uj(list));
        } catch (Throwable th) {
            com.byazt.eu.tt.uj("ReportNetApiImpl", "uploadEvent error:");
            m.c(th);
            return new com.byazt.ng.n(false, 509, "service_busy", false);
        }
    }

    private byte[] c(List<com.byazt.ng.c> list, boolean z10) throws Throwable {
        byte[] bArrTt = tt(list);
        n nVarA = eo.a();
        if (bArrTt == null) {
            return null;
        }
        if (z10) {
            return nVarA.encrypt(bArrTt);
        }
        return c(bArrTt, bArrTt.length);
    }

    private byte[] c(String str) {
        try {
            return str == null ? new byte[0] : str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            return new byte[0];
        }
    }

    private byte[] c(byte[] bArr, int i10) {
        if (bArr != null && i10 > 0) {
            try {
                if (bArr.length == i10) {
                    return com.byazt.vx.u.c(bArr, i10);
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return null;
    }

    private boolean c(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return jSONObject.optInt("code") == 20000 || "success".equals(jSONObject.optString("message"));
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
