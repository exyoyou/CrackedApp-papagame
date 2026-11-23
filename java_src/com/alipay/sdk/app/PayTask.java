package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.util.j;
import com.join.mgps.dto.Constant;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class PayTask {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final Object f7026g = com.alipay.sdk.util.f.class;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static ConcurrentHashMap<String, String> f7027h = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f7028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.alipay.sdk.widget.a f7029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7030c = "wappaygw.alipay.com/service/rest.htm";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7031d = "mclient.alipay.com/service/rest.htm";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7032e = "mclient.alipay.com/home/exterfaceAssign.htm";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, a> f7033f = new HashMap();

    public PayTask(Activity activity) {
        this.f7028a = activity;
        x.b bVarB = x.b.b();
        Activity activity2 = this.f7028a;
        com.alipay.sdk.data.c.a();
        bVarB.c(activity2);
        com.alipay.sdk.app.statistic.a.a(activity);
        this.f7029b = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.f7252e);
    }

    private com.alipay.sdk.util.f.a a() {
        return new g(this);
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str) || !str.contains("alipay_exterface_invoke_assign_sign")) {
            return str;
        }
        return str.replace("alipay_exterface_invoke_assign_sign=" + j.e("alipay_exterface_invoke_assign_sign=", x.a.f97576d, str), "").replace("sdk_start_time\\\":" + j.e("sdk_start_time\\\":", "\\\"", str), "");
    }

    private static String c(String str, String str2) {
        String str3 = str2 + "={";
        return str.substring(str.indexOf(str3) + str3.length(), str.lastIndexOf("}"));
    }

    private String d(w.a aVar) {
        String[] strArr = aVar.f97545c;
        Intent intent = new Intent(this.f7028a, (Class<?>) H5PayActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("url", strArr[0]);
        if (strArr.length == 2) {
            bundle.putString("cookie", strArr[1]);
        }
        intent.putExtras(bundle);
        this.f7028a.startActivity(intent);
        Object obj = f7026g;
        synchronized (obj) {
            try {
                obj.wait();
            } catch (InterruptedException unused) {
                return h.a();
            }
        }
        String str = h.f7050a;
        return TextUtils.isEmpty(str) ? h.a() : str;
    }

    private static boolean f(boolean z10, boolean z11, String str, StringBuilder sb2, Map<String, String> map, String... strArr) {
        String str2;
        int length = strArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                str2 = "";
                break;
            }
            String str3 = strArr[i10];
            if (!TextUtils.isEmpty(map.get(str3))) {
                str2 = map.get(str3);
                break;
            }
            i10++;
        }
        if (TextUtils.isEmpty(str2)) {
            return !z11;
        }
        if (!z10) {
            sb2.append(str);
            sb2.append("=\"");
            sb2.append(str2);
            sb2.append(x.a.f97579g);
            return true;
        }
        sb2.append(x.a.f97576d);
        sb2.append(str);
        sb2.append("=\"");
        sb2.append(str2);
        sb2.append(x.a.f97579g);
        return true;
    }

    private String g(String str) {
        String strReplace;
        if (TextUtils.isEmpty(str) || !str.contains("alipay_exterface_invoke_assign_sign")) {
            strReplace = str;
        } else {
            strReplace = str.replace("alipay_exterface_invoke_assign_sign=" + j.e("alipay_exterface_invoke_assign_sign=", x.a.f97576d, str), "").replace("sdk_start_time\\\":" + j.e("sdk_start_time\\\":", "\\\"", str), "");
        }
        String strA = new x.a(this.f7028a).a(str);
        synchronized (f7027h) {
            if (!TextUtils.isEmpty(f7027h.get(strReplace))) {
                i iVarA = i.a(i.DOUBLE_REQUEST.a());
                return h.b(iVarA.a(), iVarA.b(), "");
            }
            f7027h.put(strReplace, "true");
            if (strA.contains("paymethod=\"expressGateway\"")) {
                String strI = i(strA);
                f7027h.remove(strReplace);
                return strI;
            }
            if (!j.l(this.f7028a)) {
                String strI2 = i(strA);
                f7027h.remove(strReplace);
                return strI2;
            }
            com.alipay.sdk.util.f fVar = new com.alipay.sdk.util.f(this.f7028a, new g(this));
            String strC = fVar.c(strA);
            fVar.e();
            if (TextUtils.equals(strC, com.alipay.sdk.util.f.f7234h)) {
                String strI3 = i(strA);
                f7027h.remove(strReplace);
                return strI3;
            }
            if (!TextUtils.isEmpty(strC)) {
                f7027h.remove(strReplace);
                return strC;
            }
            String strA2 = h.a();
            f7027h.remove(strReplace);
            return strA2;
        }
    }

    private void h() {
        com.alipay.sdk.widget.a aVar = this.f7029b;
        if (aVar != null) {
            aVar.c();
        }
    }

    private String i(String str) {
        i iVarA;
        h();
        try {
            try {
                try {
                    List<w.a> listB = w.a.b(new com.alipay.sdk.packet.impl.d().b(this.f7028a, str).a().optJSONObject(u.c.f97427c).optJSONObject(u.c.f97428d));
                    for (int i10 = 0; i10 < listB.size(); i10++) {
                        if (listB.get(i10).f97543a == com.alipay.sdk.protocol.a.Update) {
                            String[] strArr = listB.get(i10).f97545c;
                            if (strArr.length == 3 && TextUtils.equals(u.b.f97417c, strArr[0])) {
                                Context context = x.b.b().f97590a;
                                y.b bVarA = y.b.a();
                                if (!TextUtils.isEmpty(strArr[1]) && !TextUtils.isEmpty(strArr[2])) {
                                    bVarA.f97669a = strArr[1];
                                    bVarA.f97670b = strArr[2];
                                    y.a aVar = new y.a(context);
                                    try {
                                        aVar.g(com.alipay.sdk.util.b.a(context).b(), com.alipay.sdk.util.b.a(context).e(), bVarA.f97669a, bVarA.f97670b);
                                    } catch (Exception unused) {
                                    } catch (Throwable th) {
                                        aVar.close();
                                        throw th;
                                    }
                                    aVar.close();
                                }
                            }
                        }
                    }
                    j();
                    for (int i11 = 0; i11 < listB.size(); i11++) {
                        if (listB.get(i11).f97543a == com.alipay.sdk.protocol.a.WapPay) {
                            String strD = d(listB.get(i11));
                            j();
                            return strD;
                        }
                    }
                } catch (IOException e10) {
                    i iVarA2 = i.a(i.NETWORK_ERROR.a());
                    com.alipay.sdk.app.statistic.a.e("net", e10);
                    j();
                    iVarA = iVarA2;
                }
            } catch (Throwable th2) {
                com.alipay.sdk.app.statistic.a.d(com.alipay.sdk.app.statistic.c.f7066l, com.alipay.sdk.app.statistic.c.f7071q, th2);
            }
            j();
            iVarA = null;
            if (iVarA == null) {
                iVarA = i.a(i.FAILED.a());
            }
            return h.b(iVarA.a(), iVarA.b(), "");
        } catch (Throwable th3) {
            j();
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        com.alipay.sdk.widget.a aVar = this.f7029b;
        if (aVar != null) {
            aVar.f();
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x005c A[Catch: all -> 0x02f6, TRY_LEAVE, TryCatch #0 {all -> 0x02f6, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x0021, B:14:0x009c, B:16:0x00b2, B:23:0x012d, B:25:0x0143, B:34:0x01b8, B:36:0x01c8, B:38:0x01d6, B:40:0x01f8, B:42:0x0228, B:52:0x025d, B:58:0x0298, B:45:0x0239, B:47:0x023f, B:49:0x024d, B:27:0x0159, B:29:0x0161, B:18:0x00c8, B:20:0x00ed, B:9:0x0037, B:11:0x005c), top: B:69:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x00c8 A[Catch: all -> 0x02f6, TryCatch #0 {all -> 0x02f6, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x0021, B:14:0x009c, B:16:0x00b2, B:23:0x012d, B:25:0x0143, B:34:0x01b8, B:36:0x01c8, B:38:0x01d6, B:40:0x01f8, B:42:0x0228, B:52:0x025d, B:58:0x0298, B:45:0x0239, B:47:0x023f, B:49:0x024d, B:27:0x0159, B:29:0x0161, B:18:0x00c8, B:20:0x00ed, B:9:0x0037, B:11:0x005c), top: B:69:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x00ed A[Catch: all -> 0x02f6, TRY_LEAVE, TryCatch #0 {all -> 0x02f6, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x0021, B:14:0x009c, B:16:0x00b2, B:23:0x012d, B:25:0x0143, B:34:0x01b8, B:36:0x01c8, B:38:0x01d6, B:40:0x01f8, B:42:0x0228, B:52:0x025d, B:58:0x0298, B:45:0x0239, B:47:0x023f, B:49:0x024d, B:27:0x0159, B:29:0x0161, B:18:0x00c8, B:20:0x00ed, B:9:0x0037, B:11:0x005c), top: B:69:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0159 A[Catch: all -> 0x02f6, TryCatch #0 {all -> 0x02f6, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x0021, B:14:0x009c, B:16:0x00b2, B:23:0x012d, B:25:0x0143, B:34:0x01b8, B:36:0x01c8, B:38:0x01d6, B:40:0x01f8, B:42:0x0228, B:52:0x025d, B:58:0x0298, B:45:0x0239, B:47:0x023f, B:49:0x024d, B:27:0x0159, B:29:0x0161, B:18:0x00c8, B:20:0x00ed, B:9:0x0037, B:11:0x005c), top: B:69:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0161 A[Catch: all -> 0x02f6, TRY_LEAVE, TryCatch #0 {all -> 0x02f6, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x0021, B:14:0x009c, B:16:0x00b2, B:23:0x012d, B:25:0x0143, B:34:0x01b8, B:36:0x01c8, B:38:0x01d6, B:40:0x01f8, B:42:0x0228, B:52:0x025d, B:58:0x0298, B:45:0x0239, B:47:0x023f, B:49:0x024d, B:27:0x0159, B:29:0x0161, B:18:0x00c8, B:20:0x00ed, B:9:0x0037, B:11:0x005c), top: B:69:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0186 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0037 A[Catch: all -> 0x02f6, TryCatch #0 {all -> 0x02f6, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x0021, B:14:0x009c, B:16:0x00b2, B:23:0x012d, B:25:0x0143, B:34:0x01b8, B:36:0x01c8, B:38:0x01d6, B:40:0x01f8, B:42:0x0228, B:52:0x025d, B:58:0x0298, B:45:0x0239, B:47:0x023f, B:49:0x024d, B:27:0x0159, B:29:0x0161, B:18:0x00c8, B:20:0x00ed, B:9:0x0037, B:11:0x005c), top: B:69:0x0001 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:11:0x005c, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:18:0x00c8, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x00ed, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:29:0x0161, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:9:0x0037, please report this as an issue */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public synchronized String fetchOrderInfoFromH5PayUrl(String str) {
        String strTrim;
        String strTrim2;
        try {
            if (!TextUtils.isEmpty(str)) {
                String strTrim3 = str.trim();
                if (strTrim3.startsWith("https://" + this.f7030c)) {
                    strTrim = strTrim3.replaceFirst("(http|https)://" + this.f7030c + "\\?", "").trim();
                    if (!TextUtils.isEmpty(strTrim)) {
                        return "_input_charset=\"utf-8\"&ordertoken=\"" + j.e("<request_token>", "</request_token>", j.g(strTrim).get("req_data")) + "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"" + new x.a(this.f7028a).b("sc", "h5tonative") + x.a.f97579g;
                    }
                } else {
                    if (strTrim3.startsWith("http://" + this.f7030c)) {
                        strTrim = strTrim3.replaceFirst("(http|https)://" + this.f7030c + "\\?", "").trim();
                        if (!TextUtils.isEmpty(strTrim)) {
                            return "_input_charset=\"utf-8\"&ordertoken=\"" + j.e("<request_token>", "</request_token>", j.g(strTrim).get("req_data")) + "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"" + new x.a(this.f7028a).b("sc", "h5tonative") + x.a.f97579g;
                        }
                    }
                }
                if (strTrim3.startsWith("https://" + this.f7031d)) {
                    strTrim2 = strTrim3.replaceFirst("(http|https)://" + this.f7031d + "\\?", "").trim();
                    if (!TextUtils.isEmpty(strTrim2)) {
                        return "_input_charset=\"utf-8\"&ordertoken=\"" + j.e("<request_token>", "</request_token>", j.g(strTrim2).get("req_data")) + "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"" + new x.a(this.f7028a).b("sc", "h5tonative") + x.a.f97579g;
                    }
                } else {
                    if (strTrim3.startsWith("http://" + this.f7031d)) {
                        strTrim2 = strTrim3.replaceFirst("(http|https)://" + this.f7031d + "\\?", "").trim();
                        if (!TextUtils.isEmpty(strTrim2)) {
                            return "_input_charset=\"utf-8\"&ordertoken=\"" + j.e("<request_token>", "</request_token>", j.g(strTrim2).get("req_data")) + "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"" + new x.a(this.f7028a).b("sc", "h5tonative") + x.a.f97579g;
                        }
                    }
                }
                if (!strTrim3.startsWith("https://" + this.f7032e)) {
                    if (strTrim3.startsWith("http://" + this.f7032e)) {
                        if (strTrim3.contains("alipay.wap.create.direct.pay.by.user")) {
                            if (!TextUtils.isEmpty(strTrim3.replaceFirst("(http|https)://" + this.f7032e + "\\?", "").trim())) {
                                try {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("url", str);
                                    jSONObject.put("bizcontext", new x.a(this.f7028a).b("sc", "h5tonative"));
                                    return "new_external_info==" + jSONObject.toString();
                                } catch (Throwable unused) {
                                }
                            }
                        }
                    }
                } else if (strTrim3.contains("alipay.wap.create.direct.pay.by.user")) {
                    if (!TextUtils.isEmpty(strTrim3.replaceFirst("(http|https)://" + this.f7032e + "\\?", "").trim())) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("url", str);
                        jSONObject2.put("bizcontext", new x.a(this.f7028a).b("sc", "h5tonative"));
                        return "new_external_info==" + jSONObject2.toString();
                    }
                }
                if (Pattern.compile("^(http|https)://(maliprod\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mali\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mclient\\.alipay\\.com\\/w\\/trade_pay\\.do.?)").matcher(str).find()) {
                    String strE = j.e("?", "", str);
                    if (!TextUtils.isEmpty(strE)) {
                        Map<String, String> mapG = j.g(strE);
                        StringBuilder sb2 = new StringBuilder();
                        byte b10 = 0;
                        if (f(false, true, com.alipay.sdk.app.statistic.c.f7080z, sb2, mapG, com.alipay.sdk.app.statistic.c.f7080z, "alipay_trade_no")) {
                            f(true, false, "pay_phase_id", sb2, mapG, "payPhaseId", "pay_phase_id", "out_relation_id");
                            sb2.append("&biz_sub_type=\"TRADE\"");
                            sb2.append("&biz_type=\"trade\"");
                            String str2 = mapG.get("app_name");
                            if (TextUtils.isEmpty(str2) && !TextUtils.isEmpty(mapG.get("cid"))) {
                                str2 = "ali1688";
                            } else if (TextUtils.isEmpty(str2) && (!TextUtils.isEmpty(mapG.get("sid")) || !TextUtils.isEmpty(mapG.get("s_id")))) {
                                str2 = "tb";
                            }
                            sb2.append("&app_name=\"" + str2 + x.a.f97579g);
                            if (!f(true, true, "extern_token", sb2, mapG, "extern_token", "cid", "sid", "s_id")) {
                                return "";
                            }
                            f(true, false, "appenv", sb2, mapG, "appenv");
                            sb2.append("&pay_channel_id=\"alipay_sdk\"");
                            a aVar = new a(this, b10);
                            aVar.f7034a = mapG.get(Constant.RETURN_URL);
                            aVar.f7035b = mapG.get("pay_order_id");
                            String str3 = sb2.toString() + "&bizcontext=\"" + new x.a(this.f7028a).b("sc", "h5tonative") + x.a.f97579g;
                            this.f7033f.put(str3, aVar);
                            return str3;
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        return "";
    }

    public String getVersion() {
        return "15.0.8";
    }

    public synchronized com.alipay.sdk.util.a h5Pay(String str, boolean z10) {
        com.alipay.sdk.util.a aVar = new com.alipay.sdk.util.a();
        try {
            str.trim();
            String[] strArrSplit = pay(str, z10).split(";");
            HashMap map = new HashMap();
            for (String str2 : strArrSplit) {
                String strSubstring = str2.substring(0, str2.indexOf("={"));
                String str3 = strSubstring + "={";
                map.put(strSubstring, str2.substring(str2.indexOf(str3) + str3.length(), str2.lastIndexOf("}")));
            }
            if (map.containsKey("resultStatus")) {
                aVar.c((String) map.get("resultStatus"));
            }
            if (map.containsKey("callBackUrl")) {
                aVar.d((String) map.get("callBackUrl"));
            } else if (map.containsKey("result")) {
                String str4 = (String) map.get("result");
                if (str4.length() > 15) {
                    a aVar2 = this.f7033f.get(str);
                    if (aVar2 != null) {
                        if (TextUtils.isEmpty(aVar2.f7035b)) {
                            aVar.d(aVar2.f7034a);
                        } else {
                            aVar.d(com.alipay.sdk.data.a.f().f7159b.replace("$OrderId$", aVar2.f7035b));
                        }
                        this.f7033f.remove(str);
                        return aVar;
                    }
                    String strE = j.e("&callBackUrl=\"", x.a.f97579g, str4);
                    if (TextUtils.isEmpty(strE)) {
                        strE = j.e("&call_back_url=\"", x.a.f97579g, str4);
                        if (TextUtils.isEmpty(strE)) {
                            strE = j.e("&return_url=\"", x.a.f97579g, str4);
                            if (TextUtils.isEmpty(strE)) {
                                strE = URLDecoder.decode(j.e("&return_url=", x.a.f97576d, str4), "utf-8");
                                if (TextUtils.isEmpty(strE)) {
                                    strE = URLDecoder.decode(j.e("&callBackUrl=", x.a.f97576d, str4), "utf-8");
                                }
                            }
                        }
                    }
                    if (TextUtils.isEmpty(strE)) {
                        strE = com.alipay.sdk.data.a.f().f7159b;
                    }
                    aVar.d(URLDecoder.decode(strE, "utf-8"));
                } else {
                    a aVar3 = this.f7033f.get(str);
                    if (aVar3 != null) {
                        aVar.d(aVar3.f7034a);
                        this.f7033f.remove(str);
                        return aVar;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return aVar;
    }

    public synchronized String pay(String str, boolean z10) {
        String strG;
        Activity activity;
        if (z10) {
            h();
            strG = "";
            try {
                strG = g(str);
                com.alipay.sdk.data.a.f().b(this.f7028a);
                j();
                activity = this.f7028a;
            } catch (Throwable unused) {
                com.alipay.sdk.data.a.f().b(this.f7028a);
                j();
                activity = this.f7028a;
            }
            com.alipay.sdk.app.statistic.a.b(activity, str);
        } else {
            strG = "";
            strG = g(str);
            com.alipay.sdk.data.a.f().b(this.f7028a);
            j();
            activity = this.f7028a;
            com.alipay.sdk.app.statistic.a.b(activity, str);
        }
        throw th;
        return strG;
    }

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f7034a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f7035b;

        private a() {
            this.f7034a = "";
            this.f7035b = "";
        }

        private String a() {
            return this.f7034a;
        }

        private void b(String str) {
            this.f7034a = str;
        }

        private String c() {
            return this.f7035b;
        }

        private void d(String str) {
            this.f7035b = str;
        }

        /* synthetic */ a(PayTask payTask, byte b10) {
            this();
        }
    }
}
