package org.repackage.com.vivo.identifier;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

/* JADX INFO: loaded from: classes10.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f95988b = "VMS_SDK_DB";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f95989c = "content://com.vivo.vms.IdProvider/IdentifierId";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f95990d = "content://com.vivo.abe.exidentifier/guid";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f95991e = "value";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f95992f = "OAID";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f95993g = "AAID";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f95994h = "VAID";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f95995i = "OAIDBLACK";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f95996j = "OAIDSTATUS";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f95997k = "STATISTICS";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f95998l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f95999m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f96000n = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f96001o = 3;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f96002p = 4;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f96003q = 5;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f96004r = 6;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f96005s = 7;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f96006t = "UDID";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f96007a;

    b(Context context) {
        this.f96007a = context;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0084 A[Catch: all -> 0x0090, Exception -> 0x00a1, TRY_LEAVE, TryCatch #4 {Exception -> 0x00a1, all -> 0x0090, blocks: (B:26:0x007e, B:28:0x0084), top: B:43:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0095 A[PHI: r0 r8
      0x0095: PHI (r0v3 java.lang.String) = (r0v8 java.lang.String), (r0v6 java.lang.String) binds: [B:39:0x00a1, B:32:0x0093] A[DONT_GENERATE, DONT_INLINE]
      0x0095: PHI (r8v6 android.database.Cursor) = (r8v5 android.database.Cursor), (r8v8 android.database.Cursor) binds: [B:39:0x00a1, B:32:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:43:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    String a(int i10, String str) throws Throwable {
        Uri uri;
        Uri uri2;
        Cursor cursorQuery;
        Cursor cursor = null;
        string = null;
        string = null;
        string = null;
        String string = null;
        if (i10 == 0) {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID");
        } else if (i10 == 1) {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str);
        } else if (i10 == 2) {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_" + str);
        } else if (i10 == 3) {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/UDID");
        } else {
            if (i10 != 4) {
                if (i10 != 5) {
                    uri2 = null;
                } else {
                    uri = Uri.parse(f95990d);
                }
                if (uri2 == null) {
                    return null;
                }
                try {
                    cursorQuery = this.f96007a.getContentResolver().query(uri2, null, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToNext()) {
                                string = cursorQuery.getString(cursorQuery.getColumnIndex("value"));
                            }
                        } catch (Exception unused) {
                            if (cursorQuery != null) {
                            }
                            return string;
                        } catch (Throwable th) {
                            th = th;
                            cursor = cursorQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception unused2) {
                    cursorQuery = null;
                } catch (Throwable th2) {
                    th = th2;
                }
                return string;
            }
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS_" + str);
        }
        uri2 = uri;
        if (uri2 == null) {
            return null;
        }
        cursorQuery = this.f96007a.getContentResolver().query(uri2, null, null, null, null);
        if (cursorQuery != null) {
            if (cursorQuery.moveToNext()) {
                string = cursorQuery.getString(cursorQuery.getColumnIndex("value"));
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return string;
    }

    boolean b(int i10, String str, String str2, String str3) {
        Uri uri;
        if (i10 != 6) {
            uri = null;
        } else {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAIDBLACK_" + str);
        }
        if (uri == null) {
            return false;
        }
        try {
            int iDelete = this.f96007a.getContentResolver().delete(uri, "packageName=? and uid=?", new String[]{str2, str3});
            StringBuilder sb2 = new StringBuilder();
            sb2.append("delete:");
            sb2.append(iDelete);
            return iDelete != 0;
        } catch (Exception unused) {
        }
    }

    boolean c(int i10, String str, ContentValues[] contentValuesArr) {
        Uri uri;
        if (i10 == 6) {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAIDBLACK_" + str);
        } else if (i10 != 7) {
            uri = null;
        } else {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/STATISTICS_" + str);
        }
        if (uri == null) {
            return false;
        }
        try {
            int iBulkInsert = this.f96007a.getContentResolver().bulkInsert(uri, contentValuesArr);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("insert:");
            sb2.append(iBulkInsert);
            return iBulkInsert != 0;
        } catch (Exception unused) {
        }
    }
}
