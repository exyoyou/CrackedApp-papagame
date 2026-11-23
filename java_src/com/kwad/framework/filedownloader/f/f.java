package com.kwad.framework.filedownloader.f;

import android.app.ActivityManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.text.TextUtils;
import com.byazt.hv.TTDownloadField;
import com.kwad.components.offline.api.BuildConfig;
import com.kwad.framework.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.kwad.sdk.utils.ba;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    private static int aDA = 65536;
    private static long aDB = 2000;
    private static String aDC;
    private static Boolean aDD;
    private static Boolean aDE;
    private static final Pattern aDF = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");

    private static String C(String str, String str2) {
        if (str2 == null) {
            throw new IllegalStateException("can't generate real path, the file name is null");
        }
        if (str != null) {
            return c("%s%s%s", str, File.separator, str2);
        }
        throw new IllegalStateException("can't generate real path, the directory is null");
    }

    public static int D(String str, String str2) {
        return com.kwad.framework.filedownloader.download.b.Ca().Cb().g(str, str2, false);
    }

    private static int DB() {
        return aDA;
    }

    private static long DC() {
        return aDB;
    }

    private static String DD() {
        if (TextUtils.isEmpty(aDC)) {
            return c.Dx().getExternalCacheDir() == null ? Environment.getDownloadCacheDirectory().getAbsolutePath() : c.Dx().getExternalCacheDir().getAbsolutePath();
        }
        return aDC;
    }

    public static boolean DE() {
        ConnectivityManager connectivityManager = (ConnectivityManager) c.Dx().getSystemService("connectivity");
        if (connectivityManager == null) {
            d.d(f.class, "failed to get connectivity manager!", new Object[0]);
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo == null || activeNetworkInfo.getType() != 1;
    }

    public static String DF() {
        return c("FileDownloader/%s", BuildConfig.VERSION_NAME);
    }

    public static void E(String str, String str2) {
        ct(str2);
        cu(str);
    }

    public static String a(String str, boolean z10, String str2) {
        if (str == null) {
            return null;
        }
        if (!z10) {
            return str;
        }
        if (str2 == null) {
            return null;
        }
        return C(str, str2);
    }

    public static boolean aZ(Context context) {
        boolean zEndsWith;
        Boolean bool = aDD;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (e.Dz().aDv) {
            zEndsWith = true;
        } else {
            if (((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)) == null) {
                d.d(f.class, "fail to get the activity manager!", new Object[0]);
                return false;
            }
            zEndsWith = ba.getProcessName(context).endsWith(":filedownloader");
        }
        Boolean boolValueOf = Boolean.valueOf(zEndsWith);
        aDD = boolValueOf;
        return boolValueOf.booleanValue();
    }

    public static void ai(long j10) throws IllegalAccessException {
        if (!aZ(c.Dx())) {
            throw new IllegalAccessException("This value is used in the :filedownloader process, so set this value in your process is without effect. You can add 'process.non-separate=true' in 'filedownloader.properties' to share the main process to FileDownloadService. Or you can configure this value in 'filedownloader.properties' by 'download.min-progress-time'.");
        }
        aDB = j10;
    }

    public static long b(int i10, com.kwad.framework.filedownloader.a.b bVar) {
        long jCr = cr(bVar.bW("Content-Length"));
        String strBW = bVar.bW("Transfer-Encoding");
        if (jCr >= 0) {
            return jCr;
        }
        if (!(strBW != null && strBW.equals("chunked"))) {
            if (!e.Dz().aDu) {
                throw new FileDownloadGiveUpRetryException("can't know the size of the download file, and its Transfer-Encoding is not Chunked either.\nyou can ignore such exception by add http.lenient=true to the filedownloader.properties");
            }
            if (d.aDr) {
                d.c(f.class, "%d response header is not legal but HTTP lenient is true, so handle as the case of transfer encoding chunk", Integer.valueOf(i10));
            }
        }
        return -1L;
    }

    public static void ba(Context context) {
        File fileBb = bb(context);
        try {
            fileBb.getParentFile().mkdirs();
            fileBb.createNewFile();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    private static File bb(Context context) {
        return new File(context.getFilesDir().getAbsolutePath() + File.separator + "filedownloader", ".old_file_converted");
    }

    public static String c(String str, Object... objArr) {
        try {
            return String.format(Locale.ENGLISH, str, objArr);
        } catch (Exception unused) {
            return str;
        }
    }

    public static String ck(String str) {
        return C(DD(), cl(str));
    }

    private static String cl(String str) {
        return md5(str);
    }

    public static String cm(String str) {
        return c("%s.temp", str);
    }

    public static String cn(String str) {
        if (str == null) {
            return null;
        }
        try {
            Matcher matcher = aDF.matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
        } catch (IllegalStateException unused) {
        }
        return null;
    }

    public static String co(String str) {
        int length = str.length();
        int i10 = (File.separatorChar == '\\' && length > 2 && str.charAt(1) == ':') ? 2 : 0;
        int iLastIndexOf = str.lastIndexOf(File.separatorChar);
        int i11 = (iLastIndexOf != -1 || i10 <= 0) ? iLastIndexOf : 2;
        if (i11 == -1) {
            return null;
        }
        char cCharAt = str.charAt(length - 1);
        char c10 = File.separatorChar;
        if (cCharAt == c10) {
            return null;
        }
        return (str.indexOf(c10) == i11 && str.charAt(i10) == File.separatorChar) ? str.substring(0, i11 + 1) : str.substring(0, i11);
    }

    public static String cp(String str) {
        return "FileDownloader-" + str;
    }

    public static boolean cq(String str) {
        return c.Dx().checkCallingOrSelfPermission(str) == 0;
    }

    private static long cr(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static com.kwad.framework.filedownloader.e.a cs(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("found invalid internal destination path, empty");
        }
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            file.delete();
            if (!file.createNewFile()) {
                throw new RuntimeException(c("found invalid internal destination path[%s], & path is directory[%B]", str, Boolean.valueOf(file.isDirectory())));
            }
        }
        if (file.exists() || file.createNewFile()) {
            return com.kwad.framework.filedownloader.download.b.Ca().b(file);
        }
        throw new IOException(c("create new file error  %s", file.getAbsolutePath()));
    }

    private static void ct(String str) {
        if (str != null) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static void cu(String str) {
        if (str != null) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static void de(int i10) throws IllegalAccessException {
        if (!aZ(c.Dx())) {
            throw new IllegalAccessException("This value is used in the :filedownloader process, so set this value in your process is without effect. You can add 'process.non-separate=true' in 'filedownloader.properties' to share the main process to FileDownloadService. Or you can configure this value in 'filedownloader.properties' by 'download.min-progress-step'.");
        }
        aDA = i10;
    }

    public static int g(String str, String str2, boolean z10) {
        return com.kwad.framework.filedownloader.download.b.Ca().Cb().g(str, str2, z10);
    }

    public static boolean i(long j10, long j11) {
        return j10 > ((long) DB()) && j11 > DC();
    }

    public static String md5(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
            for (byte b10 : bArrDigest) {
                int i10 = b10 & 255;
                if (i10 < 16) {
                    sb2.append("0");
                }
                sb2.append(Integer.toHexString(i10));
            }
            return sb2.toString();
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Huh, UTF-8 should be supported?", e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new RuntimeException("Huh, MD5 should be supported?", e11);
        }
    }

    public static String a(int i10, com.kwad.framework.filedownloader.a.b bVar) {
        if (bVar == null) {
            throw new RuntimeException("connection is null when findEtag");
        }
        String strBW = bVar.bW(com.sigmob.sdk.downloader.core.c.f80443g);
        if (d.aDr) {
            d.c(f.class, "etag find %s for task(%d)", strBW, Integer.valueOf(i10));
        }
        return strBW;
    }

    public static String a(com.kwad.framework.filedownloader.a.b bVar, String str) {
        String strCn = cn(bVar.bW(com.sigmob.sdk.downloader.core.c.f80446j));
        if (TextUtils.isEmpty(strCn)) {
            strCn = cl(str);
        }
        return strCn.replaceAll("\\/", "_");
    }

    public static boolean b(int i10, com.kwad.framework.filedownloader.d.c cVar) {
        return a(i10, cVar, (Boolean) null);
    }

    private static boolean a(int i10, com.kwad.framework.filedownloader.d.c cVar, Boolean bool) {
        if (cVar == null) {
            if (d.aDr) {
                d.c(f.class, "can't continue %d model == null", Integer.valueOf(i10));
            }
            return false;
        }
        if (cVar.Cp() == null) {
            if (d.aDr) {
                d.c(f.class, "can't continue %d temp path == null", Integer.valueOf(i10));
            }
            return false;
        }
        return a(i10, cVar, cVar.Cp(), null);
    }

    public static boolean a(int i10, com.kwad.framework.filedownloader.d.c cVar, String str, Boolean bool) {
        if (str == null) {
            if (d.aDr) {
                d.c(f.class, "can't continue %d path = null", Integer.valueOf(i10));
            }
        } else {
            File file = new File(str);
            boolean zExists = file.exists();
            boolean zIsDirectory = file.isDirectory();
            if (zExists && !zIsDirectory) {
                long length = file.length();
                long jCX = cVar.CX();
                if (cVar.Da() <= 1 && jCX == 0) {
                    if (d.aDr) {
                        d.c(f.class, "can't continue %d the downloaded-record is zero.", Integer.valueOf(i10));
                    }
                } else {
                    long total = cVar.getTotal();
                    if (length >= jCX && (total == -1 || (length <= total && jCX < total))) {
                        if (bool == null || bool.booleanValue() || total != length) {
                            return true;
                        }
                        if (d.aDr) {
                            d.c(f.class, "can't continue %d, because of the output stream doesn't support seek, but the task has already pre-allocated, so we only can download it from the very beginning.", Integer.valueOf(i10));
                        }
                    } else if (d.aDr) {
                        d.c(f.class, "can't continue %d dirty data fileLength[%d] sofar[%d] total[%d]", Integer.valueOf(i10), Long.valueOf(length), Long.valueOf(jCX), Long.valueOf(total));
                    }
                }
            } else if (d.aDr) {
                d.c(f.class, "can't continue %d file not suit, exists[%B], directory[%B]", Integer.valueOf(i10), Boolean.valueOf(zExists), Boolean.valueOf(zIsDirectory));
            }
        }
        return false;
    }
}
