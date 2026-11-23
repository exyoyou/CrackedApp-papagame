package com.xinzhu.overmind.client.hook.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.core.content.ContextCompat;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import net.lingala.zip4j.util.e;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes8.dex */
public class FileProvider extends ContentProvider {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f89316d = "android.support.FILE_PROVIDER_PATHS";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f89317e = "root-path";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f89318f = "files-path";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f89319g = "cache-path";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f89320h = "external-path";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f89321i = "external-files-path";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f89322j = "external-cache-path";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f89323k = "external-media-path";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f89324l = "name";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f89325m = "path";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f89328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f89315c = {"_display_name", "_size"};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final File f89326n = new File(e.F0);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static HashMap<String, a> f89327o = new HashMap<>();

    interface a {
        File getFileForUri(Uri uri);

        Uri getUriForFile(File file);
    }

    static class b implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f89329a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final HashMap<String, File> f89330b = new HashMap<>();

        b(String str) {
            this.f89329a = str;
        }

        void a(String str, File file) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Name must not be empty");
            }
            try {
                this.f89330b.put(str, file.getCanonicalFile());
            } catch (IOException e10) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e10);
            }
        }

        @Override // com.xinzhu.overmind.client.hook.provider.FileProvider.a
        public File getFileForUri(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int iIndexOf = encodedPath.indexOf(47, 1);
            String strDecode = Uri.decode(encodedPath.substring(1, iIndexOf));
            String strDecode2 = Uri.decode(encodedPath.substring(iIndexOf + 1));
            File file = this.f89330b.get(strDecode);
            if (file == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + uri);
            }
            File file2 = new File(file, strDecode2);
            try {
                File canonicalFile = file2.getCanonicalFile();
                if (canonicalFile.getPath().startsWith(file.getPath())) {
                    return canonicalFile;
                }
                throw new SecurityException("Resolved path jumped beyond configured root");
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
            }
        }

        @Override // com.xinzhu.overmind.client.hook.provider.FileProvider.a
        public Uri getUriForFile(File file) {
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f89330b.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
                }
                String path2 = entry.getValue().getPath();
                return new Uri.Builder().scheme("content").authority(this.f89329a).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(path2.endsWith(e.F0) ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), e.F0)).build();
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }
    }

    private static File a(File file, String... strArr) {
        for (String str : strArr) {
            if (str != null) {
                file = new File(file, str);
            }
        }
        return file;
    }

    private static Object[] b(Object[] objArr, int i10) {
        Object[] objArr2 = new Object[i10];
        System.arraycopy(objArr, 0, objArr2, 0, i10);
        return objArr2;
    }

    private static String[] c(String[] strArr, int i10) {
        String[] strArr2 = new String[i10];
        System.arraycopy(strArr, 0, strArr2, 0, i10);
        return strArr2;
    }

    public static File d(Context context, String str, Uri uri) {
        return e(context, str).getFileForUri(uri);
    }

    private static a e(Context context, String str) {
        a aVarH;
        synchronized (f89327o) {
            aVarH = f89327o.get(str);
            if (aVarH == null) {
                try {
                    aVarH = h(context, str);
                    f89327o.put(str, aVarH);
                } catch (IOException e10) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e10);
                } catch (XmlPullParserException e11) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e11);
                }
            }
        }
        return aVarH;
    }

    public static Uri f(Context context, String str, File file) {
        return e(context, str).getUriForFile(file);
    }

    private static int g(String str) {
        if ("r".equals(str)) {
            return C.ENCODING_PCM_MU_LAW;
        }
        if (IAdInterListener.AdReqParam.WIDTH.equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if (e.f94694e0.equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + str);
    }

    private static a h(Context context, String str) throws XmlPullParserException, IOException {
        b bVar = new b(str);
        ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
        if (providerInfoResolveContentProvider == null) {
            throw new IllegalArgumentException("Couldn't find meta-data for provider with authority " + str);
        }
        XmlResourceParser xmlResourceParserLoadXmlMetaData = providerInfoResolveContentProvider.loadXmlMetaData(context.getPackageManager(), f89316d);
        if (xmlResourceParserLoadXmlMetaData == null) {
            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
        }
        while (true) {
            int next = xmlResourceParserLoadXmlMetaData.next();
            if (next == 1) {
                return bVar;
            }
            if (next == 2) {
                String name = xmlResourceParserLoadXmlMetaData.getName();
                File externalStorageDirectory = null;
                String attributeValue = xmlResourceParserLoadXmlMetaData.getAttributeValue(null, "name");
                String attributeValue2 = xmlResourceParserLoadXmlMetaData.getAttributeValue(null, f89325m);
                if (f89317e.equals(name)) {
                    externalStorageDirectory = f89326n;
                } else if (f89318f.equals(name)) {
                    externalStorageDirectory = context.getFilesDir();
                } else if (f89319g.equals(name)) {
                    externalStorageDirectory = context.getCacheDir();
                } else if (f89320h.equals(name)) {
                    externalStorageDirectory = Environment.getExternalStorageDirectory();
                } else if (f89321i.equals(name)) {
                    File[] externalFilesDirs = ContextCompat.getExternalFilesDirs(context, null);
                    if (externalFilesDirs.length > 0) {
                        externalStorageDirectory = externalFilesDirs[0];
                    }
                } else if (f89322j.equals(name)) {
                    File[] externalCacheDirs = ContextCompat.getExternalCacheDirs(context);
                    if (externalCacheDirs.length > 0) {
                        externalStorageDirectory = externalCacheDirs[0];
                    }
                } else if (f89323k.equals(name)) {
                    File[] externalMediaDirs = context.getExternalMediaDirs();
                    if (externalMediaDirs.length > 0) {
                        externalStorageDirectory = externalMediaDirs[0];
                    }
                }
                if (externalStorageDirectory != null) {
                    bVar.a(attributeValue, a(externalStorageDirectory, attributeValue2));
                }
            }
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
        this.f89328b = e(context, providerInfo.authority);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.f89328b.getFileForUri(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File fileForUri = this.f89328b.getFileForUri(uri);
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
        return ParcelFileDescriptor.open(this.f89328b.getFileForUri(uri), g(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i10;
        File fileForUri = this.f89328b.getFileForUri(uri);
        if (strArr == null) {
            strArr = f89315c;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i11 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i11] = "_display_name";
                i10 = i11 + 1;
                objArr[i11] = fileForUri.getName();
            } else {
                if ("_size".equals(str3)) {
                    strArr3[i11] = "_size";
                    i10 = i11 + 1;
                    objArr[i11] = Long.valueOf(fileForUri.length());
                }
            }
            i11 = i10;
        }
        String[] strArrC = c(strArr3, i11);
        Object[] objArrB = b(objArr, i11);
        MatrixCursor matrixCursor = new MatrixCursor(strArrC, 1);
        matrixCursor.addRow(objArrB);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
