package cn.sharesdk.framework.utils;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.player.C;
import com.join.mgps.Util.o0;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class ShareSDKFileProvider extends ContentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f2698a = {"_display_name", "_size"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final File f2699b = new File(net.lingala.zip4j.util.e.F0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static HashMap<String, PathStrategy> f2700c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PathStrategy f2701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ProviderInfo f2702e;

    interface PathStrategy {
        File getFileForUri(Uri uri);

        Uri getUriForFile(File file);
    }

    static class a implements PathStrategy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f2703a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final HashMap<String, File> f2704b = new HashMap<>();

        public a(String str) {
            this.f2703a = str;
        }

        public void a(String str, File file) {
            File absoluteFile;
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Name must not be empty");
            }
            try {
                absoluteFile = file.getCanonicalFile();
            } catch (Throwable unused) {
                absoluteFile = file.getAbsoluteFile();
            }
            this.f2704b.put(str, absoluteFile);
        }

        @Override // cn.sharesdk.framework.utils.ShareSDKFileProvider.PathStrategy
        public File getFileForUri(Uri uri) {
            File absoluteFile;
            String encodedPath = uri.getEncodedPath();
            int iIndexOf = encodedPath.indexOf(47, 1);
            String strDecode = Uri.decode(encodedPath.substring(1, iIndexOf));
            String strDecode2 = Uri.decode(encodedPath.substring(iIndexOf + 1));
            File file = this.f2704b.get(strDecode);
            if (file == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + uri);
            }
            File file2 = new File(file, strDecode2);
            try {
                absoluteFile = file2.getCanonicalFile();
            } catch (Throwable unused) {
                absoluteFile = file2.getAbsoluteFile();
            }
            if (absoluteFile.getPath().startsWith(file.getPath())) {
                return absoluteFile;
            }
            throw new SecurityException("Resolved path jumped beyond configured root");
        }

        @Override // cn.sharesdk.framework.utils.ShareSDKFileProvider.PathStrategy
        public Uri getUriForFile(File file) {
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f2704b.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
                }
                String path2 = entry.getValue().getPath();
                return new Uri.Builder().scheme("content").authority(this.f2703a).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(path2.endsWith(net.lingala.zip4j.util.e.F0) ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), net.lingala.zip4j.util.e.F0)).build();
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }
    }

    public static Uri a(Context context, String str, File file) {
        try {
            return a(context, str).getUriForFile(file);
        } catch (Throwable th) {
            SSDKLog.b().a("getUriForFile fail" + th);
            return null;
        }
    }

    private static PathStrategy b(Context context, String str) {
        a aVar = new a(str);
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            aVar.a("imageNameFilesDir", a(filesDir, "Mob/cache/images"));
            aVar.a("videoNameFilesDir", a(filesDir, "Mob/cache/videos"));
        }
        String str2 = "Mob/" + context.getPackageName() + "/cache/images";
        if (context.getCacheDir() != null) {
            aVar.a("cachename", a(filesDir, o0.f49827a));
            aVar.a("imageNameExternal", a(filesDir, str2));
            aVar.a("imageNameExternal", a(filesDir, "Mob/cache/images"));
        }
        String str3 = "Mob/" + context.getPackageName() + "/cache/images";
        String str4 = "Mob/" + context.getPackageName() + "/cache/videos";
        File[] fileArrA = a(context);
        File file = fileArrA.length > 0 ? fileArrA[0] : null;
        if (file != null) {
            aVar.a("imageNameExternal", a(file, str3));
            aVar.a("videoNameExternal", a(file, str4));
            aVar.a("mihayou", a(file, o0.f49827a));
            aVar.a("more", a(file, "./."));
        }
        String str5 = "Mob/" + context.getPackageName() + "/cache/images";
        String str6 = "Mob/" + context.getPackageName() + "/cache/videos";
        File[] fileArrB = b(context);
        File file2 = fileArrB.length > 0 ? fileArrB[0] : null;
        if (file2 != null) {
            aVar.a("imageNameEtc", a(file2, str5));
            aVar.a("videoNameEtc", a(file2, str6));
        }
        if (f2699b != null) {
            aVar.a("imageNameRoot", a((File) null, "Mob/cache/images"));
            aVar.a("videoNameRoot", a((File) null, "Mob/cache/videos"));
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory != null) {
            aVar.a("externalStDir", a(externalStorageDirectory, o0.f49827a));
        }
        return aVar;
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        this.f2702e = providerInfo;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        a("del");
        PathStrategy pathStrategy = this.f2701d;
        if (pathStrategy == null) {
            return 0;
        }
        return pathStrategy.getFileForUri(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        a("g-t");
        PathStrategy pathStrategy = this.f2701d;
        if (pathStrategy == null) {
            return "";
        }
        File fileForUri = pathStrategy.getFileForUri(uri);
        int iLastIndexOf = fileForUri.getName().lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileForUri.getName().substring(iLastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        a("o-f");
        PathStrategy pathStrategy = this.f2701d;
        if (pathStrategy == null) {
            return null;
        }
        return ParcelFileDescriptor.open(pathStrategy.getFileForUri(uri), b(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        a("q");
        PathStrategy pathStrategy = this.f2701d;
        if (pathStrategy == null) {
            return null;
        }
        File fileForUri = pathStrategy.getFileForUri(uri);
        if (strArr == null) {
            strArr = f2698a;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i10 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i10] = "_display_name";
                objArr[i10] = fileForUri.getName();
            } else {
                if ("_size".equals(str3)) {
                    strArr3[i10] = "_size";
                    objArr[i10] = Long.valueOf(fileForUri.length());
                }
            }
            i10++;
        }
        String[] strArrA = a(strArr3, i10);
        Object[] objArrA = a(objArr, i10);
        MatrixCursor matrixCursor = new MatrixCursor(strArrA, 1);
        matrixCursor.addRow(objArrA);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    private static PathStrategy a(Context context, String str) {
        PathStrategy pathStrategyB;
        synchronized (f2700c) {
            pathStrategyB = f2700c.get(str);
            if (pathStrategyB == null) {
                pathStrategyB = b(context, str);
                f2700c.put(str, pathStrategyB);
            }
        }
        return pathStrategyB;
    }

    private void a(String str) {
        ProviderInfo providerInfo;
        if (this.f2701d == null && (providerInfo = this.f2702e) != null) {
            if (!providerInfo.exported) {
                if (providerInfo.grantUriPermissions) {
                    try {
                        this.f2701d = a(getContext(), this.f2702e.authority);
                        return;
                    } catch (Throwable unused) {
                        return;
                    }
                }
                throw new SecurityException("Provider must grant uri permissions");
            }
            throw new SecurityException("Provider must not be exported");
        }
    }

    public static File[] a(Context context) {
        return context.getExternalFilesDirs(null);
    }

    private static File a(File file, String... strArr) {
        for (String str : strArr) {
            if (str != null) {
                file = new File(file, str);
            }
        }
        return file;
    }

    private static String[] a(String[] strArr, int i10) {
        String[] strArr2 = new String[i10];
        System.arraycopy(strArr, 0, strArr2, 0, i10);
        return strArr2;
    }

    private static Object[] a(Object[] objArr, int i10) {
        Object[] objArr2 = new Object[i10];
        System.arraycopy(objArr, 0, objArr2, 0, i10);
        return objArr2;
    }

    public static File[] b(Context context) {
        return context.getExternalCacheDirs();
    }

    private static int b(String str) {
        if ("r".equals(str)) {
            return C.ENCODING_PCM_MU_LAW;
        }
        if (IAdInterListener.AdReqParam.WIDTH.equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if (net.lingala.zip4j.util.e.f94694e0.equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + str);
    }
}
