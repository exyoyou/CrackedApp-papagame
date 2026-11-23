package cn.aigestudio.downloader.bizs;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f679b = "DLUtil";

    static {
        StringBuilder sb2 = new StringBuilder();
        String str = Build.VERSION.RELEASE;
        boolean z10 = !TextUtils.isEmpty(str);
        boolean z11 = !TextUtils.isEmpty(Build.ID);
        boolean z12 = "REL".equals(Build.VERSION.CODENAME) && !TextUtils.isEmpty(Build.MODEL);
        sb2.append("MultiThreadDownloader");
        if (z10) {
            sb2.append(net.lingala.zip4j.util.e.F0);
            sb2.append(str);
        }
        sb2.append(" (Linux; U; Android");
        if (z10) {
            sb2.append(" ");
            sb2.append(str);
        }
        if (z12 || z11) {
            sb2.append(";");
            if (z12) {
                sb2.append(" ");
                sb2.append(Build.MODEL);
            }
            if (z11) {
                sb2.append(" Build/");
                sb2.append(Build.ID);
            }
        }
        sb2.append(")");
        f678a = sb2.toString();
    }

    private k() {
    }

    static synchronized boolean a(String path, String fileName) {
        boolean z10;
        File file = new File(path);
        z10 = false;
        File file2 = null;
        try {
            if (file.exists() || file.mkdirs()) {
                File file3 = new File(file, fileName);
                try {
                    if (file3.exists() || file3.createNewFile()) {
                        z10 = true;
                    }
                } catch (IOException e10) {
                    e = e10;
                    file2 = file3;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("createNewFile error.");
                    sb2.append(file2.getAbsolutePath());
                    e.printStackTrace();
                }
            }
        } catch (IOException e11) {
            e = e11;
        }
        return z10;
    }

    private static boolean b(String key, List<e> headers) {
        Iterator<e> it2 = headers.iterator();
        while (it2.hasNext()) {
            if (it2.next().f620a.equalsIgnoreCase(key)) {
                return true;
            }
        }
        return false;
    }

    static List<e> c(List<e> headers, f info) {
        if (headers == null || headers.isEmpty()) {
            headers = new ArrayList<>();
            headers.add(new e("Accept", "image/gif, image/jpeg, image/pjpeg, image/pjpeg,application/x-shockwave-flash, application/xaml+xml,application/vnd.ms-xpsdocument, application/x-ms-xbap,application/x-ms-application, application/vnd.ms-excel,application/vnd.ms-powerpoint, application/msword, */*"));
            headers.add(new e("Accept-Ranges", "bytes"));
            headers.add(new e("Charset", "UTF-8"));
            headers.add(new e("Connection", "Keep-Alive"));
            headers.add(new e("Accept-Encoding", "identity"));
            headers.add(new e("Range", "bytes=0-"));
        }
        if (!b("User-Agent", headers)) {
            headers.add(new e("User-Agent", f678a));
        }
        if (!TextUtils.isEmpty(info.f633l)) {
            headers.add(new e("If-Match", info.f633l));
        }
        return headers;
    }

    static boolean d(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    static String e(String type) {
        if (type == null) {
            return null;
        }
        String lowerCase = type.trim().toLowerCase();
        int iIndexOf = lowerCase.indexOf(59);
        return iIndexOf != -1 ? lowerCase.substring(0, iIndexOf) : lowerCase;
    }

    static String f(String url, String contentDisposition, String contentLocation) {
        String string;
        String strDecode;
        int iLastIndexOf;
        String strDecode2;
        int iLastIndexOf2;
        if (contentDisposition != null) {
            string = g(contentDisposition);
            if (string != null && (iLastIndexOf2 = string.lastIndexOf(47) + 1) > 0) {
                string = string.substring(iLastIndexOf2);
            }
        } else {
            string = null;
        }
        if (string == null && contentLocation != null && (strDecode2 = Uri.decode(contentLocation)) != null && !strDecode2.endsWith(net.lingala.zip4j.util.e.F0) && strDecode2.indexOf(63) < 0) {
            int iLastIndexOf3 = strDecode2.lastIndexOf(47) + 1;
            string = iLastIndexOf3 > 0 ? strDecode2.substring(iLastIndexOf3) : strDecode2;
        }
        if (string == null && (strDecode = Uri.decode(url)) != null && !strDecode.endsWith(net.lingala.zip4j.util.e.F0) && strDecode.indexOf(63) < 0 && (iLastIndexOf = strDecode.lastIndexOf(47) + 1) > 0) {
            string = strDecode.substring(iLastIndexOf);
        }
        if (string == null) {
            string = UUID.randomUUID().toString();
        }
        return h(string);
    }

    private static String g(String contentDisposition) {
        int iIndexOf = contentDisposition.indexOf(SimpleComparison.EQUAL_TO_OPERATION);
        if (iIndexOf > 0) {
            return contentDisposition.substring(iIndexOf + 1);
        }
        return null;
    }

    private static String h(String fileName) {
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        for (int i10 = 0; i10 < fileName.length(); i10++) {
            char cCharAt = fileName.charAt(i10);
            if (cCharAt > 31 && cCharAt != '\"' && cCharAt != '*' && cCharAt != '/' && cCharAt != ':' && cCharAt != '<' && cCharAt != '>' && cCharAt != '?' && cCharAt != '\\' && cCharAt != '|' && cCharAt != 127) {
                sb2.append(cCharAt);
                z10 = false;
            } else if (!z10) {
                sb2.append('_');
                z10 = true;
            }
        }
        return sb2.toString();
    }
}
