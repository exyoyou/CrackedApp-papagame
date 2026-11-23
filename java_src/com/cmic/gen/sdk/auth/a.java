package com.cmic.gen.sdk.auth;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.cmic.gen.sdk.e.h;
import com.cmic.gen.sdk.e.k;
import com.cmic.gen.sdk.e.l;
import com.haima.hmcp.ConstantsInternal;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static a f24281c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.cmic.gen.sdk.c.c.a f24282a = com.cmic.gen.sdk.c.c.a.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f24283b;

    private a(Context context) {
        this.f24283b = context.getApplicationContext();
    }

    public void b(final com.cmic.gen.sdk.a aVar, final b bVar) {
        com.cmic.gen.sdk.e.c.b("AuthnBusiness", "getScripAndToken start");
        boolean zB = aVar.b("isGotScrip", false);
        com.cmic.gen.sdk.e.c.b("AuthnBusiness", "isGotScrip = " + zB);
        if (!zB) {
            a(aVar);
            if (!aVar.b("isCacheScrip", false)) {
                b(aVar);
                if (aVar.c("networktype") == 3 && !"loginAuth".equals(aVar.b("loginMethod")) && aVar.c("logintype") != 3) {
                    aVar.a("isRisk", true);
                }
            }
            if (aVar.c("logintype") == 1) {
                aVar.a("userCapaid", ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS);
            } else if (aVar.c("logintype") == 0) {
                aVar.a("userCapaid", "50");
            }
        }
        this.f24282a.a(aVar, new com.cmic.gen.sdk.c.c.d() { // from class: com.cmic.gen.sdk.auth.a.1
            @Override // com.cmic.gen.sdk.c.c.d
            public void a(String str, String str2, JSONObject jSONObject) {
                a.this.a(aVar, bVar, str, str2, jSONObject);
            }
        });
    }

    public static a a(Context context) {
        if (f24281c == null) {
            synchronized (a.class) {
                if (f24281c == null) {
                    f24281c = new a(context);
                }
            }
        }
        return f24281c;
    }

    public void a(com.cmic.gen.sdk.a aVar, b bVar) {
        com.cmic.gen.sdk.e.c.b("AuthnBusiness", "LoginCheck method start");
        int iC = aVar.c("logintype");
        if (aVar.b("isCacheScrip", false)) {
            String strB = aVar.b("securityphone", "");
            if (iC == 3) {
                bVar.a("103000", "true", aVar, d.a(strB));
                return;
            } else {
                b(aVar, bVar);
                return;
            }
        }
        b(aVar, bVar);
    }

    private void b(com.cmic.gen.sdk.a aVar) {
        byte[] bytes = new byte[0];
        if (aVar.b("use2048PublicKey", false)) {
            com.cmic.gen.sdk.e.c.a("AuthnBusiness", "使用2048公钥对应的对称秘钥生成方式");
            bytes = com.cmic.gen.sdk.e.a.a();
        } else {
            com.cmic.gen.sdk.e.c.a("AuthnBusiness", "使用1024公钥对应的对称秘钥生成方式");
            try {
                bytes = UUID.randomUUID().toString().substring(0, 16).getBytes("utf-8");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        byte[] bArrA = com.cmic.gen.sdk.e.a.a();
        aVar.a(com.cmic.gen.sdk.b.a.f24323a, bytes);
        aVar.a(com.cmic.gen.sdk.b.a.f24324b, bArrA);
        aVar.a("authType", "3");
    }

    private void a(com.cmic.gen.sdk.a aVar) {
        String packageName = this.f24283b.getPackageName();
        String strA = com.cmic.gen.sdk.e.d.a(l.a(this.f24283b, packageName));
        aVar.a("apppackage", packageName);
        aVar.a("appsign", strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.cmic.gen.sdk.a aVar, b bVar, String str, String str2, JSONObject jSONObject) {
        String strB;
        JSONException jSONException;
        String str3;
        JSONObject jSONObject2;
        String strOptString;
        String str4;
        String str5;
        if ("103000".equals(str)) {
            String strOptString2 = jSONObject.optString("resultdata");
            if (TextUtils.isEmpty(strOptString2)) {
                strB = jSONObject.toString();
            } else {
                strB = com.cmic.gen.sdk.e.a.b(aVar.a(com.cmic.gen.sdk.b.a.f24323a), strOptString2, aVar.a(com.cmic.gen.sdk.b.a.f24324b));
            }
            String strOptString3 = null;
            try {
                jSONObject2 = new JSONObject(strB);
                try {
                    String strOptString4 = jSONObject2.optString("phonescrip");
                    try {
                        strOptString = jSONObject2.optString("securityphone");
                        try {
                            strOptString3 = jSONObject2.optString("openId");
                            if (TextUtils.isEmpty(strOptString3)) {
                                strOptString3 = jSONObject2.optString("pcid");
                            }
                            k.a("securityphone", strOptString);
                            str4 = strOptString;
                            str5 = strOptString4;
                        } catch (JSONException e10) {
                            jSONException = e10;
                            str3 = strOptString3;
                            strOptString3 = strOptString4;
                            jSONException.printStackTrace();
                            String str6 = strOptString3;
                            strOptString3 = str3;
                            str4 = strOptString;
                            str5 = str6;
                        }
                    } catch (JSONException e11) {
                        strOptString = null;
                        strOptString3 = strOptString4;
                        jSONException = e11;
                        str3 = null;
                    }
                } catch (JSONException e12) {
                    jSONException = e12;
                    str3 = null;
                    strOptString = null;
                }
            } catch (JSONException e13) {
                jSONException = e13;
                str3 = null;
                jSONObject2 = null;
                strOptString = null;
            }
            com.cmic.gen.sdk.e.c.b("AuthnBusiness", "securityPhone  = " + str4);
            aVar.a("openId", strOptString3);
            aVar.a("phonescrip", str5);
            aVar.a("securityphone", str4);
            if (jSONObject2 != null) {
                if (!aVar.b("isRisk", false)) {
                    h.a(this.f24283b, str5, Long.parseLong(jSONObject2.optString("scripExpiresIn", "0")), aVar.b("scripKey", ""), aVar.b("scripType", ""));
                }
                if (aVar.c("logintype") == 3) {
                    bVar.a(str, "true", aVar, d.a(str4));
                    return;
                } else {
                    if (aVar.b("isRisk", false)) {
                        aVar.a("isRisk", false);
                        aVar.a("isGotScrip", true);
                        b(aVar, bVar);
                        return;
                    }
                    bVar.a(str, str2, aVar, jSONObject2);
                    return;
                }
            }
            com.cmic.gen.sdk.e.c.a("AuthnBusiness", "返回103000，但是数据解析出错");
            bVar.a(String.valueOf(102223), "数据解析异常", aVar, d.a(String.valueOf(102223), "数据解析异常"));
            return;
        }
        if (aVar.c("logintype") == 3) {
            bVar.a(str, "true", aVar, d.b(str, str2));
        } else {
            bVar.a(str, str2, aVar, jSONObject);
        }
    }
}
