package com.sina.weibo.sdk.share;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.sina.weibo.BuildConfig;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Calendar;

/* JADX INFO: loaded from: classes3.dex */
public final class a {
    /* JADX WARN: Code duplicated, block: B:22:0x0097  */
    /* JADX WARN: Code duplicated, block: B:69:0x0159 A[Catch: all -> 0x015d, Exception -> 0x0160, TRY_ENTER, TryCatch #11 {Exception -> 0x0160, all -> 0x015d, blocks: (B:3:0x0005, B:5:0x000d, B:6:0x000f, B:9:0x0017, B:24:0x009a, B:34:0x00c2, B:36:0x00c8, B:40:0x00df, B:41:0x00e6, B:32:0x00be, B:69:0x0159, B:70:0x015c), top: B:100:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0186 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x0188 A[Catch: Exception -> 0x0184, TRY_LEAVE, TryCatch #8 {Exception -> 0x0184, blocks: (B:79:0x0180, B:83:0x0188), top: B:92:0x0180 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0180 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    protected static String a(Context context, Uri uri, int i10) throws Throwable {
        FileOutputStream fileOutputStream;
        Cursor cursorQuery;
        String string;
        BufferedInputStream bufferedInputStream;
        File file;
        byte[] bArr;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            com.sina.weibo.sdk.b.a.C1038a c1038aE = com.sina.weibo.sdk.b.a.e(context);
            String str = c1038aE != null ? c1038aE.packageName : "";
            if (TextUtils.isEmpty(str)) {
                str = BuildConfig.APPLICATION_ID;
            }
            String str2 = "/Android/data/" + str + "/files/.composerTem/";
            new File(Environment.getExternalStorageDirectory().getAbsolutePath() + str2).mkdirs();
            Calendar calendar = Calendar.getInstance();
            try {
                try {
                    try {
                        if ("file".equals(uri.getScheme())) {
                            string = calendar.getTimeInMillis() + uri.getLastPathSegment();
                            cursorQuery = null;
                        } else {
                            cursorQuery = context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
                            if (cursorQuery != null) {
                                try {
                                    try {
                                        if (cursorQuery.moveToFirst()) {
                                            string = cursorQuery.getString(cursorQuery.getColumnIndex("_display_name"));
                                        } else {
                                            string = null;
                                        }
                                    } catch (Exception e10) {
                                        e = e10;
                                        com.sina.weibo.sdk.b.c.b("WBShareTag", "share util and exception is " + e.getMessage());
                                        e.printStackTrace();
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        string = null;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    throw th;
                                }
                            } else {
                                string = null;
                            }
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        while (true) {
                            int i11 = bufferedInputStream.read(bArr);
                            if (i11 == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i11);
                        }
                    } catch (Exception e11) {
                        e = e11;
                        cursorQuery = null;
                    } catch (Throwable th2) {
                        th = th2;
                        cursorQuery = null;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        throw th;
                    }
                    bArr = new byte[1444];
                    String path = file.getPath();
                    try {
                        bufferedInputStream.close();
                        fileOutputStream.close();
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    return path;
                } catch (Exception e13) {
                    e = e13;
                    bufferedInputStream2 = bufferedInputStream;
                    try {
                        com.sina.weibo.sdk.b.c.b("WBShareTag", "share util and error is " + e.getMessage());
                        throw new Throwable(e);
                    } catch (Throwable th3) {
                        th = th3;
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                            } catch (Exception e14) {
                                e14.printStackTrace();
                                throw th;
                            }
                        } else if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    bufferedInputStream2 = bufferedInputStream;
                    if (bufferedInputStream2 != null) {
                        bufferedInputStream2.close();
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                    } else if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th;
                }
                file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + str2 + string);
                if (file.exists()) {
                    file.delete();
                }
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e15) {
                e = e15;
                fileOutputStream = null;
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream = null;
            }
            if (TextUtils.isEmpty(string)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Calendar.getInstance().getTimeInMillis());
                sb2.append(i10 == 0 ? "_sdk_temp.mp4" : "_sdk_temp.jpg");
                string = sb2.toString();
            }
            bufferedInputStream = new BufferedInputStream(new FileInputStream(context.getContentResolver().openFileDescriptor(uri, "r").getFileDescriptor()));
        } catch (Exception e16) {
            e = e16;
            fileOutputStream = null;
        } catch (Throwable th6) {
            th = th6;
            fileOutputStream = null;
        }
    }
}
