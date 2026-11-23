package com.php25.PDownload;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.Dtype;
import com.tencent.stat.DeviceInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.EBean;

/* JADX INFO: loaded from: classes2.dex */
@EBean(scope = EBean.Scope.Singleton)
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SQLiteDatabase f78096a;

    public a(Context context) {
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = context.openOrCreateDatabase("com_php25_PDownload_metaFile.db", 0, null);
        this.f78096a = sQLiteDatabaseOpenOrCreateDatabase;
        sQLiteDatabaseOpenOrCreateDatabase.execSQL("CREATE TABLE IF NOT EXISTS DownloadFile (id INTEGER PRIMARY KEY AUTOINCREMENT,tag VARCHAR,url VARCHAR,basePath VARCHAR,name VARCHAR,absolutePath VARCHAR,gameZipPath VARCHAR,totalSize INTEGER,completeSize INTEGER,downloading SMALLINT,showName VARCHAR,createTime VARCHAR,dtype VARCHAR,finished SMALLINT,fileType VARCHAR,finishTime VARCHAR,packageName VARCHAR,tips VARCHAR,portraitURL VARCHAR,percentage VARCHAR,isAutoPause SMALLINT,crc_link_type_val VARCHAR,ver VARCHAR,ver_name VARCHAR,gid VARCHAR,starNumber VARCHAR,romType VARCHAR )");
    }

    private DownloadFile b(Cursor cursor) {
        DownloadFile downloadFile = new DownloadFile();
        List<TipBean> list = (List) JsonMapper.getInstance().fromJson(cursor.getString(cursor.getColumnIndex("tips")), JsonMapper.getInstance().createCollectionType(ArrayList.class, TipBean.class));
        downloadFile.setId(Long.valueOf(cursor.getLong(cursor.getColumnIndex("id"))));
        downloadFile.setTag(cursor.getString(cursor.getColumnIndex(TagGameListActivity_.TAG_EXTRA)));
        downloadFile.setUrl(cursor.getString(cursor.getColumnIndex("url")));
        downloadFile.setBasePath(cursor.getString(cursor.getColumnIndex("basePath")));
        downloadFile.setName(cursor.getString(cursor.getColumnIndex("name")));
        downloadFile.setShowName(cursor.getString(cursor.getColumnIndex("showName")));
        downloadFile.setFinishTime(cursor.getString(cursor.getColumnIndex("finishTime")));
        downloadFile.setDtype(cursor.getString(cursor.getColumnIndex("dtype")));
        downloadFile.setFileType(cursor.getString(cursor.getColumnIndex("fileType")));
        downloadFile.setAbsolutePath(cursor.getString(cursor.getColumnIndex("absolutePath")));
        downloadFile.setGameZipPath(cursor.getString(cursor.getColumnIndex("gameZipPath")));
        downloadFile.setCreateTime(cursor.getString(cursor.getColumnIndex("createTime")));
        downloadFile.setTotalSize(Integer.valueOf(cursor.getInt(cursor.getColumnIndex("totalSize"))));
        downloadFile.setCompleteSize(cursor.getInt(cursor.getColumnIndex("completeSize")));
        downloadFile.setPackageName(cursor.getString(cursor.getColumnIndex("packageName")));
        downloadFile.setTipBeans(list);
        downloadFile.setPortraitURL(cursor.getString(cursor.getColumnIndex("portraitURL")));
        downloadFile.setPercent(cursor.getString(cursor.getColumnIndex("percentage")));
        downloadFile.setCrc_link_type_val(cursor.getString(cursor.getColumnIndex("crc_link_type_val")));
        downloadFile.setVer(cursor.getString(cursor.getColumnIndex(DeviceInfo.TAG_VERSION)));
        downloadFile.setVer_name(cursor.getString(cursor.getColumnIndex("ver_name")));
        downloadFile.setGid(cursor.getString(cursor.getColumnIndex("gid")));
        downloadFile.setStarNumber(cursor.getString(cursor.getColumnIndex("starNumber")));
        downloadFile.setRomType(cursor.getString(cursor.getColumnIndex("romType")));
        short s10 = cursor.getShort(cursor.getColumnIndex("downloading"));
        short s11 = cursor.getShort(cursor.getColumnIndex("finished"));
        if (s10 == 0) {
            downloadFile.setDownloading(false);
        } else if (s10 == 1) {
            downloadFile.setDownloading(true);
        }
        if (s11 == 0) {
            downloadFile.setFinished(false);
        } else if (s11 == 1) {
            downloadFile.setFinished(true);
        }
        short s12 = cursor.getShort(cursor.getColumnIndex("isAutoPause"));
        if (s12 == 0) {
            downloadFile.setAutoPause(false);
        } else if (s12 == 1) {
            downloadFile.setAutoPause(true);
        }
        return downloadFile;
    }

    public void a() {
        this.f78096a.close();
    }

    public List<DownloadFile> c() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = this.f78096a.rawQuery("select * from DownloadFile", null);
        while (cursorRawQuery.moveToNext()) {
            arrayList.add(b(cursorRawQuery));
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public List<DownloadFile> d(boolean isdownloding) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = isdownloding ? this.f78096a.rawQuery("select * from DownloadFile where  fileType=? and finished =0 ", new String[]{Dtype.chajian.name()}) : this.f78096a.rawQuery("select * from DownloadFile where fileType=? and finished =1 ", new String[]{Dtype.chajian.name()});
        while (cursorRawQuery.moveToNext()) {
            arrayList.add(b(cursorRawQuery));
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public void delete(DownloadFile downloadFile) {
        if (downloadFile != null) {
            this.f78096a.execSQL("delete from downloadFile where id=?", new Object[]{downloadFile.getId()});
        }
    }

    public List<DownloadFile> e(Dtype dtype) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = dtype == null ? this.f78096a.rawQuery("select * from DownloadFile where fileType=? and finished =1 ", new String[]{Dtype.apk.name()}) : this.f78096a.rawQuery("select * from DownloadFile where dtype=? and finished =1 ", new String[]{dtype.name()});
        while (cursorRawQuery.moveToNext()) {
            arrayList.add(b(cursorRawQuery));
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public List<DownloadFile> f() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = this.f78096a.rawQuery("select * from DownloadFile where fileType=?  and finished=0", new String[]{Dtype.apk.name()});
        while (cursorRawQuery.moveToNext()) {
            arrayList.add(b(cursorRawQuery));
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public DownloadFile g(String packageName) {
        Cursor cursorRawQuery = this.f78096a.rawQuery("select * from DownloadFile where packageName=?", new String[]{packageName});
        DownloadFile downloadFileB = cursorRawQuery.moveToNext() ? b(cursorRawQuery) : null;
        cursorRawQuery.close();
        return downloadFileB;
    }

    public DownloadFile h(String tag) {
        Cursor cursorRawQuery = this.f78096a.rawQuery("select * from DownloadFile where tag=?", new String[]{tag});
        DownloadFile downloadFileB = cursorRawQuery.moveToNext() ? b(cursorRawQuery) : null;
        cursorRawQuery.close();
        return downloadFileB;
    }

    public void update(DownloadFile downloadFile) {
        this.f78096a.execSQL("update DownloadFile set downloading=? ,finished=? ,finishTime=?,totalSize=?,percentage=? ,completeSize=? ,gameZipPath=?,ver_name=? where id=?", new Object[]{Boolean.valueOf(downloadFile.isDownloading()), Boolean.valueOf(downloadFile.getFinished()), downloadFile.getFinishTime(), downloadFile.getTotalSize(), downloadFile.getPercent(), Long.valueOf(downloadFile.getCompleteSize()), downloadFile.getGameZipPath(), downloadFile.getVer_name(), downloadFile.getId()});
    }
}
