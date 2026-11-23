package com.kwad.components.core.c;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.core.threads.GlobalThreadPools;
import com.kwad.sdk.service.ServiceProvider;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static volatile a Pg;
    private final SQLiteDatabase Pe;
    private ConcurrentHashMap<String, e> Pf = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.kwad.components.core.c.a$a, reason: collision with other inner class name */
    static class C0842a extends SQLiteOpenHelper {
        private static int Pj = 1;
        private String Pk;
        private String Pl;

        public C0842a(@Nullable Context context) {
            super(context, "ksadcache.db", (SQLiteDatabase.CursorFactory) null, Pj);
            this.Pk = "CREATE TABLE IF NOT EXISTS ksad_ad_cache (creativeId VARCHAR PRIMARY KEY NOT NULL, posId TEXT, adJson TEXT, ecpm INTEGER, playAgainJson TEXT, adSenseJson TEXT, createTime INTEGER, expireTime INTEGER)";
            this.Pl = "CREATE TABLE IF NOT EXISTS ksad_ad_cache_strategy(posId VARCHAR PRIMARY KEY NOT NULL, cacheSize INTEGER, cacheSecond INTEGER, strategyCode INTEGER, enable INTEGER)";
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(this.Pk);
            sQLiteDatabase.execSQL(this.Pl);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        }
    }

    private a(Context context) {
        this.Pe = new C0842a(context).getWritableDatabase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T extends j> void b(List<T> list, String str) {
        try {
            this.Pe.beginTransaction();
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                try {
                    com.kwad.sdk.core.d.c.d("AdCacheDBManager", "insertData: " + str + ", rowId: " + this.Pe.insertWithOnConflict(str, null, it2.next().oT(), 5));
                } catch (Exception e10) {
                    com.kwad.sdk.core.d.c.printStackTrace(e10);
                }
            }
            this.Pe.setTransactionSuccessful();
        } catch (Exception e11) {
            com.kwad.sdk.core.d.c.printStackTrace(e11);
        } finally {
            SQLiteDatabase sQLiteDatabase = this.Pe;
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Exception e12) {
                    com.kwad.sdk.core.d.c.printStackTrace(e12);
                }
            }
        }
    }

    @Nullable
    public static a oI() {
        if (Pg == null) {
            synchronized (a.class) {
                if (Pg == null) {
                    try {
                        Pg = new a(ServiceProvider.Ud());
                    } catch (SQLiteException e10) {
                        com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
                        Pg = null;
                    }
                }
            }
        }
        return Pg;
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0057: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]) (LINE:88), block:B:27:0x0057 */
    @WorkerThread
    public final e ah(String str) throws Throwable {
        Cursor cursorRawQuery;
        Closeable closeable;
        e eVar;
        ConcurrentHashMap<String, e> concurrentHashMap = this.Pf;
        if (concurrentHashMap != null && (eVar = concurrentHashMap.get(str)) != null) {
            com.kwad.sdk.core.d.c.d("AdCacheDBManager", "findCacheStrategyList from cache, posId: " + str);
            return eVar;
        }
        Closeable closeable2 = null;
        try {
            try {
                cursorRawQuery = this.Pe.rawQuery("select  * from ksad_ad_cache_strategy where posId=?", new String[]{str});
                try {
                    List<e> listA = e.a(cursorRawQuery);
                    if (listA != null && listA.size() > 0) {
                        e eVar2 = listA.get(0);
                        this.Pf.put(str, eVar2);
                        com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
                        return eVar2;
                    }
                } catch (Exception e10) {
                    e = e10;
                    com.kwad.sdk.core.d.c.printStackTraceOnly(e);
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                com.kwad.sdk.crash.utils.b.closeQuietly(closeable2);
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            com.kwad.sdk.crash.utils.b.closeQuietly(closeable2);
            throw th;
        }
        com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
        return null;
    }

    @WorkerThread
    public final void j(List<i> list) {
        b(list, "ksad_ad_cache");
    }

    @WorkerThread
    public final void oJ() {
        try {
            this.Pe.delete("ksad_ad_cache", "expireTime<?", new String[]{String.valueOf(System.currentTimeMillis() / 1000)});
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
        }
    }

    @WorkerThread
    public final void oK() {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = this.Pe.rawQuery("select  * from ksad_ad_cache_strategy", null);
                List<e> listA = e.a(cursorRawQuery);
                if (listA != null && !listA.isEmpty()) {
                    for (e eVar : listA) {
                        com.kwad.sdk.core.d.c.d("AdCacheDBManager", "readCacheStrategyList:" + eVar.oP());
                        this.Pf.put(eVar.oP(), eVar);
                    }
                }
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            }
        } finally {
            com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
        }
    }

    @WorkerThread
    public final void z(long j10) {
        try {
            com.kwad.sdk.core.d.c.d("AdCacheDBManager", "deleteCachedAdByCreativeId result: " + this.Pe.delete("ksad_ad_cache", "creativeId=?", new String[]{String.valueOf(j10)}));
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0095: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:34:0x0095 */
    @Nullable
    @WorkerThread
    public final List<i> a(String str, long j10, int i10) throws Throwable {
        Cursor cursorRawQuery;
        Closeable closeable;
        Closeable closeable2 = null;
        try {
            try {
                cursorRawQuery = this.Pe.rawQuery("select  * from ksad_ad_cache where posId=? order by createTime desc", new String[]{str});
                try {
                    List<i> listA = i.a(cursorRawQuery);
                    if (listA == null) {
                        com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
                        return null;
                    }
                    StringBuilder sb2 = new StringBuilder("(posId = " + str + ") AND (");
                    ArrayList arrayList = new ArrayList();
                    int i11 = 0;
                    for (i iVar : listA) {
                        i11++;
                        if (i11 > i10) {
                            sb2.append(" creativeId = ");
                            sb2.append(iVar.pc());
                            if (i11 == listA.size()) {
                                sb2.append(")");
                            } else {
                                sb2.append(" OR");
                            }
                        } else if (iVar.pa() >= j10) {
                            arrayList.add(iVar);
                        }
                    }
                    if (i11 > i10) {
                        this.Pe.delete("ksad_ad_cache", sb2.toString(), new String[0]);
                    }
                    com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
                    return arrayList;
                } catch (Exception e10) {
                    e = e10;
                    com.kwad.sdk.core.d.c.printStackTraceOnly(e);
                    com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                com.kwad.sdk.crash.utils.b.closeQuietly(closeable2);
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            com.kwad.sdk.crash.utils.b.closeQuietly(closeable2);
            throw th;
        }
    }

    public final void a(final e eVar) {
        this.Pf.put(eVar.oP(), eVar);
        GlobalThreadPools.Oi().execute(new Runnable() { // from class: com.kwad.components.core.c.a.1
            @Override // java.lang.Runnable
            public final void run() {
                a.this.b(Collections.singletonList(eVar), "ksad_ad_cache_strategy");
            }
        });
    }
}
