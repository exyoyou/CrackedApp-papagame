package com.umeng.ccg;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.ab;
import com.umeng.analytics.pro.ac;
import com.umeng.analytics.pro.ad;
import com.umeng.analytics.pro.ae;
import com.umeng.analytics.pro.af;
import com.umeng.analytics.pro.ag;
import com.umeng.analytics.pro.ah;
import com.umeng.analytics.pro.aj;
import com.umeng.analytics.pro.al;
import com.umeng.analytics.pro.an;
import com.umeng.analytics.pro.ap;
import com.umeng.analytics.pro.aq;
import com.umeng.analytics.pro.ar;
import com.umeng.analytics.pro.at;
import com.umeng.analytics.pro.au;
import com.umeng.analytics.pro.av;
import com.umeng.analytics.pro.aw;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class d implements com.umeng.ccg.c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85020a = "iucc";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f85021b = aw.b().b(aw.C);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static JSONObject f85022c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f85023d = {"screen_on", com.umeng.ccg.a.f84980g, com.umeng.ccg.a.f84981h};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ArrayList<ac> f85024e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ArrayList<ac> f85025f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ArrayList<ac> f85026g = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static c f85027j = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile String f85028h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<String, a> f85029i = new HashMap();

    public class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private JSONArray f85032b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f85033c;

        public a(JSONArray jSONArray, String str) {
            this.f85032b = jSONArray;
            this.f85033c = str;
        }

        public JSONArray a() {
            return this.f85032b;
        }

        public String b() {
            return this.f85033c;
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d f85034a = new d();

        private b() {
        }
    }

    public static class c extends BroadcastReceiver {
        public long a(ArrayList<ac> arrayList) {
            if (arrayList != null && arrayList.size() > 0) {
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    ac acVar = arrayList.get(i10);
                    if (acVar instanceof ae) {
                        return ((ae) acVar).c();
                    }
                }
            }
            return 0L;
        }

        public boolean b(ArrayList<ac> arrayList) {
            if (arrayList == null || arrayList.size() <= 0) {
                return false;
            }
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                if (arrayList.get(i10).b()) {
                    return false;
                }
            }
            return true;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                if (TextUtils.isEmpty(action)) {
                    return;
                }
                if (action.equals("android.intent.action.SCREEN_ON")) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "recv intent : ACTION_SCREEN_ON");
                    if (b(d.f85024e)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "report screen_on event.");
                        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 301, d.a(), null, a(d.f85024e) * 1000);
                    } else {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "don't report screen_on event.");
                    }
                }
                if (action.equals("android.intent.action.SCREEN_OFF")) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "recv intent : ACTION_SCREEN_OFF");
                    if (b(d.f85025f)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "report screen_off event.");
                        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 302, d.a(), null, a(d.f85025f) * 1000);
                    } else {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "don't report screen_off event.");
                    }
                }
                if (action.equals("android.intent.action.USER_PRESENT")) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "recv intent : ACTION_USER_PRESENT");
                    if (!b(d.f85026g)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "don't report screen_unlock event.");
                        return;
                    }
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "report screen_unlock event.");
                    com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 303, d.a(), null, a(d.f85026g) * 1000);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(Context context, String str) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(str);
        context.registerReceiver(f85027j, intentFilter);
    }

    private String e(Context context) {
        try {
            SharedPreferences sharedPreferencesA = at.a(context);
            return sharedPreferencesA != null ? sharedPreferencesA.getString(at.f84312e, "") : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private void f() {
        try {
            SharedPreferences sharedPreferencesA = at.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA != null) {
                sharedPreferencesA.edit().putString(at.f84313f, new JSONObject(ar.a()).toString()).commit();
            }
        } catch (Throwable unused) {
        }
    }

    private boolean g() {
        try {
            SharedPreferences sharedPreferencesA = at.a(UMGlobalContext.getAppContext());
            return (sharedPreferencesA == null || TextUtils.isEmpty(sharedPreferencesA.getString(at.f84314g, ""))) ? false : true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private long b(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.has("ts")) {
            try {
                return jSONObject.optLong("ts");
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    private void c(Context context) {
        ImprintHandler.getImprintService(context).registImprintCallback(f85020a, new UMImprintChangeCallback() { // from class: com.umeng.ccg.d.1
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
            public void onImprintValueChanged(String str, String str2) {
                com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 107, d.a(), str2);
            }
        });
    }

    private Long d(Context context) {
        try {
            SharedPreferences sharedPreferencesA = at.a(context);
            if (sharedPreferencesA != null) {
                return Long.valueOf(sharedPreferencesA.getLong(at.f84311d, 0L));
            }
            return 0L;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    private void c(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has(com.umeng.ccg.a.f84974a)) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(com.umeng.ccg.a.f84974a);
            ab abVarA = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f84975b) ? a(com.umeng.ccg.a.f84975b, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f84975b)) : null;
            ab abVarA2 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f84976c) ? a(com.umeng.ccg.a.f84976c, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f84976c)) : null;
            ab abVarA3 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f84977d) ? a(com.umeng.ccg.a.f84977d, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f84977d)) : null;
            ab abVarA4 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f84978e) ? a(com.umeng.ccg.a.f84978e, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f84978e)) : null;
            ab abVarA5 = jSONObjectOptJSONObject.has("screen_on") ? a("screen_on", jSONObjectOptJSONObject.optJSONObject("screen_on")) : null;
            ab abVarA6 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f84980g) ? a(com.umeng.ccg.a.f84980g, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f84980g)) : null;
            ab abVarA7 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f84981h) ? a(com.umeng.ccg.a.f84981h, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f84981h)) : null;
            ArrayList arrayList = new ArrayList();
            if (abVarA != null) {
                arrayList.add(abVarA);
            }
            if (abVarA2 != null) {
                arrayList.add(abVarA2);
            }
            if (abVarA3 != null) {
                arrayList.add(abVarA3);
            }
            if (abVarA4 != null) {
                arrayList.add(abVarA4);
            }
            if (abVarA5 != null) {
                arrayList.add(abVarA5);
            }
            if (abVarA6 != null) {
                arrayList.add(abVarA6);
            }
            if (abVarA7 != null) {
                arrayList.add(abVarA7);
            }
            com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 202, a(), arrayList);
        } catch (Throwable unused) {
        }
    }

    private boolean e() {
        SharedPreferences sharedPreferencesA = at.a(UMGlobalContext.getAppContext());
        if (sharedPreferencesA != null) {
            String string = sharedPreferencesA.getString(at.f84313f, "");
            if (TextUtils.isEmpty(string)) {
                f();
                return false;
            }
            try {
                if (!ar.a().keySet().equals(ar.a(new JSONObject(string)).keySet())) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static d a() {
        return b.f85034a;
    }

    private JSONObject b(Context context) {
        FileInputStream fileInputStreamOpenFileInput;
        try {
            File filesDir = context.getFilesDir();
            String str = f85021b;
            if (!new File(filesDir, str).exists()) {
                return null;
            }
            try {
                fileInputStreamOpenFileInput = context.openFileInput(str);
                try {
                    JSONObject jSONObject = new JSONObject(new String(av.a(HelperUtils.readStreamToByteArray(fileInputStreamOpenFileInput), UMConfigure.sAppkey.getBytes())));
                    try {
                        ar.a(fileInputStreamOpenFileInput);
                    } catch (Throwable unused) {
                    }
                    return jSONObject;
                } catch (Throwable unused2) {
                    ar.a(fileInputStreamOpenFileInput);
                    return null;
                }
            } catch (Throwable unused3) {
                fileInputStreamOpenFileInput = null;
            }
        } catch (Throwable unused4) {
            return null;
        }
    }

    public void a(Context context) {
        com.umeng.ccg.c.a(context, 105, a(), null);
    }

    private boolean a(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("code")) {
            return false;
        }
        try {
            return 200 == Integer.valueOf(jSONObject.optInt("code")).intValue() && jSONObject.has(com.umeng.ccg.a.f84974a) && jSONObject.has("ts");
        } catch (Throwable unused) {
            return false;
        }
    }

    private void a(Context context, JSONObject jSONObject, String str) {
        try {
            long jB = b(jSONObject);
            byte[] bArrA = av.a(jSONObject.toString().getBytes(), UMConfigure.sAppkey.getBytes());
            if (bArrA != null && bArrA.length > 1) {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(context.getFilesDir(), f85021b));
                try {
                    fileOutputStream.write(bArrA);
                    fileOutputStream.flush();
                    ar.a(fileOutputStream);
                    a(context, str, jB);
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "saveConfigFile success.");
                } catch (Throwable th) {
                    ar.a(fileOutputStream);
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void b(String str) {
        String str2 = at.f84309b + str;
        SharedPreferences sharedPreferencesA = at.a(UMGlobalContext.getAppContext());
        if (sharedPreferencesA != null) {
            sharedPreferencesA.edit().putLong(str2, System.currentTimeMillis()).commit();
        }
    }

    private void a(String str, ac acVar) {
        if ("screen_on".equalsIgnoreCase(str)) {
            if (f85024e == null) {
                f85024e = new ArrayList<>();
            }
            f85024e.add(acVar);
        }
        if (com.umeng.ccg.a.f84980g.equalsIgnoreCase(str)) {
            if (f85025f == null) {
                f85025f = new ArrayList<>();
            }
            f85025f.add(acVar);
        }
        if (com.umeng.ccg.a.f84981h.equalsIgnoreCase(str)) {
            if (f85026g == null) {
                f85026g = new ArrayList<>();
            }
            f85026g.add(acVar);
        }
    }

    private ab a(String str, JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        String str2;
        ab abVar;
        JSONArray jSONArrayOptJSONArray2;
        String str3 = "sdk";
        if (jSONObject != null) {
            try {
                if (jSONObject.has(com.umeng.ccg.a.f84982i) && (jSONArrayOptJSONArray = jSONObject.optJSONArray(com.umeng.ccg.a.f84982i)) != null && jSONArrayOptJSONArray.length() > 0) {
                    JSONObject jSONObject2 = (JSONObject) jSONArrayOptJSONArray.get(0);
                    boolean zHas = jSONObject2.has(com.umeng.ccg.a.f84983j);
                    boolean zHas2 = jSONObject2.has(com.umeng.ccg.a.f84986m);
                    boolean zHas3 = jSONObject2.has(com.umeng.ccg.a.f84987n);
                    if (!zHas || !zHas2 || !zHas3) {
                        return null;
                    }
                    try {
                        int iOptInt = jSONObject2.optInt(com.umeng.ccg.a.f84983j);
                        long jOptLong = jSONObject2.optLong(com.umeng.ccg.a.f84986m);
                        long jOptLong2 = jSONObject2.optLong(com.umeng.ccg.a.f84987n);
                        String strOptString = jSONObject2.optString(com.umeng.ccg.a.f84988o);
                        ArrayList arrayList = new ArrayList();
                        if (jSONObject2.has(com.umeng.ccg.a.f84984k)) {
                            JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray(com.umeng.ccg.a.f84984k);
                            str2 = "action";
                            HashSet hashSet = new HashSet();
                            if (jSONArrayOptJSONArray3 != null) {
                                int i10 = 0;
                                for (int length = jSONArrayOptJSONArray3.length(); i10 < length; length = length) {
                                    hashSet.add(Integer.valueOf(jSONArrayOptJSONArray3.getInt(i10)));
                                    i10++;
                                }
                            }
                            if (hashSet.size() > 0) {
                                al alVar = new al(hashSet);
                                if (Arrays.asList(f85023d).contains(str)) {
                                    a(str, alVar);
                                } else {
                                    arrayList.add(alVar);
                                }
                            }
                        } else {
                            str2 = "action";
                            str3 = "sdk";
                        }
                        if (jSONObject2.has(com.umeng.ccg.a.f84985l)) {
                            String strOptString2 = jSONObject2.optString(com.umeng.ccg.a.f84985l);
                            if (!TextUtils.isEmpty(strOptString2)) {
                                aj ajVar = new aj(strOptString2);
                                HashSet hashSet2 = new HashSet();
                                for (int i11 = 1; i11 <= 24; i11++) {
                                    if (ajVar.a(i11)) {
                                        hashSet2.add(Integer.valueOf(i11));
                                    }
                                }
                                if (hashSet2.size() > 0) {
                                    af afVar = new af(hashSet2);
                                    if (Arrays.asList(f85023d).contains(str)) {
                                        a(str, afVar);
                                    } else {
                                        arrayList.add(afVar);
                                    }
                                }
                            }
                        }
                        arrayList.add(new ah(iOptInt));
                        ag agVar = new ag(str, jOptLong);
                        String[] strArr = f85023d;
                        if (Arrays.asList(strArr).contains(str)) {
                            a(str, agVar);
                        } else {
                            arrayList.add(agVar);
                        }
                        ae aeVar = new ae(jOptLong2);
                        if (Arrays.asList(strArr).contains(str)) {
                            a(str, aeVar);
                            arrayList.add(aeVar);
                        } else {
                            arrayList.add(aeVar);
                        }
                        if (com.umeng.ccg.a.f84978e.equals(str)) {
                            abVar = new ad(str, arrayList);
                        } else {
                            abVar = new ab(str, arrayList);
                        }
                        try {
                            abVar.a(strOptString);
                            String str4 = "";
                            String str5 = str3;
                            if (jSONObject.has(str5) && (jSONArrayOptJSONArray2 = jSONObject.optJSONArray(str5)) != null) {
                                Map<String, a> map = this.f85029i;
                                if (map != null && !map.containsKey(str)) {
                                    this.f85029i.put(str, new a(new JSONArray(jSONArrayOptJSONArray2.toString()), strOptString));
                                }
                                int length2 = jSONArrayOptJSONArray2.length();
                                for (int i12 = 0; i12 < jSONArrayOptJSONArray2.length(); i12++) {
                                    str4 = str4 + jSONArrayOptJSONArray2.getString(i12);
                                    if (i12 < length2 - 1) {
                                        str4 = str4 + ",";
                                    }
                                }
                            }
                            abVar.b(str4);
                            if (com.umeng.ccg.a.f84978e.equals(str) && (abVar instanceof ad)) {
                                String str6 = str2;
                                if (jSONObject2.has(str6)) {
                                    ((ad) abVar).d(jSONObject2.optString(str6));
                                }
                                if (jSONObject2.has(com.umeng.ccg.a.f84992s)) {
                                    ((ad) abVar).c(jSONObject2.optString(com.umeng.ccg.a.f84992s));
                                }
                            }
                        } catch (Throwable unused) {
                        }
                        return abVar;
                    } catch (Throwable unused2) {
                        return null;
                    }
                }
            } catch (Throwable unused3) {
            }
        }
        return null;
    }

    private void a(Context context, String str, long j10) {
        SharedPreferences sharedPreferencesA;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String[] strArrSplit = str.split("@");
            if (strArrSplit.length != 4 || (sharedPreferencesA = at.a(context)) == null) {
                return;
            }
            long j11 = Long.parseLong(strArrSplit[0]);
            String str2 = strArrSplit[1];
            SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
            editorEdit.putLong(at.f84310c, j10);
            editorEdit.putLong(at.f84311d, j11);
            editorEdit.putString(at.f84312e, str2).commit();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "updateTsS1S2 : ts = " + j10 + "; s1 = " + j11 + "; s2 = " + str2);
        } catch (Throwable unused) {
        }
    }

    private void a(String str) {
        try {
            String[] strArrSplit = str.split("@");
            if (strArrSplit.length != 4) {
                return;
            }
            long j10 = Long.parseLong(strArrSplit[0]);
            String str2 = strArrSplit[1];
            if (!TextUtils.isEmpty(this.f85028h)) {
                String[] strArrSplit2 = this.f85028h.split("@");
                if (strArrSplit2.length == 2) {
                    long j11 = Long.parseLong(strArrSplit2[0]);
                    String str3 = strArrSplit2[1];
                    if (j11 == j10 && str3.equalsIgnoreCase(str2)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "重复的iucc S1 and S2, 忽略本次更新，不发起fetch。");
                        return;
                    }
                }
            }
            SharedPreferences sharedPreferencesA = at.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA != null) {
                if (sharedPreferencesA.getLong(at.f84310c, 0L) != j10) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "local config ts != iuccS1, send FETCH_NEW_CONFIG msg.");
                    this.f85028h = String.valueOf(j10) + "@" + str2;
                    com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 101, a(), str);
                    return;
                }
                d(UMGlobalContext.getAppContext());
                if (e(UMGlobalContext.getAppContext()).equalsIgnoreCase(str2)) {
                    return;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "local S2 != iuccS2, send FETCH_NEW_CONFIG msg.");
                this.f85028h = String.valueOf(j10) + "@" + str2;
                com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 101, a(), str);
            }
        } catch (Throwable unused) {
        }
    }

    private void a(boolean z10) {
        try {
            SharedPreferences sharedPreferencesA = at.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA != null) {
                SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
                if (z10) {
                    editorEdit.putString(at.f84314g, "1").commit();
                } else {
                    editorEdit.putString(at.f84314g, "").commit();
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:128:0x03cd A[Catch: all -> 0x03d0, PHI: r3 r8
      0x03cd: PHI (r3v14 ??) = (r3v57 ??), (r3v58 ??) binds: [B:127:0x03cb, B:123:0x03c0] A[DONT_GENERATE, DONT_INLINE]
      0x03cd: PHI (r8v5 org.json.JSONObject) = (r8v0 org.json.JSONObject), (r8v6 org.json.JSONObject) binds: [B:127:0x03cb, B:123:0x03c0] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {all -> 0x03d0, blocks: (B:122:0x03bd, B:128:0x03cd, B:126:0x03c8, B:114:0x038b, B:116:0x0395, B:118:0x039b, B:119:0x03a5, B:120:0x03af), top: B:164:0x038b, inners: #1 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r3v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v19, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    @Override // com.umeng.ccg.c.a
    public void a(Object obj, int i10) {
        Integer numValueOf;
        ArrayList arrayList;
        int size;
        a aVar;
        a aVar2;
        a aVar3;
        JSONObject jSONObjectB = null;
        boolean z10 = true;
        int i11 = 0;
        try {
            switch (i10) {
                case 101:
                    if (obj != null && (obj instanceof String)) {
                        String str = (String) obj;
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "[workEvent]: recv FETCH_NEW_CONFIG msg. source iucc is: " + str);
                        JSONObject jSONObjectA = an.a(UMGlobalContext.getAppContext(), str);
                        if (jSONObjectA != null) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "[imprint] send request. body: " + jSONObjectA.toString());
                            au.a(new aq(aq.f84293a, jSONObjectA, str), 0L, TimeUnit.SECONDS);
                        }
                        if (g()) {
                            c(UMGlobalContext.getAppContext());
                            String strImprintProperty = UMEnvelopeBuild.imprintProperty(UMGlobalContext.getAppContext(), f85020a, "");
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "manual check iucc value: " + strImprintProperty);
                            a(strImprintProperty);
                        }
                        break;
                    }
                    break;
                case 102:
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "[workEvent]: recv FETCH_RESPONSE msg.");
                    this.f85028h = "";
                    if (obj != null && (obj instanceof JSONObject)) {
                        JSONObject jSONObject = (JSONObject) obj;
                        if (a(jSONObject.optJSONObject("config"))) {
                            com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 103, a(), jSONObject);
                        } else {
                            com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 104, a(), null);
                        }
                    } else {
                        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 104, a(), null);
                    }
                    break;
                case 103:
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "[workEvent]: recv FETCH_SUCCESS msg.");
                    Context appContext = UMGlobalContext.getAppContext();
                    if (obj != null && (obj instanceof JSONObject)) {
                        JSONObject jSONObject2 = (JSONObject) obj;
                        JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("config");
                        String strOptString = jSONObject2.optString("sourceIucc");
                        if (jSONObjectOptJSONObject != null) {
                            if (g()) {
                                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 成功拉取云配参数后，检测到should fetch标志，清除此标志。更新SDK类型集缓存值");
                                f();
                                a(false);
                            }
                            a(appContext, jSONObjectOptJSONObject, strOptString);
                        }
                        break;
                    }
                    break;
                case 104:
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "[workEvent]: recv FETCH_FAILED msg.");
                    break;
                case 105:
                    String[] collectItemList = CcgAgent.getCollectItemList();
                    int length = collectItemList.length;
                    ?? jSONObject3 = 0;
                    while (jSONObject3 < length) {
                        String str2 = collectItemList[jSONObject3];
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "[forbid_sdk] 采集项: " + str2 + "; 值: " + CcgAgent.getForbidSdkArray(str2).toString());
                        jSONObject3++;
                    }
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "[workEvent]: recv LOAD_CONFIG msg.");
                    Integer num = 0;
                    try {
                        try {
                            jSONObjectB = b(UMGlobalContext.getAppContext());
                            if (jSONObjectB != null && a(jSONObjectB)) {
                                numValueOf = Integer.valueOf(num.intValue() | 1);
                            } else {
                                numValueOf = Integer.valueOf(num.intValue() | 0);
                            }
                            jSONObject3 = new JSONObject();
                            jSONObject3.put("result", numValueOf);
                            jSONObject3 = jSONObject3;
                            if (jSONObjectB != null) {
                                jSONObject3.put("config", jSONObjectB);
                            }
                        } catch (Throwable unused) {
                            jSONObject3 = new JSONObject();
                            jSONObject3.put("result", num);
                            jSONObject3 = jSONObject3;
                            if (0 != 0) {
                                jSONObject3.put("config", jSONObjectB);
                            }
                        }
                        break;
                    } catch (Throwable unused2) {
                    }
                    com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 106, a(), jSONObject3);
                    break;
                case 106:
                    if (obj != null && (obj instanceof JSONObject)) {
                        JSONObject jSONObject4 = (JSONObject) obj;
                        if (jSONObject4.has("result")) {
                            if ((jSONObject4.optInt("result") & 1) != 0 && jSONObject4.has("config")) {
                                JSONObject jSONObjectOptJSONObject2 = jSONObject4.optJSONObject("config");
                                f85022c = jSONObjectOptJSONObject2;
                                if (jSONObjectOptJSONObject2 != null) {
                                    CcgAgent.notifyConfigReady(jSONObjectOptJSONObject2);
                                    i11 = 1;
                                }
                            }
                            if (i11 == 0) {
                                CcgAgent.notifyConfigReady(null);
                            }
                        }
                        if (e()) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 检测到集成的SDK类型集合发生变化，发起云配参数拉取请求(设置本地should fetch标志).");
                            String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(UMGlobalContext.getAppContext(), f85020a, "");
                            a(true);
                            com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 101, a(), strImprintProperty2);
                        } else {
                            c(UMGlobalContext.getAppContext());
                            String strImprintProperty3 = UMEnvelopeBuild.imprintProperty(UMGlobalContext.getAppContext(), f85020a, "");
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "manual check iucc value: " + strImprintProperty3);
                            a(strImprintProperty3);
                        }
                        break;
                    }
                    break;
                case 107:
                    if (obj != null) {
                        try {
                            if (obj instanceof String) {
                                String str3 = (String) obj;
                                UMRTLog.i(UMRTLog.RTLOG_TAG, "[IMPRINT_IUCC_CHANGED] iucc : " + str3);
                                a(str3);
                            }
                        } catch (Throwable th) {
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "[imprint] process error " + th.getMessage());
                            return;
                        }
                    }
                    break;
                default:
                    switch (i10) {
                        case 201:
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "recv PARSE_CONFIG msg.");
                            if (obj != null && (obj instanceof JSONObject)) {
                                c((JSONObject) obj);
                                break;
                            }
                            break;
                        case 202:
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "recv COLLECTION_JUDGMENT msg.");
                            if (obj != null && (obj instanceof ArrayList) && (size = (arrayList = (ArrayList) obj).size()) > 0) {
                                while (i11 < size) {
                                    ab abVar = (ab) arrayList.get(i11);
                                    JSONObject jSONObjectA2 = abVar.a(abVar.a(), null);
                                    if (jSONObjectA2 != null) {
                                        long jOptLong = !Arrays.asList(f85023d).contains(abVar.a()) ? jSONObjectA2.optLong("delay") * 1000 : 0L;
                                        jSONObjectA2.remove("delay");
                                        UMRTLog.i(UMRTLog.RTLOG_TAG, "send START_COLLECT msg, delayTs = " + jOptLong);
                                        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 203, a(), jSONObjectA2, jOptLong);
                                    }
                                    i11++;
                                }
                                break;
                            }
                            break;
                        case 203:
                            if (obj != null && (obj instanceof JSONObject)) {
                                JSONObject jSONObject5 = (JSONObject) obj;
                                String strOptString2 = jSONObject5.optString("actionName");
                                UMRTLog.i(UMRTLog.RTLOG_TAG, "recv START_COLLECT msg. name is : " + strOptString2);
                                if (com.umeng.ccg.b.a(strOptString2)) {
                                    String string = jSONObject5.toString();
                                    if (Arrays.asList(f85023d).contains(strOptString2)) {
                                        if ("screen_on".equalsIgnoreCase(strOptString2)) {
                                            UMRTLog.i(UMRTLog.RTLOG_TAG, "register Intent.ACTION_SCREEN_ON");
                                            a(UMGlobalContext.getAppContext(), "android.intent.action.SCREEN_ON");
                                        }
                                        if (com.umeng.ccg.a.f84980g.equalsIgnoreCase(strOptString2)) {
                                            UMRTLog.i(UMRTLog.RTLOG_TAG, "register Intent.ACTION_SCREEN_OFF");
                                            a(UMGlobalContext.getAppContext(), "android.intent.action.SCREEN_OFF");
                                        }
                                        if (com.umeng.ccg.a.f84981h.equalsIgnoreCase(strOptString2)) {
                                            UMRTLog.i(UMRTLog.RTLOG_TAG, "register Intent.ACTION_USER_PRESENT");
                                            a(UMGlobalContext.getAppContext(), "android.intent.action.USER_PRESENT");
                                        }
                                    } else {
                                        b(strOptString2);
                                        if (CcgAgent.hasRegistedActionInfo()) {
                                            if (CcgAgent.getActionInfo("anti") == null) {
                                                z10 = false;
                                            }
                                            String strOptString3 = jSONObject5.optString(com.umeng.ccg.a.f84989p);
                                            if (TextUtils.isEmpty(strOptString3)) {
                                                UMRTLog.i(UMRTLog.RTLOG_TAG, "忽略 本次采集项[" + strOptString2 + "]采集请求.");
                                            } else {
                                                ActionInfo actionInfo = CcgAgent.getActionInfo(strOptString3);
                                                if (actionInfo != null) {
                                                    UMRTLog.i(UMRTLog.RTLOG_TAG, "调用[" + strOptString3 + "] onCommand接口方法, 参数: " + jSONObject5.toString());
                                                    actionInfo.onCommand(UMGlobalContext.getAppContext(), strOptString2, jSONObject5);
                                                }
                                            }
                                            if (!z10) {
                                                ar.a(UMGlobalContext.getAppContext(), string);
                                            }
                                        } else {
                                            ar.a(UMGlobalContext.getAppContext(), string);
                                        }
                                    }
                                } else {
                                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Local switch of [" + strOptString2 + "] is off, ignore this command.");
                                }
                                break;
                            }
                            break;
                        default:
                            switch (i10) {
                                case 301:
                                    UMRTLog.i(UMRTLog.RTLOG_TAG, "recv REPORT_SCREEN_ON msg.");
                                    b("screen_on");
                                    if (this.f85029i.containsKey("screen_on") && (aVar = this.f85029i.get("screen_on")) != null) {
                                        JSONObject jSONObjectA3 = an.a(UMGlobalContext.getAppContext(), 1, aVar.a(), aVar.b());
                                        UMRTLog.i(UMRTLog.RTLOG_TAG, "screen_on event param: " + jSONObjectA3.toString());
                                        au.a(new ap(ap.f84290a, jSONObjectA3), 0L, TimeUnit.SECONDS);
                                        break;
                                    }
                                    break;
                                case 302:
                                    UMRTLog.i(UMRTLog.RTLOG_TAG, "recv REPORT_SCREEN_OFF msg.");
                                    b(com.umeng.ccg.a.f84980g);
                                    if (this.f85029i.containsKey(com.umeng.ccg.a.f84980g) && (aVar2 = this.f85029i.get(com.umeng.ccg.a.f84980g)) != null) {
                                        JSONObject jSONObjectA4 = an.a(UMGlobalContext.getAppContext(), 3, aVar2.a(), aVar2.b());
                                        UMRTLog.i(UMRTLog.RTLOG_TAG, "screen_off event param: " + jSONObjectA4.toString());
                                        au.a(new ap(ap.f84290a, jSONObjectA4), 0L, TimeUnit.SECONDS);
                                        break;
                                    }
                                    break;
                                case 303:
                                    UMRTLog.i(UMRTLog.RTLOG_TAG, "recv REPORT_SCREEN_UNLOCK msg.");
                                    b(com.umeng.ccg.a.f84981h);
                                    if (this.f85029i.containsKey(com.umeng.ccg.a.f84981h) && (aVar3 = this.f85029i.get(com.umeng.ccg.a.f84981h)) != null) {
                                        JSONObject jSONObjectA5 = an.a(UMGlobalContext.getAppContext(), 2, aVar3.a(), aVar3.b());
                                        UMRTLog.i(UMRTLog.RTLOG_TAG, "screen_unlock event param: " + jSONObjectA5.toString());
                                        au.a(new ap(ap.f84290a, jSONObjectA5), 0L, TimeUnit.SECONDS);
                                        break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } catch (Throwable unused3) {
        }
    }
}
