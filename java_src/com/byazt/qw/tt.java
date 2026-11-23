package com.byazt.qw;

import android.content.ContentValues;
import android.database.Cursor;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 726, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final tt f19282c = new tt();

    /* JADX WARN: Code duplicated, block: B:26:0x00bd A[DONT_GENERATE, PHI: r1 r3
      0x00bd: PHI (r1v2 java.util.ArrayList) = (r1v3 java.util.ArrayList), (r1v5 java.util.ArrayList) binds: [B:25:0x00bb, B:18:0x00b1] A[DONT_GENERATE, DONT_INLINE]
      0x00bd: PHI (r3v3 android.database.Cursor) = (r3v4 android.database.Cursor), (r3v5 android.database.Cursor) binds: [B:25:0x00bb, B:18:0x00b1] A[DONT_GENERATE, DONT_INLINE]] */
    public List<c> c(long j10) {
        ArrayList arrayList;
        long j11 = j10 - 518400000;
        ArrayList arrayList2 = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = com.byazt.pe.c.query(gt.getContext(), "sdk_launch", null, "dev1 > ?", new String[]{String.valueOf(j11)}, null, null, "dev1 DESC");
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        long j12 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev1"));
                        long j13 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev2"));
                        long j14 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev3"));
                        long j15 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev4"));
                        long j16 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev5"));
                        long j17 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev6"));
                        long j18 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev7"));
                        ArrayList arrayList3 = arrayList2;
                        try {
                            long j19 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev8"));
                            c cVar = new c();
                            cVar.uj(j12);
                            cVar.n(j13);
                            cVar.a(j14);
                            cVar.sp(j15);
                            cVar.tt((int) j16);
                            cVar.ve(j17);
                            cVar.c(j18);
                            cVar.tt(j19);
                            arrayList = arrayList3;
                            try {
                                arrayList.add(cVar);
                                arrayList2 = arrayList;
                            } catch (Exception e10) {
                                e = e10;
                                m.c(e);
                                return arrayList;
                            }
                        } catch (Exception e11) {
                            e = e11;
                            arrayList = arrayList3;
                        }
                    }
                }
                arrayList = arrayList2;
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        } catch (Exception e12) {
            e = e12;
            arrayList = arrayList2;
        }
        return arrayList;
    }

    public void insert(c cVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("dev1", Long.valueOf(cVar.i()));
        contentValues.put("dev2", Long.valueOf(cVar.da()));
        contentValues.put("dev3", Long.valueOf(cVar.sl()));
        contentValues.put("dev4", Long.valueOf(cVar.t()));
        contentValues.put("dev5", Integer.valueOf(cVar.u()));
        contentValues.put("dev6", Long.valueOf(cVar.x()));
        contentValues.put("dev7", Long.valueOf(cVar.c()));
        contentValues.put("dev8", Long.valueOf(cVar.tt()));
        com.byazt.pe.c.insert(gt.getContext(), "sdk_launch", contentValues);
    }

    public void c() {
        com.byazt.pe.c.delete(gt.getContext(), "sdk_launch", "dev1 < ?", new String[]{String.valueOf(ve.ve().sp() - 2592000000L)});
    }
}
