package com.byazt.nys;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 430, 20})
public class c extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public File f17684a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f17685c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public File f17686n;
    public File sp;
    public File tt;
    public File uj;
    public File ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public File f17687x;

    public c(Context context) {
        super(context);
        this.f17685c = new Object();
    }

    public String c() {
        return "pangle_com.byted.pangle";
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String[] databaseList() {
        if (c() == null) {
            return super.databaseList();
        }
        String[] strArrDatabaseList = super.databaseList();
        int length = strArrDatabaseList.length;
        boolean[] zArr = new boolean[length];
        int i10 = 0;
        for (int i11 = 0; i11 < strArrDatabaseList.length; i11++) {
            if (strArrDatabaseList[i11].startsWith(c())) {
                zArr[i11] = true;
                i10++;
            } else {
                zArr[i11] = false;
            }
        }
        String[] strArr = new String[i10];
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            if (zArr[i13]) {
                strArr[i12] = strArrDatabaseList[i13];
                i12++;
            }
        }
        return strArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteDatabase(String str) {
        return c() == null ? super.deleteDatabase(str) : super.deleteDatabase(c(str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteFile(String str) {
        return c(getFilesDir(), str).delete();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteSharedPreferences(String str) {
        return c() == null ? super.deleteSharedPreferences(str) : super.deleteSharedPreferences(c(str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCacheDir() {
        File fileC;
        if (c() == null) {
            return super.getCacheDir();
        }
        synchronized (this.f17685c) {
            if (this.f17684a == null) {
                this.f17684a = new File(super.getCacheDir(), c());
            }
            fileC = c(this.f17684a);
        }
        return fileC;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCodeCacheDir() {
        File fileC;
        if (c() == null) {
            return super.getCodeCacheDir();
        }
        synchronized (this.f17685c) {
            if (this.sp == null) {
                this.sp = new File(super.getCodeCacheDir(), c());
            }
            fileC = c(this.sp);
        }
        return fileC;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDataDir() {
        File fileC;
        if (c() == null) {
            return super.getDataDir();
        }
        synchronized (this.f17685c) {
            if (this.tt == null) {
                this.tt = new File(tt(), c());
            }
            fileC = c(this.tt);
        }
        return fileC;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDatabasePath(String str) {
        return c() == null ? super.getDatabasePath(str) : super.getDatabasePath(c(str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDir(String str, int i10) {
        return (i10 != 0 || c() == null) ? super.getDir(str, i10) : c(new File(super.getDir(str, i10), c()));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalCacheDir() {
        File fileC;
        if (c() == null) {
            return super.getExternalCacheDir();
        }
        synchronized (this.f17685c) {
            if (this.f17687x == null) {
                this.f17687x = new File(super.getExternalCacheDir(), c());
            }
            fileC = c(this.f17687x);
        }
        return fileC;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getExternalCacheDirs() {
        if (c() == null) {
            return super.getExternalCacheDirs();
        }
        File[] externalCacheDirs = super.getExternalCacheDirs();
        File[] fileArr = new File[externalCacheDirs.length];
        for (int i10 = 0; i10 < externalCacheDirs.length; i10++) {
            fileArr[i10] = c(new File(externalCacheDirs[i10], c()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalFilesDir(String str) {
        return c() == null ? super.getExternalFilesDir(str) : c(new File(super.getExternalFilesDir(str), c()));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getExternalFilesDirs(String str) {
        if (c() == null) {
            return super.getExternalFilesDirs(str);
        }
        File[] externalFilesDirs = super.getExternalFilesDirs(str);
        File[] fileArr = new File[externalFilesDirs.length];
        for (int i10 = 0; i10 < externalFilesDirs.length; i10++) {
            fileArr[i10] = c(new File(externalFilesDirs[i10], c()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getExternalMediaDirs() {
        if (c() == null) {
            return super.getExternalMediaDirs();
        }
        File[] externalMediaDirs = super.getExternalMediaDirs();
        File[] fileArr = new File[externalMediaDirs.length];
        for (int i10 = 0; i10 < externalMediaDirs.length; i10++) {
            fileArr[i10] = c(new File(externalMediaDirs[i10], c()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        File fileC;
        if (c() == null) {
            return super.getFilesDir();
        }
        synchronized (this.f17685c) {
            if (this.ve == null) {
                this.ve = new File(super.getFilesDir(), c());
            }
            fileC = c(this.ve);
        }
        return fileC;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getNoBackupFilesDir() {
        File fileC;
        if (c() == null) {
            return super.getNoBackupFilesDir();
        }
        synchronized (this.f17685c) {
            if (this.uj == null) {
                this.uj = new File(super.getNoBackupFilesDir(), c());
            }
            fileC = c(this.uj);
        }
        return fileC;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getObbDir() {
        File fileC;
        if (c() == null) {
            return super.getObbDir();
        }
        synchronized (this.f17685c) {
            if (this.f17686n == null) {
                this.f17686n = new File(super.getObbDir(), c());
            }
            fileC = c(this.f17686n);
        }
        return fileC;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getObbDirs() {
        if (c() == null) {
            return super.getObbDirs();
        }
        File[] obbDirs = super.getObbDirs();
        File[] fileArr = new File[obbDirs.length];
        for (int i10 = 0; i10 < obbDirs.length; i10++) {
            fileArr[i10] = c(new File(obbDirs[i10], c()));
        }
        return fileArr;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i10) {
        return (i10 != 0 || c() == null) ? super.getSharedPreferences(str, i10) : super.getSharedPreferences(c(str), i10);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean moveDatabaseFrom(Context context, String str) {
        if (c() == null) {
            return super.moveDatabaseFrom(context, str);
        }
        throw new UnsupportedOperationException("Calling moveDatabaseFrom in plugins is not supported.");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public FileInputStream openFileInput(String str) throws FileNotFoundException {
        return c() == null ? super.openFileInput(str) : new FileInputStream(c(getFilesDir(), str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public FileOutputStream openFileOutput(String str, int i10) throws FileNotFoundException {
        return (i10 != 0 || c() == null) ? super.openFileOutput(str, i10) : new FileOutputStream(c(getFilesDir(), str), false);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i10, SQLiteDatabase.CursorFactory cursorFactory) {
        return (i10 != 0 || c() == null) ? super.openOrCreateDatabase(str, i10, cursorFactory) : super.openOrCreateDatabase(c(str), i10, cursorFactory);
    }

    public File tt() {
        return super.getFilesDir().getParentFile();
    }

    private String c(String str) {
        return c() + "_" + str;
    }

    private static File c(File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i10, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        if (i10 == 0 && c() != null) {
            return super.openOrCreateDatabase(c(str), i10, cursorFactory, databaseErrorHandler);
        }
        return super.openOrCreateDatabase(str, i10, cursorFactory, databaseErrorHandler);
    }

    private static File c(File file, String str) {
        if (str.indexOf(File.separatorChar) < 0) {
            return new File(file, str);
        }
        throw new IllegalArgumentException("File " + str + " contains a path separator");
    }
}
