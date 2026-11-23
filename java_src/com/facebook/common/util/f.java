package com.facebook.common.util;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.infer.annotation.PropagatesNullable;
import java.io.File;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f26947a = "http";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f26948b = "https";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f26949c = "file";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f26950d = "content";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Uri f26951e = Uri.withAppendedPath((Uri) o4.a.l(ContactsContract.AUTHORITY_URI), "display_photo");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f26952f = "asset";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f26953g = "res";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f26954h = "android.resource";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f26955i = "data";

    @Nullable
    public static AssetFileDescriptor a(ContentResolver contentResolver, final Uri srcUri) {
        if (k(srcUri)) {
            try {
                return contentResolver.openAssetFileDescriptor(srcUri, "r");
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
    }

    @Nullable
    public static String b(ContentResolver contentResolver, Uri uri) throws Throwable {
        int columnIndex;
        Cursor cursor = null;
        string = null;
        string = null;
        String string = null;
        if (!k(uri)) {
            if (l(uri)) {
                return uri.getPath();
            }
            return null;
        }
        try {
            Cursor cursorQuery = contentResolver.query(uri, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_data")) != -1) {
                        string = cursorQuery.getString(columnIndex);
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery == null) {
                return string;
            }
            cursorQuery.close();
            return string;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Nullable
    public static String c(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.getScheme();
    }

    public static Uri d(File file) {
        return Uri.fromFile(file);
    }

    public static Uri e(String packageName, int resourceId) {
        return new Uri.Builder().scheme(f26954h).authority(packageName).path(String.valueOf(resourceId)).build();
    }

    public static Uri f(int resourceId) {
        return new Uri.Builder().scheme(f26953g).path(String.valueOf(resourceId)).build();
    }

    public static boolean g(@Nullable Uri uri) {
        return "data".equals(c(uri));
    }

    public static boolean h(@Nullable Uri uri) {
        return f26952f.equals(c(uri));
    }

    public static boolean i(Uri uri) {
        String string = uri.toString();
        return string.startsWith(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString()) || string.startsWith(MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString());
    }

    public static boolean j(Uri uri) {
        return uri.getPath() != null && k(uri) && "com.android.contacts".equals(uri.getAuthority()) && !uri.getPath().startsWith((String) o4.a.l(f26951e.getPath()));
    }

    public static boolean k(@Nullable Uri uri) {
        return "content".equals(c(uri));
    }

    public static boolean l(@Nullable Uri uri) {
        return "file".equals(c(uri));
    }

    public static boolean m(@Nullable Uri uri) {
        return f26953g.equals(c(uri));
    }

    public static boolean n(@Nullable Uri uri) {
        String strC = c(uri);
        return "https".equals(strC) || "http".equals(strC);
    }

    public static boolean o(@Nullable Uri uri) {
        return f26954h.equals(c(uri));
    }

    @Nullable
    public static Uri p(@Nullable String uriAsString) {
        if (uriAsString != null) {
            return Uri.parse(uriAsString);
        }
        return null;
    }

    @Nullable
    public static URL q(@PropagatesNullable @Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        try {
            return new URL(uri.toString());
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }
}
