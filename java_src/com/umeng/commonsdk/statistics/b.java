package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.coremedia.iso.boxes.k1;
import com.sdk.base.framework.utils.log.LogFile;
import com.umeng.analytics.pro.bm;
import com.umeng.analytics.pro.ce;
import com.umeng.analytics.pro.f;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.stateless.d;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f85323a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f85324b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f85325c = "EnvelopeManager";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f85326d = "debug.umeng.umTaskId";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f85327e = "debug.umeng.umCaseId";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f85328f = "empty";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f85329g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f85330h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f85331i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Map<String, String> f85332j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f85333l;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f85334k = 0;

    static {
        HashMap map = new HashMap();
        f85332j = map;
        map.put("header", "#h");
        f85332j.put(bm.f84418u, "#sdt");
        f85332j.put(bm.Q, "#ac");
        f85332j.put("device_model", "#dm");
        f85332j.put(bm.f84404g, "#umid");
        f85332j.put(bm.f84421x, bm.f84421x);
        f85332j.put("language", "#lang");
        f85332j.put(bm.ai, "#dt");
        f85332j.put(bm.f84423z, "#rl");
        f85332j.put(bm.H, "#dmf");
        f85332j.put("device_name", "#dn");
        f85332j.put("platform_version", "#pv");
        f85332j.put("font_size_setting", "#fss");
        f85332j.put(bm.f84422y, "#ov");
        f85332j.put(bm.I, "#did");
        f85332j.put("platform_sdk_version", "#psv");
        f85332j.put(bm.F, "#db");
        f85332j.put("appkey", "#ak");
        f85332j.put(bm.Y, "#itr");
        f85332j.put("id_type", "#it");
        f85332j.put(k1.f24950p, "#ud");
        f85332j.put("device_id", "#dd");
        f85332j.put(bm.X, "#imp");
        f85332j.put("sdk_version", "#sv");
        f85332j.put("st", "#st");
        f85332j.put("analytics", "#a");
        f85332j.put("package_name", "#pkg");
        f85332j.put(bm.f84413p, "#sig");
        f85332j.put(bm.f84414q, "#sis1");
        f85332j.put(bm.f84415r, "#sis");
        f85332j.put("app_version", "#av");
        f85332j.put("version_code", "#vc");
        f85332j.put(bm.f84419v, "#imd");
        f85332j.put(bm.B, "#mnc");
        f85332j.put(bm.E, "#boa");
        f85332j.put(bm.G, "#mant");
        f85332j.put(bm.M, "#tz");
        f85332j.put(bm.O, "#ct");
        f85332j.put(bm.P, "#car");
        f85332j.put(bm.f84416s, "#disn");
        f85332j.put(bm.T, "#nt");
        f85332j.put(bm.f84395b, "#cv");
        f85332j.put(bm.f84401d, "#mv");
        f85332j.put(bm.f84400c, "#cot");
        f85332j.put(bm.f84402e, "#mod");
        f85332j.put(bm.aj, "#al");
        f85332j.put("session_id", "#sid");
        f85332j.put(bm.S, "#ip");
        f85332j.put(bm.U, "#sre");
        f85332j.put(bm.V, "#fre");
        f85332j.put(bm.W, "#ret");
        f85332j.put("channel", "#chn");
        f85332j.put("wrapper_type", "#wt");
        f85332j.put("wrapper_version", "#wv");
        f85332j.put(bm.aZ, "#tsv");
        f85332j.put(bm.f84396ba, "#rps");
        f85332j.put(bm.bf, "#mov");
        f85332j.put(f.f84658i, "#vt");
        f85332j.put("secret", "#sec");
        f85332j.put(f.an, "#prv");
        f85332j.put(f.f84661l, "#$prv");
        f85332j.put(f.f84662m, "#uda");
        f85332j.put(bm.f84390a, "#tok");
        f85332j.put(bm.aR, "#iv");
        f85332j.put(bm.R, "#ast");
        f85332j.put("backstate", "#bst");
        f85332j.put("zdata_ver", "#zv");
        f85332j.put("zdata_req_ts", "#zrt");
        f85332j.put("app_b_v", "#bv");
        f85332j.put("zdata", "#zta");
        f85332j.put(bm.ap, "#mt");
        f85332j.put(bm.am, "#zsv");
        f85332j.put("others_OS", "#oos");
    }

    public static String a(String str) {
        return f85332j.containsKey(str) ? f85332j.get(str) : str;
    }

    private static boolean b() {
        f85329g = UMUtils.getSystemProperty(f85326d, "");
        f85330h = UMUtils.getSystemProperty(f85327e, "");
        return (!TextUtils.isEmpty(f85329g) && !f85328f.equals(f85329g)) && (!TextUtils.isEmpty(f85330h) && !f85328f.equals(f85330h));
    }

    public static void a() {
        if (f85331i != null) {
            f85331i = null;
            com.umeng.commonsdk.statistics.idtracking.f.a();
        }
    }

    public JSONObject b(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) {
        Envelope envelopeA;
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(a("header"), new JSONObject());
            try {
                if (b()) {
                    jSONObject.put("umTaskId", f85329g);
                    jSONObject.put("umCaseId", f85330h);
                }
            } catch (Throwable unused) {
            }
            if (jSONObject != null) {
                jSONObject3 = a(jSONObject3, jSONObject);
            }
            if (jSONObject3 != null && jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (next != null && (next instanceof String)) {
                        String str2 = next;
                        if (jSONObject2.opt(str2) != null) {
                            try {
                                jSONObject3.put(str2, jSONObject2.opt(str2));
                            } catch (Exception unused2) {
                            }
                        }
                    }
                }
            }
            if (jSONObject3 != null && DataHelper.largeThanMaxSize(jSONObject3.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                }
                return a(113, jSONObject3);
            }
            if (jSONObject3 != null) {
                envelopeA = a(context, jSONObject3.toString().getBytes());
                if (envelopeA == null) {
                    return a(111, jSONObject3);
                }
            } else {
                envelopeA = null;
            }
            Envelope envelope = envelopeA;
            if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                return a(114, jSONObject3);
            }
            int iA = a(context, envelope, "z==1.2.0", DeviceConfig.getAppVersionName(context), str);
            if (iA != 0) {
                return a(iA, jSONObject3);
            }
            if (ULog.DEBUG) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("constructHeader size is ");
                sb2.append(jSONObject3.toString().getBytes().length);
            }
            return jSONObject3;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
            return a(110, new JSONObject());
        }
    }

    public static long a(Context context) {
        long j10 = DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX - DataHelper.ENVELOPE_EXTRA_LENGTH;
        if (ULog.DEBUG) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("free size is ");
            sb2.append(j10);
        }
        return j10;
    }

    private JSONObject a(int i10, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                jSONObject.put("exception", i10);
            } catch (Exception unused) {
            }
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("exception", i10);
        } catch (Exception unused2) {
        }
        return jSONObject2;
    }

    public JSONObject a(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str, String str2, String str3) {
        String str4;
        Envelope envelope;
        JSONObject jSONObjectOptJSONObject;
        if (ULog.DEBUG && jSONObject != null && jSONObject2 != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("headerJSONObject size is ");
            sb2.append(jSONObject.toString().getBytes().length);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("bodyJSONObject size is ");
            sb3.append(jSONObject2.toString().getBytes().length);
        }
        JSONObject jSONObject3 = null;
        if (context != null && jSONObject2 != null) {
            try {
                JSONObject jSONObjectA = a(context, str2, jSONObject2.has("analytics") && (jSONObjectOptJSONObject = jSONObject2.optJSONObject("analytics")) != null && jSONObjectOptJSONObject.has(f.f84663n));
                if (jSONObjectA != null && jSONObject != null) {
                    jSONObjectA = a(jSONObjectA, jSONObject);
                }
                JSONObject jSONObject4 = jSONObjectA;
                if (jSONObject4 != null) {
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        if (next != null && (next instanceof String)) {
                            String str5 = next;
                            if (jSONObject2.opt(str5) != null) {
                                try {
                                    jSONObject4.put(a(str5), jSONObject2.opt(str5));
                                } catch (Exception unused) {
                                }
                            }
                        }
                    }
                }
                if (TextUtils.isEmpty(str2)) {
                    str2 = "u";
                }
                String str6 = TextUtils.isEmpty(str3) ? "1.0.0" : str3;
                if (jSONObject4 != null) {
                    String strSubstring = str2 + "==" + str6 + "&=";
                    if (TextUtils.isEmpty(strSubstring)) {
                        return a(101, jSONObject4);
                    }
                    if (strSubstring.endsWith("&=")) {
                        strSubstring = strSubstring.substring(0, strSubstring.length() - 2);
                    }
                    str4 = strSubstring;
                } else {
                    str4 = null;
                }
                if (jSONObject4 != null) {
                    try {
                        com.umeng.commonsdk.statistics.idtracking.f fVarA = com.umeng.commonsdk.statistics.idtracking.f.a(context);
                        if (fVarA != null) {
                            fVarA.b();
                            String strEncodeToString = Base64.encodeToString(new ce().a(fVarA.c()), 0);
                            if (!TextUtils.isEmpty(strEncodeToString)) {
                                JSONObject jSONObject5 = jSONObject4.getJSONObject(a("header"));
                                jSONObject5.put(a(bm.Y), strEncodeToString);
                                jSONObject4.put(a("header"), jSONObject5);
                            }
                        }
                    } catch (Exception unused2) {
                    }
                }
                if (jSONObject4 != null && DataHelper.largeThanMaxSize(jSONObject4.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                    SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                    }
                    return a(113, jSONObject4);
                }
                if (jSONObject4 != null) {
                    Envelope envelopeA = a(context, jSONObject4.toString().getBytes());
                    if (envelopeA == null) {
                        return a(111, jSONObject4);
                    }
                    envelope = envelopeA;
                } else {
                    envelope = null;
                }
                if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                    return a(114, jSONObject4);
                }
                int iA = a(context, envelope, str4, jSONObject4 != null ? jSONObject4.optJSONObject(a("header")).optString(a("app_version")) : null, str);
                if (iA != 0) {
                    return a(iA, jSONObject4);
                }
                if (ULog.DEBUG) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("constructHeader size is ");
                    sb4.append(jSONObject4.toString().getBytes().length);
                }
                if (!str4.startsWith(bm.aH) && !str4.startsWith("i") && !str4.startsWith(bm.aM) && !str4.startsWith("a") && !com.umeng.commonsdk.stateless.b.a()) {
                    new com.umeng.commonsdk.stateless.b(context);
                    com.umeng.commonsdk.stateless.b.b();
                }
                return jSONObject4;
            } catch (Throwable th) {
                UMCrashManager.reportCrash(context, th);
                if (jSONObject != null) {
                    try {
                        JSONObject jSONObject6 = new JSONObject();
                        try {
                            jSONObject6.put("header", jSONObject);
                        } catch (JSONException unused3) {
                        } catch (Exception e10) {
                            e = e10;
                            jSONObject3 = jSONObject6;
                            UMCrashManager.reportCrash(context, e);
                            return a(110, jSONObject3);
                        }
                        jSONObject3 = jSONObject6;
                    } catch (Exception e11) {
                        e = e11;
                    }
                }
                if (jSONObject3 == null) {
                    jSONObject3 = new JSONObject();
                }
                Iterator<String> itKeys2 = jSONObject2.keys();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    if (next2 != null && (next2 instanceof String)) {
                        String str7 = next2;
                        if (jSONObject2.opt(str7) != null) {
                            try {
                                jSONObject3.put(str7, jSONObject2.opt(str7));
                            } catch (Exception unused4) {
                            }
                        }
                    }
                }
                return a(110, jSONObject3);
            }
        }
        return a(110, (JSONObject) null);
    }

    private static int[] b(Context context) {
        int[] iArr = new int[3];
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(com.umeng.commonsdk.internal.c.f85225a, 0);
            if (sharedPreferences != null) {
                iArr[0] = sharedPreferences.getInt(com.umeng.commonsdk.internal.c.f85226b, 0);
                iArr[1] = sharedPreferences.getInt(com.umeng.commonsdk.internal.c.f85227c, 0);
                iArr[2] = sharedPreferences.getInt("policyGrantResult", 0);
            }
        } catch (Throwable unused) {
        }
        return iArr;
    }

    public JSONObject a(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) {
        Envelope envelopeA;
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(a("header"), new JSONObject());
            if (jSONObject != null) {
                jSONObject3 = a(jSONObject3, jSONObject);
            }
            if (jSONObject3 != null && jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (next != null && (next instanceof String)) {
                        String str2 = next;
                        if (jSONObject2.opt(str2) != null) {
                            try {
                                jSONObject3.put(str2, jSONObject2.opt(str2));
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            if (jSONObject3 != null && DataHelper.largeThanMaxSize(jSONObject3.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                }
                return a(113, jSONObject3);
            }
            if (jSONObject3 != null) {
                envelopeA = a(context, jSONObject3.toString().getBytes());
                if (envelopeA == null) {
                    return a(111, jSONObject3);
                }
            } else {
                envelopeA = null;
            }
            Envelope envelope = envelopeA;
            if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                return a(114, jSONObject3);
            }
            int iA = a(context, envelope, "h==1.2.0", "", str);
            if (iA != 0) {
                return a(iA, jSONObject3);
            }
            if (ULog.DEBUG) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("constructHeader size is ");
                sb2.append(jSONObject3.toString().getBytes().length);
            }
            return jSONObject3;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
            return a(110, new JSONObject());
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:150:0x0413
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    private static org.json.JSONObject a(android.content.Context r17, java.lang.String r18, boolean r19) {
        /*
            Method dump skipped, instruction units count: 1328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.b.a(android.content.Context, java.lang.String, boolean):org.json.JSONObject");
    }

    private JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject != null && jSONObject2 != null && jSONObject.opt(a("header")) != null && (jSONObject.opt(a("header")) instanceof JSONObject)) {
            JSONObject jSONObject3 = (JSONObject) jSONObject.opt(a("header"));
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && (next instanceof String)) {
                    String str = next;
                    if (jSONObject2.opt(str) != null) {
                        try {
                            jSONObject3.put(str, jSONObject2.opt(str));
                            if (str.equals(a(f.f84658i)) && (jSONObject2.opt(str) instanceof Integer)) {
                                this.f85334k = ((Integer) jSONObject2.opt(str)).intValue();
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        return jSONObject;
    }

    private Envelope a(Context context, byte[] bArr) {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(context, "codex", null);
        int iIntValue = -1;
        try {
            if (!TextUtils.isEmpty(strImprintProperty)) {
                iIntValue = Integer.valueOf(strImprintProperty).intValue();
            }
        } catch (NumberFormatException e10) {
            UMCrashManager.reportCrash(context, e10);
        }
        if (iIntValue == 0) {
            return Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        if (iIntValue == 1) {
            return Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        if (f85333l) {
            return Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        return Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
    }

    private int a(Context context, Envelope envelope, String str, String str2, String str3) {
        if (context == null || envelope == null || TextUtils.isEmpty(str)) {
            return 101;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = DeviceConfig.getAppVersionName(context);
        }
        String strB = d.b(str3);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("&&");
        sb2.append(str2);
        sb2.append("_");
        sb2.append(System.currentTimeMillis());
        sb2.append("_");
        sb2.append(strB);
        sb2.append(LogFile.LOG_SUFFIX);
        byte[] binary = envelope.toBinary();
        if (com.umeng.commonsdk.utils.c.a()) {
            if (str.startsWith("h")) {
                return UMFrUtils.saveEnvelopeFile(context, sb2.toString(), binary);
            }
            return 122;
        }
        if (str.startsWith("h")) {
            return 122;
        }
        if (!str.startsWith(bm.aH) && !str.startsWith("i") && !str.startsWith("a") && !str.startsWith(bm.aM)) {
            return d.a(context, com.umeng.commonsdk.stateless.a.f85295f, sb2.toString(), binary);
        }
        return UMFrUtils.saveEnvelopeFile(context, sb2.toString(), binary);
    }

    public static void a(boolean z10) {
        f85333l = z10;
    }
}
