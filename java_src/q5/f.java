package q5;

import android.content.Context;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.enums.Dtype;
import com.umeng.analytics.AnalyticsConfig;
import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import t6.p;

/* JADX INFO: loaded from: classes5.dex */
public class f extends b<DownloadTask> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static f f96543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<DownloadTask, Integer> f96544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f96545d = new Object();

    private f() {
        super(f96544c);
    }

    public static synchronized f M() {
        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDaoY0 = e.d(null).c().y0();
        if (f96544c != runtimeExceptionDaoY0) {
            f96544c = runtimeExceptionDaoY0;
            f96543b = new f();
        }
        return f96543b;
    }

    public List<DownloadTask> A() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("fileType", Dtype.CLOUD.name());
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy("openTime", false);
            queryBuilder.orderBy("finishTime", true);
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            UtilsMy.X4(listQuery);
            return listQuery;
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<Long> B() {
        ArrayList arrayList = new ArrayList();
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 5).or();
            where.eq("status", 11).or();
            where.eq("status", 42).or();
            where.eq("status", 9).or();
            where.eq("status", 12).or();
            where.eq("status", 36);
            where.and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            if (listQuery != null) {
                for (DownloadTask downloadTask : listQuery) {
                    if (!TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
                        arrayList.add(Long.valueOf(Long.parseLong(downloadTask.getCrc_link_type_val())));
                    }
                }
            }
            return arrayList.size() > 100 ? arrayList.subList(0, 100) : arrayList;
        } catch (Exception e10) {
            e10.printStackTrace();
            return arrayList;
        }
    }

    public ArrayList<Long> C() {
        ArrayList<Long> arrayList = new ArrayList<>();
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 5).or();
            where.eq("status", 42).or();
            where.eq("status", 9);
            where.and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            if (listQuery != null) {
                for (DownloadTask downloadTask : listQuery) {
                    if (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.chajian.name())) {
                        if (!TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
                            arrayList.add(Long.valueOf(Long.parseLong(downloadTask.getCrc_link_type_val())));
                        }
                    }
                }
            }
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }

    public ArrayList<DownloadTask> D() {
        ArrayList<DownloadTask> arrayList = new ArrayList<>();
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 5).or();
            where.eq("status", 42).or();
            where.eq("status", 9);
            where.and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            if (listQuery != null) {
                for (DownloadTask downloadTask : listQuery) {
                    if (downloadTask.getFileType() != null && !downloadTask.getFileType().equals(Dtype.chajian.name())) {
                        arrayList.add(downloadTask);
                    }
                }
            }
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }

    public ArrayList<DownloadTask> E() {
        ArrayList<DownloadTask> arrayList = new ArrayList<>();
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 5).or();
            where.eq("status", 42).or();
            where.eq("status", 9);
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            if (listQuery != null) {
                for (DownloadTask downloadTask : listQuery) {
                    if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
                        arrayList.add(downloadTask);
                    }
                }
            }
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }

    public DownloadTask F(String filepath) {
        List<DownloadTask> listQuery;
        if (filepath == null) {
            return null;
        }
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("gameZipPath", filepath).and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            listQuery = queryBuilder.query();
        } catch (Exception e10) {
            e10.printStackTrace();
            listQuery = null;
        }
        if (listQuery == null || listQuery.size() <= 0) {
            return null;
        }
        DownloadTask downloadTask = listQuery.get(0);
        UtilsMy.U4(downloadTask);
        return downloadTask;
    }

    public DownloadTask G(String gameId) {
        if (gameId == null) {
            return null;
        }
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            queryBuilder.where().eq("crc_link_type_val", gameId.replace("cld_", ""));
            List<DownloadTask> listQuery = queryBuilder.query();
            if (listQuery != null && listQuery.size() > 0) {
                DownloadTask downloadTask = listQuery.get(0);
                UtilsMy.U4(downloadTask);
                return downloadTask;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public List<DownloadTask> H(Object... gameIds) {
        if (gameIds == null) {
            return null;
        }
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.in("crc_link_type_val", gameIds).and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> I(String pkg) {
        if (pkg == null) {
            return null;
        }
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            queryBuilder.where().eq("packageName", pkg).and().ne("fileType", Dtype.CLOUD.name());
            return queryBuilder.query();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> J(String gameid) {
        if (gameid == null) {
            return null;
        }
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("crc_link_type_val", gameid).or().eq("ref_crc_sign_id", gameid).and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public DownloadTask K(String url) {
        List<DownloadTask> listQueryForEq;
        if (url == null || (listQueryForEq = f96544c.queryForEq("url", url)) == null || listQueryForEq.size() <= 0) {
            return null;
        }
        DownloadTask downloadTask = listQueryForEq.get(0);
        UtilsMy.U4(downloadTask);
        return downloadTask;
    }

    public DownloadTask L(String gameId) {
        if (gameId == null) {
            return null;
        }
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("crc_link_type_val", "cld_" + gameId.replace("cld_", ""));
            where.and().eq("fileType", Dtype.CLOUD.name());
            List<DownloadTask> listQuery = queryBuilder.query();
            if (listQuery != null && listQuery.size() > 0) {
                DownloadTask downloadTask = listQuery.get(0);
                UtilsMy.U4(downloadTask);
                return downloadTask;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public String N(String gameId, Context context) {
        EMUApkTable eMUApkTableN;
        DownloadTask downloadTaskG = G(gameId);
        if (downloadTaskG == null || !downloadTaskG.getFileType().equals(Dtype.apk.name()) || (eMUApkTableN = p.o().n(downloadTaskG.getRomType())) == null) {
            return "";
        }
        if (eMUApkTableN.getDown_type() == 2) {
            return eMUApkTableN.getVer() + "_" + downloadTaskG.getRomType();
        }
        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(context).n(context, eMUApkTableN.getPackage_name());
        return aVarN.d() + "_" + aVarN.e() + "_" + downloadTaskG.getRomType();
    }

    public List<DownloadTask> O() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.or(where.eq("status", 5), where.eq("status", 9), where.eq("status", 11)).and();
            where.eq("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            UtilsMy.X4(listQuery);
            return listQuery;
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> P(boolean isdownloding) {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy(AnalyticsConfig.RTD_START_TIME, false);
            Where<DownloadTask, Integer> where = queryBuilder.where();
            if (isdownloding) {
                where.ne("status", 5).and();
                where.ne("status", 9).and();
                where.ne("status", 11).and();
            } else {
                where.or(where.eq("status", 5), where.eq("status", 9)).and();
            }
            where.eq("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            UtilsMy.X4(listQuery);
            return listQuery;
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> Q() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy(AnalyticsConfig.RTD_START_TIME, false);
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 2).and();
            where.eq("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            UtilsMy.X4(listQuery);
            return listQuery;
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> R() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            UtilsMy.X4(listQuery);
            return listQuery;
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> S(Dtype dtype) {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            queryBuilder.orderBy("isOpen", true);
            Where<DownloadTask, Integer> where = queryBuilder.where();
            if (dtype == null) {
                where.and(where.or(where.eq("status", 5), where.eq("status", 9), where.eq("status", 11), where.eq("status", 42)), where.or(where.eq("fileType", Dtype.apk.name()), where.eq("fileType", Dtype.android.name()), where.eq("fileType", Dtype.H5.name()), where.eq("fileType", Dtype.MOD.name())));
            } else {
                where.and(where.or(where.eq("status", 5), where.eq("status", 9), where.eq("status", 11)), where.eq("fileType", dtype.name()));
            }
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> T(Dtype dtype) {
        ArrayList arrayList = new ArrayList();
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            if (dtype == null) {
                where.and(where.or(where.eq("status", 5), where.eq("status", 9), where.eq("status", 11), where.eq("status", 42)), where.or(where.eq("fileType", Dtype.apk.name()), where.eq("fileType", Dtype.android.name()), where.eq("fileType", Dtype.H5.name())));
            } else {
                where.and(where.or(where.eq("status", 5), where.eq("status", 9), where.eq("status", 11)), where.eq("fileType", dtype.name()));
            }
            queryBuilder.setWhere(where);
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy("openTime", false);
            queryBuilder.orderBy("finishTime", false);
            arrayList.addAll(queryBuilder.query());
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                DownloadTask downloadTask = (DownloadTask) it2.next();
                if (downloadTask.getFileType().equals(Dtype.apk.name()) && (downloadTask.getGameZipPath() == null || !new File(downloadTask.getGameZipPath()).exists())) {
                    com.php25.PDownload.d.a(downloadTask);
                    it2.remove();
                }
            }
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }

    public int U(Context context) {
        int iCountOf;
        synchronized (f96545d) {
            try {
                try {
                    QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
                    Where<DownloadTask, Integer> where = queryBuilder.where();
                    where.or(where.eq("status", 5).and().eq("isOpen", Boolean.FALSE), where.eq("status", 42)).and();
                    where.ne("fileType", Dtype.CLOUD.name()).and().ne("fileType", Dtype.chajian.name());
                    queryBuilder.setWhere(where);
                    iCountOf = (int) queryBuilder.countOf();
                } catch (SQLException e10) {
                    e10.printStackTrace();
                    return 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iCountOf;
    }

    public int V() {
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.ne("status", 5).and();
            where.ne("status", 42).and();
            where.ne("status", 12).and();
            where.ne("status", 13);
            where.and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            if (queryBuilder.query() != null) {
                return queryBuilder.query().size();
            }
            return 0;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public List<DownloadTask> W() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy("id", false);
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.ne("status", 5).and();
            where.ne("status", 9).and();
            where.ne("status", 11).and();
            where.ne("status", 42).and();
            where.ne("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            Iterator<DownloadTask> it2 = listQuery.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getRuntimeStatus().get() == 36 || next.getStatus() == 13) {
                    if (!new File(next.getPath()).exists()) {
                        com.php25.PDownload.d.a(next);
                        it2.remove();
                    }
                }
            }
            UtilsMy.X4(listQuery);
            return listQuery;
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> X() {
        ArrayList arrayList = new ArrayList();
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("isOpen", Boolean.FALSE).and().eq("status", 5).and().ne("fileType", Dtype.chajian.name()).and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e10) {
            e10.printStackTrace();
            return arrayList;
        }
    }

    public List<DownloadTask> Y() {
        ArrayList arrayList = new ArrayList();
        try {
            return f96544c.queryForEq("isOpen", Boolean.FALSE);
        } catch (Exception e10) {
            e10.printStackTrace();
            return arrayList;
        }
    }

    public int Z(Context context) {
        List<DownloadTask> arrayList = new ArrayList<>();
        try {
            arrayList = f96544c.queryForEq("isOpen", Boolean.FALSE);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        int size = arrayList.size();
        for (DownloadTask downloadTask : arrayList) {
            if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name()) && !UtilsMy.E0(context, UtilsMy.u0(downloadTask.getCrc_link_type_val()))) {
                f96543b.l0(downloadTask.getCrc_link_type_val(), true);
                size--;
            }
        }
        return size;
    }

    public List<DownloadTask> a0(Context context) {
        List<DownloadTask> arrayList = new ArrayList<>();
        try {
            arrayList = f96544c.queryForEq("isOpen", Boolean.FALSE);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        Iterator<DownloadTask> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getFileType() != null && next.getFileType().equals(Dtype.chajian.name())) {
                it2.remove();
            } else if (next.getStatus() != 5) {
                it2.remove();
            }
        }
        return arrayList;
    }

    public List<DownloadTask> b0() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.ne("fileType", Dtype.chajian.name());
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy("openTime", false);
            queryBuilder.orderBy("finishTime", true);
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            UtilsMy.X4(listQuery);
            return listQuery;
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public DownloadTask c0(int plugId) {
        DownloadTask downloadTaskG = G(plugId + "");
        UtilsMy.U4(downloadTaskG);
        return downloadTaskG;
    }

    @Override // q5.b
    public List<DownloadTask> d() {
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            queryBuilder.where().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.orderBy("isOpen", true);
            List<DownloadTask> listQuery = queryBuilder.query();
            if (listQuery == null) {
                listQuery = new ArrayList<>();
            }
            UtilsMy.X4(listQuery);
            return listQuery;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            try {
                f96544c = null;
                M();
                QueryBuilder<DownloadTask, Integer> queryBuilder2 = f96544c.queryBuilder();
                queryBuilder2.where().ne("fileType", Dtype.CLOUD.name());
                queryBuilder2.orderBy("isOpen", true);
                List<DownloadTask> listQuery2 = queryBuilder2.query();
                if (listQuery2 == null) {
                    listQuery2 = new ArrayList<>();
                }
                UtilsMy.X4(listQuery2);
                return listQuery2;
            } catch (Exception e11) {
                e11.printStackTrace();
                return new ArrayList();
            }
        } catch (Exception e12) {
            e12.printStackTrace();
            return new ArrayList();
        }
    }

    public int d0() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 2);
            where.and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            if (queryBuilder.query() != null) {
                return queryBuilder.query().size();
            }
            return 0;
        } catch (SQLException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public List<DownloadTask> e0() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            queryBuilder.orderBy("finishTime", false);
            List<DownloadTask> listQuery = queryBuilder.query();
            UtilsMy.X4(listQuery);
            return listQuery;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int f0() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 9);
            queryBuilder.setWhere(where);
            return (int) queryBuilder.countOf();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public void g0(String gameId) {
        if (gameId == null || gameId.equals("")) {
            return;
        }
        DownloadTask downloadTaskG = G(gameId);
        if (downloadTaskG.get_from_type() == 1) {
            downloadTaskG.set_from_type(0);
            m(downloadTaskG);
        }
    }

    public List<DownloadTask> h0() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 6).or();
            where.eq("status", 0).or();
            where.eq("status", 2).or();
            where.eq("status", 10);
            where.and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> i0() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.ne("status", 5).and();
            where.ne("status", 3).and();
            where.ne("status", 11).and();
            where.ne("status", 42).and();
            where.ne("status", 9);
            where.and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // q5.b
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public int k(DownloadTask data) {
        return super.k(data);
    }

    public void k0(DownloadTask downloadTask, String path) {
        f96544c.updateRaw("UPDATE `downloadtask` SET gameZipPath = " + path + ", path = " + path + "  WHERE id=" + downloadTask.getId() + ";", new String[0]);
    }

    public void l0(String str, boolean z10) {
        List<DownloadTask> listQueryForEq = f96544c.queryForEq("crc_link_type_val", str);
        if (listQueryForEq == null || listQueryForEq.size() <= 0) {
            return;
        }
        DownloadTask downloadTask = listQueryForEq.get(0);
        downloadTask.setOpen(z10);
        downloadTask.setOpenTime(System.currentTimeMillis());
        f96544c.updateRaw("UPDATE `downloadtask` SET isOpen = " + (z10 ? 1 : 0) + ", openTime=" + downloadTask.getOpenTime() + "  WHERE id=" + downloadTask.getId() + ";", new String[0]);
    }

    public void m0(DownloadTask task, int status) {
        if (task != null) {
            try {
                if (t2.h(task.getUrl())) {
                    return;
                }
                QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
                Where<DownloadTask, Integer> where = queryBuilder.where();
                where.eq("crc_link_type_val", task.getCrc_link_type_val());
                where.and().ne("fileType", Dtype.CLOUD.name());
                List<DownloadTask> listQuery = queryBuilder.query();
                if (listQuery == null || listQuery.size() <= 0) {
                    return;
                }
                DownloadTask downloadTask = listQuery.get(0);
                downloadTask.setCurrentSize(task.getCurrentSize());
                downloadTask.setStatus(status);
                f96544c.updateRaw("UPDATE `downloadtask` SET currentSize = " + task.getCurrentSize() + ", status = " + status + " WHERE id=" + downloadTask.getId() + ";", new String[0]);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void n(String gameId) {
        if (gameId == null || "".equals(gameId)) {
            return;
        }
        delete(G(gameId));
    }

    public void n0(DownloadTask task, int status, long progress) {
        if (task != null) {
            try {
                if (t2.h(task.getUrl())) {
                    return;
                }
                QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
                Where<DownloadTask, Integer> where = queryBuilder.where();
                where.eq("crc_link_type_val", task.getCrc_link_type_val());
                where.and().ne("fileType", Dtype.CLOUD.name());
                List<DownloadTask> listQuery = queryBuilder.query();
                if (listQuery == null || listQuery.size() <= 0) {
                    return;
                }
                DownloadTask downloadTask = listQuery.get(0);
                downloadTask.setProgress(progress);
                downloadTask.setCurrentSize(task.getCurrentSize());
                downloadTask.setStatus(status);
                f96544c.updateRaw("UPDATE `downloadtask` SET currentSize = " + task.getCurrentSize() + ", status = " + status + ", progress = " + progress + " WHERE id=" + downloadTask.getId() + ";", new String[0]);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public List<DownloadTask> o() {
        return f96544c.queryForEq("fileType", Dtype.android.name());
    }

    public List<DownloadTask> p() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 5).or();
            where.eq("status", 42).or();
            where.eq("status", 9);
            where.and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> listQuery = queryBuilder.query();
            Iterator<DownloadTask> it2 = listQuery.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getRuntimeStatus().get() == 36 || next.getStatus() == 13) {
                    if (!new File(next.getPath()).exists()) {
                        com.php25.PDownload.d.a(next);
                        it2.remove();
                    }
                }
            }
            UtilsMy.X4(listQuery);
            return listQuery;
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> q() {
        ArrayList arrayList = new ArrayList();
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.ne("status", 5).and();
            where.ne("status", 42);
            where.and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e10) {
            e10.printStackTrace();
            return arrayList;
        }
    }

    public List<DownloadTask> r() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        ArrayList arrayList = new ArrayList();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 2);
            where.and().ne("fileType", Dtype.CLOUD.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return arrayList;
        }
    }

    public List<DownloadTask> s() {
        ArrayList arrayList = new ArrayList();
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 5).and();
            where.eq("fileType", Dtype.apk.name());
            queryBuilder.setWhere(where);
            for (DownloadTask downloadTask : queryBuilder.query()) {
                if (downloadTask.isFightFun()) {
                    arrayList.add(downloadTask);
                }
            }
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }

    public List<DownloadTask> t() {
        return f96544c.queryForEq("fileType", Dtype.H5.name());
    }

    public List<DownloadTask> u() {
        return f96544c.queryForEq("fileType", Dtype.apk.name());
    }

    public List<DownloadTask> v() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 11).and().ne("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> w() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 11);
            where.and().ne("fileType", Dtype.CLOUD.name());
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> x() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 9);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> y() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 9).and().ne("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> z() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f96544c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 12);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
