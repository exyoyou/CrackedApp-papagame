package y7;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.db.BossTable;
import com.papa.sim.statistic.db.EMUApkTable;
import com.papa.sim.statistic.db.StatisticTable;
import com.papa91.common.BaseAppConfig;
import com.tencent.stat.DeviceInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f97685e = "a";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f97686f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Semaphore f97687a = new Semaphore(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f97688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SQLiteDatabase f97689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f97690d;

    private a(Context context) {
        this.f97688b = b.a(context);
        try {
            p();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f97690d = context;
    }

    public static a o(Context context) {
        a aVar = f97686f;
        if (aVar == null) {
            a aVar2 = new a(context);
            f97686f = aVar2;
            return aVar2;
        }
        SQLiteDatabase sQLiteDatabase = aVar.f97689c;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            f97686f = new a(context);
        }
        return f97686f;
    }

    private synchronized void p() {
        SQLiteDatabase sQLiteDatabase = this.f97689c;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            b bVar = this.f97688b;
            if (bVar != null) {
                this.f97689c = bVar.getWritableDatabase();
            }
            SQLiteDatabase sQLiteDatabase2 = this.f97689c;
            if (sQLiteDatabase2 != null) {
                sQLiteDatabase2.enableWriteAheadLogging();
            }
        }
    }

    private Cursor q() {
        return this.f97689c.rawQuery("SELECT * FROM BossTable limit 50", null);
    }

    public void a() {
        p();
        this.f97689c.delete(b.f97694e, null, null);
    }

    public void b() {
        try {
            this.f97689c.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void c(Event event) {
        try {
            p();
            this.f97689c.delete(b.f97695f, "type = ?", new String[]{event.name()});
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void d(BossTable bossTable) {
        try {
            p();
            this.f97689c.delete(b.f97695f, "id = ?", new String[]{bossTable.getId() + ""});
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void delete(Event event) {
        p();
        this.f97689c.delete(b.f97693d, "type = ?", new String[]{event.name()});
    }

    public void e(StatisticTable statisticTable) {
        try {
            try {
                this.f97687a.acquire();
                p();
                this.f97689c.beginTransaction();
                this.f97689c.execSQL("update StatisticTable set send=3 where id=?", new String[]{statisticTable.getId() + ""});
                this.f97689c.setTransactionSuccessful();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.f97687a.release();
            this.f97689c.endTransaction();
        }
    }

    public void f(String str, String str2) {
        p();
        this.f97689c.delete(b.f97693d, "type = ? and time =?", new String[]{str, str2});
    }

    public void g() throws IllegalStateException {
        p();
        this.f97689c.delete(b.f97693d, "send =?", new String[]{"3"});
    }

    public boolean h(Event event) {
        p();
        Cursor cursorRawQuery = this.f97689c.rawQuery("SELECT * FROM StatisticTable where type=? ", new String[]{event.name()});
        boolean z10 = !cursorRawQuery.isAfterLast();
        cursorRawQuery.close();
        return z10;
    }

    public boolean i(Event event, String str) {
        p();
        Cursor cursorRawQuery = this.f97689c.rawQuery("SELECT * FROM StatisticTable where type=? and args2=?", new String[]{event.name(), str});
        boolean zIsAfterLast = cursorRawQuery.isAfterLast();
        cursorRawQuery.close();
        return !zIsAfterLast;
    }

    public boolean j(String str) {
        p();
        Cursor cursorRawQuery = this.f97689c.rawQuery("SELECT * FROM EMUApkTable where package_name=? ", new String[]{str});
        boolean zIsAfterLast = cursorRawQuery.isAfterLast();
        cursorRawQuery.close();
        return !zIsAfterLast;
    }

    public List<StatisticTable> k() {
        p();
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = this.f97689c.rawQuery("SELECT * FROM StatisticTable  order by id limit 50", null);
        while (cursorRawQuery.moveToNext()) {
            try {
                try {
                    StatisticTable statisticTable = new StatisticTable();
                    statisticTable.setId(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("id")));
                    statisticTable.setUid(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("uid")));
                    statisticTable.setType(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("type")));
                    statisticTable.setArgs1(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("args1")));
                    statisticTable.setArgs2(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("args2")));
                    statisticTable.setTime(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("time")));
                    statisticTable.setAd(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ad")));
                    statisticTable.setCountType(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("countType")));
                    statisticTable.setSend(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("send")));
                    statisticTable.setNewData(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("newData")));
                    statisticTable.setIsdirect(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("isdirect")));
                    arrayList.add(statisticTable);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } catch (Throwable th) {
                cursorRawQuery.close();
                throw th;
            }
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public List<BossTable> l() {
        p();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQ = q();
        while (cursorQ.moveToNext()) {
            try {
                try {
                    BossTable bossTable = new BossTable();
                    bossTable.setId(cursorQ.getInt(cursorQ.getColumnIndex("id")));
                    bossTable.setUid(cursorQ.getString(cursorQ.getColumnIndex("uid")));
                    bossTable.setType(cursorQ.getString(cursorQ.getColumnIndex("type")));
                    bossTable.setArgs1(cursorQ.getString(cursorQ.getColumnIndex("args1")));
                    bossTable.setArgs2(cursorQ.getString(cursorQ.getColumnIndex("args2")));
                    bossTable.setTime(cursorQ.getString(cursorQ.getColumnIndex("time")));
                    bossTable.setAd(cursorQ.getString(cursorQ.getColumnIndex("ad")));
                    bossTable.setCountType(cursorQ.getString(cursorQ.getColumnIndex("countType")));
                    arrayList.add(bossTable);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } catch (Throwable th) {
                cursorQ.close();
                throw th;
            }
        }
        cursorQ.close();
        return arrayList;
    }

    public List<EMUApkTable> m() {
        p();
        ArrayList arrayList = new ArrayList(0);
        Cursor cursorRawQuery = this.f97689c.rawQuery("SELECT * FROM EMUApkTable", null);
        while (cursorRawQuery.moveToNext()) {
            EMUApkTable eMUApkTable = new EMUApkTable();
            eMUApkTable.setId(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("id")));
            eMUApkTable.setApk_name(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("apk_name")));
            eMUApkTable.setLogo(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("logo")));
            eMUApkTable.setPackage_name(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("package_name")));
            eMUApkTable.setLaunch_name(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("launch_name")));
            eMUApkTable.setTeam_info(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("team_info")));
            eMUApkTable.setVer_info(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ver_info")));
            eMUApkTable.setDown_url(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("down_url")));
            eMUApkTable.setSize(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("size")));
            eMUApkTable.setRelease_date(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("release_date")));
            eMUApkTable.setVer(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(DeviceInfo.TAG_VERSION)));
            eMUApkTable.setVer_compatible(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ver_compatible")));
            eMUApkTable.setTag_id(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("tag_id")));
            eMUApkTable.setApkPath(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(BaseAppConfig.KEY_APK_PATH)));
            eMUApkTable.setDownloadFinish(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("downloadFinish")));
            arrayList.add(eMUApkTable);
        }
        cursorRawQuery.close();
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00db  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    public StatisticTable n(String str, String str2) throws Throwable {
        Cursor cursorRawQuery;
        ?? r10 = 0;
        try {
            try {
                this.f97687a.acquire();
                p();
                cursorRawQuery = this.f97689c.rawQuery("SELECT * FROM StatisticTable where type=? and time=?", new String[]{str, str2});
                try {
                    if (cursorRawQuery.moveToNext()) {
                        StatisticTable statisticTable = new StatisticTable();
                        statisticTable.setId(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("id")));
                        statisticTable.setUid(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("uid")));
                        statisticTable.setType(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("type")));
                        statisticTable.setArgs1(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("args1")));
                        statisticTable.setArgs2(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("args2")));
                        statisticTable.setTime(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("time")));
                        statisticTable.setAd(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ad")));
                        statisticTable.setCountType(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("countType")));
                        statisticTable.setSend(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("send")));
                        statisticTable.setNewData(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("newData")));
                        statisticTable.setIsdirect(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("isdirect")));
                        this.f97687a.release();
                        cursorRawQuery.close();
                        return statisticTable;
                    }
                    this.f97687a.release();
                } catch (Exception e10) {
                    e = e10;
                    e.printStackTrace();
                    this.f97687a.release();
                    if (cursorRawQuery != null) {
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                r10 = str;
                this.f97687a.release();
                if (r10 != 0) {
                    r10.close();
                }
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            this.f97687a.release();
            if (r10 != 0) {
                r10.close();
            }
            throw th;
        }
        cursorRawQuery.close();
        return null;
    }

    public void r(StatisticTable statisticTable) {
        try {
            try {
                try {
                    this.f97687a.acquire();
                    p();
                    this.f97689c.beginTransaction();
                    if (statisticTable.getId() != 0) {
                        this.f97689c.execSQL("INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(?, ?,?, ?, ?,?,?,?,?,?,?)", new Object[]{Integer.valueOf(statisticTable.getId()), statisticTable.getUid(), statisticTable.getType(), statisticTable.getArgs1(), statisticTable.getArgs2(), statisticTable.getTime(), statisticTable.getAd(), statisticTable.getCountType(), Integer.valueOf(statisticTable.getSend()), Integer.valueOf(statisticTable.getNewData()), Integer.valueOf(statisticTable.getIsdirect())});
                    } else {
                        this.f97689c.execSQL("INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(null, ?,?, ?, ?,?,?,?,?,?,?)", new Object[]{statisticTable.getUid(), statisticTable.getType(), statisticTable.getArgs1(), statisticTable.getArgs2(), statisticTable.getTime(), statisticTable.getAd(), statisticTable.getCountType(), Integer.valueOf(statisticTable.getSend()), Integer.valueOf(statisticTable.getNewData()), Integer.valueOf(statisticTable.getIsdirect())});
                    }
                    this.f97689c.setTransactionSuccessful();
                    this.f97687a.release();
                    this.f97689c.endTransaction();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f97687a.release();
                    this.f97689c.endTransaction();
                }
            } catch (Throwable th) {
                try {
                    this.f97687a.release();
                    this.f97689c.endTransaction();
                    throw th;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    throw th;
                }
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public void s(List<StatisticTable> list) {
        try {
            this.f97687a.acquire();
            p();
            this.f97689c.beginTransaction();
            for (StatisticTable statisticTable : list) {
                if (statisticTable.getId() != 0) {
                    this.f97689c.execSQL("INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(?, ?,?, ?, ?,?,?,?,?,?,?)", new Object[]{Integer.valueOf(statisticTable.getId()), statisticTable.getUid(), statisticTable.getType(), statisticTable.getArgs1(), statisticTable.getArgs2(), statisticTable.getTime(), statisticTable.getAd(), statisticTable.getCountType(), Integer.valueOf(statisticTable.getSend()), Integer.valueOf(statisticTable.getNewData()), Integer.valueOf(statisticTable.getIsdirect())});
                } else {
                    this.f97689c.execSQL("INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(null,?, ?, ?, ?,?,?,?,?,?,?)", new Object[]{statisticTable.getUid(), statisticTable.getType(), statisticTable.getArgs1(), statisticTable.getArgs2(), statisticTable.getTime(), statisticTable.getAd(), statisticTable.getCountType(), Integer.valueOf(statisticTable.getSend()), Integer.valueOf(statisticTable.getNewData()), Integer.valueOf(statisticTable.getIsdirect())});
                }
            }
            this.f97689c.setTransactionSuccessful();
        } catch (Exception unused) {
        } finally {
            this.f97687a.release();
            this.f97689c.endTransaction();
        }
    }

    public void t(BossTable bossTable) {
        try {
            try {
                try {
                    this.f97687a.acquire();
                    p();
                    this.f97689c.beginTransaction();
                    if (bossTable.getId() != 0) {
                        this.f97689c.execSQL("INSERT INTO BossTable VALUES(?, ?,?, ?, ?,?,?,?)", new Object[]{Integer.valueOf(bossTable.getId()), bossTable.getUid(), bossTable.getType(), bossTable.getArgs1(), bossTable.getArgs2(), bossTable.getTime(), bossTable.getAd(), bossTable.getCountType()});
                    } else {
                        this.f97689c.execSQL("INSERT INTO BossTable VALUES(null, ?,?, ?, ?,?,?,?)", new Object[]{bossTable.getUid(), bossTable.getType(), bossTable.getArgs1(), bossTable.getArgs2(), bossTable.getTime(), bossTable.getAd(), bossTable.getCountType()});
                    }
                    this.f97689c.setTransactionSuccessful();
                    this.f97687a.release();
                    this.f97689c.endTransaction();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f97687a.release();
                    this.f97689c.endTransaction();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } catch (Throwable th) {
            try {
                this.f97687a.release();
                this.f97689c.endTransaction();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            throw th;
        }
    }

    public void u(List<EMUApkTable> list) {
        try {
            try {
                this.f97687a.acquire();
                p();
                this.f97689c.beginTransaction();
                for (EMUApkTable eMUApkTable : list) {
                    this.f97689c.execSQL("INSERT INTO EMUApkTable VALUES(?,?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?)", new Object[]{Integer.valueOf(eMUApkTable.getId()), eMUApkTable.getApk_name(), eMUApkTable.getLogo(), eMUApkTable.getPackage_name(), eMUApkTable.getLaunch_name(), eMUApkTable.getTeam_info(), eMUApkTable.getVer_info(), eMUApkTable.getDown_url(), eMUApkTable.getSize(), eMUApkTable.getRelease_date(), eMUApkTable.getVer(), eMUApkTable.getVer_compatible(), eMUApkTable.getTag_id(), eMUApkTable.getApkPath(), Integer.valueOf(eMUApkTable.getDownloadFinish())});
                }
                this.f97689c.setTransactionSuccessful();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.f97687a.release();
            this.f97689c.endTransaction();
        }
    }

    public void v(String str, String str2) {
        try {
            try {
                this.f97687a.acquire();
                p();
                this.f97689c.beginTransaction();
                this.f97689c.execSQL("update StatisticTable set send=1,isdirect=1 where type=? and time=?", new String[]{str, str2});
                this.f97689c.setTransactionSuccessful();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.f97687a.release();
            this.f97689c.endTransaction();
        }
    }

    public void delete(StatisticTable statisticTable) {
        try {
            try {
                this.f97687a.acquire();
                p();
                this.f97689c.delete(b.f97693d, "id = ?", new String[]{statisticTable.getId() + ""});
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.f97687a.release();
        }
    }

    public void delete(int i10) {
        p();
        this.f97689c.delete(b.f97693d, "id = ?", new String[]{i10 + ""});
    }
}
