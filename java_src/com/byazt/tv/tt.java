package com.byazt.tv;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.byazt.yv.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 239, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.byazt.tv.c[] f20451a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f20452c = {1};
    public static final HashMap<String, com.byazt.tv.c> tt = new HashMap<>();
    public static final C0444tt[] ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final c f20453n;
    public String sp;
    public final com.byazt.lu.uj uj;

    @com.byazt.zqa.c(c = {0, 1, 239, 194})
    private static class c extends SQLiteOpenHelper {
        public c(@Nullable Context context, @Nullable String str, @Nullable SQLiteDatabase.CursorFactory cursorFactory, int i10) {
            super(new com.byazt.nys.c(context), str, cursorFactory, i10);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.beginTransaction();
                Iterator<com.byazt.tv.c> it2 = tt.tt.values().iterator();
                while (it2.hasNext()) {
                    String strVe = it2.next().ve();
                    if (strVe != null) {
                        sQLiteDatabase.execSQL(strVe);
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                u.c(sQLiteDatabase);
            } catch (Throwable th) {
                try {
                    com.byazt.yv.da.tt(th);
                } finally {
                    u.c(sQLiteDatabase);
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            onUpgrade(sQLiteDatabase, i10, i11);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            com.byazt.yv.da.uj("onUpgrade, " + i10 + ", " + i11, null);
            try {
                sQLiteDatabase.beginTransaction();
                Iterator<com.byazt.tv.c> it2 = tt.tt.values().iterator();
                while (it2.hasNext()) {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + it2.next().uj());
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Throwable th) {
                try {
                    com.byazt.yv.da.ve("", th);
                } catch (Throwable th2) {
                    u.c(sQLiteDatabase);
                    throw th2;
                }
            }
            u.c(sQLiteDatabase);
            onCreate(sQLiteDatabase);
        }
    }

    /* JADX INFO: renamed from: com.byazt.tv.tt$tt, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 239, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA})
    static class C0444tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f20454c;
        public int tt;
        public int ve;

        /* JADX INFO: Access modifiers changed from: private */
        public static void tt() {
            for (C0444tt c0444tt : tt.ve) {
                c0444tt.f20454c = "";
                c0444tt.tt = 0;
                c0444tt.ve = 0;
            }
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(this.ve);
            sb2.append("-");
            sb2.append(this.f20454c);
            sb2.append("-");
            sb2.append(this.tt);
            return sb2.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(com.byazt.tv.c cVar) {
            String strI = cVar.i();
            if (strI == null || strI.length() <= this.tt) {
                return;
            }
            this.f20454c = cVar.x();
            this.tt = strI.length();
        }
    }

    static {
        c(new i());
        c(new a(true));
        c(new da());
        c(new x());
        com.byazt.tv.c[] cVarArr = {new ve(), new n(null, false, null), new uj("", new JSONObject())};
        f20451a = cVarArr;
        for (int i10 = 0; i10 < 3; i10++) {
            c(cVarArr[i10]);
        }
        ve = new C0444tt[]{new C0444tt(), new C0444tt(), new C0444tt()};
    }

    public tt(com.byazt.lu.uj ujVar) {
        this.f20453n = new c(ujVar.getContext(), "bd_embed_tea_agent.db", null, 30);
        this.uj = ujVar;
    }

    private String c(String str, boolean z10) {
        StringBuilder sb2 = new StringBuilder("SELECT * FROM page WHERE session_id");
        sb2.append(z10 ? "='" : "!='");
        sb2.append(str);
        sb2.append("' ORDER BY ");
        sb2.append(z10 ? "session_id," : "");
        sb2.append("duration DESC LIMIT 500");
        return sb2.toString();
    }

    private String tt(String str, boolean z10) {
        StringBuilder sb2 = new StringBuilder("DELETE FROM page WHERE session_id");
        sb2.append(z10 ? "='" : "!='");
        sb2.append(str);
        sb2.append("'");
        return sb2.toString();
    }

    public void setResult(ArrayList<x> arrayList, ArrayList<x> arrayList2, ArrayList<x> arrayList3) {
        SQLiteDatabase sQLiteDatabase = null;
        com.byazt.yv.da.c("setResult, " + arrayList + ", " + arrayList2, null);
        Iterator<x> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            x next = it2.next();
            if (!arrayList3.contains(next) && Math.abs(System.currentTimeMillis() - next.tt) > 864000000) {
                arrayList.add(next);
                it2.remove();
            }
        }
        try {
            SQLiteDatabase writableDatabase = this.f20453n.getWritableDatabase();
            try {
                writableDatabase.beginTransaction();
                try {
                    for (x xVar : arrayList) {
                        if (arrayList3.contains(xVar)) {
                            c(xVar, true, writableDatabase, false);
                        } else {
                            writableDatabase.execSQL("DELETE FROM pack WHERE _id=?", new String[]{String.valueOf(xVar.f20434c)});
                        }
                    }
                } catch (Throwable th) {
                    com.byazt.yv.da.tt(th);
                }
                for (x xVar2 : arrayList2) {
                    if (xVar2.my != null) {
                        c((String) null);
                    }
                    if (!arrayList3.contains(xVar2)) {
                        long j10 = xVar2.f20434c;
                        int i10 = xVar2.f20463u + 1;
                        xVar2.f20463u = i10;
                        writableDatabase.execSQL(c(j10, i10));
                    }
                }
                writableDatabase.setTransactionSuccessful();
                u.c(writableDatabase);
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase = writableDatabase;
                try {
                    com.byazt.yv.da.tt(th);
                } finally {
                    u.c(sQLiteDatabase);
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private String c(com.byazt.tv.c cVar, String str, boolean z10, int i10, int i11) {
        StringBuilder sb2 = new StringBuilder("SELECT * FROM ");
        sb2.append(cVar.uj());
        sb2.append(" WHERE session_id");
        sb2.append(z10 ? "='" : "!='");
        sb2.append(str);
        sb2.append("' AND event_type='");
        sb2.append(i11);
        sb2.append("' ORDER BY _id LIMIT ");
        sb2.append(i10);
        return sb2.toString();
    }

    private String c(String str, int i10, String str2, boolean z10, long j10) {
        StringBuilder sb2 = new StringBuilder("DELETE FROM ");
        sb2.append(str);
        sb2.append(" WHERE session_id");
        sb2.append(z10 ? "='" : "!='");
        sb2.append(str2);
        sb2.append("' AND event_type='");
        sb2.append(i10);
        sb2.append("' AND _id<=");
        sb2.append(j10);
        return sb2.toString();
    }

    private String c(long j10, int i10) {
        return "UPDATE pack SET _fail=" + i10 + " WHERE _id=" + j10;
    }

    private static void c(com.byazt.tv.c cVar) {
        tt.put(cVar.uj(), cVar);
    }

    private boolean c(String str) {
        com.byazt.yv.da.c("needLaunch, " + this.sp + ", " + str);
        if (TextUtils.equals(str, this.sp)) {
            return false;
        }
        this.sp = str;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:122:0x015b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public synchronized ArrayList<x> c(JSONObject jSONObject) {
        ArrayList<x> arrayList;
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase2;
        String str;
        long[] jArr;
        JSONObject jSONObject2;
        SQLiteDatabase sQLiteDatabase3;
        HashMap<String, com.byazt.tv.c> map = tt;
        a aVar = (a) map.get("launch");
        da daVar = (da) map.get("terminate");
        i iVar = (i) map.get("page");
        x xVar = (x) map.get("pack");
        arrayList = new ArrayList<>();
        Cursor cursor2 = null;
        try {
            JSONArray[] jSONArrayArr = new JSONArray[3];
            long[] jArr2 = new long[3];
            SQLiteDatabase writableDatabase = this.f20453n.getWritableDatabase();
            try {
                writableDatabase.beginTransaction();
                Cursor cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM launch ORDER BY _id LIMIT 5", null);
                try {
                    com.byazt.lu.sp spVarA = this.uj.a();
                    String strC = spVarA.c();
                    boolean zTt = spVarA.tt();
                    JSONObject jSONObject3 = jSONObject;
                    long j10 = Long.MIN_VALUE;
                    long j11 = Long.MAX_VALUE;
                    try {
                        try {
                            while (true) {
                                if (!cursorRawQuery.moveToNext()) {
                                    break;
                                }
                                try {
                                    aVar.c(cursorRawQuery);
                                    xVar.uj = aVar.uj;
                                    JSONObject jSONObjectC = c(aVar, jSONObject);
                                    if (TextUtils.equals(aVar.uj, strC)) {
                                        try {
                                            aVar.yp = zTt ? false : true;
                                            jSONObject2 = jSONObjectC;
                                            cursor = cursorRawQuery;
                                            sQLiteDatabase3 = writableDatabase;
                                            try {
                                                c(jSONObjectC, aVar, xVar, writableDatabase, jSONArrayArr, jArr2, arrayList);
                                            } catch (Throwable th) {
                                                th = th;
                                                cursor2 = cursor;
                                                sQLiteDatabase = sQLiteDatabase3;
                                                com.byazt.yv.da.tt(th);
                                                if (cursor2 != null) {
                                                    try {
                                                        cursor2.close();
                                                    } catch (Throwable th2) {
                                                        com.byazt.yv.da.tt(th2);
                                                    }
                                                }
                                                u.c(sQLiteDatabase);
                                                return arrayList;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            cursor = cursorRawQuery;
                                            sQLiteDatabase3 = writableDatabase;
                                        }
                                    } else {
                                        jSONObject2 = jSONObjectC;
                                        cursor = cursorRawQuery;
                                        sQLiteDatabase3 = writableDatabase;
                                        try {
                                            long j12 = aVar.f20434c;
                                            if (j12 < j11) {
                                                j11 = j12;
                                            }
                                            if (j12 > j10) {
                                                j10 = j12;
                                            }
                                            c(jSONObject2, aVar, xVar, iVar, daVar, sQLiteDatabase3, jSONArrayArr, jArr2);
                                        } catch (Throwable th4) {
                                            th = th4;
                                            sQLiteDatabase = sQLiteDatabase3;
                                        }
                                    }
                                    JSONObject jSONObject4 = jSONObject2;
                                    sQLiteDatabase = sQLiteDatabase3;
                                    try {
                                        c(jSONObject4, true, xVar, sQLiteDatabase);
                                        jSONObject3 = jSONObject4;
                                        writableDatabase = sQLiteDatabase;
                                        strC = strC;
                                        cursorRawQuery = cursor;
                                        jArr2 = jArr2;
                                    } catch (Throwable th5) {
                                        th = th5;
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    cursor = cursorRawQuery;
                                    sQLiteDatabase = writableDatabase;
                                }
                                cursor2 = cursor;
                                try {
                                    com.byazt.yv.da.tt(th);
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    u.c(sQLiteDatabase);
                                } catch (Throwable th7) {
                                    if (cursor2 != null) {
                                        try {
                                            cursor2.close();
                                        } catch (Throwable th8) {
                                            com.byazt.yv.da.tt(th8);
                                        }
                                    }
                                    u.c(sQLiteDatabase);
                                    throw th7;
                                }
                            }
                            cursor.close();
                        } catch (Throwable th9) {
                            com.byazt.yv.da.tt(th9);
                        }
                        if (cursor.getCount() >= 5 || TextUtils.isEmpty(str)) {
                            sQLiteDatabase2 = sQLiteDatabase;
                        } else {
                            JSONObject jSONObject5 = jSONObject3;
                            sQLiteDatabase2 = sQLiteDatabase;
                            try {
                                c(jSONObject3, aVar, daVar, iVar, xVar, sQLiteDatabase, str, jSONArrayArr, jArr);
                                c(jSONObject5, false, xVar, sQLiteDatabase2);
                            } catch (Throwable th10) {
                                th = th10;
                                sQLiteDatabase = sQLiteDatabase2;
                                cursor2 = cursor;
                                com.byazt.yv.da.tt(th);
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                u.c(sQLiteDatabase);
                            }
                        }
                        sQLiteDatabase2.setTransactionSuccessful();
                        u.c(sQLiteDatabase2);
                    } catch (Throwable th11) {
                        th = th11;
                        cursor2 = cursor;
                        com.byazt.yv.da.tt(th);
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        u.c(sQLiteDatabase);
                    }
                    str = strC;
                    cursor = cursorRawQuery;
                    jArr = jArr2;
                    sQLiteDatabase = writableDatabase;
                    if (j11 != Long.MAX_VALUE && j10 != Long.MIN_VALUE) {
                        sQLiteDatabase.execSQL("DELETE FROM launch WHERE _id>=? AND _id<=?", new String[]{String.valueOf(j11), String.valueOf(j10)});
                    }
                } catch (Throwable th12) {
                    th = th12;
                    cursor = cursorRawQuery;
                    sQLiteDatabase2 = writableDatabase;
                }
            } catch (Throwable th13) {
                th = th13;
                sQLiteDatabase = writableDatabase;
            }
        } catch (Throwable th14) {
            th = th14;
            sQLiteDatabase = null;
        }
        return arrayList;
    }

    private void c(JSONObject jSONObject, boolean z10, x xVar, SQLiteDatabase sQLiteDatabase) {
        for (int i10 : f20452c) {
            JSONArray[] jSONArrayArr = new JSONArray[3];
            long[] jArr = new long[3];
            int iC = c(0, sQLiteDatabase, xVar.uj, z10, i10, jSONArrayArr, jArr);
            if (c(jArr)) {
                int i11 = iC;
                while (true) {
                    xVar.c(jSONObject, null, null, null, jSONArrayArr, jArr, i10);
                    c(xVar, z10, sQLiteDatabase, true);
                    int iC2 = i11;
                    while (true) {
                        if (iC2 < f20451a.length) {
                            iC2 = c(iC2, sQLiteDatabase, xVar.uj, z10, i10, jSONArrayArr, jArr);
                            if (c(jArr)) {
                                i11 = iC2;
                            }
                        }
                    }
                }
            }
        }
    }

    private JSONObject c(a aVar, JSONObject jSONObject) {
        if (TextUtils.equals(aVar.f20430u, this.uj.uj().ve()) && aVar.f20429t == this.uj.uj().tt()) {
            return jSONObject;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            u.ve(jSONObject2, jSONObject);
            jSONObject2.put("app_version", aVar.f20430u);
            jSONObject2.put("version_code", aVar.f20429t);
            return jSONObject2;
        } catch (JSONException e10) {
            com.byazt.yv.da.tt(e10);
            return jSONObject;
        }
    }

    private void c(JSONObject jSONObject, a aVar, x xVar, SQLiteDatabase sQLiteDatabase, JSONArray[] jSONArrayArr, long[] jArr, ArrayList<x> arrayList) {
        SQLiteDatabase sQLiteDatabase2;
        tt ttVar;
        x xVar2;
        int iC;
        com.byazt.yv.da.c("packCurrentData, " + aVar.uj);
        boolean zC = c(aVar.uj);
        int iC2 = c(0, sQLiteDatabase, aVar.uj, true, 0, jSONArrayArr, jArr);
        if (zC || c(jArr)) {
            xVar.c(jSONObject, zC ? aVar : null, null, null, jSONArrayArr, jArr, 0);
            if (iC2 >= f20451a.length) {
                x xVar3 = (x) xVar.clone();
                xVar3.da();
                arrayList.add(xVar3);
                sQLiteDatabase2 = sQLiteDatabase;
                iC = iC2;
                ttVar = this;
                xVar2 = xVar;
            } else {
                sQLiteDatabase2 = sQLiteDatabase;
                ttVar = this;
                xVar2 = xVar;
                ttVar.c(xVar2, true, sQLiteDatabase2, true);
                iC = iC2;
            }
        } else {
            sQLiteDatabase2 = sQLiteDatabase;
            iC = iC2;
            ttVar = this;
            xVar2 = xVar;
        }
        while (iC < f20451a.length) {
            iC = ttVar.c(iC, sQLiteDatabase2, aVar.uj, true, 0, jSONArrayArr, r2);
            if (ttVar.c(r2)) {
                xVar2.c(jSONObject, ttVar.c(aVar.uj) ? aVar : null, null, null, jSONArrayArr, jArr, 0);
                ttVar.c(xVar2, true, sQLiteDatabase2, true);
                iC = iC;
            }
        }
    }

    private void c(JSONObject jSONObject, a aVar, x xVar, i iVar, da daVar, SQLiteDatabase sQLiteDatabase, JSONArray[] jSONArrayArr, long[] jArr) {
        boolean z10;
        com.byazt.yv.da.c("packHistoryData, " + aVar.uj);
        JSONArray jSONArrayC = c(aVar, true, daVar, iVar, sQLiteDatabase);
        aVar.yp = jSONArrayC.length() == 0;
        int iC = c(0, sQLiteDatabase, aVar.uj, true, 0, jSONArrayArr, jArr);
        if (aVar.yp) {
            xVar.c(jSONObject, c(aVar.uj) ? aVar : null, null, null, jSONArrayArr, jArr, 0);
            z10 = true;
        } else {
            z10 = true;
            xVar.c(jSONObject, null, daVar, jSONArrayC, jSONArrayArr, jArr, 0);
        }
        while (true) {
            c(xVar, z10, sQLiteDatabase, z10);
            int iC2 = iC;
            while (iC2 < f20451a.length) {
                iC2 = c(iC2, sQLiteDatabase, aVar.uj, true, 0, jSONArrayArr, jArr);
                if (c(jArr)) {
                    xVar.c(jSONObject, null, null, null, jSONArrayArr, jArr, 0);
                    iC = iC2;
                    z10 = true;
                }
            }
            return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:? A[LOOP:0: B:21:0x00b0->B:31:?, LOOP_END, SYNTHETIC] */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private void c(org.json.JSONObject r18, com.byazt.tv.a r19, com.byazt.tv.da r20, com.byazt.tv.i r21, com.byazt.tv.x r22, android.database.sqlite.SQLiteDatabase r23, java.lang.String r24, org.json.JSONArray[] r25, long[] r26) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.tv.tt.c(org.json.JSONObject, com.byazt.tv.a, com.byazt.tv.da, com.byazt.tv.i, com.byazt.tv.x, android.database.sqlite.SQLiteDatabase, java.lang.String, org.json.JSONArray[], long[]):void");
    }

    private boolean c(long[] jArr) {
        return jArr[0] > 0 || jArr[1] > 0 || jArr[2] > 0;
    }

    public void c(x xVar, boolean z10, SQLiteDatabase sQLiteDatabase, boolean z11) {
        boolean z12;
        if (sQLiteDatabase == null) {
            sQLiteDatabase = this.f20453n.getWritableDatabase();
            z12 = true;
        } else {
            z12 = false;
        }
        if (z12) {
            try {
                sQLiteDatabase.beginTransaction();
            } catch (Throwable th) {
                try {
                    com.byazt.yv.da.tt(th);
                    if (z12) {
                        return;
                    } else {
                        return;
                    }
                } finally {
                    if (z12) {
                        u.c(sQLiteDatabase);
                    }
                }
            }
        }
        if (z11 && sQLiteDatabase.insert("pack", null, xVar.tt((ContentValues) null)) < 0) {
            if (xVar.my != null) {
                c((String) null);
            }
            if (z12) {
                u.c(sQLiteDatabase);
                return;
            }
            return;
        }
        long j10 = xVar.f20461m;
        if (j10 > 0) {
            sQLiteDatabase.execSQL(c(NotificationCompat.CATEGORY_EVENT, xVar.f20435da, xVar.uj, z10, j10));
        }
        long j11 = xVar.rh;
        if (j11 > 0) {
            sQLiteDatabase.execSQL(c("eventv3", xVar.f20435da, xVar.uj, z10, j11));
        }
        long j12 = xVar.rl;
        if (j12 > 0) {
            sQLiteDatabase.execSQL(c("event_misc", xVar.f20435da, xVar.uj, z10, j12));
        }
        if (z12) {
            sQLiteDatabase.setTransactionSuccessful();
        }
        if (z12) {
            u.c(sQLiteDatabase);
        }
    }

    private int c(int i10, SQLiteDatabase sQLiteDatabase, String str, boolean z10, int i11, JSONArray[] jSONArrayArr, long[] jArr) {
        C0444tt.tt();
        int i12 = 0;
        while (i12 < i10) {
            jSONArrayArr[i12] = null;
            jArr[i12] = 0;
            i12++;
        }
        int i13 = i12;
        int i14 = 200;
        while (i14 > 0 && i13 < f20451a.length) {
            c(sQLiteDatabase, str, i14, i13, z10, jSONArrayArr, jArr, i11);
            int length = jSONArrayArr[i13].length();
            i14 -= length;
            ve[i13].ve = length;
            if (i14 > 0) {
                i13++;
            }
        }
        for (int i15 = i13 + 1; i15 < jSONArrayArr.length; i15++) {
            jSONArrayArr[i15] = null;
            jArr[i15] = 0;
        }
        return i13;
    }

    private void c(SQLiteDatabase sQLiteDatabase, String str, int i10, int i11, boolean z10, JSONArray[] jSONArrayArr, long[] jArr, int i12) {
        com.byazt.tv.c cVar = f20451a[i11];
        JSONArray jSONArray = new JSONArray();
        Cursor cursor = null;
        long j10 = 0;
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery(c(cVar, str, z10, i10, i12), null);
            for (int i13 = 0; cursorRawQuery.moveToNext() && i13 <= 200; i13++) {
                try {
                    cVar.c(cursorRawQuery);
                    ve[i11].c(cVar);
                    if (com.byazt.yv.da.tt) {
                        com.byazt.yv.da.c("queryEvent, " + cVar, null);
                    }
                    jSONArray.put(cVar.a());
                    long j11 = cVar.f20434c;
                    if (j11 > j10) {
                        j10 = j11;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery;
                    try {
                        com.byazt.yv.da.tt(th);
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th2) {
                        if (cursor == null) {
                            throw th2;
                        }
                        cursor.close();
                        throw th2;
                    }
                }
            }
            cursorRawQuery.close();
        } catch (Throwable th3) {
            th = th3;
        }
        jSONArrayArr[i11] = jSONArray;
        jArr[i11] = j10;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00d9 A[PHI: r12 r15 r17 r18
      0x00d9: PHI (r12v2 android.database.Cursor) = (r12v3 android.database.Cursor), (r12v6 android.database.Cursor), (r12v6 android.database.Cursor) binds: [B:45:0x00d7, B:34:0x00ba, B:35:0x00bc] A[DONT_GENERATE, DONT_INLINE]
      0x00d9: PHI (r15v2 long) = (r15v3 long), (r15v5 long), (r15v5 long) binds: [B:45:0x00d7, B:34:0x00ba, B:35:0x00bc] A[DONT_GENERATE, DONT_INLINE]
      0x00d9: PHI (r17v3 java.lang.String) = (r17v4 java.lang.String), (r17v7 java.lang.String), (r17v7 java.lang.String) binds: [B:45:0x00d7, B:34:0x00ba, B:35:0x00bc] A[DONT_GENERATE, DONT_INLINE]
      0x00d9: PHI (r18v2 java.lang.String) = (r18v3 java.lang.String), (r18v5 java.lang.String), (r18v5 java.lang.String) binds: [B:45:0x00d7, B:34:0x00ba, B:35:0x00bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:49:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:55:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:58:0x012d  */
    /* JADX WARN: Code duplicated, block: B:59:0x0132  */
    /* JADX WARN: Code duplicated, block: B:61:0x0138  */
    private JSONArray c(a aVar, boolean z10, da daVar, i iVar, SQLiteDatabase sQLiteDatabase) {
        Cursor cursorRawQuery;
        String str;
        String str2;
        long j10;
        String str3;
        String str4;
        long j11;
        JSONArray jSONArray = new JSONArray();
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery(c(aVar.uj, z10), null);
            try {
                HashMap map = new HashMap(8);
                boolean z11 = false;
                str = null;
                str2 = null;
                j10 = 0;
                while (cursorRawQuery.moveToNext()) {
                    try {
                        iVar.c(cursorRawQuery);
                        if (com.byazt.yv.da.tt) {
                            com.byazt.yv.da.c("queryPage, " + iVar, null);
                        }
                        Integer num = (Integer) map.get(iVar.yp);
                        z11 = true;
                        if (!iVar.da()) {
                            map.put(iVar.yp, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
                            long j12 = iVar.f20443t;
                            j10 = j12 >= 1000 ? j10 + j12 : j10 + 1000;
                            jSONArray.put(iVar.a());
                            if (TextUtils.isEmpty(iVar.gt)) {
                                continue;
                            } else {
                                String str5 = iVar.gt;
                                try {
                                    str = str5;
                                    str2 = iVar.f20433a;
                                } catch (Throwable th) {
                                    th = th;
                                    str = str5;
                                    try {
                                        com.byazt.yv.da.tt(th);
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        str3 = str;
                                        str4 = str2;
                                        if (jSONArray.length() > 0) {
                                            j11 = j10 > 1000 ? j10 : 1000L;
                                            daVar.f20439t = j11;
                                            if (z10) {
                                                daVar.uj = aVar.uj;
                                                daVar.c(aVar.tt + j11);
                                            } else {
                                                daVar.uj = UUID.randomUUID().toString();
                                                daVar.c(0L);
                                            }
                                            daVar.f20437n = aVar.f20437n;
                                            daVar.f20433a = aVar.f20433a;
                                            daVar.sp = aVar.sp;
                                            daVar.f20438x = aVar.f20438x;
                                            daVar.f20440u = daVar.tt;
                                            daVar.ve = com.byazt.lu.sp.uj();
                                            daVar.yp = null;
                                            if (!TextUtils.isEmpty(aVar.f20431z)) {
                                                daVar.yp = aVar.f20431z;
                                            } else if (!TextUtils.isEmpty(str3)) {
                                                daVar.yp = str3;
                                                daVar.f20433a = str4;
                                            }
                                        }
                                        return jSONArray;
                                    } catch (Throwable th2) {
                                        if (cursorRawQuery == null) {
                                            throw th2;
                                        }
                                        cursorRawQuery.close();
                                        throw th2;
                                    }
                                }
                            }
                        } else if (num != null) {
                            Integer numValueOf = Integer.valueOf(num.intValue() - 1);
                            if (numValueOf.intValue() > 0) {
                                map.put(iVar.yp, numValueOf);
                            } else {
                                map.remove(iVar.yp);
                            }
                        } else {
                            iVar.f20443t = 1000L;
                            j10 += 1000;
                            jSONArray.put(iVar.a());
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                if (z11) {
                    sQLiteDatabase.execSQL(tt(aVar.uj, z10));
                }
            } catch (Throwable th4) {
                th = th4;
                str = null;
                str2 = str;
                j10 = 0;
                com.byazt.yv.da.tt(th);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                str3 = str;
                str4 = str2;
                if (jSONArray.length() > 0) {
                    if (j10 > 1000) {
                    }
                    daVar.f20439t = j11;
                    if (z10) {
                        daVar.uj = aVar.uj;
                        daVar.c(aVar.tt + j11);
                    } else {
                        daVar.uj = UUID.randomUUID().toString();
                        daVar.c(0L);
                    }
                    daVar.f20437n = aVar.f20437n;
                    daVar.f20433a = aVar.f20433a;
                    daVar.sp = aVar.sp;
                    daVar.f20438x = aVar.f20438x;
                    daVar.f20440u = daVar.tt;
                    daVar.ve = com.byazt.lu.sp.uj();
                    daVar.yp = null;
                    if (!TextUtils.isEmpty(aVar.f20431z)) {
                        daVar.yp = aVar.f20431z;
                    } else if (!TextUtils.isEmpty(str3)) {
                        daVar.yp = str3;
                        daVar.f20433a = str4;
                    }
                }
                return jSONArray;
            }
        } catch (Throwable th5) {
            th = th5;
            cursorRawQuery = null;
            str = null;
        }
        cursorRawQuery.close();
        str3 = str;
        str4 = str2;
        if (jSONArray.length() > 0) {
            if (j10 > 1000) {
            }
            daVar.f20439t = j11;
            if (z10) {
                daVar.uj = aVar.uj;
                daVar.c(aVar.tt + j11);
            } else {
                daVar.uj = UUID.randomUUID().toString();
                daVar.c(0L);
            }
            daVar.f20437n = aVar.f20437n;
            daVar.f20433a = aVar.f20433a;
            daVar.sp = aVar.sp;
            daVar.f20438x = aVar.f20438x;
            daVar.f20440u = daVar.tt;
            daVar.ve = com.byazt.lu.sp.uj();
            daVar.yp = null;
            if (!TextUtils.isEmpty(aVar.f20431z)) {
                daVar.yp = aVar.f20431z;
            } else if (!TextUtils.isEmpty(str3)) {
                daVar.yp = str3;
                daVar.f20433a = str4;
            }
        }
        return jSONArray;
    }

    @NonNull
    public ArrayList<x> c() {
        Cursor cursorRawQuery;
        ArrayList<x> arrayList = new ArrayList<>();
        x xVar = (x) tt.get("pack");
        try {
            cursorRawQuery = this.f20453n.getWritableDatabase().rawQuery("SELECT * FROM pack ORDER BY _id DESC LIMIT 8", null);
            while (cursorRawQuery.moveToNext()) {
                try {
                    xVar = (x) xVar.clone();
                    xVar.c(cursorRawQuery);
                    arrayList.add(xVar);
                } catch (Throwable th) {
                    th = th;
                    try {
                        com.byazt.yv.da.tt(th);
                        if (cursorRawQuery != null) {
                        }
                        com.byazt.yv.da.c("queryPack, " + arrayList, null);
                        return arrayList;
                    } catch (Throwable th2) {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
        cursorRawQuery.close();
        com.byazt.yv.da.c("queryPack, " + arrayList, null);
        return arrayList;
    }

    public void c(@NonNull ArrayList<com.byazt.tv.c> arrayList) {
        ArrayList arrayList2 = new ArrayList(4);
        ArrayList arrayList3 = new ArrayList(4);
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = this.f20453n.getWritableDatabase();
            try {
                writableDatabase.beginTransaction();
                ContentValues contentValuesTt = null;
                for (com.byazt.tv.c cVar : arrayList) {
                    String strUj = cVar.uj();
                    contentValuesTt = cVar.tt(contentValuesTt);
                    cVar.f20434c = writableDatabase.insert(strUj, null, contentValuesTt);
                    if (NotificationCompat.CATEGORY_EVENT.equals(cVar.uj())) {
                        arrayList3.add(cVar);
                    } else if ("eventv3".equals(cVar.uj())) {
                        arrayList3.add(cVar);
                    } else if (cVar instanceof a) {
                        arrayList2.add((a) cVar);
                    }
                }
                writableDatabase.setTransactionSuccessful();
                u.c(writableDatabase);
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = writableDatabase;
                try {
                    com.byazt.yv.da.tt(th);
                } finally {
                    u.c(sQLiteDatabase);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
