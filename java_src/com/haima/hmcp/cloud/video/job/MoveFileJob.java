package com.haima.hmcp.cloud.video.job;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.haima.hmcp.cloud.video.bean.InnerCloudFile;
import com.haima.hmcp.listeners.InnerDownloadCallback;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.MediaUtil;
import com.join.mgps.Util.o0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import net.lingala.zip4j.util.e;
import okhttp3.MediaType;

/* JADX INFO: loaded from: classes5.dex */
public class MoveFileJob implements Runnable {
    private static final String TAG = "MoveFileJob";
    private final String cid;
    private InnerDownloadCallback mCallback;
    private Context mContext;
    private final InnerCloudFile mInnerCloudFile;

    public MoveFileJob(Context context, String str, InnerCloudFile innerCloudFile, InnerDownloadCallback innerDownloadCallback) {
        this.mContext = context;
        this.mCallback = innerDownloadCallback;
        this.mInnerCloudFile = innerCloudFile;
        this.cid = str;
    }

    private boolean checkSameFileName(final String str, File file) {
        LogUtils.d(TAG, "download-file:  checking exist file name = " + str);
        File[] fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: com.haima.hmcp.cloud.video.job.MoveFileJob.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                return str2.contains(str);
            }
        });
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return false;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (File file2 : fileArrListFiles) {
            stringBuffer.append(file2.getName());
            stringBuffer.append(", ");
        }
        LogUtils.d(TAG, "download-file: same name files = " + ((Object) stringBuffer));
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:79:0x0111 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x011b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:? A[SYNTHETIC] */
    private Uri saveToGallery(InnerCloudFile innerCloudFile, String str) throws Throwable {
        String str2;
        Uri uri;
        String str3;
        String str4;
        OutputStream outputStream;
        FileInputStream fileInputStream = null;
        outputStreamOpenOutputStream = null;
        OutputStream outputStreamOpenOutputStream = null;
        fileInputStream = null;
        if (innerCloudFile == null || !innerCloudFile.isSaveToGallery || TextUtils.isEmpty(str)) {
            return null;
        }
        String fileSuffix = innerCloudFile.getFileSuffix();
        if (TextUtils.isEmpty(fileSuffix)) {
            return null;
        }
        String name = innerCloudFile.cloudFile.getName();
        if (MediaUtil.isSupportPicture(fileSuffix)) {
            str2 = "image/" + fileSuffix;
            uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        } else {
            if (!MediaUtil.isSupportVideo(fileSuffix)) {
                LogUtils.d(TAG, "download-file: is not support file suffix: " + fileSuffix);
                return null;
            }
            str2 = "video/" + fileSuffix;
            uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        }
        MediaType mediaType = MediaType.parse(str2);
        if (Build.VERSION.SDK_INT >= 29) {
            str4 = "relative_path";
            str3 = MediaUtil.isSupportPicture(fileSuffix) ? Environment.DIRECTORY_PICTURES : Environment.DIRECTORY_MOVIES;
        } else {
            String absolutePath = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).getAbsolutePath();
            MediaUtil.isSupportPicture(fileSuffix);
            str3 = absolutePath + File.separator + name + o0.f49827a + fileSuffix;
            str4 = "_data";
        }
        ContentResolver contentResolver = this.mContext.getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", name);
        contentValues.put("mime_type", mediaType.getMediaType());
        contentValues.put(str4, str3);
        Uri uriInsert = contentResolver.insert(uri, contentValues);
        try {
            if (uriInsert == null) {
                return null;
            }
            try {
                FileInputStream fileInputStream2 = new FileInputStream(new File(str));
                try {
                    byte[] bArr = new byte[512];
                    outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                    while (true) {
                        int i10 = fileInputStream2.read(bArr);
                        if (i10 == -1) {
                            break;
                        }
                        outputStreamOpenOutputStream.write(bArr, 0, i10);
                    }
                    outputStreamOpenOutputStream.flush();
                    try {
                        fileInputStream2.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                    outputStreamOpenOutputStream.close();
                } catch (IOException e11) {
                    e = e11;
                    outputStream = outputStreamOpenOutputStream;
                    fileInputStream = fileInputStream2;
                    try {
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        return uriInsert;
                    } catch (Throwable th) {
                        th = th;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        if (outputStream != null) {
                            throw th;
                        }
                        try {
                            outputStream.close();
                            throw th;
                        } catch (IOException e14) {
                            e14.printStackTrace();
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    outputStream = outputStreamOpenOutputStream;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    if (outputStream != null) {
                        throw th;
                    }
                    outputStream.close();
                    throw th;
                }
            } catch (IOException e15) {
                e = e15;
                outputStream = null;
            } catch (Throwable th3) {
                th = th3;
                outputStream = null;
            }
        } catch (IOException e16) {
            e16.printStackTrace();
        }
        return uriInsert;
    }

    public void cancel() {
        LogUtils.d(TAG, "download-file: cancel temp file move job");
        this.mCallback = null;
    }

    public String galleryImagePath(Context context, Uri uri) {
        Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
        if (cursorQuery == null) {
            return null;
        }
        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
        cursorQuery.moveToFirst();
        String string = cursorQuery.getString(columnIndexOrThrow);
        cursorQuery.close();
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0404 A[Catch: IOException -> 0x0400, TryCatch #6 {IOException -> 0x0400, blocks: (B:104:0x03fc, B:108:0x0404, B:109:0x0407), top: B:119:0x03fc }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0199 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x03fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x0104  */
    /* JADX WARN: Code duplicated, block: B:29:0x0119  */
    /* JADX WARN: Code duplicated, block: B:31:0x011f  */
    /* JADX WARN: Code duplicated, block: B:33:0x012f  */
    /* JADX WARN: Code duplicated, block: B:35:0x014b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0151  */
    /* JADX WARN: Code duplicated, block: B:74:0x0292  */
    /* JADX WARN: Code duplicated, block: B:76:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:78:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:80:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:83:0x033d  */
    /* JADX WARN: Code duplicated, block: B:85:0x0345  */
    /* JADX WARN: Code duplicated, block: B:87:0x0351  */
    /* JADX WARN: Code duplicated, block: B:89:0x0389  */
    /* JADX WARN: Code duplicated, block: B:91:0x0393  */
    /* JADX WARN: Code duplicated, block: B:93:0x039e  */
    /* JADX WARN: Code duplicated, block: B:96:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:97:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:99:0x03ee  */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x0104, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:33:0x012f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x0151, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:74:0x0292, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:80:0x02d2, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:87:0x0351, please report this as an issue */
    @Override // java.lang.Runnable
    public void run() throws Throwable {
        String str;
        File file;
        File file2;
        FileChannel channel;
        Throwable th;
        FileChannel fileChannel;
        String str2;
        StringBuilder sb2;
        String str3;
        String name;
        String str4;
        StringBuffer stringBuffer;
        InnerDownloadCallback innerDownloadCallback;
        Uri uriSaveToGallery;
        InnerDownloadCallback innerDownloadCallback2;
        String strGalleryImagePath;
        int iIndexOf;
        String strSubstring;
        int iLastIndexOf;
        StringBuffer stringBuffer2;
        InnerDownloadCallback innerDownloadCallback3;
        FileChannel channel2;
        String str5;
        InnerDownloadCallback innerDownloadCallback4;
        String str6;
        InnerDownloadCallback innerDownloadCallback5;
        String str7 = TAG;
        LogUtils.d(str7, "download-file: start temp file move job");
        if (TextUtils.isEmpty(this.cid)) {
            InnerDownloadCallback innerDownloadCallback6 = this.mCallback;
            if (innerDownloadCallback6 != null) {
                innerDownloadCallback6.onMovedFail(this.mInnerCloudFile, 1001, "cid is null");
                return;
            }
            return;
        }
        String str8 = this.mInnerCloudFile.tempPath;
        if (!str8.endsWith(e.F0)) {
            str8 = str8 + File.separator;
        }
        InnerCloudFile innerCloudFile = this.mInnerCloudFile;
        String str9 = innerCloudFile.tempFileName;
        String path = TextUtils.isEmpty(innerCloudFile.cloudFile.getPath()) ? this.mInnerCloudFile.defaultPath : this.mInnerCloudFile.cloudFile.getPath();
        if (!path.endsWith(e.F0)) {
            path = path + File.separator;
        }
        LogUtils.d(str7, "download-file: move file job init: source file=" + str8 + str9 + ", dest file=" + path + str9);
        File file3 = new File(path);
        if (file3.exists()) {
            if (checkSameFileName(str9, file3)) {
                str = str9.replace(".tmp", "") + "-" + System.currentTimeMillis() + ".tmp";
                LogUtils.d(str7, "download-file:  has same name file and rename: " + str);
            }
            LogUtils.d(str7, "download-file: ready move temp file");
            file = new File(str8 + str9);
            if (!file.exists()) {
                str6 = str9 + " is not exists when move tmp file";
                innerDownloadCallback5 = this.mCallback;
                if (innerDownloadCallback5 != null) {
                    innerDownloadCallback5.onMovedFail(this.mInnerCloudFile, 1003, str6);
                    return;
                }
                return;
            }
            if (this.mInnerCloudFile.cloudFile.getSize() != file.length()) {
                str5 = str9 + " length error, length = " + file.length();
                innerDownloadCallback4 = this.mCallback;
                if (innerDownloadCallback4 != null) {
                    innerDownloadCallback4.onMovedFail(this.mInnerCloudFile, 1003, str5);
                    return;
                }
                return;
            }
            file2 = new File(path + str);
            LogUtils.d(str7, "download-file: move temp file, source=" + str8 + str9);
            LogUtils.d(str7, "download-file: move temp file, dest=" + path + str);
            if (!file2.exists()) {
                try {
                    LogUtils.d(str7, "download-file: create dest file");
                    file2.createNewFile();
                } catch (IOException e10) {
                    String str10 = "dest file create fail, cause: " + Log.getStackTraceString(e10);
                    InnerDownloadCallback innerDownloadCallback7 = this.mCallback;
                    if (innerDownloadCallback7 != null) {
                        innerDownloadCallback7.onMovedFail(this.mInnerCloudFile, 1003, str10);
                        return;
                    }
                    return;
                }
            }
            channel = null;
            try {
                channel2 = new FileInputStream(file).getChannel();
                try {
                    channel = new FileOutputStream(file2).getChannel();
                    channel.transferFrom(channel2, 0L, channel2.size());
                    try {
                        channel2.close();
                        channel.close();
                        LogUtils.d(str7, "download-file: move temp file success");
                    } catch (IOException e11) {
                        e = e11;
                        str2 = TAG;
                        sb2 = new StringBuilder();
                        sb2.append("download-file:  ");
                        sb2.append(Log.getStackTraceString(e));
                        LogUtils.e(str2, sb2.toString());
                    }
                } catch (IOException e12) {
                    e = e12;
                    fileChannel = channel;
                    channel = channel2;
                    try {
                        String str11 = TAG;
                        LogUtils.e(str11, "download-file:  " + Log.getStackTraceString(e));
                        if (channel != null) {
                            try {
                                channel.close();
                            } catch (IOException e13) {
                                e = e13;
                                str2 = TAG;
                                sb2 = new StringBuilder();
                                sb2.append("download-file:  ");
                                sb2.append(Log.getStackTraceString(e));
                                LogUtils.e(str2, sb2.toString());
                            }
                        }
                        if (fileChannel != null) {
                            fileChannel.close();
                        }
                        LogUtils.d(str11, "download-file: move temp file success");
                    } catch (Throwable th2) {
                        th = th2;
                        if (channel != null) {
                            try {
                                channel.close();
                            } catch (IOException e14) {
                                LogUtils.e(TAG, "download-file:  " + Log.getStackTraceString(e14));
                                throw th;
                            }
                        }
                        if (fileChannel != null) {
                            fileChannel.close();
                        }
                        LogUtils.d(TAG, "download-file: move temp file success");
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileChannel = channel;
                    channel = channel2;
                    if (channel != null) {
                        channel.close();
                    }
                    if (fileChannel != null) {
                        fileChannel.close();
                    }
                    LogUtils.d(TAG, "download-file: move temp file success");
                    throw th;
                }
            } catch (IOException e15) {
                e = e15;
                fileChannel = null;
            } catch (Throwable th4) {
                th = th4;
                fileChannel = null;
            }
            file.delete();
            str3 = TAG;
            LogUtils.d(str3, "download-file: delete source file: " + str9);
            name = this.mInnerCloudFile.cloudFile.getName();
            LogUtils.d(str3, "download-file: ready rename to dest temp file, rename: " + name);
            if (checkSameFileName(this.mInnerCloudFile.cloudFile.getName(), file3)) {
                LogUtils.d(str3, "download-file: the " + name + " has already exist");
                iLastIndexOf = name.lastIndexOf(o0.f49827a);
                if (iLastIndexOf == -1) {
                    stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("file suffix error; ");
                    stringBuffer2.append(this.mInnerCloudFile);
                    innerDownloadCallback3 = this.mCallback;
                    if (innerDownloadCallback3 != null) {
                        innerDownloadCallback3.onMovedFail(this.mInnerCloudFile, 1002, stringBuffer2.toString());
                        return;
                    }
                    return;
                }
                name = name.substring(0, iLastIndexOf) + "-" + System.currentTimeMillis() + name.substring(iLastIndexOf);
                LogUtils.d(str3, "download-file: the new name: " + name);
            }
            str4 = this.mInnerCloudFile.cloudFile.getPath() + name;
            LogUtils.d(str3, "download-file: the final path and name: " + str4);
            if (file2.renameTo(new File(str4))) {
                LogUtils.d(str3, "download-file: dest temp file rename fail");
                stringBuffer = new StringBuffer();
                stringBuffer.append("rename fail; ");
                stringBuffer.append(this.mInnerCloudFile);
                stringBuffer.append("; ");
                stringBuffer.append("destCanWrite=");
                stringBuffer.append(file2.canWrite());
                stringBuffer.append(", ");
                stringBuffer.append("destExists=");
                stringBuffer.append(file2.exists());
                innerDownloadCallback = this.mCallback;
                if (innerDownloadCallback != null) {
                    innerDownloadCallback.onMovedFail(this.mInnerCloudFile, 1003, stringBuffer.toString());
                    return;
                }
                return;
            }
            uriSaveToGallery = saveToGallery(this.mInnerCloudFile, str4);
            if (uriSaveToGallery != null) {
                strGalleryImagePath = galleryImagePath(this.mContext, uriSaveToGallery);
                if (TextUtils.isEmpty(strGalleryImagePath)) {
                    LogUtils.d(str3, "download-file: gallery save path null");
                } else {
                    LogUtils.d(str3, "download-file: gallery save path: " + strGalleryImagePath);
                    LogUtils.d(str3, "download-file: InnerCloudFile: " + this.mInnerCloudFile);
                    iIndexOf = strGalleryImagePath.indexOf(this.mInnerCloudFile.cloudFile.getName());
                    if (iIndexOf != -1) {
                        strSubstring = strGalleryImagePath.substring(0, iIndexOf);
                        if (!TextUtils.isEmpty(strSubstring)) {
                            this.mInnerCloudFile.cloudFile.setPath(strSubstring);
                        }
                    }
                    file2.delete();
                }
            }
            this.mInnerCloudFile.cloudFile.setDownloadedName(name);
            innerDownloadCallback2 = this.mCallback;
            if (innerDownloadCallback2 != null) {
                innerDownloadCallback2.onMovedSuccess(this.mInnerCloudFile);
            }
        }
        file3.mkdirs();
        str = str9;
        LogUtils.d(str7, "download-file: ready move temp file");
        file = new File(str8 + str9);
        if (!file.exists()) {
            str6 = str9 + " is not exists when move tmp file";
            innerDownloadCallback5 = this.mCallback;
            if (innerDownloadCallback5 != null) {
                innerDownloadCallback5.onMovedFail(this.mInnerCloudFile, 1003, str6);
                return;
            }
            return;
        }
        if (this.mInnerCloudFile.cloudFile.getSize() != file.length()) {
            str5 = str9 + " length error, length = " + file.length();
            innerDownloadCallback4 = this.mCallback;
            if (innerDownloadCallback4 != null) {
                innerDownloadCallback4.onMovedFail(this.mInnerCloudFile, 1003, str5);
                return;
            }
            return;
        }
        file2 = new File(path + str);
        LogUtils.d(str7, "download-file: move temp file, source=" + str8 + str9);
        LogUtils.d(str7, "download-file: move temp file, dest=" + path + str);
        if (!file2.exists()) {
            LogUtils.d(str7, "download-file: create dest file");
            file2.createNewFile();
        }
        channel = null;
        channel2 = new FileInputStream(file).getChannel();
        channel = new FileOutputStream(file2).getChannel();
        channel.transferFrom(channel2, 0L, channel2.size());
        channel2.close();
        channel.close();
        LogUtils.d(str7, "download-file: move temp file success");
        file.delete();
        str3 = TAG;
        LogUtils.d(str3, "download-file: delete source file: " + str9);
        name = this.mInnerCloudFile.cloudFile.getName();
        LogUtils.d(str3, "download-file: ready rename to dest temp file, rename: " + name);
        if (checkSameFileName(this.mInnerCloudFile.cloudFile.getName(), file3)) {
            LogUtils.d(str3, "download-file: the " + name + " has already exist");
            iLastIndexOf = name.lastIndexOf(o0.f49827a);
            if (iLastIndexOf == -1) {
                stringBuffer2 = new StringBuffer();
                stringBuffer2.append("file suffix error; ");
                stringBuffer2.append(this.mInnerCloudFile);
                innerDownloadCallback3 = this.mCallback;
                if (innerDownloadCallback3 != null) {
                    innerDownloadCallback3.onMovedFail(this.mInnerCloudFile, 1002, stringBuffer2.toString());
                    return;
                }
                return;
            }
            name = name.substring(0, iLastIndexOf) + "-" + System.currentTimeMillis() + name.substring(iLastIndexOf);
            LogUtils.d(str3, "download-file: the new name: " + name);
        }
        str4 = this.mInnerCloudFile.cloudFile.getPath() + name;
        LogUtils.d(str3, "download-file: the final path and name: " + str4);
        if (file2.renameTo(new File(str4))) {
            LogUtils.d(str3, "download-file: dest temp file rename fail");
            stringBuffer = new StringBuffer();
            stringBuffer.append("rename fail; ");
            stringBuffer.append(this.mInnerCloudFile);
            stringBuffer.append("; ");
            stringBuffer.append("destCanWrite=");
            stringBuffer.append(file2.canWrite());
            stringBuffer.append(", ");
            stringBuffer.append("destExists=");
            stringBuffer.append(file2.exists());
            innerDownloadCallback = this.mCallback;
            if (innerDownloadCallback != null) {
                innerDownloadCallback.onMovedFail(this.mInnerCloudFile, 1003, stringBuffer.toString());
                return;
            }
            return;
        }
        uriSaveToGallery = saveToGallery(this.mInnerCloudFile, str4);
        if (uriSaveToGallery != null) {
            strGalleryImagePath = galleryImagePath(this.mContext, uriSaveToGallery);
            if (TextUtils.isEmpty(strGalleryImagePath)) {
                LogUtils.d(str3, "download-file: gallery save path: " + strGalleryImagePath);
                LogUtils.d(str3, "download-file: InnerCloudFile: " + this.mInnerCloudFile);
                iIndexOf = strGalleryImagePath.indexOf(this.mInnerCloudFile.cloudFile.getName());
                if (iIndexOf != -1) {
                    strSubstring = strGalleryImagePath.substring(0, iIndexOf);
                    if (!TextUtils.isEmpty(strSubstring)) {
                        this.mInnerCloudFile.cloudFile.setPath(strSubstring);
                    }
                }
                file2.delete();
            } else {
                LogUtils.d(str3, "download-file: gallery save path null");
            }
        }
        this.mInnerCloudFile.cloudFile.setDownloadedName(name);
        innerDownloadCallback2 = this.mCallback;
        if (innerDownloadCallback2 != null) {
            innerDownloadCallback2.onMovedSuccess(this.mInnerCloudFile);
        }
    }
}
