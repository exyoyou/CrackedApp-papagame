package com.join.mgps.Util;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@SourceDebugExtension({"SMAP\nMediaUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaUtils.kt\ncom/join/mgps/Util/MediaUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"})
public final class o1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final o1 f49829a = new o1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final String f49830b = Environment.DIRECTORY_DOCUMENTS + "/Wufun/";

    private o1() {
    }

    private final String c(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = fileInputStream.read(bArr);
                if (i10 == -1) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    Intrinsics.checkNotNull(byteArray);
                    return new String(byteArray, Charsets.UTF_8);
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static /* synthetic */ String d(o1 o1Var, Context context, String str, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = "";
        }
        return o1Var.b(context, str, str2);
    }

    private final void f(File file, String str) {
        if ((file != null ? file.getParentFile() : null) == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists()) {
                parentFile.mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            fileOutputStream.write(bytes);
            fileOutputStream.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static /* synthetic */ void g(o1 o1Var, Context context, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            str3 = "";
        }
        o1Var.e(context, str, str2, str3);
    }

    private static final void h(ContentResolver contentResolver, String str, Uri uri) {
        if (uri != null) {
            try {
                OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uri);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStreamOpenOutputStream);
                byte[] bytes = str.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                bufferedOutputStream.write(bytes);
                bufferedOutputStream.close();
                if (outputStreamOpenOutputStream != null) {
                    outputStreamOpenOutputStream.close();
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                Unit unit2 = Unit.INSTANCE;
            }
        }
    }

    @NotNull
    public final String a() {
        return f49830b;
    }

    @NotNull
    public final String b(@NotNull Context context, @NotNull String name, @NotNull String str) {
        String[] strArr;
        String str2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        String relativePath = str;
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        String str3 = "";
        boolean z10 = true;
        String str4 = str.length() == 0 ? f49830b : relativePath;
        if ((str4.length() > 0) && !StringsKt__StringsJVMKt.endsWith$default(str4, net.lingala.zip4j.util.e.F0, false, 2, null)) {
            str4 = str4 + '/';
        }
        String str5 = z.f50165d + '/' + str4 + name;
        try {
            ContentResolver contentResolver = context.getContentResolver();
            String[] strArr2 = {"_id", "_data"};
            if (Build.VERSION.SDK_INT >= 30) {
                str2 = "relative_path=? AND _display_name=?";
                strArr = new String[2];
                if (str.length() == 0) {
                    relativePath = f49830b;
                }
                strArr[0] = relativePath;
                strArr[1] = name;
            } else {
                strArr = new String[]{str5};
                str2 = "_data=?";
            }
            Uri contentUri = MediaStore.Files.getContentUri("external");
            Cursor cursorQuery = contentResolver.query(contentUri, strArr2, str2, strArr, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                z10 = false;
            }
            if (!z10) {
                return "";
            }
            Uri uriWithAppendedId = ContentUris.withAppendedId(contentUri, cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_id")));
            Intrinsics.checkNotNullExpressionValue(uriWithAppendedId, "withAppendedId(...)");
            if (!new File(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"))).exists()) {
                contentResolver.delete(contentUri, str2, strArr);
                return "";
            }
            InputStream inputStreamOpenInputStream = contentResolver.openInputStream(uriWithAppendedId);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamOpenInputStream);
            String str6 = new String(ByteStreamsKt.readBytes(bufferedInputStream), Charsets.UTF_8);
            try {
                bufferedInputStream.close();
                if (inputStreamOpenInputStream == null) {
                    return str6;
                }
                inputStreamOpenInputStream.close();
                return str6;
            } catch (Exception e10) {
                e = e10;
                str3 = str6;
                e.printStackTrace();
                return str3;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public final void e(@NotNull Context context, @NotNull String name, @NotNull String content, @NotNull String relativePath) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        boolean z10 = true;
        String str = relativePath.length() == 0 ? f49830b : relativePath;
        if ((str.length() > 0) && !StringsKt__StringsJVMKt.endsWith$default(str, net.lingala.zip4j.util.e.F0, false, 2, null)) {
            str = str + '/';
        }
        String str2 = z.f50165d + '/' + str + name;
        try {
            ContentResolver contentResolver = context.getContentResolver();
            Uri contentUri = MediaStore.Files.getContentUri("external");
            String[] strArr = {"_id", "_data"};
            String[] strArr2 = {str2};
            if (!new File(str2).exists()) {
                MediaScannerConnection.scanFile(context, new String[]{str2}, new String[]{"application/*"}, null);
            }
            Cursor cursorQuery = contentResolver.query(contentUri, strArr, "_data=?", strArr2, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                z10 = false;
            }
            if (!z10) {
                ContentValues contentValues = new ContentValues();
                if (Build.VERSION.SDK_INT >= 30) {
                    contentValues.put("relative_path", str);
                    contentValues.put("_display_name", name);
                } else {
                    contentValues.put("_data", str2);
                }
                Uri uriInsert = contentResolver.insert(contentUri, contentValues);
                if (uriInsert != null) {
                    h(contentResolver, content, uriInsert);
                    return;
                }
                return;
            }
            Uri uriWithAppendedId = ContentUris.withAppendedId(contentUri, cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_id")));
            Intrinsics.checkNotNullExpressionValue(uriWithAppendedId, "withAppendedId(...)");
            OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriWithAppendedId);
            if (outputStreamOpenOutputStream != null) {
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStreamOpenOutputStream);
                    byte[] bytes = content.getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                    bufferedOutputStream.write(bytes);
                    bufferedOutputStream.close();
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(outputStreamOpenOutputStream, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(outputStreamOpenOutputStream, th);
                        throw th2;
                    }
                }
            }
            cursorQuery.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
