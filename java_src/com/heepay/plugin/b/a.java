package com.heepay.plugin.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.heepay.plugin.a.b;
import com.heepay.plugin.api.HPlugin;
import com.heepay.plugin.c.c;
import com.heepay.plugin.domain.d;
import com.heepay.plugin.domain.e;
import com.heepay.plugin.domain.f;
import com.heepay.plugin.domain.g;
import com.heepay.plugin.domain.h;
import com.heepay.plugin.domain.i;
import com.tencent.stat.DeviceInfo;
import java.security.PublicKey;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"DefaultLocale"})
public class a extends com.heepay.plugin.a.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static a f34285o = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f34286q = com.heepay.plugin.a.a.f34162d + com.heepay.plugin.a.a.f34163e + com.heepay.plugin.a.a.f34165g + "<@*Se*rv*ic*e@ xm*ln*s=\"h*tt*p:*/*/w*ww*.j*ca*r*d*.c*n/*we*bs*er*vi*ces/\">".replaceAll("\\*", "") + "<ph*one*Ver*>@p*ho*ne*Ver@</*pho*ne*Ver>".replaceAll("\\*", "") + "<ph*on*eI*D>*@p*ho*ne*ID*@</*pho*ne*I*D>".replaceAll("\\*", "") + "<*p*hon*eI*nf*o>@*ph*o*n*eI*n*f*o@*</*ph*one*In*fo>".replaceAll("\\*", "") + "<*tim*est*am*p>@*tim*est*amp*@</*tim*est*am*p>".replaceAll("\\*", "") + "<*enc*ryp*tPa*ra*m>*@p*ar*am*@<*/e*nc*ry*pt*Pa*ra*m>".replaceAll("\\*", "") + "<*si*gn>*@s**ign@</sign>".replaceAll("\\*", "") + "<*/*@*Se*rv*ice*@>".replaceAll("\\*", "") + com.heepay.plugin.a.a.f34166h + com.heepay.plugin.a.a.f34164f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f34287n = c.f34289a;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f34288p = 0;

    private a() {
    }

    private d b(g gVar) {
        if (gVar == null) {
            return new d();
        }
        JSONObject jSONObject = new JSONObject(gVar.a());
        d dVar = new d();
        dVar.d(com.heepay.plugin.c.a.a(jSONObject, b.C0633b.f34200a));
        dVar.a(com.heepay.plugin.c.a.a(jSONObject, b.a.C, 0));
        dVar.e(com.heepay.plugin.c.a.a(jSONObject, b.C0633b.f34210k));
        dVar.b(com.heepay.plugin.c.a.a(jSONObject, b.C0633b.f34211l));
        dVar.b(com.heepay.plugin.c.a.a(jSONObject, b.C0633b.f34206g, 0));
        dVar.c(com.heepay.plugin.c.a.a(jSONObject, b.a.f34197x));
        dVar.a(com.heepay.plugin.c.a.a(jSONObject, b.C0633b.E));
        return dVar;
    }

    public static a c() {
        return f34285o;
    }

    private String e() {
        a(HPlugin.mPayInitInfo.getSdkVersion());
        return "a" + HPlugin.mPayInitInfo.getSdkVersion();
    }

    public f a(String str, int i10) {
        f fVar = new f();
        String strReplaceAll = "Ve*rs*i*on*Se*rv*ic*e.A*pp*Bu*gR*ep*or*t".replaceAll("\\*", "");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(b.c.f34226a, str);
            jSONObject.put(b.c.f34227b, i10);
            g gVarA = a(strReplaceAll, jSONObject.toString(), true);
            if (gVarA.f34346b) {
                fVar.a(true);
                fVar.a(gVarA.f34347c);
                fVar.c(gVarA.f34348d);
            }
            return fVar;
        } catch (JSONException e10) {
            c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e10));
            com.heepay.plugin.c.d.a("---->1--AppBugReport", "---" + com.heepay.plugin.c.b.a(e10));
            fVar.a(true);
            fVar.a((Exception) e10);
            fVar.a("获取数据时出错");
            fVar.b(fVar.b() + ", 原因：" + e10.getMessage());
            return fVar;
        }
    }

    public f d() {
        f fVar = new f();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(DeviceInfo.TAG_VERSION, this.f34173m);
            g gVarA = a("VersionService.GetVersionInfo", jSONObject.toString(), false);
            if (gVarA.f34346b) {
                fVar.a(true);
                fVar.a(gVarA.f34347c);
                fVar.c(gVarA.f34348d);
                return fVar;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(gVarA.a());
                i iVar = new i();
                iVar.b(com.heepay.plugin.a.a.a(jSONObject2, b.d.f34234a, 0));
                iVar.a(com.heepay.plugin.a.a.a(jSONObject2, b.d.f34235b));
                iVar.b(com.heepay.plugin.a.a.a(jSONObject2, b.d.f34236c));
                iVar.a(com.heepay.plugin.c.a.a(jSONObject2, b.d.f34241h, 1));
                if (jSONObject2.has(b.c.f34227b)) {
                    com.heepay.plugin.domain.a aVar = new com.heepay.plugin.domain.a();
                    aVar.a(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f34227b), b.c.f34228c));
                    aVar.b(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f34227b), b.c.f34229d));
                    aVar.c(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f34227b), b.c.f34230e));
                    aVar.d(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f34227b), b.c.f34231f));
                    aVar.e(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f34227b), b.c.f34232g));
                    aVar.f(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f34227b), b.c.f34233h));
                    iVar.a(aVar);
                }
                if (jSONObject2.has(b.d.f34238e)) {
                    JSONArray jSONArray = jSONObject2.getJSONArray(b.d.f34238e);
                    ArrayList arrayList = new ArrayList();
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        com.heepay.plugin.domain.c cVar = new com.heepay.plugin.domain.c();
                        cVar.a(com.heepay.plugin.a.a.a(jSONArray.getJSONObject(i10), b.d.f34239f));
                        arrayList.add(cVar);
                    }
                    iVar.a(arrayList);
                }
                fVar.a(iVar);
                String strA = com.heepay.plugin.a.a.a(jSONObject2, b.d.f34237d);
                if (strA != null && strA.length() > 0) {
                    this.f34170j = strA;
                    PublicKey publicKeyC = com.heepay.plugin.a.d.c(strA);
                    this.f34171k = publicKeyC;
                    if (publicKeyC != null) {
                        c.b("WebService", "Received public key: " + this.f34170j);
                    }
                }
                return fVar;
            } catch (Exception e10) {
                c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e10));
                com.heepay.plugin.c.d.a("---->2--getVersionFromServer", "---" + com.heepay.plugin.c.b.a(e10));
                fVar.a(true);
                fVar.a(e10);
                fVar.a("获取数据时出错");
                fVar.b(fVar.b() + ", 原因：" + e10.getMessage());
                return fVar;
            }
        } catch (Exception e11) {
            c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e11));
            com.heepay.plugin.c.d.a("---->1--getVersionFromServer", "---" + com.heepay.plugin.c.b.a(e11));
            fVar.a(true);
            fVar.a(e11);
            fVar.a("获取数据时出错");
            fVar.b(fVar.b() + ", 原因：" + e11.getMessage());
            return fVar;
        }
    }

    public f a(String str, int i10, String str2, String str3) {
        f fVar = new f();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(b.C0633b.f34200a, str);
            jSONObject.put(b.C0633b.f34201b, i10);
            jSONObject.put(b.C0633b.f34203d, str2);
            jSONObject.put(b.C0633b.f34204e, str3);
            jSONObject.put(b.a.J, e.a().c());
            g gVarA = a("PayService.CheckPayTokenID", jSONObject.toString(), true);
            if (gVarA.f34346b) {
                if (!a(gVarA)) {
                    fVar.a(true);
                    fVar.a(gVarA.f34347c);
                    fVar.c(gVarA.f34348d);
                    return fVar;
                }
                gVarA = a("PayService.CheckPayTokenID", jSONObject.toString(), true);
                if (gVarA.f34346b) {
                    fVar.a(true);
                    fVar.a(gVarA.f34347c);
                    fVar.c(gVarA.f34348d);
                    return fVar;
                }
            }
            try {
                JSONObject jSONObject2 = new JSONObject(gVarA.a());
                h hVar = new h();
                hVar.a(com.heepay.plugin.c.a.a(jSONObject2, b.C0633b.f34206g));
                hVar.b(com.heepay.plugin.c.a.a(jSONObject2, b.C0633b.f34202c));
                hVar.c(com.heepay.plugin.c.a.a(jSONObject2, b.C0633b.f34210k));
                hVar.e(com.heepay.plugin.c.a.a(jSONObject2, b.C0633b.f34212m));
                hVar.d(com.heepay.plugin.c.a.a(jSONObject2, b.C0633b.f34213n));
                hVar.f(com.heepay.plugin.c.a.a(jSONObject2, b.C0633b.f34214o));
                fVar.a(hVar);
                return fVar;
            } catch (JSONException e10) {
                c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e10));
                com.heepay.plugin.c.d.a("---->2--CheckPayTokenID", "---" + com.heepay.plugin.c.b.a(e10));
                fVar.a(true);
                fVar.a((Exception) e10);
                fVar.a("获取数据时出错");
                fVar.b(fVar.b() + ", 原因：" + e10.getMessage());
                return fVar;
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
            c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e11));
            com.heepay.plugin.c.d.a("---->1--CheckPayTokenID", "---" + com.heepay.plugin.c.b.a(e11));
            fVar.a(true);
            fVar.a((Exception) e11);
            fVar.a("获取数据时出错");
            fVar.b(fVar.b() + ", 原因：" + e11.getMessage());
            return fVar;
        }
    }

    public f a(String str, int i10, String str2, String str3, String str4) {
        f fVar = new f();
        if (TextUtils.isEmpty(str)) {
            fVar.a(true);
            fVar.a("订单号出错");
            return fVar;
        }
        if (i10 == 0) {
            fVar.a(true);
            fVar.a("商家信息出错");
            return fVar;
        }
        try {
            JSONObject jSONObjectA = a(str, i10, str2);
            jSONObjectA.put(b.C0633b.f34206g, str3);
            jSONObjectA.put(b.C0633b.f34207h, str4);
            g gVarA = a("PayService.SubmitPay", jSONObjectA.toString(), true);
            if (gVarA.f34346b) {
                fVar.a(true);
                fVar.a(gVarA.f34347c);
                fVar.c(gVarA.f34348d);
                return fVar;
            }
            try {
                fVar.a(b(gVarA));
                return fVar;
            } catch (Exception e10) {
                c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e10));
                com.heepay.plugin.c.d.a("---->2--SubmitPay", "---" + com.heepay.plugin.c.b.a(e10));
                fVar.a(true);
                fVar.a(e10);
                fVar.a("获取数据时出错");
                fVar.b(fVar.b() + ", 原因：" + e10.getMessage());
                return fVar;
            }
        } catch (JSONException e11) {
            c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e11));
            com.heepay.plugin.c.d.a("---->1--SubmitPay", "---" + com.heepay.plugin.c.b.a(e11));
            fVar.a(true);
            fVar.a((Exception) e11);
            fVar.a("获取数据时出错");
            fVar.b(fVar.b() + ", 原因：" + e11.getMessage());
            return fVar;
        }
    }

    public f a(String str, int i10, String str2, boolean z10) {
        f fVar = new f();
        String strReplaceAll = "P*a*yS*er*vi*ce.Qu*ery*Pa*yS*ta*tu*s".replaceAll("\\*", "");
        try {
            JSONObject jSONObjectA = a(str, i10, str2);
            jSONObjectA.put(b.C0633b.B, z10);
            g gVarA = a(strReplaceAll, jSONObjectA.toString(), true);
            if (!gVarA.f34346b) {
                fVar.a(gVarA.f34358n);
                return fVar;
            }
            fVar.a(true);
            fVar.a(gVarA.f34347c);
            fVar.c(gVarA.f34348d);
            fVar.a(gVarA.f34358n);
            return fVar;
        } catch (JSONException e10) {
            c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e10));
            com.heepay.plugin.c.d.a("---->1--QueryPayStatus", "---" + com.heepay.plugin.c.b.a(e10));
            fVar.a(true);
            fVar.a((Exception) e10);
            fVar.a("获取数据时出错");
            fVar.b(fVar.b() + ", 原因：" + e10.getMessage());
            return fVar;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0047  */
    protected g a(String str, String str2, boolean z10) {
        String strReplaceAll;
        String strA;
        String str3;
        String strB = b();
        String str4 = this.f34167b;
        if (str4 == null || str4.isEmpty()) {
            if (this.f34287n) {
                switch (HPlugin.mPayInitInfo.getPayUrlType()) {
                    case 0:
                        strReplaceAll = "*h*t*t*p*s*:*/*/*p*a*y*.*h*e*e*_*p*a*y*.*c*o*m*/*P*h*o*n*e*/*S*D*K".replaceAll("\\*", "");
                        strA = com.heepay.plugin.c.a.a(strReplaceAll);
                        break;
                    case 1:
                        str3 = "*h*t*t*p*:*/*/*1*9*2*.*1*6*8*.*2*.*9*5*/*P*a*y*H*e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K";
                        strReplaceAll = str3.replaceAll("\\*", "");
                        strA = com.heepay.plugin.c.a.a(strReplaceAll);
                        break;
                    case 2:
                        str3 = "*h*t*t*p*:*/*/*2*1*1*.*1*0*3*.*1*5*7*.*4*5*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        strReplaceAll = str3.replaceAll("\\*", "");
                        strA = com.heepay.plugin.c.a.a(strReplaceAll);
                        break;
                    case 3:
                        str3 = "*h*t*t*p*:*/*/*1*1*5*.*1*8*2*.*3*8*.*1*3*6*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        strReplaceAll = str3.replaceAll("\\*", "");
                        strA = com.heepay.plugin.c.a.a(strReplaceAll);
                        break;
                    case 4:
                        str3 = "*h*t*t*p*:*/*/*2*1*1*.*1*0*3*.*1*7*1*.*1*6*3*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        strReplaceAll = str3.replaceAll("\\*", "");
                        strA = com.heepay.plugin.c.a.a(strReplaceAll);
                        break;
                    case 5:
                        str3 = "*h*t*t*p*:*/*/*2*1*1*.*1*0*3*.*1*7*1*.*1*8*5*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        strReplaceAll = str3.replaceAll("\\*", "");
                        strA = com.heepay.plugin.c.a.a(strReplaceAll);
                        break;
                    case 6:
                        str3 = "*h*t*t*p*:*/*/*2*1*1.*1*0*3*.*1*7*1*.*1*8*8*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        strReplaceAll = str3.replaceAll("\\*", "");
                        strA = com.heepay.plugin.c.a.a(strReplaceAll);
                        break;
                    case 7:
                        str3 = "*h*t*t*p*:*/*/*1*1*5*.*1*8*2*.*2*4*4*.*1*6*5*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        strReplaceAll = str3.replaceAll("\\*", "");
                        strA = com.heepay.plugin.c.a.a(strReplaceAll);
                        break;
                    case 8:
                        str3 = "*h*t*t*p*s*:*/*/*t*e*s*t*.*h*e*e*p*a*y*.*c*o*m*/*P*h*o*n*e*/*S*D*K";
                        strReplaceAll = str3.replaceAll("\\*", "");
                        strA = com.heepay.plugin.c.a.a(strReplaceAll);
                        break;
                    case 9:
                        str3 = "*h*t*t*p*s*:*/*/*P*a*y*F*o*r*Y*f*b*.*h*e*e*p*a*y*.*c*o*m*/*P*h*o*n*e*/*S*D*K*";
                        strReplaceAll = str3.replaceAll("\\*", "");
                        strA = com.heepay.plugin.c.a.a(strReplaceAll);
                        break;
                    default:
                        strA = "*h*t*t*p*:*/*/*c*.*s*u*p*.*8*0*0*j*.*c*o*m*/*P*h*o*n*e*/*S*D*K*".replaceAll("\\*", "");
                        break;
                }
            } else {
                strReplaceAll = "*h*t*t*p*s*:*/*/*p*a*y*.*h*e*e*_*p*a*y*.*c*o*m*/*P*h*o*n*e*/*S*D*K".replaceAll("\\*", "");
                strA = com.heepay.plugin.c.a.a(strReplaceAll);
            }
            this.f34167b = strA;
        }
        g gVarB = b(str, strB, str2, z10);
        if (gVarB == null) {
            gVarB = new g();
            gVarB.f34346b = true;
            gVarB.f34347c = "返回的对象为空";
        }
        c.a("GetDataFromServer", str + " return value: " + gVarB.toString());
        if (!gVarB.f34346b) {
            return gVarB;
        }
        if (gVarB.f34345a != null) {
            for (int i10 = 0; i10 < 3; i10++) {
                if (gVarB.f34345a != null) {
                    c.b("----重新请求", "" + i10);
                    gVarB = b(str, strB, str2, z10);
                }
            }
        }
        this.f34169i = "服务失败，原因：" + gVarB.b() + "";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("GetDataFromServer return error, ");
        sb2.append(this.f34169i);
        c.e("USaleWebService", sb2.toString());
        return gVarB;
    }

    @Override // com.heepay.plugin.a.a
    protected String a(String str, String str2, String str3, boolean z10) {
        e eVarA = e.a();
        String strC = eVarA.c();
        String strH = eVarA.h();
        String strE = e();
        String lowerCase = com.heepay.plugin.a.d.a(str + strE + net.lingala.zip4j.util.e.F0 + strC + net.lingala.zip4j.util.e.F0 + str3 + net.lingala.zip4j.util.e.F0 + strH + net.lingala.zip4j.util.e.F0 + str2).toLowerCase();
        if (z10) {
            str2 = a(this.f34171k, str2);
        }
        return new String(f34286q).replaceAll("@Service@", str).replaceAll("@phoneVer@", strE).replaceAll("@phoneID@", c(strC)).replaceAll("@phoneInfo@", c(strH)).replaceAll("@timestamp@", c(str3)).replaceAll("@param@", c(str2)).replaceAll("@sign@", c(lowerCase));
    }

    private JSONObject a(String str, int i10, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(b.C0633b.f34200a, str);
        jSONObject.put(b.C0633b.f34201b, i10);
        jSONObject.put(b.C0633b.f34203d, str2);
        return jSONObject;
    }

    @Override // com.heepay.plugin.a.a
    public boolean a(Context context) {
        super.a(context);
        this.f34288p++;
        e.a().b(context);
        return true;
    }

    private boolean a(g gVar) {
        String str = gVar.f34348d;
        if (str == null || str.length() <= 0 || Integer.valueOf(gVar.f34348d).intValue() != 100) {
            return false;
        }
        String str2 = gVar.f34357m;
        c.b("WebService", "public key data has error ");
        c.b("WebService", "Received public key data again: " + str2);
        if (str2 == null || str2.length() <= 0) {
            return false;
        }
        this.f34170j = str2;
        try {
            PublicKey publicKeyC = com.heepay.plugin.a.d.c(str2);
            this.f34171k = publicKeyC;
            if (publicKeyC == null) {
                return true;
            }
            c.b("WebService", "Received public key: " + this.f34170j);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
