package com.umeng.analytics.pro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f84751a = 2049;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f84752b = 2050;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f84753c = 1000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Context f84754d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f84755e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f84756f = "umeng+";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f84757g = "ek__id";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f84758h = "ek_key";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<String> f84759i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<Integer> f84760j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f84761k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<String> f84762l;

    public enum a {
        AUTOPAGE,
        PAGE,
        BEGIN,
        END,
        NEWSESSION,
        INSTANTSESSIONBEGIN
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final k f84770a = new k();

        private b() {
        }
    }

    public static k a(Context context) {
        k kVar = b.f84770a;
        if (f84754d == null && context != null) {
            f84754d = context.getApplicationContext();
            kVar.k();
        }
        return kVar;
    }

    private void k() {
        synchronized (this) {
            l();
            this.f84759i.clear();
            this.f84762l.clear();
            this.f84760j.clear();
        }
    }

    private void l() {
        try {
            if (TextUtils.isEmpty(f84755e)) {
                String multiProcessSP = UMUtils.getMultiProcessSP(f84754d, f84757g);
                if (TextUtils.isEmpty(multiProcessSP)) {
                    multiProcessSP = PreferenceWrapper.getDefault(f84754d).getString(f84757g, null);
                    if (TextUtils.isEmpty(multiProcessSP)) {
                        multiProcessSP = UMUtils.genId();
                    }
                    if (!TextUtils.isEmpty(multiProcessSP)) {
                        UMUtils.setMultiProcessSP(f84754d, f84757g, multiProcessSP);
                    }
                }
                if (!TextUtils.isEmpty(multiProcessSP)) {
                    String strSubstring = multiProcessSP.substring(1, 9);
                    StringBuilder sb2 = new StringBuilder();
                    for (int i10 = 0; i10 < strSubstring.length(); i10++) {
                        char cCharAt = strSubstring.charAt(i10);
                        if (!Character.isDigit(cCharAt)) {
                            sb2.append(cCharAt);
                        } else if (Integer.parseInt(Character.toString(cCharAt)) == 0) {
                            sb2.append(0);
                        } else {
                            sb2.append(10 - Integer.parseInt(Character.toString(cCharAt)));
                        }
                    }
                    f84755e = sb2.toString();
                }
                if (TextUtils.isEmpty(f84755e)) {
                    return;
                }
                f84755e += new StringBuilder(f84755e).reverse().toString();
                String multiProcessSP2 = UMUtils.getMultiProcessSP(f84754d, f84758h);
                if (TextUtils.isEmpty(multiProcessSP2)) {
                    UMUtils.setMultiProcessSP(f84754d, f84758h, c(f84756f));
                } else {
                    if (f84756f.equals(d(multiProcessSP2))) {
                        return;
                    }
                    b(true, false);
                    a(true, false);
                    h();
                    i();
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void b() {
        this.f84762l.clear();
    }

    public boolean c() {
        return this.f84762l.isEmpty();
    }

    public void d() {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                try {
                    sQLiteDatabaseA = i.a(f84754d).a();
                    sQLiteDatabaseA.beginTransaction();
                    String strC = w.a().c();
                    if (TextUtils.isEmpty(strC)) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused) {
                        }
                        i.a(f84754d).b();
                        return;
                    }
                    String[] strArr = {"", WMConstants.TIMER_STAGE_NONE};
                    for (int i10 = 0; i10 < 2; i10++) {
                        sQLiteDatabaseA.execSQL("update __et set __i=\"" + strC + "\" where __i=\"" + strArr[i10] + x.a.f97579g);
                    }
                    sQLiteDatabaseA.setTransactionSuccessful();
                } finally {
                    if (sQLiteDatabaseA != null) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused2) {
                        }
                    }
                    i.a(f84754d).b();
                }
            } catch (SQLiteDatabaseCorruptException unused3) {
                j.a(f84754d);
            } catch (Throwable unused4) {
                if (sQLiteDatabaseA != null) {
                }
            }
        } catch (Throwable unused5) {
        }
    }

    public boolean e() {
        return this.f84759i.isEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0089 A[DONT_GENERATE, EXC_TOP_SPLITTER, PHI: r2 r5
      0x0089: PHI (r2v5 android.database.sqlite.SQLiteDatabase) = (r2v4 android.database.sqlite.SQLiteDatabase), (r2v6 android.database.sqlite.SQLiteDatabase) binds: [B:28:0x0087, B:35:0x00a3] A[DONT_GENERATE, DONT_INLINE]
      0x0089: PHI (r5v3 org.json.JSONObject) = (r5v2 org.json.JSONObject), (r5v5 org.json.JSONObject) binds: [B:28:0x0087, B:35:0x00a3] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public JSONObject f() {
        SQLiteDatabase sQLiteDatabaseA;
        JSONObject jSONObject;
        Cursor cursor = null;
        jSONObject = null;
        jSONObject = null;
        jSONObject = null;
        JSONObject jSONObject2 = null;
        cursor = null;
        cursor = null;
        Cursor cursor2 = null;
        if (this.f84762l.isEmpty()) {
            return null;
        }
        try {
            sQLiteDatabaseA = i.a(f84754d).a();
            try {
                sQLiteDatabaseA.beginTransaction();
                Cursor cursorA = a(g.c.f84705a, sQLiteDatabaseA, null, "__ii=? ", new String[]{this.f84762l.get(0)}, null, null, null, null);
                if (cursorA != null) {
                    try {
                        if (cursorA.moveToNext()) {
                            jSONObject = new JSONObject();
                            try {
                                String string = cursorA.getString(cursorA.getColumnIndex("__av"));
                                String string2 = cursorA.getString(cursorA.getColumnIndex("__vc"));
                                jSONObject.put("__av", string);
                                jSONObject.put("__vc", string2);
                                jSONObject2 = jSONObject;
                            } catch (SQLiteDatabaseCorruptException unused) {
                                cursor2 = cursorA;
                                try {
                                    j.a(f84754d);
                                    return jSONObject;
                                } finally {
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    if (sQLiteDatabaseA != null) {
                                        try {
                                            sQLiteDatabaseA.endTransaction();
                                        } catch (Throwable unused2) {
                                        }
                                    }
                                    i.a(f84754d).b();
                                }
                            } catch (Throwable unused3) {
                                cursor = cursorA;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (sQLiteDatabaseA != null) {
                                }
                                return jSONObject;
                            }
                        }
                    } catch (SQLiteDatabaseCorruptException unused4) {
                        jSONObject = jSONObject2;
                    } catch (Throwable unused5) {
                        jSONObject = jSONObject2;
                    }
                }
                sQLiteDatabaseA.setTransactionSuccessful();
                if (cursorA != null) {
                    cursorA.close();
                }
                try {
                    sQLiteDatabaseA.endTransaction();
                } catch (Throwable unused6) {
                }
                i.a(f84754d).b();
                return jSONObject2;
            } catch (SQLiteDatabaseCorruptException unused7) {
                jSONObject = null;
            } catch (Throwable unused8) {
                jSONObject = null;
            }
        } catch (SQLiteDatabaseCorruptException unused9) {
            sQLiteDatabaseA = null;
            jSONObject = null;
        } catch (Throwable unused10) {
            sQLiteDatabaseA = null;
            jSONObject = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0089 A[DONT_GENERATE, EXC_TOP_SPLITTER, PHI: r2 r5
      0x0089: PHI (r2v5 android.database.sqlite.SQLiteDatabase) = (r2v4 android.database.sqlite.SQLiteDatabase), (r2v6 android.database.sqlite.SQLiteDatabase) binds: [B:28:0x0087, B:35:0x00a3] A[DONT_GENERATE, DONT_INLINE]
      0x0089: PHI (r5v3 org.json.JSONObject) = (r5v2 org.json.JSONObject), (r5v5 org.json.JSONObject) binds: [B:28:0x0087, B:35:0x00a3] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public JSONObject g() {
        SQLiteDatabase sQLiteDatabaseA;
        JSONObject jSONObject;
        Cursor cursor = null;
        jSONObject = null;
        jSONObject = null;
        jSONObject = null;
        JSONObject jSONObject2 = null;
        cursor = null;
        cursor = null;
        Cursor cursor2 = null;
        if (this.f84759i.isEmpty()) {
            return null;
        }
        try {
            sQLiteDatabaseA = i.a(f84754d).a();
            try {
                sQLiteDatabaseA.beginTransaction();
                Cursor cursorA = a(g.d.f84718a, sQLiteDatabaseA, null, "__ii=? ", new String[]{this.f84759i.get(0)}, null, null, null, null);
                if (cursorA != null) {
                    try {
                        if (cursorA.moveToNext()) {
                            jSONObject = new JSONObject();
                            try {
                                String string = cursorA.getString(cursorA.getColumnIndex("__av"));
                                String string2 = cursorA.getString(cursorA.getColumnIndex("__vc"));
                                jSONObject.put("__av", string);
                                jSONObject.put("__vc", string2);
                                jSONObject2 = jSONObject;
                            } catch (SQLiteDatabaseCorruptException unused) {
                                cursor2 = cursorA;
                                try {
                                    j.a(f84754d);
                                    return jSONObject;
                                } finally {
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    if (sQLiteDatabaseA != null) {
                                        try {
                                            sQLiteDatabaseA.endTransaction();
                                        } catch (Throwable unused2) {
                                        }
                                    }
                                    i.a(f84754d).b();
                                }
                            } catch (Throwable unused3) {
                                cursor = cursorA;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (sQLiteDatabaseA != null) {
                                }
                                return jSONObject;
                            }
                        }
                    } catch (SQLiteDatabaseCorruptException unused4) {
                        jSONObject = jSONObject2;
                    } catch (Throwable unused5) {
                        jSONObject = jSONObject2;
                    }
                }
                sQLiteDatabaseA.setTransactionSuccessful();
                if (cursorA != null) {
                    cursorA.close();
                }
                try {
                    sQLiteDatabaseA.endTransaction();
                } catch (Throwable unused6) {
                }
                i.a(f84754d).b();
                return jSONObject2;
            } catch (SQLiteDatabaseCorruptException unused7) {
                jSONObject = null;
            } catch (Throwable unused8) {
                jSONObject = null;
            }
        } catch (SQLiteDatabaseCorruptException unused9) {
            sQLiteDatabaseA = null;
            jSONObject = null;
        } catch (Throwable unused10) {
            sQLiteDatabaseA = null;
            jSONObject = null;
        }
    }

    public void h() {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                try {
                    sQLiteDatabaseA = i.a(f84754d).a();
                    sQLiteDatabaseA.beginTransaction();
                    if (this.f84760j.size() > 0) {
                        for (int i10 = 0; i10 < this.f84760j.size(); i10++) {
                            sQLiteDatabaseA.execSQL("delete from __et where rowid=" + this.f84760j.get(i10));
                        }
                    }
                    this.f84760j.clear();
                    sQLiteDatabaseA.setTransactionSuccessful();
                } finally {
                    if (sQLiteDatabaseA != null) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused) {
                        }
                    }
                    i.a(f84754d).b();
                }
            } catch (SQLiteDatabaseCorruptException unused2) {
                j.a(f84754d);
            } catch (Throwable unused3) {
                if (sQLiteDatabaseA != null) {
                }
            }
        } catch (Throwable unused4) {
        }
    }

    public void i() {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                try {
                    sQLiteDatabaseA = i.a(f84754d).a();
                    sQLiteDatabaseA.beginTransaction();
                    sQLiteDatabaseA.execSQL("delete from __er");
                    sQLiteDatabaseA.setTransactionSuccessful();
                } finally {
                    if (sQLiteDatabaseA != null) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused) {
                        }
                    }
                    i.a(f84754d).b();
                }
            } catch (SQLiteDatabaseCorruptException unused2) {
                j.a(f84754d);
            } catch (Throwable unused3) {
                if (sQLiteDatabaseA != null) {
                }
            }
        } catch (Throwable unused4) {
        }
    }

    public void j() {
        SQLiteDatabase sQLiteDatabaseA;
        if (!TextUtils.isEmpty(this.f84761k)) {
            try {
                sQLiteDatabaseA = i.a(f84754d).a();
                try {
                    sQLiteDatabaseA.beginTransaction();
                    sQLiteDatabaseA.execSQL("delete from __er where __i=\"" + this.f84761k + x.a.f97579g);
                    sQLiteDatabaseA.execSQL("delete from __et where __i=\"" + this.f84761k + x.a.f97579g);
                    sQLiteDatabaseA.setTransactionSuccessful();
                } catch (SQLiteDatabaseCorruptException unused) {
                    try {
                        j.a(f84754d);
                        if (sQLiteDatabaseA != null) {
                        }
                        i.a(f84754d).b();
                        this.f84761k = null;
                    } catch (Throwable th) {
                        if (sQLiteDatabaseA != null) {
                            try {
                                sQLiteDatabaseA.endTransaction();
                            } catch (Throwable unused2) {
                            }
                        }
                        i.a(f84754d).b();
                        throw th;
                    }
                } catch (Throwable unused3) {
                    if (sQLiteDatabaseA != null) {
                    }
                    i.a(f84754d).b();
                    this.f84761k = null;
                }
            } catch (SQLiteDatabaseCorruptException unused4) {
                sQLiteDatabaseA = null;
            } catch (Throwable unused5) {
                sQLiteDatabaseA = null;
            }
            try {
                sQLiteDatabaseA.endTransaction();
            } catch (Throwable unused6) {
            }
            i.a(f84754d).b();
        }
        this.f84761k = null;
    }

    private k() {
        this.f84759i = new ArrayList();
        this.f84760j = new ArrayList();
        this.f84761k = null;
        this.f84762l = new ArrayList();
    }

    private void b(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long jLongValue = ((Long) jSONObject.get("__e")).longValue();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("__pp");
            String strC = "";
            String strC2 = (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject.length() <= 0) ? "" : c(jSONObjectOptJSONObject.toString());
            if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.length() > 0) {
                strC = c(jSONObjectOptJSONObject2.toString());
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("__ii", str);
            contentValues.put("__e", String.valueOf(jLongValue));
            contentValues.put("__sp", strC2);
            contentValues.put("__pp", strC);
            contentValues.put("__av", UMGlobalContext.getInstance(f84754d).getAppVersion());
            contentValues.put("__vc", UMUtils.getAppVersionCode(f84754d));
            sQLiteDatabase.insert(g.c.f84705a, null, contentValues);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x011a  */
    /* JADX WARN: Code duplicated, block: B:47:? A[RETURN, SYNTHETIC] */
    private void c(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        JSONObject jSONObject2;
        String str2;
        Cursor cursor2;
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(g.d.a.f84723e);
            if (jSONObjectOptJSONObject != null) {
                jSONObject2 = jSONObjectOptJSONObject;
                Cursor cursorA = a(g.d.f84718a, sQLiteDatabase, new String[]{g.d.a.f84723e}, "__ii=? ", new String[]{str}, null, null, null, null);
                if (cursorA != null) {
                    String strD = null;
                    while (cursorA.moveToNext()) {
                        try {
                            strD = d(cursorA.getString(cursorA.getColumnIndex(g.d.a.f84723e)));
                        } catch (Throwable unused) {
                            cursor = cursorA;
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                    }
                    String str3 = strD;
                    cursor2 = cursorA;
                    str2 = str3;
                } else {
                    cursor2 = cursorA;
                    str2 = null;
                }
            } else {
                jSONObject2 = jSONObjectOptJSONObject;
                str2 = null;
                cursor2 = null;
            }
            if (jSONObject2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    if (!TextUtils.isEmpty(str2)) {
                        jSONArray = new JSONArray(str2);
                    }
                    jSONArray.put(jSONObject2);
                    String strC = c(jSONArray.toString());
                    if (!TextUtils.isEmpty(strC)) {
                        sQLiteDatabase.execSQL("update  __sd set __d=\"" + strC + "\" where __ii=\"" + str + x.a.f97579g);
                    }
                } catch (Throwable unused2) {
                    cursor = cursor2;
                    if (cursor != null) {
                        cursor.close();
                        return;
                    }
                    return;
                }
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(g.d.a.f84722d);
            if (jSONObjectOptJSONObject2 != null) {
                String strC2 = c(jSONObjectOptJSONObject2.toString());
                if (!TextUtils.isEmpty(strC2)) {
                    sQLiteDatabase.execSQL("update  __sd set __c=\"" + strC2 + "\" where __ii=\"" + str + x.a.f97579g);
                }
            }
            sQLiteDatabase.execSQL("update  __sd set __f=\"" + String.valueOf(jSONObject.optLong(g.d.a.f84725g)) + "\" where __ii=\"" + str + x.a.f97579g);
            if (cursor2 != null) {
                cursor2.close();
            }
        } catch (Throwable unused3) {
            cursor = null;
        }
    }

    private Cursor a(String str, SQLiteDatabase sQLiteDatabase, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        if (sQLiteDatabase == null) {
            return null;
        }
        try {
            if (sQLiteDatabase.isOpen()) {
                return sQLiteDatabase.query(str, strArr, str2, strArr2, str3, str4, str5, str6);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void a() {
        this.f84759i.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0098, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009a, code lost:
    
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ac, code lost:
    
        if (r2 != null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(org.json.JSONArray r11) {
        /*
            r10 = this;
            java.lang.String r0 = "__t"
            java.lang.String r1 = "__i"
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            com.umeng.analytics.pro.i r3 = com.umeng.analytics.pro.i.a(r3)     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r4 = 0
        L13:
            int r5 = r11.length()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r4 >= r5) goto L8d
            org.json.JSONObject r5 = r11.getJSONObject(r4)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.<init>()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = r5.optString(r1)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r9 = "-1"
            if (r8 != 0) goto L34
            boolean r8 = r9.equals(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            if (r8 == 0) goto L43
        L34:
            com.umeng.analytics.pro.w r7 = com.umeng.analytics.pro.w.a()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = r7.b()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            if (r8 == 0) goto L43
            r7 = r9
        L43:
            r6.put(r1, r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__e"
            java.lang.String r8 = "id"
            java.lang.String r8 = r5.optString(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            int r7 = r5.optInt(r0)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r0, r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r5.remove(r1)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r5.remove(r0)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__s"
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r5 = r10.c(r5)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r5)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r5 = "__et"
            r3.insert(r5, r2, r6)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
        L8a:
            int r4 = r4 + 1
            goto L13
        L8d:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r3.endTransaction()     // Catch: java.lang.Throwable -> L9d
            goto L9d
        L94:
            r2 = r3
            goto L98
        L96:
            r2 = r3
            goto La7
        L98:
            if (r2 == 0) goto L9d
        L9a:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L9d
        L9d:
            android.content.Context r11 = com.umeng.analytics.pro.k.f84754d
            com.umeng.analytics.pro.i r11 = com.umeng.analytics.pro.i.a(r11)
            r11.b()
            goto Laf
        La7:
            android.content.Context r11 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Throwable -> Lb0
            com.umeng.analytics.pro.j.a(r11)     // Catch: java.lang.Throwable -> Lb0
            if (r2 == 0) goto L9d
            goto L9a
        Laf:
            return
        Lb0:
            r11 = move-exception
            if (r2 == 0) goto Lb6
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lb6
        Lb6:
            android.content.Context r0 = com.umeng.analytics.pro.k.f84754d
            com.umeng.analytics.pro.i r0 = com.umeng.analytics.pro.i.a(r0)
            r0.b()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.k.a(org.json.JSONArray):void");
    }

    public String d(String str) {
        try {
            return TextUtils.isEmpty(f84755e) ? str : new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f84755e.getBytes()));
        } catch (Exception unused) {
            if (Build.VERSION.SDK_INT >= 29 && !TextUtils.isEmpty(str)) {
                try {
                    new JSONObject(str);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> UMStoreManager decrypt failed, return origin data.");
                    return str;
                } catch (Throwable unused2) {
                    return null;
                }
            }
            return null;
        }
    }

    public JSONObject b(boolean z10) {
        JSONObject jSONObject = new JSONObject();
        b(jSONObject, z10);
        return jSONObject;
    }

    private void b(JSONObject jSONObject, String str) {
        SQLiteDatabase sQLiteDatabaseA;
        Cursor cursorA;
        Cursor cursor = null;
        try {
            try {
                sQLiteDatabaseA = i.a(f84754d).a();
                try {
                    sQLiteDatabaseA.beginTransaction();
                    if (!TextUtils.isEmpty(str)) {
                        cursorA = a(g.a.f84681a, sQLiteDatabaseA, null, "__i=? ", new String[]{str}, null, null, null, null);
                    } else {
                        cursorA = a(g.a.f84681a, sQLiteDatabaseA, null, null, null, null, null, null, null);
                    }
                    cursor = cursorA;
                    if (cursor != null) {
                        JSONArray jSONArray = new JSONArray();
                        while (cursor.moveToNext()) {
                            String string = cursor.getString(cursor.getColumnIndex("__a"));
                            if (!TextUtils.isEmpty(string)) {
                                jSONArray.put(new JSONObject(d(string)));
                            }
                        }
                        if (jSONArray.length() > 0) {
                            jSONObject.put("error", jSONArray);
                        }
                    }
                    sQLiteDatabaseA.setTransactionSuccessful();
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (SQLiteDatabaseCorruptException unused) {
                    j.a(f84754d);
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabaseA != null) {
                    }
                    i.a(f84754d).b();
                } catch (Throwable unused2) {
                    j.a(f84754d);
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabaseA != null) {
                    }
                    i.a(f84754d).b();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused3) {
                    }
                }
                i.a(f84754d).b();
                throw th;
            }
        } catch (SQLiteDatabaseCorruptException unused4) {
            sQLiteDatabaseA = null;
        } catch (Throwable unused5) {
            sQLiteDatabaseA = null;
        }
        try {
            sQLiteDatabaseA.endTransaction();
        } catch (Throwable unused6) {
        }
        i.a(f84754d).b();
    }

    public String c(String str) {
        try {
            return TextUtils.isEmpty(f84755e) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), f84755e.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
    
        if (r0 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006a, code lost:
    
        if (r0 != null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r5, java.lang.String r6, int r7) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            com.umeng.analytics.pro.i r1 = com.umeng.analytics.pro.i.a(r1)     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.<init>()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r3 = "__i"
            r2.put(r3, r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = r4.c(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r6 != 0) goto L4b
            java.lang.String r6 = "__a"
            r2.put(r6, r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__t"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__av"
            android.content.Context r6 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__vc"
            android.content.Context r6 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__er"
            r1.insert(r5, r0, r2)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
        L4b:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r1.endTransaction()     // Catch: java.lang.Throwable -> L5b
            goto L5b
        L52:
            r0 = r1
            goto L56
        L54:
            r0 = r1
            goto L65
        L56:
            if (r0 == 0) goto L5b
        L58:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L5b
        L5b:
            android.content.Context r5 = com.umeng.analytics.pro.k.f84754d
            com.umeng.analytics.pro.i r5 = com.umeng.analytics.pro.i.a(r5)
            r5.b()
            goto L6d
        L65:
            android.content.Context r5 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Throwable -> L6f
            com.umeng.analytics.pro.j.a(r5)     // Catch: java.lang.Throwable -> L6f
            if (r0 == 0) goto L5b
            goto L58
        L6d:
            r5 = 0
            return r5
        L6f:
            r5 = move-exception
            if (r0 == 0) goto L75
            r0.endTransaction()     // Catch: java.lang.Throwable -> L75
        L75:
            android.content.Context r6 = com.umeng.analytics.pro.k.f84754d
            com.umeng.analytics.pro.i r6 = com.umeng.analytics.pro.i.a(r6)
            r6.b()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.k.a(java.lang.String, java.lang.String, int):boolean");
    }

    private JSONArray b(JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optLong("duration") > 0) {
                jSONArray2.put(jSONObjectOptJSONObject);
            }
        }
        return jSONArray2;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00e6 A[EXC_TOP_SPLITTER, PHI: r1 r13
      0x00e6: PHI (r1v4 android.database.sqlite.SQLiteDatabase) = (r1v3 android.database.sqlite.SQLiteDatabase), (r1v6 android.database.sqlite.SQLiteDatabase) binds: [B:37:0x00d5, B:43:0x00e4] A[DONT_GENERATE, DONT_INLINE]
      0x00e6: PHI (r13v5 ??) = (r13v4 ??), (r13v7 ??) binds: [B:37:0x00d5, B:43:0x00e4] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    private String b(JSONObject jSONObject, boolean z10) {
        ?? r13;
        SQLiteDatabase sQLiteDatabaseA;
        ?? r10 = 0;
        String string = null;
        r10 = 0;
        r10 = 0;
        r10 = 0;
        cursor = null;
        cursor = null;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                sQLiteDatabaseA = i.a(f84754d).a();
                try {
                    sQLiteDatabaseA.beginTransaction();
                    Cursor cursorA = a(g.c.f84705a, sQLiteDatabaseA, null, null, null, null, null, null, null);
                    if (cursorA != null) {
                        try {
                            JSONArray jSONArray = new JSONArray();
                            while (cursorA.moveToNext()) {
                                JSONObject jSONObject2 = new JSONObject();
                                String string2 = cursorA.getString(cursorA.getColumnIndex("__e"));
                                string = cursorA.getString(cursorA.getColumnIndex("__ii"));
                                this.f84762l.add(string);
                                String string3 = cursorA.getString(cursorA.getColumnIndex("__sp"));
                                String string4 = cursorA.getString(cursorA.getColumnIndex("__pp"));
                                if (!TextUtils.isEmpty(string3)) {
                                    jSONObject2.put(f.aA, new JSONObject(d(string3)));
                                }
                                if (!TextUtils.isEmpty(string4)) {
                                    jSONObject2.put(f.aB, new JSONObject(d(string4)));
                                }
                                if (!TextUtils.isEmpty(string2)) {
                                    jSONObject2.put("id", string);
                                    jSONObject2.put(f.f84665p, string2);
                                    if (jSONObject2.length() > 0) {
                                        jSONArray.put(jSONObject2);
                                    }
                                    if (z10) {
                                        break;
                                    }
                                }
                            }
                            r10 = string;
                            if (jSONArray.length() > 0) {
                                jSONObject.put(f.f84663n, jSONArray);
                                r10 = string;
                            }
                        } catch (SQLiteDatabaseCorruptException unused) {
                            r13 = r10;
                            cursor = cursorA;
                            j.a(f84754d);
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (sQLiteDatabaseA != null) {
                                try {
                                    sQLiteDatabaseA.endTransaction();
                                } catch (Throwable unused2) {
                                }
                            }
                            i.a(f84754d).b();
                            r10 = r13;
                        } catch (Throwable unused3) {
                            r13 = r10;
                            cursor2 = cursorA;
                            j.a(f84754d);
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            if (sQLiteDatabaseA != null) {
                                sQLiteDatabaseA.endTransaction();
                            }
                            i.a(f84754d).b();
                            r10 = r13;
                        }
                    }
                    sQLiteDatabaseA.setTransactionSuccessful();
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused4) {
                    }
                    i.a(f84754d).b();
                } catch (SQLiteDatabaseCorruptException unused5) {
                    r13 = 0;
                } catch (Throwable unused6) {
                    r13 = 0;
                }
            } catch (Throwable th) {
                if (r10 != 0) {
                    r10.close();
                }
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused7) {
                    }
                }
                i.a(f84754d).b();
                throw th;
            }
        } catch (SQLiteDatabaseCorruptException unused8) {
            r13 = 0;
            sQLiteDatabaseA = null;
        } catch (Throwable unused9) {
            r13 = 0;
            sQLiteDatabaseA = null;
        }
        return r10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0085, code lost:
    
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0087, code lost:
    
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0099, code lost:
    
        if (r2 != null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r7, org.json.JSONObject r8, com.umeng.analytics.pro.k.a r9) {
        /*
            r6 = this;
            java.lang.String r0 = "__e"
            r1 = 0
            if (r8 != 0) goto L6
            return r1
        L6:
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            com.umeng.analytics.pro.i r3 = com.umeng.analytics.pro.i.a(r3)     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            com.umeng.analytics.pro.k$a r4 = com.umeng.analytics.pro.k.a.BEGIN     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r4) goto L4f
            java.lang.Object r8 = r8.opt(r0)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.Long r8 = (java.lang.Long) r8     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            long r8 = r8.longValue()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.<init>()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r5 = "__ii"
            r4.put(r5, r7)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.put(r0, r7)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.put(r7, r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.put(r7, r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = "__sd"
            r3.insert(r7, r2, r4)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L4f:
            com.umeng.analytics.pro.k$a r0 = com.umeng.analytics.pro.k.a.INSTANTSESSIONBEGIN     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L57
            r6.b(r7, r8, r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L57:
            com.umeng.analytics.pro.k$a r0 = com.umeng.analytics.pro.k.a.END     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L5f
            r6.a(r7, r8, r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L5f:
            com.umeng.analytics.pro.k$a r0 = com.umeng.analytics.pro.k.a.PAGE     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L69
            java.lang.String r9 = "__a"
            r6.a(r7, r8, r3, r9)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L69:
            com.umeng.analytics.pro.k$a r0 = com.umeng.analytics.pro.k.a.AUTOPAGE     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L73
            java.lang.String r9 = "__b"
            r6.a(r7, r8, r3, r9)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L73:
            com.umeng.analytics.pro.k$a r0 = com.umeng.analytics.pro.k.a.NEWSESSION     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L7a
            r6.c(r7, r8, r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
        L7a:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r3.endTransaction()     // Catch: java.lang.Throwable -> L8a
            goto L8a
        L81:
            r2 = r3
            goto L85
        L83:
            r2 = r3
            goto L94
        L85:
            if (r2 == 0) goto L8a
        L87:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L8a
        L8a:
            android.content.Context r7 = com.umeng.analytics.pro.k.f84754d
            com.umeng.analytics.pro.i r7 = com.umeng.analytics.pro.i.a(r7)
            r7.b()
            goto L9c
        L94:
            android.content.Context r7 = com.umeng.analytics.pro.k.f84754d     // Catch: java.lang.Throwable -> L9d
            com.umeng.analytics.pro.j.a(r7)     // Catch: java.lang.Throwable -> L9d
            if (r2 == 0) goto L8a
            goto L87
        L9c:
            return r1
        L9d:
            r7 = move-exception
            if (r2 == 0) goto La3
            r2.endTransaction()     // Catch: java.lang.Throwable -> La3
        La3:
            android.content.Context r8 = com.umeng.analytics.pro.k.f84754d
            com.umeng.analytics.pro.i r8 = com.umeng.analytics.pro.i.a(r8)
            r8.b()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.k.a(java.lang.String, org.json.JSONObject, com.umeng.analytics.pro.k$a):boolean");
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long jLongValue = ((Long) jSONObject.opt(g.d.a.f84725g)).longValue();
            Object objOpt = jSONObject.opt(g.d.a.f84726h);
            long jLongValue2 = (objOpt == null || !(objOpt instanceof Long)) ? 0L : ((Long) objOpt).longValue();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("__pp");
            String strC = "";
            String strC2 = (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject.length() <= 0) ? "" : c(jSONObjectOptJSONObject.toString());
            if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.length() > 0) {
                strC = c(jSONObjectOptJSONObject2.toString());
            }
            sQLiteDatabase.execSQL("update __sd set __f=\"" + jLongValue + "\", " + g.d.a.f84726h + "=\"" + jLongValue2 + "\", __sp=\"" + strC2 + "\", __pp=\"" + strC + "\" where __ii=\"" + str + x.a.f97579g);
        } catch (Throwable unused) {
        }
    }

    public void b(boolean z10, boolean z11) {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                try {
                    sQLiteDatabaseA = i.a(f84754d).a();
                    sQLiteDatabaseA.beginTransaction();
                    if (z11) {
                        if (z10) {
                            sQLiteDatabaseA.execSQL("delete from __sd");
                        }
                    } else if (this.f84759i.size() > 0) {
                        for (int i10 = 0; i10 < this.f84759i.size(); i10++) {
                            sQLiteDatabaseA.execSQL("delete from __sd where __ii=\"" + this.f84759i.get(i10) + x.a.f97579g);
                        }
                    }
                    sQLiteDatabaseA.setTransactionSuccessful();
                } finally {
                    if (sQLiteDatabaseA != null) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused) {
                        }
                    }
                    i.a(f84754d).b();
                }
            } catch (SQLiteDatabaseCorruptException unused2) {
                j.a(f84754d);
            } catch (Throwable unused3) {
                if (sQLiteDatabaseA != null) {
                }
            }
        } catch (Throwable unused4) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0048 A[Catch: Exception -> 0x004b, TRY_LEAVE, TryCatch #1 {Exception -> 0x004b, blocks: (B:15:0x0043, B:17:0x0048), top: B:32:0x0043 }] */
    public long a(String str) throws Throwable {
        SQLiteDatabase sQLiteDatabaseA;
        Cursor cursorA = null;
        long j10 = 0;
        try {
            try {
                sQLiteDatabaseA = i.a(f84754d).a();
                try {
                    sQLiteDatabaseA.beginTransaction();
                    cursorA = a(g.d.f84718a, sQLiteDatabaseA, new String[]{g.d.a.f84725g}, "__ii=? ", new String[]{str}, null, null, null, null);
                    if (cursorA != null) {
                        cursorA.moveToFirst();
                        j10 = cursorA.getLong(cursorA.getColumnIndex(g.d.a.f84725g));
                    }
                    if (cursorA != null) {
                        cursorA.close();
                    }
                } catch (Exception unused) {
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    if (sQLiteDatabaseA != null) {
                    }
                    i.a(f84754d).b();
                    return j10;
                } catch (Throwable th) {
                    th = th;
                    if (cursorA != null) {
                        try {
                            cursorA.close();
                            if (sQLiteDatabaseA != null) {
                                sQLiteDatabaseA.endTransaction();
                            }
                        } catch (Exception unused2) {
                            i.a(f84754d).b();
                            throw th;
                        }
                    } else if (sQLiteDatabaseA != null) {
                        sQLiteDatabaseA.endTransaction();
                    }
                    i.a(f84754d).b();
                    throw th;
                }
            } catch (Exception unused3) {
            }
        } catch (Exception unused4) {
            sQLiteDatabaseA = null;
        } catch (Throwable th2) {
            th = th2;
            sQLiteDatabaseA = null;
        }
        sQLiteDatabaseA.endTransaction();
        i.a(f84754d).b();
        return j10;
    }

    public void b(String str) {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                try {
                    sQLiteDatabaseA = i.a(f84754d).a();
                    sQLiteDatabaseA.beginTransaction();
                    if (!TextUtils.isEmpty(str)) {
                        sQLiteDatabaseA.execSQL("delete from __is where __ii=\"" + str + x.a.f97579g);
                    }
                    sQLiteDatabaseA.setTransactionSuccessful();
                } finally {
                    if (sQLiteDatabaseA != null) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused) {
                        }
                    }
                    i.a(f84754d).b();
                }
            } catch (SQLiteDatabaseCorruptException unused2) {
                j.a(f84754d);
            } catch (Throwable unused3) {
                if (sQLiteDatabaseA != null) {
                }
            }
        } catch (Throwable unused4) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0055 A[Catch: all -> 0x0062, LOOP:1: B:52:0x004f->B:24:0x0055, LOOP_END, TryCatch #0 {all -> 0x0062, blocks: (B:22:0x004f, B:24:0x0055, B:26:0x0066, B:28:0x0071, B:29:0x0076, B:36:0x0085, B:38:0x008b, B:40:0x0091, B:42:0x0097, B:44:0x00a5, B:41:0x0094), top: B:52:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0071 A[Catch: all -> 0x0062, TryCatch #0 {all -> 0x0062, blocks: (B:22:0x004f, B:24:0x0055, B:26:0x0066, B:28:0x0071, B:29:0x0076, B:36:0x0085, B:38:0x008b, B:40:0x0091, B:42:0x0097, B:44:0x00a5, B:41:0x0094), top: B:52:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:32:0x007e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x0080  */
    /* JADX WARN: Code duplicated, block: B:35:0x0084  */
    /* JADX WARN: Code duplicated, block: B:40:0x0091 A[Catch: all -> 0x0062, TRY_ENTER, TryCatch #0 {all -> 0x0062, blocks: (B:22:0x004f, B:24:0x0055, B:26:0x0066, B:28:0x0071, B:29:0x0076, B:36:0x0085, B:38:0x008b, B:40:0x0091, B:42:0x0097, B:44:0x00a5, B:41:0x0094), top: B:52:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a5 A[Catch: all -> 0x0062, TRY_LEAVE, TryCatch #0 {all -> 0x0062, blocks: (B:22:0x004f, B:24:0x0055, B:26:0x0066, B:28:0x0071, B:29:0x0076, B:36:0x0085, B:38:0x008b, B:40:0x0091, B:42:0x0097, B:44:0x00a5, B:41:0x0094), top: B:52:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00da  */
    /* JADX WARN: Code duplicated, block: B:52:0x004f A[EXC_TOP_SPLITTER, LOOP:1: B:52:0x004f->B:24:0x0055, LOOP_START, PHI: r13
      0x004f: PHI (r13v2 java.lang.String) = (r13v7 java.lang.String), (r13v3 java.lang.String) binds: [B:21:0x004d, B:24:0x0055] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0094 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x00a5, please report this as an issue */
    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase, String str2) throws JSONException {
        JSONArray jSONArray;
        JSONArray jSONArrayOptJSONArray;
        Cursor cursorA;
        JSONArray jSONArray2;
        int i10;
        String strC;
        JSONObject jSONObject2;
        Cursor cursor = null;
        strD = null;
        String strD = null;
        try {
            if ("__a".equals(str2)) {
                jSONArrayOptJSONArray = jSONObject.optJSONArray("__a");
                if (jSONArrayOptJSONArray == null) {
                    return;
                }
                if (jSONArrayOptJSONArray.length() <= 0) {
                    return;
                }
            } else {
                if (g.d.a.f84721c.equals(str2)) {
                    jSONArrayOptJSONArray = jSONObject.optJSONArray(g.d.a.f84721c);
                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                        return;
                    }
                } else {
                    jSONArray = null;
                }
                cursorA = a(g.d.f84718a, sQLiteDatabase, new String[]{str2}, "__ii=? ", new String[]{str}, null, null, null, null);
                if (cursorA != null) {
                    while (cursorA.moveToNext()) {
                        try {
                            strD = d(cursorA.getString(cursorA.getColumnIndex(str2)));
                        } catch (Throwable unused) {
                            cursor = cursorA;
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                    }
                }
                jSONArray2 = new JSONArray();
                if (!TextUtils.isEmpty(strD)) {
                    jSONArray2 = new JSONArray(strD);
                }
                if (jSONArray2.length() > 1000) {
                    if (cursorA != null) {
                        cursorA.close();
                        return;
                    }
                    return;
                }
                for (i10 = 0; i10 < jSONArray.length(); i10++) {
                    try {
                        jSONObject2 = jSONArray.getJSONObject(i10);
                        if (jSONObject2 != null) {
                            jSONArray2.put(jSONObject2);
                        }
                    } catch (JSONException unused2) {
                    }
                }
                strC = c(jSONArray2.toString());
                if (!TextUtils.isEmpty(strC)) {
                    sQLiteDatabase.execSQL("update __sd set " + str2 + "=\"" + strC + "\" where __ii=\"" + str + x.a.f97579g);
                }
                if (cursorA != null) {
                    cursorA.close();
                }
            }
            jSONArray = jSONArrayOptJSONArray;
            cursorA = a(g.d.f84718a, sQLiteDatabase, new String[]{str2}, "__ii=? ", new String[]{str}, null, null, null, null);
            if (cursorA != null) {
                while (cursorA.moveToNext()) {
                    strD = d(cursorA.getString(cursorA.getColumnIndex(str2)));
                }
            }
            jSONArray2 = new JSONArray();
            if (!TextUtils.isEmpty(strD)) {
                jSONArray2 = new JSONArray(strD);
            }
            if (jSONArray2.length() > 1000) {
                if (cursorA != null) {
                    cursorA.close();
                    return;
                }
                return;
            }
            while (i10 < jSONArray.length()) {
                jSONObject2 = jSONArray.getJSONObject(i10);
                if (jSONObject2 != null) {
                    jSONArray2.put(jSONObject2);
                }
            }
            strC = c(jSONArray2.toString());
            if (!TextUtils.isEmpty(strC)) {
                sQLiteDatabase.execSQL("update __sd set " + str2 + "=\"" + strC + "\" where __ii=\"" + str + x.a.f97579g);
            }
            if (cursorA != null) {
                cursorA.close();
            }
        } catch (Throwable unused3) {
        }
    }

    public JSONObject a(boolean z10) {
        a();
        this.f84760j.clear();
        JSONObject jSONObject = new JSONObject();
        if (!z10) {
            a(jSONObject, z10);
            b(jSONObject, (String) null);
            a(jSONObject, (String) null);
        } else {
            String strA = a(jSONObject, z10);
            if (!TextUtils.isEmpty(strA)) {
                b(jSONObject, strA);
                a(jSONObject, strA);
            }
        }
        return jSONObject;
    }

    private void a(JSONObject jSONObject, String str) {
        SQLiteDatabase sQLiteDatabaseA;
        Cursor cursorA;
        JSONArray jSONArray;
        JSONArray jSONArray2;
        Cursor cursor = null;
        try {
            try {
                try {
                    sQLiteDatabaseA = i.a(f84754d).a();
                    try {
                        sQLiteDatabaseA.beginTransaction();
                        if (!TextUtils.isEmpty(str)) {
                            cursorA = a(g.b.f84692a, sQLiteDatabaseA, null, "__i=? ", new String[]{str}, null, null, null, null);
                        } else {
                            cursorA = a(g.b.f84692a, sQLiteDatabaseA, null, null, null, null, null, null, null);
                        }
                        cursor = cursorA;
                        if (cursor != null) {
                            JSONObject jSONObject2 = new JSONObject();
                            JSONObject jSONObject3 = new JSONObject();
                            String strB = w.a().b();
                            while (cursor.moveToNext()) {
                                int i10 = cursor.getInt(cursor.getColumnIndex("__t"));
                                String string = cursor.getString(cursor.getColumnIndex("__i"));
                                String string2 = cursor.getString(cursor.getColumnIndex("__s"));
                                if (TextUtils.isEmpty(string) || WMConstants.TIMER_STAGE_NONE.equals(string)) {
                                    if (!TextUtils.isEmpty(strB)) {
                                        string = strB;
                                    }
                                }
                                this.f84760j.add(Integer.valueOf(cursor.getInt(0)));
                                if (i10 != 2049) {
                                    if (i10 == 2050 && !TextUtils.isEmpty(string2)) {
                                        JSONObject jSONObject4 = new JSONObject(d(string2));
                                        if (jSONObject3.has(string)) {
                                            jSONArray = jSONObject3.optJSONArray(string);
                                        } else {
                                            jSONArray = new JSONArray();
                                        }
                                        jSONArray.put(jSONObject4);
                                        jSONObject3.put(string, jSONArray);
                                    }
                                } else if (!TextUtils.isEmpty(string2)) {
                                    JSONObject jSONObject5 = new JSONObject(d(string2));
                                    if (jSONObject2.has(string)) {
                                        jSONArray2 = jSONObject2.optJSONArray(string);
                                    } else {
                                        jSONArray2 = new JSONArray();
                                    }
                                    jSONArray2.put(jSONObject5);
                                    jSONObject2.put(string, jSONArray2);
                                }
                            }
                            if (jSONObject2.length() > 0) {
                                JSONArray jSONArray3 = new JSONArray();
                                Iterator<String> itKeys = jSONObject2.keys();
                                while (itKeys.hasNext()) {
                                    JSONObject jSONObject6 = new JSONObject();
                                    String next = itKeys.next();
                                    jSONObject6.put(next, new JSONArray(jSONObject2.optString(next)));
                                    if (jSONObject6.length() > 0) {
                                        jSONArray3.put(jSONObject6);
                                    }
                                }
                                if (jSONArray3.length() > 0) {
                                    jSONObject.put("ekv", jSONArray3);
                                }
                            }
                            if (jSONObject3.length() > 0) {
                                JSONArray jSONArray4 = new JSONArray();
                                Iterator<String> itKeys2 = jSONObject3.keys();
                                while (itKeys2.hasNext()) {
                                    JSONObject jSONObject7 = new JSONObject();
                                    String next2 = itKeys2.next();
                                    jSONObject7.put(next2, new JSONArray(jSONObject3.optString(next2)));
                                    if (jSONObject7.length() > 0) {
                                        jSONArray4.put(jSONObject7);
                                    }
                                }
                                if (jSONArray4.length() > 0) {
                                    jSONObject.put(f.Z, jSONArray4);
                                }
                            }
                        }
                        sQLiteDatabaseA.setTransactionSuccessful();
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (SQLiteDatabaseCorruptException unused) {
                        j.a(f84754d);
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (sQLiteDatabaseA != null) {
                        }
                        i.a(f84754d).b();
                    } catch (Throwable unused2) {
                        j.a(f84754d);
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (sQLiteDatabaseA != null) {
                        }
                        i.a(f84754d).b();
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabaseA != null) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused3) {
                        }
                    }
                    i.a(f84754d).b();
                    throw th;
                }
            } catch (SQLiteDatabaseCorruptException unused4) {
                sQLiteDatabaseA = null;
            } catch (Throwable unused5) {
                sQLiteDatabaseA = null;
            }
            sQLiteDatabaseA.endTransaction();
        } catch (Throwable unused6) {
        }
        i.a(f84754d).b();
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0230 A[EXC_TOP_SPLITTER, PHI: r0 r12 r14
      0x0230: PHI (r0v6 java.lang.String) = (r0v2 java.lang.String), (r0v3 java.lang.String), (r0v39 java.lang.String), (r0v39 java.lang.String) binds: [B:91:0x021f, B:97:0x022e, B:83:0x0209, B:84:0x020b] A[DONT_GENERATE, DONT_INLINE]
      0x0230: PHI (r12v6 android.database.sqlite.SQLiteDatabase) = 
      (r12v3 android.database.sqlite.SQLiteDatabase)
      (r12v4 android.database.sqlite.SQLiteDatabase)
      (r12v7 android.database.sqlite.SQLiteDatabase)
      (r12v7 android.database.sqlite.SQLiteDatabase)
     binds: [B:91:0x021f, B:97:0x022e, B:83:0x0209, B:84:0x020b] A[DONT_GENERATE, DONT_INLINE]
      0x0230: PHI (r14v6 android.database.Cursor) = 
      (r14v3 android.database.Cursor)
      (r14v4 android.database.Cursor)
      (r14v33 android.database.Cursor)
      (r14v33 android.database.Cursor)
     binds: [B:91:0x021f, B:97:0x022e, B:83:0x0209, B:84:0x020b] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x021c  */
    /* JADX WARN: Code duplicated, block: B:96:0x022b  */
    private String a(JSONObject jSONObject, boolean z10) {
        SQLiteDatabase sQLiteDatabaseA;
        Cursor cursorA;
        JSONArray jSONArray;
        String str;
        String string = null;
        try {
            try {
                sQLiteDatabaseA = i.a(f84754d).a();
                try {
                    sQLiteDatabaseA.beginTransaction();
                    cursorA = a(g.d.f84718a, sQLiteDatabaseA, null, null, null, null, null, null, null);
                    if (cursorA != null) {
                        try {
                            JSONArray jSONArray2 = new JSONArray();
                            while (true) {
                                if (!cursorA.moveToNext()) {
                                    cursorA = cursorA;
                                    jSONArray = jSONArray2;
                                    break;
                                }
                                JSONObject jSONObject2 = new JSONObject();
                                String string2 = cursorA.getString(cursorA.getColumnIndex(g.d.a.f84725g));
                                String string3 = cursorA.getString(cursorA.getColumnIndex("__e"));
                                String string4 = cursorA.getString(cursorA.getColumnIndex(g.d.a.f84726h));
                                string = cursorA.getString(cursorA.getColumnIndex("__ii"));
                                try {
                                    if (TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
                                        str = string;
                                        cursorA = cursorA;
                                        jSONArray = jSONArray2;
                                    } else {
                                        if (Long.parseLong(string2) - Long.parseLong(string3) > 0) {
                                            String string5 = cursorA.getString(cursorA.getColumnIndex("__a"));
                                            String string6 = cursorA.getString(cursorA.getColumnIndex(g.d.a.f84721c));
                                            String string7 = cursorA.getString(cursorA.getColumnIndex(g.d.a.f84722d));
                                            String string8 = cursorA.getString(cursorA.getColumnIndex(g.d.a.f84723e));
                                            this.f84759i.add(string);
                                            String string9 = cursorA.getString(cursorA.getColumnIndex("__sp"));
                                            String string10 = cursorA.getString(cursorA.getColumnIndex("__pp"));
                                            jSONObject2.put("id", string);
                                            jSONObject2.put(f.f84665p, string3);
                                            jSONObject2.put(f.f84666q, string2);
                                            str = string;
                                            if (!FieldManager.allow(com.umeng.commonsdk.utils.d.E)) {
                                                jSONObject2.put("duration", Long.parseLong(string2) - Long.parseLong(string3));
                                            } else {
                                                try {
                                                    if (Long.parseLong(string4) <= 0) {
                                                        jSONObject2.put("duration", Long.parseLong(string2) - Long.parseLong(string3));
                                                    } else {
                                                        jSONObject2.put("duration", Long.parseLong(string4));
                                                        jSONObject2.put(f.f84668s, Long.parseLong(string2) - Long.parseLong(string3));
                                                    }
                                                } catch (SQLiteDatabaseCorruptException unused) {
                                                    cursorA = cursorA;
                                                    string = str;
                                                    j.a(f84754d);
                                                    if (cursorA != null) {
                                                        cursorA.close();
                                                    }
                                                    if (sQLiteDatabaseA != null) {
                                                        sQLiteDatabaseA.endTransaction();
                                                    }
                                                    i.a(f84754d).b();
                                                    return string;
                                                } catch (Throwable unused2) {
                                                    cursorA = cursorA;
                                                    string = str;
                                                    j.a(f84754d);
                                                    if (cursorA != null) {
                                                        cursorA.close();
                                                    }
                                                    if (sQLiteDatabaseA != null) {
                                                        sQLiteDatabaseA.endTransaction();
                                                    }
                                                    i.a(f84754d).b();
                                                    return string;
                                                }
                                            }
                                            try {
                                                if (!TextUtils.isEmpty(string5)) {
                                                    jSONObject2.put(f.f84669t, new JSONArray(d(string5)));
                                                }
                                                boolean z11 = UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO;
                                                if (!TextUtils.isEmpty(string6) && z11) {
                                                    JSONArray jSONArray3 = new JSONArray(d(string6));
                                                    JSONArray jSONArray4 = new JSONArray();
                                                    if (jSONArray3.length() > 0) {
                                                        jSONArray4 = b(jSONArray3);
                                                    }
                                                    jSONObject2.put(f.f84670u, jSONArray4);
                                                }
                                                if (!TextUtils.isEmpty(string7)) {
                                                    jSONObject2.put(f.F, new JSONObject(d(string7)));
                                                }
                                                if (!TextUtils.isEmpty(string8)) {
                                                    jSONObject2.put(f.B, new JSONArray(d(string8)));
                                                }
                                                if (!TextUtils.isEmpty(string9)) {
                                                    jSONObject2.put(f.aA, new JSONObject(d(string9)));
                                                }
                                                if (!TextUtils.isEmpty(string10)) {
                                                    jSONObject2.put(f.aB, new JSONObject(d(string10)));
                                                }
                                                if (jSONObject2.length() > 0) {
                                                    jSONArray = jSONArray2;
                                                    jSONArray.put(jSONObject2);
                                                } else {
                                                    jSONArray = jSONArray2;
                                                }
                                            } catch (SQLiteDatabaseCorruptException unused3) {
                                                string = str;
                                                j.a(f84754d);
                                                if (cursorA != null) {
                                                    cursorA.close();
                                                }
                                                if (sQLiteDatabaseA != null) {
                                                }
                                                i.a(f84754d).b();
                                                return string;
                                            } catch (Throwable unused4) {
                                                string = str;
                                                j.a(f84754d);
                                                if (cursorA != null) {
                                                    cursorA.close();
                                                }
                                                if (sQLiteDatabaseA != null) {
                                                }
                                                i.a(f84754d).b();
                                                return string;
                                            }
                                        } else {
                                            str = string;
                                            cursorA = cursorA;
                                            jSONArray = jSONArray2;
                                        }
                                        if (z10) {
                                            string = str;
                                            break;
                                        }
                                    }
                                    jSONArray2 = jSONArray;
                                    cursorA = cursorA;
                                    string = str;
                                } catch (SQLiteDatabaseCorruptException unused5) {
                                    cursorA = cursorA;
                                    j.a(f84754d);
                                    if (cursorA != null) {
                                        cursorA.close();
                                    }
                                    if (sQLiteDatabaseA != null) {
                                        sQLiteDatabaseA.endTransaction();
                                    }
                                    i.a(f84754d).b();
                                    return string;
                                } catch (Throwable unused6) {
                                    cursorA = cursorA;
                                    j.a(f84754d);
                                    if (cursorA != null) {
                                        cursorA.close();
                                    }
                                    if (sQLiteDatabaseA != null) {
                                        sQLiteDatabaseA.endTransaction();
                                    }
                                    i.a(f84754d).b();
                                    return string;
                                }
                            }
                            try {
                                if (this.f84759i.size() < 1) {
                                    cursorA.close();
                                    try {
                                        sQLiteDatabaseA.endTransaction();
                                    } catch (Throwable unused7) {
                                    }
                                    i.a(f84754d).b();
                                    return string;
                                }
                                if (jSONArray.length() > 0) {
                                    jSONObject.put(f.f84663n, jSONArray);
                                }
                            } catch (SQLiteDatabaseCorruptException unused8) {
                                j.a(f84754d);
                                if (cursorA != null) {
                                    cursorA.close();
                                }
                                if (sQLiteDatabaseA != null) {
                                }
                                i.a(f84754d).b();
                                return string;
                            } catch (Throwable unused9) {
                                j.a(f84754d);
                                if (cursorA != null) {
                                    cursorA.close();
                                }
                                if (sQLiteDatabaseA != null) {
                                }
                                i.a(f84754d).b();
                                return string;
                            }
                        } catch (SQLiteDatabaseCorruptException unused10) {
                        } catch (Throwable unused11) {
                        }
                    } else {
                        cursorA = cursorA;
                    }
                    sQLiteDatabaseA.setTransactionSuccessful();
                    if (cursorA != null) {
                        cursorA.close();
                    }
                } catch (SQLiteDatabaseCorruptException unused12) {
                    cursorA = null;
                } catch (Throwable unused13) {
                    cursorA = null;
                }
            } catch (Throwable th) {
                if (cursorA != null) {
                    cursorA.close();
                }
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused14) {
                    }
                }
                i.a(f84754d).b();
                throw th;
            }
        } catch (SQLiteDatabaseCorruptException unused15) {
            sQLiteDatabaseA = null;
            cursorA = null;
        } catch (Throwable unused16) {
            sQLiteDatabaseA = null;
            cursorA = null;
        }
        try {
            sQLiteDatabaseA.endTransaction();
        } catch (Throwable unused17) {
        }
        i.a(f84754d).b();
        return string;
    }

    public void a(boolean z10, boolean z11) {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                try {
                    sQLiteDatabaseA = i.a(f84754d).a();
                    sQLiteDatabaseA.beginTransaction();
                    if (!z11) {
                        int size = this.f84762l.size();
                        int i10 = 0;
                        if (size > 0) {
                            int i11 = 0;
                            while (i10 < size) {
                                String str = this.f84762l.get(i10);
                                if (str == null) {
                                    i11 = 1;
                                }
                                sQLiteDatabaseA.execSQL("delete from __is where __ii=\"" + str + x.a.f97579g);
                                i10++;
                            }
                            i10 = i11;
                        }
                        if (i10 != 0) {
                            sQLiteDatabaseA.execSQL("delete from __is where __ii is null");
                        }
                    } else if (z10) {
                        sQLiteDatabaseA.execSQL("delete from __is");
                    }
                    sQLiteDatabaseA.setTransactionSuccessful();
                } catch (Throwable unused) {
                    j.a(f84754d);
                    if (sQLiteDatabaseA != null) {
                    }
                }
            } catch (SQLiteDatabaseCorruptException unused2) {
                j.a(f84754d);
                if (sQLiteDatabaseA != null) {
                }
            }
            try {
                sQLiteDatabaseA.endTransaction();
            } catch (Throwable unused3) {
            }
        } finally {
            if (sQLiteDatabaseA != null) {
                try {
                    sQLiteDatabaseA.endTransaction();
                } catch (Throwable unused4) {
                }
            }
            i.a(f84754d).b();
        }
    }

    public void a(boolean z10, String str) {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                try {
                    sQLiteDatabaseA = i.a(f84754d).a();
                    sQLiteDatabaseA.beginTransaction();
                    if (!TextUtils.isEmpty(str)) {
                        sQLiteDatabaseA.execSQL("delete from __er where __i=\"" + str + x.a.f97579g);
                        sQLiteDatabaseA.execSQL("delete from __et where __i=\"" + str + x.a.f97579g);
                        this.f84760j.clear();
                        sQLiteDatabaseA.execSQL("delete from __sd where __ii=\"" + str + x.a.f97579g);
                    }
                    sQLiteDatabaseA.setTransactionSuccessful();
                } finally {
                    if (sQLiteDatabaseA != null) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused) {
                        }
                    }
                    i.a(f84754d).b();
                }
            } catch (SQLiteDatabaseCorruptException unused2) {
                j.a(f84754d);
            } catch (Throwable unused3) {
                if (sQLiteDatabaseA != null) {
                }
            }
        } catch (Throwable unused4) {
        }
    }
}
