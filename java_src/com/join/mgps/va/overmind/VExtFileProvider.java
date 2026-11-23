package com.join.mgps.va.overmind;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.Util.s3;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class VExtFileProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        File file = new File(uri.getPath());
        if (!file.exists()) {
            file.mkdirs();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getContext().getFilesDir().getParent());
        String str = File.separator;
        sb2.append(str);
        sb2.append("virtual");
        sb2.append(str);
        sb2.append("fileproviderDir");
        sb2.append(str);
        sb2.append("archiveZipDownload.zip");
        File file2 = new File(sb2.toString());
        if (file2.exists()) {
            try {
                s3.f(file2, file.getAbsolutePath());
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        return uri;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        if (!"copyZip".equals(mode)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getContext().getFilesDir().getParent());
            String str = File.separator;
            sb2.append(str);
            sb2.append("virtual");
            sb2.append(str);
            sb2.append("fileproviderDir");
            sb2.append(str);
            sb2.append("archiveZip.zip");
            File file = new File(sb2.toString());
            if (file.exists()) {
                file.delete();
            }
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            try {
                s3.k(Arrays.asList((File[]) new File(uri.getPath()).listFiles().clone()), file);
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            return ParcelFileDescriptor.open(file, 805306368);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(getContext().getFilesDir().getParent());
        String str2 = File.separator;
        sb3.append(str2);
        sb3.append("virtual");
        sb3.append(str2);
        sb3.append("fileproviderDir");
        sb3.append(str2);
        sb3.append("archiveZipDownload.zip");
        File file2 = new File(sb3.toString());
        if (file2.exists()) {
            file2.delete();
        }
        if (!file2.getParentFile().exists()) {
            file2.getParentFile().mkdirs();
        }
        try {
            file2.createNewFile();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        File file3 = new File(uri.getPath());
        if (!file3.exists()) {
            file3.mkdirs();
        }
        return ParcelFileDescriptor.open(file2, 805306368);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"pathUrL", "time"});
        if (projection != null && projection.length >= 4) {
            ArrayList<ArchiveData> arrayListF = a.f73246a.f(getContext(), projection[0], projection[1], projection[2], Integer.parseInt(projection[3]));
            if (arrayListF != null && arrayListF.size() > 0) {
                for (ArchiveData archiveData : arrayListF) {
                    matrixCursor.addRow(new String[]{archiveData.getArchiveLocalPath(), String.valueOf(archiveData.getAddTime())});
                }
            }
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }
}
