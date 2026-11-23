package com.join.android.app.common.db;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import com.join.android.app.common.db.tables.Account;
import com.join.android.app.common.db.tables.Chapter;
import com.join.android.app.common.db.tables.Course;
import com.join.android.app.common.db.tables.Live;
import com.join.android.app.common.db.tables.LocalCourse;
import com.join.android.app.common.db.tables.Notice;
import com.join.android.app.common.db.tables.Order;
import com.join.android.app.common.db.tables.Reference;
import com.join.android.app.common.db.tables.ResourceShare;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.g1;
import com.join.mgps.db.tables.AppBeanMainTable;
import com.join.mgps.db.tables.AppBeanTable;
import com.join.mgps.db.tables.AppMoreBeanTable;
import com.join.mgps.db.tables.AppTimeDataTable;
import com.join.mgps.db.tables.BannerAndTablesTable;
import com.join.mgps.db.tables.CacheTable;
import com.join.mgps.db.tables.CategoryRecordTable;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.db.tables.CloudBackupsDataTable;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.db.tables.DownloadFileTable;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.db.tables.DownloadUrlTable;
import com.join.mgps.db.tables.DownlodTaskCopyTable;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.db.tables.FightMainTable;
import com.join.mgps.db.tables.ForumSearchRecordTable;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.db.tables.GameMainTable;
import com.join.mgps.db.tables.GamePaiWeiUpTaskTable;
import com.join.mgps.db.tables.H5GameAccountDataTable;
import com.join.mgps.db.tables.HandShankTable;
import com.join.mgps.db.tables.HeadPortraitTable;
import com.join.mgps.db.tables.InformatonPointTable;
import com.join.mgps.db.tables.JPushRecordTable;
import com.join.mgps.db.tables.JoystickTable;
import com.join.mgps.db.tables.LatestGameFileTable;
import com.join.mgps.db.tables.ModleBeanTable;
import com.join.mgps.db.tables.PAPARecentlyTable;
import com.join.mgps.db.tables.PlayGameTimeTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.db.tables.RecomDatabeanTable;
import com.join.mgps.db.tables.RewardBananaTable;
import com.join.mgps.db.tables.SearchRecordTable;
import com.join.mgps.db.tables.ShowViewDataBeanTable;
import com.join.mgps.db.tables.StatisticTable;
import com.join.mgps.db.tables.TipBeanTable;
import com.join.mgps.db.tables.TokenTable;
import com.join.mgps.db.tables.UserLocalRecordTable;
import com.join.mgps.db.tables.UserPurchaseInfo;
import com.join.mgps.db.tables.VideoWatchLogTable;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.Dtype;
import com.php25.PDownload.DownloadFile;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import q5.f;
import t6.g;
import t6.j;
import t6.m;

/* JADX INFO: loaded from: classes5.dex */
public class DatabaseHelper extends OrmLiteSqliteOpenHelper {

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private static String f34411p1 = "helloAndroid.db";

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private static final int f34412q1 = 56;
    private RuntimeExceptionDao<ModleBeanTable, Integer> A;
    private RuntimeExceptionDao<AppBeanMainTable, Integer> B;
    private RuntimeExceptionDao<AppBeanTable, Integer> C;
    private RuntimeExceptionDao<PurchasedListTable, Integer> D;
    private RuntimeExceptionDao<JPushRecordTable, Integer> E;
    private RuntimeExceptionDao<CacheTable, Integer> F;
    private RuntimeExceptionDao<TokenTable, Integer> G;
    private RuntimeExceptionDao<HandShankTable, Integer> H;
    private RuntimeExceptionDao<ShowViewDataBeanTable, Integer> I;
    private RuntimeExceptionDao<JoystickTable, Integer> J;
    private RuntimeExceptionDao<PAPARecentlyTable, Integer> K;
    private RuntimeExceptionDao<ForumTable, Integer> L;
    private RuntimeExceptionDao<InformatonPointTable, Integer> M;
    private RuntimeExceptionDao<WarMatchAndLocalTable, Integer> N;
    private RuntimeExceptionDao<AppMoreBeanTable, Integer> O;
    private RuntimeExceptionDao<DownloadUrlTable, Integer> P;
    private RuntimeExceptionDao<CloudBackupsDataTable, Integer> Q;
    private RuntimeExceptionDao<CategoryRecordTable, Integer> R;
    private RuntimeExceptionDao<FightMainTable, Integer> S;
    private RuntimeExceptionDao<UserPurchaseInfo, Integer> T;
    private RuntimeExceptionDao<HeadPortraitTable, Integer> U;
    private RuntimeExceptionDao<DownloadHistoryTable, Integer> V;
    private RuntimeExceptionDao<ForumSearchRecordTable, Integer> W;
    private RuntimeExceptionDao<GameMainTable, Integer> X;
    private RuntimeExceptionDao<H5GameAccountDataTable, Integer> Y;
    private RuntimeExceptionDao<CloudDownRecoderTable, Integer> Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f34413b;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private RuntimeExceptionDao<RewardBananaTable, Integer> f34414b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f34415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RuntimeExceptionDao<Order, Integer> f34416d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RuntimeExceptionDao<Account, Integer> f34417e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RuntimeExceptionDao<Course, Integer> f34418f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private RuntimeExceptionDao<CloudArchiveTable, Integer> f34419f1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RuntimeExceptionDao<Live, Integer> f34420g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RuntimeExceptionDao<Notice, Integer> f34421h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RuntimeExceptionDao<ResourceShare, Integer> f34422i;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private RuntimeExceptionDao<VideoWatchLogTable, Integer> f34423i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RuntimeExceptionDao<LocalCourse, Integer> f34424j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RuntimeExceptionDao<Chapter, Integer> f34425k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private RuntimeExceptionDao<Reference, Integer> f34426l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private RuntimeExceptionDao<UserLocalRecordTable, Integer> f34427l1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RuntimeExceptionDao<TipBeanTable, Integer> f34428m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private RuntimeExceptionDao<BannerAndTablesTable, Integer> f34429n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private RuntimeExceptionDao<EMUApkTable, Integer> f34430o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private RuntimeExceptionDao<EMUApkArenaTable, Integer> f34431p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private RuntimeExceptionDao<PlayGameTimeTable, Integer> f34432p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private RuntimeExceptionDao<GamePaiWeiUpTaskTable, Integer> f34433q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private RuntimeExceptionDao<AppTimeDataTable, Integer> f34434r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private RuntimeExceptionDao<StatisticTable, Integer> f34435s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private RuntimeExceptionDao<SearchRecordTable, Integer> f34436t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private RuntimeExceptionDao<DownloadFileTable, Integer> f34437u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private RuntimeExceptionDao<EMUUpdateTable, Integer> f34438v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private RuntimeExceptionDao<LatestGameFileTable, Integer> f34439w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private RuntimeExceptionDao<DownloadTask, Integer> f34440x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private RuntimeExceptionDao<DownlodTaskCopyTable, Integer> f34441y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private RuntimeExceptionDao<RecomDatabeanTable, Integer> f34442z;

    public DatabaseHelper(Context context) {
        super(context, f34411p1, (SQLiteDatabase.CursorFactory) null, 56, R.raw.ormlite_config);
        this.f34413b = getClass().getSimpleName();
        this.f34416d = null;
        this.f34417e = null;
        this.f34418f = null;
        this.f34420g = null;
        this.f34421h = null;
        this.f34422i = null;
        this.f34424j = null;
        this.f34425k = null;
        this.f34426l = null;
        this.f34428m = null;
        this.f34429n = null;
        this.f34430o = null;
        this.f34431p = null;
        this.f34433q = null;
        this.f34434r = null;
        this.f34435s = null;
        this.f34436t = null;
        this.f34437u = null;
        this.f34438v = null;
        this.f34439w = null;
        this.f34440x = null;
        this.f34441y = null;
        this.f34442z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = null;
        this.R = null;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.f34432p0 = null;
        this.f34414b1 = null;
        this.f34419f1 = null;
        this.f34423i1 = null;
        this.f34427l1 = null;
        this.f34415c = context;
    }

    private boolean G0(SQLiteDatabase db2, String tableName, String fieldName) {
        String string = null;
        Cursor cursorRawQuery = db2.rawQuery(String.format("select sql from sqlite_master where type = 'table' and name = '%s'", tableName), null);
        if (cursorRawQuery != null) {
            try {
                if (cursorRawQuery.moveToFirst()) {
                    string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("sql"));
                }
            } catch (Throwable th) {
                cursorRawQuery.close();
                throw th;
            }
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        return string != null && string.contains(fieldName);
    }

    public static void H0(String name) {
        f34411p1 = name;
    }

    public static String b() {
        return f34411p1;
    }

    public RuntimeExceptionDao<TokenTable, Integer> A0() {
        if (this.G == null) {
            this.G = getRuntimeExceptionDao(TokenTable.class);
        }
        return this.G;
    }

    public RuntimeExceptionDao<UserLocalRecordTable, Integer> B0() {
        if (this.f34427l1 == null) {
            try {
                this.f34427l1 = getRuntimeExceptionDao(UserLocalRecordTable.class);
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
        return this.f34427l1;
    }

    public RuntimeExceptionDao<UserPurchaseInfo, Integer> C0() {
        if (this.T == null) {
            this.T = getRuntimeExceptionDao(UserPurchaseInfo.class);
        }
        return this.T;
    }

    public RuntimeExceptionDao<VideoWatchLogTable, Integer> D0() {
        if (this.f34423i1 == null) {
            try {
                this.f34423i1 = getRuntimeExceptionDao(VideoWatchLogTable.class);
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
        return this.f34423i1;
    }

    public RuntimeExceptionDao<WarMatchAndLocalTable, Integer> E0() {
        if (this.N == null) {
            this.N = getRuntimeExceptionDao(WarMatchAndLocalTable.class);
        }
        return this.N;
    }

    public RuntimeExceptionDao<H5GameAccountDataTable, Integer> F0() {
        if (this.Y == null) {
            this.Y = getRuntimeExceptionDao(H5GameAccountDataTable.class);
        }
        return this.Y;
    }

    public RuntimeExceptionDao<DownloadUrlTable, Integer> I() {
        if (this.P == null) {
            this.P = getRuntimeExceptionDao(DownloadUrlTable.class);
        }
        return this.P;
    }

    public RuntimeExceptionDao<DownlodTaskCopyTable, Integer> J() {
        if (this.f34441y == null) {
            this.f34441y = getRuntimeExceptionDao(DownlodTaskCopyTable.class);
        }
        return this.f34441y;
    }

    public RuntimeExceptionDao<EMUUpdateTable, Integer> K() {
        if (this.f34438v == null) {
            try {
                this.f34438v = getRuntimeExceptionDao(EMUUpdateTable.class);
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
        return this.f34438v;
    }

    public RuntimeExceptionDao<EMUApkArenaTable, Integer> L() {
        if (this.f34431p == null) {
            try {
                this.f34431p = getRuntimeExceptionDao(EMUApkArenaTable.class);
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
        return this.f34431p;
    }

    public RuntimeExceptionDao<EMUApkTable, Integer> M() {
        if (this.f34430o == null) {
            try {
                this.f34430o = getRuntimeExceptionDao(EMUApkTable.class);
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
        return this.f34430o;
    }

    public RuntimeExceptionDao<FightMainTable, Integer> O() {
        if (this.S == null) {
            this.S = getRuntimeExceptionDao(FightMainTable.class);
        }
        return this.S;
    }

    public RuntimeExceptionDao<ForumSearchRecordTable, Integer> P() {
        if (this.W == null) {
            this.W = getRuntimeExceptionDao(ForumSearchRecordTable.class);
        }
        return this.W;
    }

    public RuntimeExceptionDao<ForumTable, Integer> Q() {
        if (this.L == null) {
            this.L = getRuntimeExceptionDao(ForumTable.class);
        }
        return this.L;
    }

    public RuntimeExceptionDao<GameMainTable, Integer> R() {
        if (this.X == null) {
            this.X = getRuntimeExceptionDao(GameMainTable.class);
        }
        return this.X;
    }

    public RuntimeExceptionDao<GamePaiWeiUpTaskTable, Integer> a0() {
        if (this.f34433q == null) {
            try {
                this.f34433q = getRuntimeExceptionDao(GamePaiWeiUpTaskTable.class);
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
        return this.f34433q;
    }

    public RuntimeExceptionDao<HandShankTable, Integer> c0() {
        if (this.H == null) {
            this.H = getRuntimeExceptionDao(HandShankTable.class);
        }
        return this.H;
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper, android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.T = null;
        this.f34416d = null;
        this.f34417e = null;
        this.f34418f = null;
        this.f34420g = null;
        this.f34421h = null;
        this.f34422i = null;
        this.f34424j = null;
        this.f34425k = null;
        this.f34426l = null;
        this.f34428m = null;
        this.f34429n = null;
        this.f34430o = null;
        this.f34431p = null;
        this.f34435s = null;
        this.f34436t = null;
        this.E = null;
        this.f34440x = null;
        this.f34441y = null;
        this.f34442z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = null;
        this.U = null;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.f34433q = null;
        this.f34432p0 = null;
        this.f34414b1 = null;
        this.D = null;
        this.Z = null;
        this.f34434r = null;
        this.f34419f1 = null;
    }

    public RuntimeExceptionDao<Account, Integer> d() {
        if (this.f34417e == null) {
            this.f34417e = getRuntimeExceptionDao(Account.class);
        }
        return this.f34417e;
    }

    public RuntimeExceptionDao<HeadPortraitTable, Integer> d0() {
        if (this.U == null) {
            this.U = getRuntimeExceptionDao(HeadPortraitTable.class);
        }
        return this.U;
    }

    public RuntimeExceptionDao<AppBeanMainTable, Integer> e() {
        if (this.B == null) {
            this.B = getRuntimeExceptionDao(AppBeanMainTable.class);
        }
        return this.B;
    }

    public RuntimeExceptionDao<InformatonPointTable, Integer> e0() {
        if (this.M == null) {
            this.M = getRuntimeExceptionDao(InformatonPointTable.class);
        }
        return this.M;
    }

    public RuntimeExceptionDao<AppBeanTable, Integer> f() {
        if (this.C == null) {
            this.C = getRuntimeExceptionDao(AppBeanTable.class);
        }
        return this.C;
    }

    public RuntimeExceptionDao<JPushRecordTable, Integer> f0() {
        if (this.E == null) {
            this.E = getRuntimeExceptionDao(JPushRecordTable.class);
        }
        return this.E;
    }

    public RuntimeExceptionDao<AppMoreBeanTable, Integer> g() {
        if (this.O == null) {
            this.O = getRuntimeExceptionDao(AppMoreBeanTable.class);
        }
        return this.O;
    }

    public RuntimeExceptionDao<JoystickTable, Integer> g0() {
        if (this.J == null) {
            this.J = getRuntimeExceptionDao(JoystickTable.class);
        }
        return this.J;
    }

    public RuntimeExceptionDao<AppTimeDataTable, Integer> h() {
        if (this.f34434r == null) {
            try {
                this.f34434r = getRuntimeExceptionDao(AppTimeDataTable.class);
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
        return this.f34434r;
    }

    public RuntimeExceptionDao<LatestGameFileTable, Integer> i0() {
        if (this.f34439w == null) {
            this.f34439w = getRuntimeExceptionDao(LatestGameFileTable.class);
        }
        return this.f34439w;
    }

    public RuntimeExceptionDao<BannerAndTablesTable, Integer> j() {
        if (this.f34429n == null) {
            this.f34429n = getRuntimeExceptionDao(BannerAndTablesTable.class);
        }
        return this.f34429n;
    }

    public RuntimeExceptionDao<Live, Integer> j0() {
        if (this.f34420g == null) {
            this.f34420g = getRuntimeExceptionDao(Live.class);
        }
        return this.f34420g;
    }

    public RuntimeExceptionDao<CacheTable, Integer> k() {
        if (this.F == null) {
            this.F = getRuntimeExceptionDao(CacheTable.class);
        }
        return this.F;
    }

    public RuntimeExceptionDao<LocalCourse, Integer> k0() {
        if (this.f34424j == null) {
            this.f34424j = getRuntimeExceptionDao(LocalCourse.class);
        }
        return this.f34424j;
    }

    public RuntimeExceptionDao<CategoryRecordTable, Integer> l() {
        if (this.R == null) {
            this.R = getRuntimeExceptionDao(CategoryRecordTable.class);
        }
        return this.R;
    }

    public RuntimeExceptionDao<ModleBeanTable, Integer> l0() {
        if (this.A == null) {
            this.A = getRuntimeExceptionDao(ModleBeanTable.class);
        }
        return this.A;
    }

    public RuntimeExceptionDao<Notice, Integer> m0() {
        if (this.f34421h == null) {
            this.f34421h = getRuntimeExceptionDao(Notice.class);
        }
        return this.f34421h;
    }

    public RuntimeExceptionDao<Order, Integer> n0() {
        if (this.f34416d == null) {
            this.f34416d = getRuntimeExceptionDao(Order.class);
        }
        return this.f34416d;
    }

    public RuntimeExceptionDao<Chapter, Integer> o() {
        if (this.f34425k == null) {
            this.f34425k = getRuntimeExceptionDao(Chapter.class);
        }
        return this.f34425k;
    }

    public RuntimeExceptionDao<PAPARecentlyTable, Integer> o0() {
        if (this.K == null) {
            this.K = getRuntimeExceptionDao(PAPARecentlyTable.class);
        }
        return this.K;
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onCreate(SQLiteDatabase db2, ConnectionSource connectionSource) {
        try {
            TableUtils.createTable(connectionSource, Order.class);
            TableUtils.createTable(connectionSource, Account.class);
            TableUtils.createTable(connectionSource, Course.class);
            TableUtils.createTable(connectionSource, Live.class);
            TableUtils.createTable(connectionSource, Notice.class);
            TableUtils.createTable(connectionSource, ResourceShare.class);
            TableUtils.createTable(connectionSource, LocalCourse.class);
            TableUtils.createTable(connectionSource, Chapter.class);
            TableUtils.createTable(connectionSource, Reference.class);
            TableUtils.createTable(connectionSource, TipBeanTable.class);
            TableUtils.createTable(connectionSource, BannerAndTablesTable.class);
            TableUtils.createTable(connectionSource, EMUApkTable.class);
            TableUtils.createTable(connectionSource, StatisticTable.class);
            TableUtils.createTable(connectionSource, SearchRecordTable.class);
            TableUtils.createTable(connectionSource, DownloadFileTable.class);
            TableUtils.createTable(connectionSource, EMUUpdateTable.class);
            TableUtils.createTable(connectionSource, LatestGameFileTable.class);
            TableUtils.createTable(connectionSource, DownloadTask.class);
            TableUtils.createTable(connectionSource, DownlodTaskCopyTable.class);
            TableUtils.createTable(connectionSource, RecomDatabeanTable.class);
            TableUtils.createTable(connectionSource, ModleBeanTable.class);
            TableUtils.createTable(connectionSource, AppBeanMainTable.class);
            TableUtils.createTable(connectionSource, AppBeanTable.class);
            TableUtils.createTable(connectionSource, JPushRecordTable.class);
            TableUtils.createTable(connectionSource, CacheTable.class);
            TableUtils.createTable(connectionSource, TokenTable.class);
            TableUtils.createTable(connectionSource, HandShankTable.class);
            TableUtils.createTable(connectionSource, ShowViewDataBeanTable.class);
            TableUtils.createTable(connectionSource, JoystickTable.class);
            TableUtils.createTable(connectionSource, PAPARecentlyTable.class);
            TableUtils.createTable(connectionSource, ForumTable.class);
            TableUtils.createTable(connectionSource, InformatonPointTable.class);
            TableUtils.createTable(connectionSource, WarMatchAndLocalTable.class);
            TableUtils.createTable(connectionSource, AppMoreBeanTable.class);
            TableUtils.createTable(connectionSource, DownloadUrlTable.class);
            TableUtils.createTable(connectionSource, CloudBackupsDataTable.class);
            TableUtils.createTable(connectionSource, CategoryRecordTable.class);
            TableUtils.createTable(connectionSource, FightMainTable.class);
            TableUtils.createTable(connectionSource, UserPurchaseInfo.class);
            TableUtils.createTable(connectionSource, HeadPortraitTable.class);
            TableUtils.createTable(connectionSource, DownloadHistoryTable.class);
            TableUtils.createTable(connectionSource, ForumSearchRecordTable.class);
            TableUtils.createTable(connectionSource, GameMainTable.class);
            TableUtils.createTable(connectionSource, H5GameAccountDataTable.class);
            TableUtils.createTable(connectionSource, EMUApkArenaTable.class);
            TableUtils.createTable(connectionSource, GamePaiWeiUpTaskTable.class);
            TableUtils.createTable(connectionSource, PurchasedListTable.class);
            TableUtils.createTable(connectionSource, CloudDownRecoderTable.class);
            TableUtils.createTable(connectionSource, PlayGameTimeTable.class);
            TableUtils.createTable(connectionSource, AppTimeDataTable.class);
            TableUtils.createTable(connectionSource, RewardBananaTable.class);
            TableUtils.createTable(connectionSource, CloudArchiveTable.class);
            TableUtils.createTable(connectionSource, VideoWatchLogTable.class);
            TableUtils.createTable(connectionSource, UserLocalRecordTable.class);
        } catch (SQLException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase db2, int oldVersion, int newVersion) {
        super.onDowngrade(db2, oldVersion, newVersion);
    }

    /* JADX WARN: Code duplicated, block: B:142:0x031d  */
    /* JADX WARN: Code duplicated, block: B:145:0x0323 A[Catch: SQLException -> 0x0ae6, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:154:0x0354 A[Catch: SQLException -> 0x0ae6, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x035f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:158:0x0361 A[Catch: SQLException -> 0x0ae6, TRY_LEAVE, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:170:0x0386 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:171:0x0388  */
    /* JADX WARN: Code duplicated, block: B:173:0x038c A[Catch: SQLException -> 0x0ae6, TRY_LEAVE, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x03c1 A[Catch: SQLException -> 0x0ae6, TRY_LEAVE, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:205:0x03fe A[Catch: SQLException -> 0x0ae6, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:207:0x0408 A[Catch: SQLException -> 0x0ae6, TRY_LEAVE, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:223:0x045c A[Catch: SQLException -> 0x0ae6, TRY_ENTER, TRY_LEAVE, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:232:0x0492 A[Catch: SQLException -> 0x0ae6, TRY_LEAVE, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:241:0x04c8 A[Catch: SQLException -> 0x0ae6, TRY_LEAVE, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:256:0x04f4 A[Catch: SQLException -> 0x0ae6, TRY_LEAVE, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:271:0x0520 A[Catch: SQLException -> 0x0ae6, TRY_LEAVE, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:313:0x059b  */
    /* JADX WARN: Code duplicated, block: B:316:0x05a1  */
    /* JADX WARN: Code duplicated, block: B:355:0x064f A[Catch: SQLException -> 0x0ae6, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:358:0x065a A[Catch: SQLException -> 0x0ae6, TRY_LEAVE, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:397:0x06c7  */
    /* JADX WARN: Code duplicated, block: B:400:0x06cd  */
    /* JADX WARN: Code duplicated, block: B:552:0x08f9  */
    /* JADX WARN: Code duplicated, block: B:604:0x0a97 A[Catch: SQLException -> 0x0ae6, LOOP:2: B:602:0x0a91->B:604:0x0a97, LOOP_END, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:611:0x0ab7 A[Catch: SQLException -> 0x0ae6, LOOP:3: B:609:0x0ab1->B:611:0x0ab7, LOOP_END, TryCatch #33 {SQLException -> 0x0ae6, blocks: (B:3:0x000a, B:34:0x00a4, B:35:0x00b6, B:37:0x00bc, B:47:0x00e3, B:49:0x00ee, B:58:0x00fc, B:59:0x00ff, B:63:0x0108, B:68:0x0119, B:73:0x0133, B:90:0x0289, B:108:0x02a8, B:110:0x02bc, B:119:0x02cc, B:120:0x02cf, B:124:0x02d6, B:126:0x02f3, B:135:0x0303, B:136:0x0306, B:140:0x030f, B:145:0x0323, B:151:0x0334, B:154:0x0354, B:158:0x0361, B:160:0x0375, B:168:0x0382, B:169:0x0385, B:173:0x038c, B:175:0x03a9, B:184:0x03b9, B:185:0x03bc, B:188:0x03c1, B:190:0x03d5, B:199:0x03e5, B:200:0x03e8, B:201:0x03e9, B:220:0x0449, B:223:0x045c, B:229:0x047f, B:228:0x0471, B:232:0x0492, B:238:0x04b5, B:237:0x04a7, B:241:0x04c8, B:243:0x04dc, B:252:0x04ec, B:253:0x04ef, B:256:0x04f4, B:258:0x0508, B:267:0x0518, B:268:0x051b, B:271:0x0520, B:273:0x0534, B:285:0x0549, B:287:0x054f, B:288:0x0552, B:294:0x056d, B:328:0x05f9, B:342:0x0637, B:355:0x064f, B:358:0x065a, B:384:0x06af, B:404:0x06e7, B:418:0x0713, B:432:0x072d, B:453:0x0792, B:467:0x07d0, B:481:0x080e, B:503:0x0866, B:525:0x08b5, B:539:0x08e1, B:556:0x0913, B:570:0x0948, B:597:0x098d, B:599:0x0a87, B:601:0x0a8d, B:602:0x0a91, B:604:0x0a97, B:606:0x0aa7, B:608:0x0aad, B:609:0x0ab1, B:611:0x0ab7, B:612:0x0ac5, B:595:0x0988, B:587:0x0968, B:579:0x0958, B:580:0x095b, B:565:0x0923, B:566:0x0926, B:548:0x08f1, B:549:0x08f4, B:534:0x08c5, B:535:0x08c8, B:520:0x0886, B:512:0x0876, B:513:0x0879, B:498:0x082e, B:490:0x081e, B:491:0x0821, B:476:0x07e0, B:477:0x07e3, B:462:0x07a2, B:463:0x07a5, B:448:0x0751, B:440:0x0740, B:427:0x0723, B:428:0x0726, B:413:0x06f7, B:414:0x06fa, B:393:0x06bf, B:394:0x06c2, B:351:0x0647, B:352:0x064a, B:337:0x0609, B:338:0x060c, B:323:0x05af, B:309:0x0586, B:311:0x0597, B:312:0x059a, B:205:0x03fe, B:207:0x0408, B:209:0x0429, B:217:0x0436, B:218:0x0439, B:219:0x043a, B:102:0x029c, B:103:0x029f, B:28:0x0096, B:23:0x008b, B:18:0x0082, B:13:0x0079, B:224:0x0469, B:6:0x004b, B:7:0x005c, B:9:0x0062, B:208:0x0418, B:215:0x0432, B:174:0x038f, B:181:0x03b2, B:362:0x0665, B:363:0x066e, B:368:0x067c, B:373:0x068c, B:378:0x069c, B:383:0x06ac, B:382:0x06a9, B:377:0x0699, B:372:0x0689, B:367:0x0679, B:390:0x06b8, B:272:0x0523, B:279:0x053d, B:524:0x088f, B:531:0x08be, B:583:0x0960, B:341:0x0611, B:348:0x0640, B:109:0x02ab, B:116:0x02c5, B:19:0x0085, B:569:0x092b, B:576:0x0951, B:24:0x008e, B:14:0x007c, B:466:0x07aa, B:473:0x07d9, B:189:0x03c4, B:196:0x03de, B:591:0x0971, B:516:0x087e, B:305:0x057e, B:242:0x04cb, B:249:0x04e5, B:319:0x05a7, B:494:0x0826, B:538:0x08cd, B:545:0x08ea, B:502:0x0837, B:509:0x086f, B:403:0x06d3, B:410:0x06f0, B:48:0x00e6, B:291:0x0557, B:293:0x0565, B:303:0x057a, B:125:0x02d9, B:132:0x02fc, B:159:0x0364, B:166:0x037e, B:53:0x00f4, B:233:0x049f, B:327:0x05c3, B:334:0x0602, B:444:0x0749, B:257:0x04f7, B:264:0x0511, B:480:0x07e8, B:487:0x0817, B:436:0x0738, B:452:0x075a, B:459:0x079b, B:555:0x08ff, B:562:0x091c, B:417:0x06ff, B:424:0x071c, B:281:0x0541, B:97:0x0293), top: B:681:0x000a, inners: #0, #4, #7, #8, #10, #13, #14, #15, #16, #18, #20, #23, #24, #26, #27, #31, #32, #34, #35, #37, #39, #40, #41, #42, #44, #45, #46, #50, #52, #53, #54, #55, #57, #59, #62, #63, #67, #68, #69, #70, #71 }] */
    /* JADX WARN: Code duplicated, block: B:619:0x06d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:621:0x0837 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:627:0x0557 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:640:0x08cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:646:0x0960 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:660:0x07e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:666:0x05c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:679:0x0971 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:682:0x087e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:689:0x05a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:691:0x0826 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:695:0x0665 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:701:0x08ff A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:703:0x06ff A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:705:0x075a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:716:0x092b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:718:0x0749 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:720:0x07aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:728:0x0738 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:730:0x0611 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:732:0x088f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onUpgrade(SQLiteDatabase db2, ConnectionSource connectionSource, int oldVersion, int newVersion) {
        int i10;
        boolean z10;
        Class cls;
        Class cls2;
        List<DownloadTask> listD;
        List<CloudArchiveTable> listD2;
        Iterator<CloudArchiveTable> it2;
        Iterator<DownloadTask> it3;
        try {
            com.papa.sim.statistic.pref.b.k(this.f34415c).I(oldVersion);
            TableUtils.dropTable(connectionSource, Order.class, true);
            TableUtils.dropTable(connectionSource, Account.class, true);
            TableUtils.dropTable(connectionSource, Course.class, true);
            TableUtils.dropTable(connectionSource, Live.class, true);
            TableUtils.dropTable(connectionSource, Notice.class, true);
            TableUtils.dropTable(connectionSource, ResourceShare.class, true);
            TableUtils.dropTable(connectionSource, LocalCourse.class, true);
            TableUtils.dropTable(connectionSource, Chapter.class, true);
            TableUtils.dropTable(connectionSource, Reference.class, true);
            if (oldVersion == 3) {
                try {
                    TableUtils.createTable(connectionSource, DownloadFileTable.class);
                    for (DownloadFile downloadFile : com.php25.PDownload.b.i(this.f34415c).c()) {
                        downloadFile.setOpen(true);
                        j.n().k(m.b(downloadFile));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                try {
                    TableUtils.createTable(connectionSource, SearchRecordTable.class);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                try {
                    TableUtils.createTable(connectionSource, EMUUpdateTable.class);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
                try {
                    TableUtils.createTable(connectionSource, LatestGameFileTable.class);
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
                i10 = 4;
            } else {
                i10 = oldVersion;
            }
            if (i10 != 4 || i10 >= newVersion) {
                z10 = false;
            } else {
                TableUtils.createTable(connectionSource, DownloadTask.class);
                TableUtils.createTable(connectionSource, DownlodTaskCopyTable.class);
                Iterator<DownloadFileTable> it4 = j.n().d().iterator();
                while (it4.hasNext()) {
                    f.M().k(m.c(m.a(it4.next())));
                }
                i10 = 5;
                z10 = true;
            }
            if (i10 < 7) {
                i10 = 6;
            }
            if (i10 == 6 && i10 < newVersion && !z10 && newVersion < 7) {
                db2.beginTransaction();
                try {
                    db2.execSQL("ALTER TABLE downloadtask  ADD COLUMN  keyword TEXT");
                    db2.setTransactionSuccessful();
                } catch (Throwable th) {
                    try {
                        th.printStackTrace();
                    } catch (Throwable th2) {
                        db2.endTransaction();
                        throw th2;
                    }
                }
                db2.endTransaction();
                i10 = 7;
            }
            if (i10 == 7 && i10 < newVersion) {
                TableUtils.createTable(connectionSource, JPushRecordTable.class);
                i10 = 8;
            }
            if (i10 == 8 && i10 < newVersion) {
                TableUtils.createTable(connectionSource, CacheTable.class);
                TableUtils.createTable(connectionSource, TokenTable.class);
                TableUtils.createTable(connectionSource, HandShankTable.class);
                TableUtils.createTable(connectionSource, ShowViewDataBeanTable.class);
                i10 = 10;
            }
            if (i10 != 10 || i10 >= newVersion) {
                cls = PAPARecentlyTable.class;
            } else {
                TableUtils.createTable(connectionSource, PAPARecentlyTable.class);
                TableUtils.createTable(connectionSource, ForumTable.class);
                TableUtils.createTable(connectionSource, WarMatchAndLocalTable.class);
                TableUtils.createTable(connectionSource, AppMoreBeanTable.class);
                TableUtils.createTable(connectionSource, DownloadUrlTable.class);
                db2.beginTransaction();
                try {
                    RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY0 = y0();
                    this.f34440x = runtimeExceptionDaoY0;
                    cls = PAPARecentlyTable.class;
                    try {
                        runtimeExceptionDaoY0.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  fight_screenshot_pic TEXT", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  plugin_num TEXT DEFAULT ''", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  is_world INTEGER DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  is_network INTEGER DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  source_ver_name TEXT DEFAULT ''", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  source_ver TEXT DEFAULT ''", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  source_down_url TEXT DEFAULT ''", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  source_down_path TEXT DEFAULT ''", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  plugin_screenshot INTEGER DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  plugin_area INTEGER DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  plugin_area_val BIGINT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  world_shop INTEGER DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  world_area INTEGER DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  is_fight INTEGER DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  fight_type INTEGER DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  fight_fun TEXT DEFAULT ''", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  duration BIGINT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  interrupt INTEGER DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  game_info_tpl_type TEXT", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  currentSize BIGINT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  progress BIGINT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  ext1 TEXT DEFAULT ''", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  zipCost BIGINT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  lock_sp BIGINT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  unzip_size TEXT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  sync_memory TEXT DEFAULT 0", new String[0]);
                        Iterator<DownloadTask> it5 = f.M().d().iterator();
                        while (it5.hasNext()) {
                            DownloadTask next = it5.next();
                            List<TipBean> tipBeans = next.getTipBeans();
                            Iterator<DownloadTask> it6 = it5;
                            if (next.getFileType().equals(Dtype.apk.name())) {
                                String strC2 = "";
                                try {
                                    strC2 = UtilsMy.c2(tipBeans);
                                } catch (Exception e14) {
                                    e14.printStackTrace();
                                }
                                next.setPlugin_num(strC2);
                                f.M().m(next);
                            }
                            it5 = it6;
                        }
                        db2.setTransactionSuccessful();
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            th.printStackTrace();
                            db2.endTransaction();
                            i10 = 13;
                            if (i10 == 11) {
                                db2.beginTransaction();
                                try {
                                    try {
                                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY1 = y0();
                                        this.f34440x = runtimeExceptionDaoY1;
                                        runtimeExceptionDaoY1.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  zipCost BIGINT DEFAULT 0", new String[0]);
                                        db2.setTransactionSuccessful();
                                    } catch (Exception e15) {
                                        e15.printStackTrace();
                                    }
                                    db2.endTransaction();
                                    i10 = 12;
                                } catch (Throwable th4) {
                                    db2.endTransaction();
                                    throw th4;
                                }
                            }
                            if (i10 == 12) {
                                db2.beginTransaction();
                                try {
                                    try {
                                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY2 = y0();
                                        this.f34440x = runtimeExceptionDaoY2;
                                        runtimeExceptionDaoY2.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  lock_sp BIGINT DEFAULT 0", new String[0]);
                                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  unzip_size TEXT DEFAULT 0", new String[0]);
                                        db2.setTransactionSuccessful();
                                    } catch (Throwable th5) {
                                        db2.endTransaction();
                                        throw th5;
                                    }
                                } catch (Exception e16) {
                                    e16.printStackTrace();
                                }
                                db2.endTransaction();
                                i10 = 13;
                            }
                            if (i10 == 13) {
                                TableUtils.createTable(connectionSource, CloudBackupsDataTable.class);
                                TableUtils.createTable(connectionSource, CategoryRecordTable.class);
                                i10 = 14;
                            }
                            if (i10 == 14) {
                                i10 = 15;
                            }
                            if (i10 == 15) {
                                TableUtils.createTable(connectionSource, FightMainTable.class);
                                i10 = 16;
                            }
                            if (i10 == 16) {
                                TableUtils.createTable(connectionSource, UserPurchaseInfo.class);
                                TableUtils.createTable(connectionSource, HeadPortraitTable.class);
                                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY3 = y0();
                                this.f34440x = runtimeExceptionDaoY3;
                                runtimeExceptionDaoY3.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  sync_memory TEXT DEFAULT 0", new String[0]);
                                i10 = 17;
                            }
                            if (i10 == 17) {
                                TableUtils.createTable(connectionSource, DownloadHistoryTable.class);
                                i10 = 18;
                            }
                            if (oldVersion != 18) {
                                if (i10 == 18) {
                                    db2.beginTransaction();
                                    try {
                                        try {
                                            RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY4 = y0();
                                            this.f34440x = runtimeExceptionDaoY4;
                                            runtimeExceptionDaoY4.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  startDownloadTime BIGINT DEFAULT 0", new String[0]);
                                            db2.setTransactionSuccessful();
                                        } catch (Throwable th6) {
                                            db2.endTransaction();
                                            throw th6;
                                        }
                                    } catch (Exception e17) {
                                        e17.printStackTrace();
                                    }
                                    db2.endTransaction();
                                    i10 = 19;
                                }
                                throw new RuntimeException(e);
                            }
                            if (oldVersion <= 18) {
                                i10 = 19;
                            }
                            if (i10 == 19) {
                                db2.beginTransaction();
                                try {
                                    try {
                                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY5 = y0();
                                        this.f34440x = runtimeExceptionDaoY5;
                                        runtimeExceptionDaoY5.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  gift_package_switch INTEGER DEFAULT 0", new String[0]);
                                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  _from INTEGER DEFAULT 0", new String[0]);
                                        db2.setTransactionSuccessful();
                                    } catch (Exception e18) {
                                        e18.printStackTrace();
                                    }
                                    db2.endTransaction();
                                    i10 = 20;
                                } catch (Throwable th7) {
                                    db2.endTransaction();
                                    throw th7;
                                }
                            }
                            if (i10 == 20) {
                                db2.beginTransaction();
                                try {
                                    try {
                                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY6 = y0();
                                        this.f34440x = runtimeExceptionDaoY6;
                                        runtimeExceptionDaoY6.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  actual_size BIGINT DEFAULT 0", new String[0]);
                                        db2.setTransactionSuccessful();
                                    } catch (Exception e19) {
                                        e19.printStackTrace();
                                    }
                                    db2.endTransaction();
                                    i10 = 21;
                                } catch (Throwable th8) {
                                    db2.endTransaction();
                                    throw th8;
                                }
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(" upgradeVersion1=");
                            sb2.append(i10);
                            if (i10 != 21) {
                                if (!G0(db2, "downloadtask", "_from_type")) {
                                    db2.beginTransaction();
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append(" upgradeVersion2=");
                                    sb3.append(i10);
                                    try {
                                        try {
                                            RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY7 = y0();
                                            this.f34440x = runtimeExceptionDaoY7;
                                            runtimeExceptionDaoY7.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN _from_type BIGINT DEFAULT 0", new String[0]);
                                            db2.setTransactionSuccessful();
                                        } catch (Exception e20) {
                                            e20.printStackTrace();
                                        }
                                        db2.endTransaction();
                                    } catch (Throwable th9) {
                                        db2.endTransaction();
                                        throw th9;
                                    }
                                }
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append(" upgradeVersion3=");
                                sb4.append(i10);
                                i10 = 23;
                            } else {
                                if (!G0(db2, "downloadtask", "_from_type")) {
                                    db2.beginTransaction();
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append(" upgradeVersion2=");
                                    sb5.append(i10);
                                    RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY8 = y0();
                                    this.f34440x = runtimeExceptionDaoY8;
                                    runtimeExceptionDaoY8.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN _from_type BIGINT DEFAULT 0", new String[0]);
                                    db2.setTransactionSuccessful();
                                    db2.endTransaction();
                                }
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append(" upgradeVersion3=");
                                sb6.append(i10);
                                i10 = 23;
                            }
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append(" upgradeVersion4=");
                            sb7.append(i10);
                            if (i10 == 23) {
                                StringBuilder sb8 = new StringBuilder();
                                sb8.append(" upgradeVersion5=");
                                sb8.append(i10);
                                try {
                                    TableUtils.createTable(connectionSource, ForumSearchRecordTable.class);
                                } catch (Exception e21) {
                                    e21.printStackTrace();
                                    StringBuilder sb9 = new StringBuilder();
                                    sb9.append(" upgradeVersion6=");
                                    sb9.append(i10);
                                }
                                StringBuilder sb10 = new StringBuilder();
                                sb10.append(" upgradeVersion7=");
                                sb10.append(i10);
                                i10 = 24;
                            }
                            if (i10 == 24) {
                                StringBuilder sb11 = new StringBuilder();
                                sb11.append(" upgradeVersion5=");
                                sb11.append(i10);
                                try {
                                    TableUtils.createTable(connectionSource, GameMainTable.class);
                                } catch (Exception e22) {
                                    e22.printStackTrace();
                                    StringBuilder sb12 = new StringBuilder();
                                    sb12.append(" upgradeVersion6=");
                                    sb12.append(i10);
                                }
                                StringBuilder sb13 = new StringBuilder();
                                sb13.append(" upgradeVersion7=");
                                sb13.append(i10);
                                i10 = 25;
                            }
                            if (i10 == 25) {
                                db2.beginTransaction();
                                try {
                                    try {
                                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY9 = y0();
                                        this.f34440x = runtimeExceptionDaoY9;
                                        runtimeExceptionDaoY9.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  game_info_top_pic BIGINT DEFAULT 0", new String[0]);
                                        db2.setTransactionSuccessful();
                                    } catch (Throwable th10) {
                                        db2.endTransaction();
                                        throw th10;
                                    }
                                } catch (Exception e23) {
                                    e23.printStackTrace();
                                }
                                db2.endTransaction();
                                i10 = 26;
                            }
                            if (i10 == 26) {
                                db2.beginTransaction();
                                try {
                                    try {
                                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY10 = y0();
                                        this.f34440x = runtimeExceptionDaoY10;
                                        runtimeExceptionDaoY10.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  sp_tpl_two_position TEXT DEFAULT 0", new String[0]);
                                        db2.setTransactionSuccessful();
                                    } catch (Throwable th11) {
                                        db2.endTransaction();
                                        throw th11;
                                    }
                                } catch (Exception e24) {
                                    e24.printStackTrace();
                                }
                                db2.endTransaction();
                                i10 = 27;
                            }
                            if (i10 == 27) {
                                db2.beginTransaction();
                                try {
                                    try {
                                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY11 = y0();
                                        this.f34440x = runtimeExceptionDaoY11;
                                        runtimeExceptionDaoY11.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  down_count BIGINT DEFAULT 0", new String[0]);
                                        db2.setTransactionSuccessful();
                                    } catch (Exception e25) {
                                        e25.printStackTrace();
                                    }
                                    db2.endTransaction();
                                    try {
                                        TableUtils.createTable(connectionSource, H5GameAccountDataTable.class);
                                    } catch (Exception e26) {
                                        e26.printStackTrace();
                                    }
                                    i10 = 28;
                                } catch (Throwable th12) {
                                    db2.endTransaction();
                                    throw th12;
                                }
                            }
                            if (i10 == 28) {
                                try {
                                    try {
                                        db2.beginTransaction();
                                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY12 = y0();
                                        this.f34440x = runtimeExceptionDaoY12;
                                        cls2 = CacheTable.class;
                                        try {
                                            runtimeExceptionDaoY12.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  sp_tag_info_s BIGINT DEFAULT 0", new String[0]);
                                            db2.setTransactionSuccessful();
                                        } catch (Exception e27) {
                                            e = e27;
                                            e.printStackTrace();
                                        }
                                    } catch (Throwable th13) {
                                        db2.endTransaction();
                                        throw th13;
                                    }
                                } catch (Exception e28) {
                                    e = e28;
                                    cls2 = CacheTable.class;
                                }
                                db2.endTransaction();
                                try {
                                    TableUtils.createTable(connectionSource, EMUApkArenaTable.class);
                                } catch (Exception e29) {
                                    e29.printStackTrace();
                                    StringBuilder sb14 = new StringBuilder();
                                    sb14.append(" upgradeVersion6=");
                                    sb14.append(i10);
                                }
                                i10 = 29;
                            } else {
                                cls2 = CacheTable.class;
                            }
                            if (i10 == 29) {
                                i10 = 30;
                            }
                            if (i10 == 30) {
                                try {
                                    TableUtils.createTable(connectionSource, GamePaiWeiUpTaskTable.class);
                                } catch (Exception e30) {
                                    e30.printStackTrace();
                                    StringBuilder sb15 = new StringBuilder();
                                    sb15.append(" upgradeVersion6=");
                                    sb15.append(i10);
                                }
                                i10 = 31;
                            }
                            if (i10 == 31) {
                                try {
                                    try {
                                        db2.beginTransaction();
                                        this.f34440x = y0();
                                        TableUtils.createTable(connectionSource, PurchasedListTable.class);
                                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  score BIGINT DEFAULT 0", new String[0]);
                                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  pay_game_amount BIGINT DEFAULT 0", new String[0]);
                                        this.f34440x.executeRaw("ALTER TABLE 'warmatchandlocaltable' ADD COLUMN  pay_game_amount BIGINT DEFAULT 0", new String[0]);
                                        this.f34440x.executeRaw("ALTER TABLE 'fightmaintable' ADD COLUMN  pay_game_amount BIGINT DEFAULT 0", new String[0]);
                                        db2.setTransactionSuccessful();
                                    } catch (Throwable th14) {
                                        db2.endTransaction();
                                        throw th14;
                                    }
                                } catch (Exception e31) {
                                    e31.printStackTrace();
                                }
                                db2.endTransaction();
                                i10 = 32;
                            }
                            if (i10 == 32) {
                                try {
                                    db2.beginTransaction();
                                    RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY13 = y0();
                                    this.f34440x = runtimeExceptionDaoY13;
                                    runtimeExceptionDaoY13.executeRaw("ALTER TABLE 'fightmaintable' ADD COLUMN  down_status BIGINT DEFAULT 0", new String[0]);
                                    this.f34440x.executeRaw("ALTER TABLE 'warmatchandlocaltable' ADD COLUMN  down_status BIGINT DEFAULT 0", new String[0]);
                                    this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  down_status BIGINT DEFAULT 0", new String[0]);
                                    db2.setTransactionSuccessful();
                                } catch (Exception e32) {
                                    e32.printStackTrace();
                                }
                                db2.endTransaction();
                                i10 = 33;
                            }
                            if (i10 == 33) {
                                TableUtils.createTable(connectionSource, CloudDownRecoderTable.class);
                                i10 = 34;
                            }
                            if (i10 == 34) {
                                TableUtils.createTable(connectionSource, PlayGameTimeTable.class);
                                i10 = 35;
                            }
                            try {
                                if (i10 == 35) {
                                    try {
                                        db2.beginTransaction();
                                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY14 = y0();
                                        this.f34440x = runtimeExceptionDaoY14;
                                        try {
                                            runtimeExceptionDaoY14.executeRaw("ALTER TABLE 'emuapktable' ADD COLUMN  down_type BIGINT DEFAULT 1", new String[0]);
                                        } catch (Exception e33) {
                                            e33.printStackTrace();
                                        }
                                        try {
                                            this.f34440x.executeRaw("ALTER TABLE 'emuapkarenatable' ADD COLUMN  down_type BIGINT DEFAULT 1", new String[0]);
                                        } catch (Exception e34) {
                                            e34.printStackTrace();
                                        }
                                        try {
                                            this.f34440x.executeRaw("ALTER TABLE 'emuupdatetable' ADD COLUMN  down_type BIGINT DEFAULT 1", new String[0]);
                                        } catch (Exception e35) {
                                            e35.printStackTrace();
                                        }
                                        try {
                                            this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  down_type BIGINT DEFAULT 1", new String[0]);
                                        } catch (Exception e36) {
                                            e36.printStackTrace();
                                        }
                                        db2.setTransactionSuccessful();
                                    } catch (Exception e37) {
                                        e37.printStackTrace();
                                    }
                                    db2.endTransaction();
                                    i10 = 36;
                                }
                                if (i10 == 36) {
                                    i10 = 37;
                                }
                                if (i10 == 37) {
                                    i10 = 38;
                                }
                                if (i10 == 38) {
                                    try {
                                        try {
                                            db2.beginTransaction();
                                            RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY15 = y0();
                                            this.f34440x = runtimeExceptionDaoY15;
                                            runtimeExceptionDaoY15.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  allow_start_up_ad TEXT DEFAULT 0", new String[0]);
                                            db2.setTransactionSuccessful();
                                        } catch (Throwable th15) {
                                            db2.endTransaction();
                                            throw th15;
                                        }
                                    } catch (Exception e38) {
                                        e38.printStackTrace();
                                    }
                                    db2.endTransaction();
                                    i10 = 39;
                                }
                                if (i10 == 39) {
                                    try {
                                        try {
                                            db2.beginTransaction();
                                            RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY16 = y0();
                                            this.f34440x = runtimeExceptionDaoY16;
                                            runtimeExceptionDaoY16.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  is_boot_commented BIGINT DEFAULT 0", new String[0]);
                                            db2.setTransactionSuccessful();
                                        } catch (Exception e39) {
                                            e39.printStackTrace();
                                        }
                                        db2.endTransaction();
                                        i10 = 40;
                                    } catch (Throwable th16) {
                                        db2.endTransaction();
                                        throw th16;
                                    }
                                }
                                if (i10 == 40) {
                                    TableUtils.createTable(connectionSource, InformatonPointTable.class);
                                    i10 = 41;
                                }
                                if (i10 == 41) {
                                    try {
                                        TableUtils.createTable(connectionSource, AppTimeDataTable.class);
                                    } catch (Exception e40) {
                                        e40.printStackTrace();
                                    }
                                    i10 = 42;
                                }
                                if (i10 == 42) {
                                    try {
                                        TableUtils.createTable(connectionSource, RewardBananaTable.class);
                                    } catch (Exception e41) {
                                        e41.printStackTrace();
                                    }
                                    i10 = 43;
                                }
                                if (i10 == 43) {
                                    try {
                                        try {
                                            db2.beginTransaction();
                                            RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY17 = y0();
                                            this.f34440x = runtimeExceptionDaoY17;
                                            runtimeExceptionDaoY17.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  ext TEXT DEFAULT ''", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  resource_url_remote TEXT DEFAULT ''", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  resource_path TEXT DEFAULT ''", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  res_actual_size BIGINT DEFAULT 0", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  res_currentSize BIGINT DEFAULT 0", new String[0]);
                                            db2.setTransactionSuccessful();
                                        } catch (Exception e42) {
                                            e42.printStackTrace();
                                        }
                                        db2.endTransaction();
                                        i10 = 44;
                                    } catch (Throwable th17) {
                                        db2.endTransaction();
                                        throw th17;
                                    }
                                }
                                if (i10 == 44) {
                                    try {
                                        db2.beginTransaction();
                                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY18 = y0();
                                        this.f34440x = runtimeExceptionDaoY18;
                                        runtimeExceptionDaoY18.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  mod_info TEXT DEFAULT ''", new String[0]);
                                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  task_down_type INT DEFAULT 0", new String[0]);
                                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  ref_crc_sign_id TEXT DEFAULT ''", new String[0]);
                                        db2.setTransactionSuccessful();
                                    } catch (Exception e43) {
                                        e43.printStackTrace();
                                    }
                                    db2.endTransaction();
                                    i10 = 45;
                                }
                                if (i10 == 45) {
                                    try {
                                        try {
                                            db2.beginTransaction();
                                            RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY19 = y0();
                                            this.f34440x = runtimeExceptionDaoY19;
                                            runtimeExceptionDaoY19.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  single_game_mod_info TEXT DEFAULT ''", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  install_type  INT DEFAULT 0", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  game_run_state  INT DEFAULT 0", new String[0]);
                                            db2.setTransactionSuccessful();
                                        } catch (Throwable th18) {
                                            db2.endTransaction();
                                            throw th18;
                                        }
                                    } catch (Exception e44) {
                                        e44.printStackTrace();
                                    }
                                    db2.endTransaction();
                                    i10 = 46;
                                }
                                if (i10 == 46) {
                                    try {
                                        TableUtils.createTable(connectionSource, CloudArchiveTable.class);
                                    } catch (Exception e45) {
                                        e45.printStackTrace();
                                    }
                                    i10 = 47;
                                }
                                if (i10 == 47) {
                                    try {
                                        try {
                                            db2.beginTransaction();
                                            RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY20 = y0();
                                            this.f34440x = runtimeExceptionDaoY20;
                                            runtimeExceptionDaoY20.executeRaw("ALTER TABLE 'gamepaiweiuptasktable' ADD COLUMN  cost_coin INT DEFAULT 0", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'gamepaiweiuptasktable' ADD COLUMN  role_id  INT DEFAULT 0", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'gamepaiweiuptasktable' ADD COLUMN  rank_auto_upload  INT DEFAULT 0", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'gamepaiweiuptasktable' ADD COLUMN  rank_play_time  INT DEFAULT 0", new String[0]);
                                            db2.setTransactionSuccessful();
                                        } catch (Throwable th19) {
                                            db2.endTransaction();
                                            throw th19;
                                        }
                                    } catch (Exception e46) {
                                        e46.printStackTrace();
                                    }
                                    db2.endTransaction();
                                    i10 = 48;
                                }
                                if (i10 == 48) {
                                    try {
                                        TableUtils.createTable(connectionSource, VideoWatchLogTable.class);
                                    } catch (Exception e47) {
                                        e47.printStackTrace();
                                    }
                                    i10 = 49;
                                }
                                try {
                                    if (i10 == 49) {
                                        try {
                                            db2.beginTransaction();
                                            RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY21 = y0();
                                            this.f34440x = runtimeExceptionDaoY21;
                                            runtimeExceptionDaoY21.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  ad_info_switch INT DEFAULT 1", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  ad_info_str TEXT", new String[0]);
                                            this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  vm_device_switch INT DEFAULT 1", new String[0]);
                                            db2.setTransactionSuccessful();
                                        } catch (Exception e48) {
                                            e48.printStackTrace();
                                        }
                                        db2.endTransaction();
                                        i10 = 50;
                                    }
                                    if (i10 == 50) {
                                        try {
                                            try {
                                                db2.beginTransaction();
                                                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY22 = y0();
                                                this.f34440x = runtimeExceptionDaoY22;
                                                runtimeExceptionDaoY22.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  cost_type INT DEFAULT 0", new String[0]);
                                                db2.setTransactionSuccessful();
                                            } catch (Throwable th20) {
                                                db2.endTransaction();
                                                throw th20;
                                            }
                                        } catch (Exception e49) {
                                            e49.printStackTrace();
                                        }
                                        db2.endTransaction();
                                        i10 = 51;
                                    }
                                    if (i10 == 51) {
                                        i10 = 52;
                                    }
                                    if (i10 == 52) {
                                        try {
                                            try {
                                                db2.beginTransaction();
                                                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY23 = y0();
                                                this.f34440x = runtimeExceptionDaoY23;
                                                runtimeExceptionDaoY23.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  feed_back_show_times INT DEFAULT 0", new String[0]);
                                                db2.setTransactionSuccessful();
                                            } catch (Exception e50) {
                                                e50.printStackTrace();
                                            }
                                            db2.endTransaction();
                                            i10 = 53;
                                        } catch (Throwable th21) {
                                            db2.endTransaction();
                                            throw th21;
                                        }
                                    }
                                    try {
                                        if (i10 == 53) {
                                            try {
                                                db2.beginTransaction();
                                                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY24 = y0();
                                                this.f34440x = runtimeExceptionDaoY24;
                                                runtimeExceptionDaoY24.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  cpu_type INT DEFAULT 0", new String[0]);
                                                this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  permission_list TEXT", new String[0]);
                                                db2.setTransactionSuccessful();
                                            } catch (Exception e51) {
                                                e51.printStackTrace();
                                            }
                                            db2.endTransaction();
                                            i10 = 54;
                                        }
                                        if (i10 == 54) {
                                            try {
                                                TableUtils.createTable(connectionSource, UserLocalRecordTable.class);
                                            } catch (Exception e52) {
                                                e52.printStackTrace();
                                            }
                                            i10 = 55;
                                        }
                                        if (i10 == 55) {
                                            try {
                                                db2.execSQL("ALTER TABLE gamepaiweiuptasktable ADD COLUMN imagePath TEXT");
                                                db2.execSQL("ALTER TABLE gamepaiweiuptasktable ADD COLUMN recStage INTEGER DEFAULT 0");
                                                db2.execSQL("ALTER TABLE gamepaiweiuptasktable ADD COLUMN recEndFlag INTEGER DEFAULT 0");
                                                db2.execSQL("ALTER TABLE gamepaiweiuptasktable ADD COLUMN recEndTime INTEGER DEFAULT 0");
                                            } catch (Exception e53) {
                                                e53.printStackTrace();
                                            }
                                            i10 = 56;
                                        }
                                        StringBuilder sb16 = new StringBuilder();
                                        sb16.append(" upgrade db version: ");
                                        sb16.append(i10);
                                        listD = f.M().d();
                                        listD2 = g.t().d();
                                        TableUtils.dropTable(connectionSource, UserPurchaseInfo.class, true);
                                        TableUtils.dropTable(connectionSource, TipBeanTable.class, true);
                                        TableUtils.dropTable(connectionSource, BannerAndTablesTable.class, true);
                                        TableUtils.dropTable(connectionSource, EMUApkTable.class, true);
                                        TableUtils.dropTable(connectionSource, StatisticTable.class, true);
                                        TableUtils.dropTable(connectionSource, SearchRecordTable.class, true);
                                        TableUtils.dropTable(connectionSource, JPushRecordTable.class, true);
                                        TableUtils.dropTable(connectionSource, DownloadFileTable.class, true);
                                        TableUtils.dropTable(connectionSource, EMUUpdateTable.class, true);
                                        TableUtils.dropTable(connectionSource, LatestGameFileTable.class, true);
                                        TableUtils.dropTable(connectionSource, DownloadTask.class, true);
                                        TableUtils.dropTable(connectionSource, DownlodTaskCopyTable.class, true);
                                        TableUtils.dropTable(connectionSource, RecomDatabeanTable.class, true);
                                        TableUtils.dropTable(connectionSource, ModleBeanTable.class, true);
                                        TableUtils.dropTable(connectionSource, AppBeanMainTable.class, true);
                                        TableUtils.dropTable(connectionSource, AppBeanTable.class, true);
                                        TableUtils.dropTable(connectionSource, cls2, true);
                                        TableUtils.dropTable(connectionSource, TokenTable.class, true);
                                        TableUtils.dropTable(connectionSource, ShowViewDataBeanTable.class, true);
                                        TableUtils.dropTable(connectionSource, HandShankTable.class, true);
                                        TableUtils.dropTable(connectionSource, JoystickTable.class, true);
                                        TableUtils.dropTable(connectionSource, cls, true);
                                        TableUtils.dropTable(connectionSource, ForumTable.class, true);
                                        TableUtils.dropTable(connectionSource, InformatonPointTable.class, true);
                                        TableUtils.dropTable(connectionSource, WarMatchAndLocalTable.class, true);
                                        TableUtils.dropTable(connectionSource, AppMoreBeanTable.class, true);
                                        TableUtils.dropTable(connectionSource, DownloadUrlTable.class, true);
                                        TableUtils.dropTable(connectionSource, CloudBackupsDataTable.class, true);
                                        TableUtils.dropTable(connectionSource, CategoryRecordTable.class, true);
                                        TableUtils.dropTable(connectionSource, FightMainTable.class, true);
                                        TableUtils.dropTable(connectionSource, HeadPortraitTable.class, true);
                                        TableUtils.dropTable(connectionSource, DownloadHistoryTable.class, true);
                                        TableUtils.dropTable(connectionSource, ForumSearchRecordTable.class, true);
                                        TableUtils.dropTable(connectionSource, GameMainTable.class, true);
                                        TableUtils.dropTable(connectionSource, H5GameAccountDataTable.class, true);
                                        TableUtils.dropTable(connectionSource, EMUApkArenaTable.class, true);
                                        TableUtils.dropTable(connectionSource, GamePaiWeiUpTaskTable.class, true);
                                        TableUtils.dropTable(connectionSource, PurchasedListTable.class, true);
                                        TableUtils.dropTable(connectionSource, CloudDownRecoderTable.class, true);
                                        TableUtils.dropTable(connectionSource, PlayGameTimeTable.class, true);
                                        TableUtils.dropTable(connectionSource, AppTimeDataTable.class, true);
                                        TableUtils.dropTable(connectionSource, RewardBananaTable.class, true);
                                        TableUtils.dropTable(connectionSource, CloudArchiveTable.class, true);
                                        TableUtils.dropTable(connectionSource, VideoWatchLogTable.class, true);
                                        TableUtils.dropTable(connectionSource, UserLocalRecordTable.class, true);
                                        onCreate(db2, connectionSource);
                                        if (listD != null) {
                                            it3 = listD.iterator();
                                            while (it3.hasNext()) {
                                                f.M().k(it3.next());
                                            }
                                        }
                                        if (listD2 != null) {
                                            it2 = listD2.iterator();
                                            while (it2.hasNext()) {
                                                g.t().k(it2.next());
                                            }
                                        }
                                        g1.c(f.M().d().size() + "");
                                    } catch (Throwable th22) {
                                        db2.endTransaction();
                                        throw th22;
                                    }
                                } catch (Throwable th23) {
                                    db2.endTransaction();
                                    throw th23;
                                }
                            } catch (Throwable th24) {
                                db2.endTransaction();
                                throw th24;
                            }
                        } catch (Throwable th25) {
                            db2.endTransaction();
                            throw th25;
                        }
                    }
                } catch (Throwable th26) {
                    th = th26;
                    cls = PAPARecentlyTable.class;
                }
                db2.endTransaction();
                i10 = 13;
            }
            if (i10 == 11 && i10 < newVersion) {
                db2.beginTransaction();
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY25 = y0();
                this.f34440x = runtimeExceptionDaoY25;
                runtimeExceptionDaoY25.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  zipCost BIGINT DEFAULT 0", new String[0]);
                db2.setTransactionSuccessful();
                db2.endTransaction();
                i10 = 12;
            }
            if (i10 == 12 && i10 < newVersion) {
                db2.beginTransaction();
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY26 = y0();
                this.f34440x = runtimeExceptionDaoY26;
                runtimeExceptionDaoY26.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  lock_sp BIGINT DEFAULT 0", new String[0]);
                this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  unzip_size TEXT DEFAULT 0", new String[0]);
                db2.setTransactionSuccessful();
                db2.endTransaction();
                i10 = 13;
            }
            if (i10 == 13 && i10 < newVersion) {
                TableUtils.createTable(connectionSource, CloudBackupsDataTable.class);
                TableUtils.createTable(connectionSource, CategoryRecordTable.class);
                i10 = 14;
            }
            if (i10 == 14) {
                i10 = 15;
            }
            if (i10 == 15) {
                TableUtils.createTable(connectionSource, FightMainTable.class);
                i10 = 16;
            }
            if (i10 == 16 && i10 < newVersion && oldVersion > 10) {
                TableUtils.createTable(connectionSource, UserPurchaseInfo.class);
                TableUtils.createTable(connectionSource, HeadPortraitTable.class);
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY27 = y0();
                this.f34440x = runtimeExceptionDaoY27;
                runtimeExceptionDaoY27.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  sync_memory TEXT DEFAULT 0", new String[0]);
                i10 = 17;
            }
            if (i10 == 17) {
                TableUtils.createTable(connectionSource, DownloadHistoryTable.class);
                i10 = 18;
            }
            if (oldVersion != 18) {
                if (i10 == 18) {
                    db2.beginTransaction();
                    RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY28 = y0();
                    this.f34440x = runtimeExceptionDaoY28;
                    runtimeExceptionDaoY28.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  startDownloadTime BIGINT DEFAULT 0", new String[0]);
                    db2.setTransactionSuccessful();
                    db2.endTransaction();
                    i10 = 19;
                }
                throw new RuntimeException(e);
            }
            if (oldVersion <= 18) {
                i10 = 19;
            }
            if (i10 == 19) {
                db2.beginTransaction();
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY29 = y0();
                this.f34440x = runtimeExceptionDaoY29;
                runtimeExceptionDaoY29.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  gift_package_switch INTEGER DEFAULT 0", new String[0]);
                this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  _from INTEGER DEFAULT 0", new String[0]);
                db2.setTransactionSuccessful();
                db2.endTransaction();
                i10 = 20;
            }
            if (i10 == 20) {
                db2.beginTransaction();
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY30 = y0();
                this.f34440x = runtimeExceptionDaoY30;
                runtimeExceptionDaoY30.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  actual_size BIGINT DEFAULT 0", new String[0]);
                db2.setTransactionSuccessful();
                db2.endTransaction();
                i10 = 21;
            }
            StringBuilder sb17 = new StringBuilder();
            sb17.append(" upgradeVersion1=");
            sb17.append(i10);
            if (i10 != 21 || i10 == 22) {
                if (!G0(db2, "downloadtask", "_from_type")) {
                    db2.beginTransaction();
                    StringBuilder sb18 = new StringBuilder();
                    sb18.append(" upgradeVersion2=");
                    sb18.append(i10);
                    RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY31 = y0();
                    this.f34440x = runtimeExceptionDaoY31;
                    runtimeExceptionDaoY31.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN _from_type BIGINT DEFAULT 0", new String[0]);
                    db2.setTransactionSuccessful();
                    db2.endTransaction();
                }
                StringBuilder sb19 = new StringBuilder();
                sb19.append(" upgradeVersion3=");
                sb19.append(i10);
                i10 = 23;
            }
            StringBuilder sb20 = new StringBuilder();
            sb20.append(" upgradeVersion4=");
            sb20.append(i10);
            if (i10 == 23) {
                StringBuilder sb21 = new StringBuilder();
                sb21.append(" upgradeVersion5=");
                sb21.append(i10);
                TableUtils.createTable(connectionSource, ForumSearchRecordTable.class);
                StringBuilder sb110 = new StringBuilder();
                sb110.append(" upgradeVersion7=");
                sb110.append(i10);
                i10 = 24;
            }
            if (i10 == 24) {
                StringBuilder sb111 = new StringBuilder();
                sb111.append(" upgradeVersion5=");
                sb111.append(i10);
                TableUtils.createTable(connectionSource, GameMainTable.class);
                StringBuilder sb112 = new StringBuilder();
                sb112.append(" upgradeVersion7=");
                sb112.append(i10);
                i10 = 25;
            }
            if (i10 == 25) {
                db2.beginTransaction();
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY32 = y0();
                this.f34440x = runtimeExceptionDaoY32;
                runtimeExceptionDaoY32.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  game_info_top_pic BIGINT DEFAULT 0", new String[0]);
                db2.setTransactionSuccessful();
                db2.endTransaction();
                i10 = 26;
            }
            if (i10 == 26) {
                db2.beginTransaction();
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY110 = y0();
                this.f34440x = runtimeExceptionDaoY110;
                runtimeExceptionDaoY110.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  sp_tpl_two_position TEXT DEFAULT 0", new String[0]);
                db2.setTransactionSuccessful();
                db2.endTransaction();
                i10 = 27;
            }
            if (i10 == 27) {
                db2.beginTransaction();
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY111 = y0();
                this.f34440x = runtimeExceptionDaoY111;
                runtimeExceptionDaoY111.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  down_count BIGINT DEFAULT 0", new String[0]);
                db2.setTransactionSuccessful();
                db2.endTransaction();
                TableUtils.createTable(connectionSource, H5GameAccountDataTable.class);
                i10 = 28;
            }
            if (i10 == 28) {
                db2.beginTransaction();
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY112 = y0();
                this.f34440x = runtimeExceptionDaoY112;
                cls2 = CacheTable.class;
                runtimeExceptionDaoY112.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  sp_tag_info_s BIGINT DEFAULT 0", new String[0]);
                db2.setTransactionSuccessful();
                db2.endTransaction();
                TableUtils.createTable(connectionSource, EMUApkArenaTable.class);
                i10 = 29;
            } else {
                cls2 = CacheTable.class;
            }
            if (i10 == 29) {
                i10 = 30;
            }
            if (i10 == 30) {
                TableUtils.createTable(connectionSource, GamePaiWeiUpTaskTable.class);
                i10 = 31;
            }
            if (i10 == 31) {
                db2.beginTransaction();
                this.f34440x = y0();
                TableUtils.createTable(connectionSource, PurchasedListTable.class);
                this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  score BIGINT DEFAULT 0", new String[0]);
                this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  pay_game_amount BIGINT DEFAULT 0", new String[0]);
                this.f34440x.executeRaw("ALTER TABLE 'warmatchandlocaltable' ADD COLUMN  pay_game_amount BIGINT DEFAULT 0", new String[0]);
                this.f34440x.executeRaw("ALTER TABLE 'fightmaintable' ADD COLUMN  pay_game_amount BIGINT DEFAULT 0", new String[0]);
                db2.setTransactionSuccessful();
                db2.endTransaction();
                i10 = 32;
            }
            try {
                if (i10 == 32) {
                    db2.beginTransaction();
                    RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY113 = y0();
                    this.f34440x = runtimeExceptionDaoY113;
                    runtimeExceptionDaoY113.executeRaw("ALTER TABLE 'fightmaintable' ADD COLUMN  down_status BIGINT DEFAULT 0", new String[0]);
                    this.f34440x.executeRaw("ALTER TABLE 'warmatchandlocaltable' ADD COLUMN  down_status BIGINT DEFAULT 0", new String[0]);
                    this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  down_status BIGINT DEFAULT 0", new String[0]);
                    db2.setTransactionSuccessful();
                    db2.endTransaction();
                    i10 = 33;
                }
                if (i10 == 33) {
                    TableUtils.createTable(connectionSource, CloudDownRecoderTable.class);
                    i10 = 34;
                }
                if (i10 == 34) {
                    TableUtils.createTable(connectionSource, PlayGameTimeTable.class);
                    i10 = 35;
                }
                if (i10 == 35) {
                    db2.beginTransaction();
                    RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY114 = y0();
                    this.f34440x = runtimeExceptionDaoY114;
                    runtimeExceptionDaoY114.executeRaw("ALTER TABLE 'emuapktable' ADD COLUMN  down_type BIGINT DEFAULT 1", new String[0]);
                    this.f34440x.executeRaw("ALTER TABLE 'emuapkarenatable' ADD COLUMN  down_type BIGINT DEFAULT 1", new String[0]);
                    this.f34440x.executeRaw("ALTER TABLE 'emuupdatetable' ADD COLUMN  down_type BIGINT DEFAULT 1", new String[0]);
                    this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  down_type BIGINT DEFAULT 1", new String[0]);
                    db2.setTransactionSuccessful();
                    db2.endTransaction();
                    i10 = 36;
                }
                if (i10 == 36) {
                    i10 = 37;
                }
                if (i10 == 37) {
                    i10 = 38;
                }
                if (i10 == 38) {
                    db2.beginTransaction();
                    RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY115 = y0();
                    this.f34440x = runtimeExceptionDaoY115;
                    runtimeExceptionDaoY115.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  allow_start_up_ad TEXT DEFAULT 0", new String[0]);
                    db2.setTransactionSuccessful();
                    db2.endTransaction();
                    i10 = 39;
                }
                if (i10 == 39) {
                    db2.beginTransaction();
                    RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY116 = y0();
                    this.f34440x = runtimeExceptionDaoY116;
                    runtimeExceptionDaoY116.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  is_boot_commented BIGINT DEFAULT 0", new String[0]);
                    db2.setTransactionSuccessful();
                    db2.endTransaction();
                    i10 = 40;
                }
                if (i10 == 40 && i10 < newVersion) {
                    TableUtils.createTable(connectionSource, InformatonPointTable.class);
                    i10 = 41;
                }
                if (i10 == 41) {
                    TableUtils.createTable(connectionSource, AppTimeDataTable.class);
                    i10 = 42;
                }
                if (i10 == 42) {
                    TableUtils.createTable(connectionSource, RewardBananaTable.class);
                    i10 = 43;
                }
                if (i10 == 43) {
                    db2.beginTransaction();
                    RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY117 = y0();
                    this.f34440x = runtimeExceptionDaoY117;
                    runtimeExceptionDaoY117.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  ext TEXT DEFAULT ''", new String[0]);
                    this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  resource_url_remote TEXT DEFAULT ''", new String[0]);
                    this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  resource_path TEXT DEFAULT ''", new String[0]);
                    this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  res_actual_size BIGINT DEFAULT 0", new String[0]);
                    this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  res_currentSize BIGINT DEFAULT 0", new String[0]);
                    db2.setTransactionSuccessful();
                    db2.endTransaction();
                    i10 = 44;
                }
                try {
                    if (i10 == 44) {
                        db2.beginTransaction();
                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY118 = y0();
                        this.f34440x = runtimeExceptionDaoY118;
                        runtimeExceptionDaoY118.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  mod_info TEXT DEFAULT ''", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  task_down_type INT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  ref_crc_sign_id TEXT DEFAULT ''", new String[0]);
                        db2.setTransactionSuccessful();
                        db2.endTransaction();
                        i10 = 45;
                    }
                    if (i10 == 45) {
                        db2.beginTransaction();
                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY119 = y0();
                        this.f34440x = runtimeExceptionDaoY119;
                        runtimeExceptionDaoY119.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  single_game_mod_info TEXT DEFAULT ''", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  install_type  INT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  game_run_state  INT DEFAULT 0", new String[0]);
                        db2.setTransactionSuccessful();
                        db2.endTransaction();
                        i10 = 46;
                    }
                    if (i10 == 46) {
                        TableUtils.createTable(connectionSource, CloudArchiveTable.class);
                        i10 = 47;
                    }
                    if (i10 == 47) {
                        db2.beginTransaction();
                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY210 = y0();
                        this.f34440x = runtimeExceptionDaoY210;
                        runtimeExceptionDaoY210.executeRaw("ALTER TABLE 'gamepaiweiuptasktable' ADD COLUMN  cost_coin INT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'gamepaiweiuptasktable' ADD COLUMN  role_id  INT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'gamepaiweiuptasktable' ADD COLUMN  rank_auto_upload  INT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'gamepaiweiuptasktable' ADD COLUMN  rank_play_time  INT DEFAULT 0", new String[0]);
                        db2.setTransactionSuccessful();
                        db2.endTransaction();
                        i10 = 48;
                    }
                    if (i10 == 48) {
                        TableUtils.createTable(connectionSource, VideoWatchLogTable.class);
                        i10 = 49;
                    }
                    if (i10 == 49) {
                        db2.beginTransaction();
                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY211 = y0();
                        this.f34440x = runtimeExceptionDaoY211;
                        runtimeExceptionDaoY211.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  ad_info_switch INT DEFAULT 1", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  ad_info_str TEXT", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  vm_device_switch INT DEFAULT 1", new String[0]);
                        db2.setTransactionSuccessful();
                        db2.endTransaction();
                        i10 = 50;
                    }
                    if (i10 == 50) {
                        db2.beginTransaction();
                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY212 = y0();
                        this.f34440x = runtimeExceptionDaoY212;
                        runtimeExceptionDaoY212.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  cost_type INT DEFAULT 0", new String[0]);
                        db2.setTransactionSuccessful();
                        db2.endTransaction();
                        i10 = 51;
                    }
                    if (i10 == 51) {
                        i10 = 52;
                    }
                    if (i10 == 52) {
                        db2.beginTransaction();
                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY213 = y0();
                        this.f34440x = runtimeExceptionDaoY213;
                        runtimeExceptionDaoY213.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  feed_back_show_times INT DEFAULT 0", new String[0]);
                        db2.setTransactionSuccessful();
                        db2.endTransaction();
                        i10 = 53;
                    }
                    if (i10 == 53) {
                        db2.beginTransaction();
                        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY214 = y0();
                        this.f34440x = runtimeExceptionDaoY214;
                        runtimeExceptionDaoY214.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  cpu_type INT DEFAULT 0", new String[0]);
                        this.f34440x.executeRaw("ALTER TABLE 'downloadtask' ADD COLUMN  permission_list TEXT", new String[0]);
                        db2.setTransactionSuccessful();
                        db2.endTransaction();
                        i10 = 54;
                    }
                    if (i10 == 54) {
                        TableUtils.createTable(connectionSource, UserLocalRecordTable.class);
                        i10 = 55;
                    }
                    if (i10 == 55) {
                        db2.execSQL("ALTER TABLE gamepaiweiuptasktable ADD COLUMN imagePath TEXT");
                        db2.execSQL("ALTER TABLE gamepaiweiuptasktable ADD COLUMN recStage INTEGER DEFAULT 0");
                        db2.execSQL("ALTER TABLE gamepaiweiuptasktable ADD COLUMN recEndFlag INTEGER DEFAULT 0");
                        db2.execSQL("ALTER TABLE gamepaiweiuptasktable ADD COLUMN recEndTime INTEGER DEFAULT 0");
                        i10 = 56;
                    }
                    StringBuilder sb113 = new StringBuilder();
                    sb113.append(" upgrade db version: ");
                    sb113.append(i10);
                    listD = f.M().d();
                    listD2 = g.t().d();
                    TableUtils.dropTable(connectionSource, UserPurchaseInfo.class, true);
                    TableUtils.dropTable(connectionSource, TipBeanTable.class, true);
                    TableUtils.dropTable(connectionSource, BannerAndTablesTable.class, true);
                    TableUtils.dropTable(connectionSource, EMUApkTable.class, true);
                    TableUtils.dropTable(connectionSource, StatisticTable.class, true);
                    TableUtils.dropTable(connectionSource, SearchRecordTable.class, true);
                    TableUtils.dropTable(connectionSource, JPushRecordTable.class, true);
                    TableUtils.dropTable(connectionSource, DownloadFileTable.class, true);
                    TableUtils.dropTable(connectionSource, EMUUpdateTable.class, true);
                    TableUtils.dropTable(connectionSource, LatestGameFileTable.class, true);
                    TableUtils.dropTable(connectionSource, DownloadTask.class, true);
                    TableUtils.dropTable(connectionSource, DownlodTaskCopyTable.class, true);
                    TableUtils.dropTable(connectionSource, RecomDatabeanTable.class, true);
                    TableUtils.dropTable(connectionSource, ModleBeanTable.class, true);
                    TableUtils.dropTable(connectionSource, AppBeanMainTable.class, true);
                    TableUtils.dropTable(connectionSource, AppBeanTable.class, true);
                    TableUtils.dropTable(connectionSource, cls2, true);
                    TableUtils.dropTable(connectionSource, TokenTable.class, true);
                    TableUtils.dropTable(connectionSource, ShowViewDataBeanTable.class, true);
                    TableUtils.dropTable(connectionSource, HandShankTable.class, true);
                    TableUtils.dropTable(connectionSource, JoystickTable.class, true);
                    TableUtils.dropTable(connectionSource, cls, true);
                    TableUtils.dropTable(connectionSource, ForumTable.class, true);
                    TableUtils.dropTable(connectionSource, InformatonPointTable.class, true);
                    TableUtils.dropTable(connectionSource, WarMatchAndLocalTable.class, true);
                    TableUtils.dropTable(connectionSource, AppMoreBeanTable.class, true);
                    TableUtils.dropTable(connectionSource, DownloadUrlTable.class, true);
                    TableUtils.dropTable(connectionSource, CloudBackupsDataTable.class, true);
                    TableUtils.dropTable(connectionSource, CategoryRecordTable.class, true);
                    TableUtils.dropTable(connectionSource, FightMainTable.class, true);
                    TableUtils.dropTable(connectionSource, HeadPortraitTable.class, true);
                    TableUtils.dropTable(connectionSource, DownloadHistoryTable.class, true);
                    TableUtils.dropTable(connectionSource, ForumSearchRecordTable.class, true);
                    TableUtils.dropTable(connectionSource, GameMainTable.class, true);
                    TableUtils.dropTable(connectionSource, H5GameAccountDataTable.class, true);
                    TableUtils.dropTable(connectionSource, EMUApkArenaTable.class, true);
                    TableUtils.dropTable(connectionSource, GamePaiWeiUpTaskTable.class, true);
                    TableUtils.dropTable(connectionSource, PurchasedListTable.class, true);
                    TableUtils.dropTable(connectionSource, CloudDownRecoderTable.class, true);
                    TableUtils.dropTable(connectionSource, PlayGameTimeTable.class, true);
                    TableUtils.dropTable(connectionSource, AppTimeDataTable.class, true);
                    TableUtils.dropTable(connectionSource, RewardBananaTable.class, true);
                    TableUtils.dropTable(connectionSource, CloudArchiveTable.class, true);
                    TableUtils.dropTable(connectionSource, VideoWatchLogTable.class, true);
                    TableUtils.dropTable(connectionSource, UserLocalRecordTable.class, true);
                    onCreate(db2, connectionSource);
                    if (listD != null && listD.size() > 0) {
                        it3 = listD.iterator();
                        while (it3.hasNext()) {
                            f.M().k(it3.next());
                        }
                    }
                    if (listD2 != null && listD2.size() > 0) {
                        it2 = listD2.iterator();
                        while (it2.hasNext()) {
                            g.t().k(it2.next());
                        }
                    }
                    g1.c(f.M().d().size() + "");
                } catch (Throwable th27) {
                    db2.endTransaction();
                    throw th27;
                }
            } catch (Throwable th28) {
                db2.endTransaction();
                throw th28;
            }
        } catch (SQLException e54) {
            throw new RuntimeException(e54);
        }
    }

    public RuntimeExceptionDao<CloudArchiveTable, Integer> p() {
        if (this.f34419f1 == null) {
            this.f34419f1 = getRuntimeExceptionDao(CloudArchiveTable.class);
        }
        return this.f34419f1;
    }

    public RuntimeExceptionDao<PlayGameTimeTable, Integer> p0() {
        if (this.f34432p0 == null) {
            try {
                this.f34432p0 = getRuntimeExceptionDao(PlayGameTimeTable.class);
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
        return this.f34432p0;
    }

    public RuntimeExceptionDao<CloudBackupsDataTable, Integer> q() {
        if (this.Q == null) {
            this.Q = getRuntimeExceptionDao(CloudBackupsDataTable.class);
        }
        return this.Q;
    }

    public RuntimeExceptionDao<PurchasedListTable, Integer> q0() {
        if (this.D == null) {
            this.D = getRuntimeExceptionDao(PurchasedListTable.class);
        }
        return this.D;
    }

    public RuntimeExceptionDao<RecomDatabeanTable, Integer> r0() {
        if (this.f34442z == null) {
            this.f34442z = getRuntimeExceptionDao(RecomDatabeanTable.class);
        }
        return this.f34442z;
    }

    public RuntimeExceptionDao<CloudDownRecoderTable, Integer> s() {
        if (this.Z == null) {
            this.Z = getRuntimeExceptionDao(CloudDownRecoderTable.class);
        }
        return this.Z;
    }

    public RuntimeExceptionDao<Reference, Integer> s0() {
        if (this.f34426l == null) {
            this.f34426l = getRuntimeExceptionDao(Reference.class);
        }
        return this.f34426l;
    }

    public RuntimeExceptionDao<ResourceShare, Integer> t0() {
        if (this.f34422i == null) {
            this.f34422i = getRuntimeExceptionDao(ResourceShare.class);
        }
        return this.f34422i;
    }

    public RuntimeExceptionDao<RewardBananaTable, Integer> u0() {
        if (this.f34414b1 == null) {
            try {
                this.f34414b1 = getRuntimeExceptionDao(RewardBananaTable.class);
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
        return this.f34414b1;
    }

    public RuntimeExceptionDao<Course, Integer> v() {
        if (this.f34418f == null) {
            this.f34418f = getRuntimeExceptionDao(Course.class);
        }
        return this.f34418f;
    }

    public RuntimeExceptionDao<SearchRecordTable, Integer> v0() {
        if (this.f34436t == null) {
            this.f34436t = getRuntimeExceptionDao(SearchRecordTable.class);
        }
        return this.f34436t;
    }

    public RuntimeExceptionDao<ShowViewDataBeanTable, Integer> w0() {
        if (this.I == null) {
            this.I = getRuntimeExceptionDao(ShowViewDataBeanTable.class);
        }
        return this.I;
    }

    public RuntimeExceptionDao<StatisticTable, Integer> x0() {
        if (this.f34435s == null) {
            this.f34435s = getRuntimeExceptionDao(StatisticTable.class);
        }
        return this.f34435s;
    }

    public RuntimeExceptionDao<DownloadFileTable, Integer> y() {
        if (this.f34437u == null) {
            this.f34437u = getRuntimeExceptionDao(DownloadFileTable.class);
        }
        return this.f34437u;
    }

    public RuntimeExceptionDao<DownloadTask, Integer> y0() {
        if (this.f34440x == null) {
            this.f34440x = getRuntimeExceptionDao(DownloadTask.class);
        }
        return this.f34440x;
    }

    public RuntimeExceptionDao<DownloadHistoryTable, Integer> z() {
        if (this.V == null) {
            this.V = getRuntimeExceptionDao(DownloadHistoryTable.class);
        }
        return this.V;
    }

    public RuntimeExceptionDao<TipBeanTable, Integer> z0() {
        if (this.f34428m == null) {
            this.f34428m = getRuntimeExceptionDao(TipBeanTable.class);
        }
        return this.f34428m;
    }
}
