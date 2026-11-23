package com.kwad.sdk.core.report;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d implements l<e> {
    private static final String[] aVg = {"count(*)"};
    private static boolean aVh = false;
    protected c aVi;

    public d(c cVar) {
        a(cVar);
    }

    private void a(c cVar) {
        this.aVi = cVar;
    }

    private synchronized void c(e eVar) {
        if (aVh) {
            getTag();
            new StringBuilder("deleteAction action = ").append(eVar);
        }
        try {
            this.aVi.getReadableDatabase().delete(MW(), "actionId=?", new String[]{eVar.actionId});
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
        }
    }

    @Override // com.kwad.sdk.core.report.l
    public final synchronized void H(List<e> list) {
        if (aVh) {
            getTag();
            new StringBuilder("delete size= ").append(list.size());
        }
        SQLiteDatabase readableDatabase = null;
        try {
            try {
                readableDatabase = this.aVi.getReadableDatabase();
                readableDatabase.beginTransaction();
                Iterator<e> it2 = list.iterator();
                while (it2.hasNext()) {
                    c(it2.next());
                }
                readableDatabase.setTransactionSuccessful();
                try {
                    readableDatabase.endTransaction();
                } catch (Exception e10) {
                    com.kwad.sdk.core.d.c.printStackTrace(e10);
                }
            } catch (Throwable th) {
                if (readableDatabase != null) {
                    try {
                        readableDatabase.endTransaction();
                    } catch (Exception e11) {
                        com.kwad.sdk.core.d.c.printStackTrace(e11);
                    }
                }
                throw th;
            }
        } catch (Exception e12) {
            com.kwad.sdk.core.d.c.printStackTrace(e12);
            if (readableDatabase != null) {
                try {
                    readableDatabase.endTransaction();
                } catch (Exception e13) {
                    com.kwad.sdk.core.d.c.printStackTrace(e13);
                }
            }
        }
    }

    protected abstract String MW();

    protected abstract String[] MX();

    public final synchronized List<e> MY() {
        Cursor cursorQuery = null;
        try {
            try {
                String[] strArrMX = MX();
                cursorQuery = this.aVi.getReadableDatabase().query(MW(), strArrMX.length == 0 ? null : strArrMX, null, null, null, null, null);
                if (cursorQuery != null) {
                    ArrayList<e> arrayList = new ArrayList();
                    while (cursorQuery.moveToNext()) {
                        try {
                            arrayList.add(f(cursorQuery));
                        } catch (Exception e10) {
                            com.kwad.sdk.core.d.c.printStackTrace(e10);
                        }
                    }
                    if (aVh) {
                        getTag();
                        new StringBuilder("read size= ").append(arrayList.size());
                        for (e eVar : arrayList) {
                            getTag();
                            new StringBuilder("read action=").append(eVar);
                        }
                    }
                    com.kwad.sdk.crash.utils.b.closeQuietly(cursorQuery);
                    return arrayList;
                }
            } catch (Exception e11) {
                com.kwad.sdk.core.d.c.printStackTrace(e11);
            }
            com.kwad.sdk.crash.utils.b.closeQuietly(cursorQuery);
            return new ArrayList();
        } catch (Throwable th) {
            com.kwad.sdk.crash.utils.b.closeQuietly(cursorQuery);
            throw th;
        }
    }

    @Override // com.kwad.sdk.core.report.l
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final synchronized void o(e eVar) {
        if (aVh) {
            getTag();
            new StringBuilder("write = ").append(eVar);
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("actionId", eVar.actionId);
            contentValues.put("aLog", eVar.toJson().toString());
            try {
                this.aVi.getReadableDatabase().insert(MW(), null, contentValues);
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTrace(e10);
            }
        } catch (Exception e11) {
            com.kwad.sdk.core.d.c.printStackTrace(e11);
        }
    }

    @Override // com.kwad.sdk.core.report.l
    public final synchronized List<e> eE(int i10) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Cursor cursorQuery = null;
            try {
                cursorQuery = this.aVi.getReadableDatabase().query(MW(), MX(), null, null, null, null, null, "0,200");
                while (cursorQuery.moveToNext()) {
                    try {
                        arrayList.add(f(cursorQuery));
                    } catch (Exception e10) {
                        com.kwad.sdk.core.d.c.printStackTrace(e10);
                    }
                }
            } catch (Exception e11) {
                com.kwad.sdk.core.d.c.printStackTrace(e11);
            } finally {
                com.kwad.sdk.crash.utils.b.closeQuietly(cursorQuery);
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    protected abstract e f(@NonNull Cursor cursor);

    protected abstract String getTag();

    @Override // com.kwad.sdk.core.report.l
    public final synchronized long size() {
        long j10;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.aVi.getReadableDatabase().query(MW(), aVg, null, null, null, null, null);
                cursorQuery.moveToFirst();
                j10 = cursorQuery.getLong(0);
                com.kwad.sdk.crash.utils.b.closeQuietly(cursorQuery);
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
                com.kwad.sdk.crash.utils.b.closeQuietly(cursorQuery);
                j10 = 0;
            }
        } catch (Throwable th) {
            com.kwad.sdk.crash.utils.b.closeQuietly(cursorQuery);
            throw th;
        }
        return j10;
    }
}
