package com.sigmob.sdk.downloader.core;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.StatFs;
import com.sigmob.sdk.base.o;
import com.sigmob.sdk.downloader.core.breakpoint.h;
import com.sigmob.sdk.downloader.core.breakpoint.i;
import com.sigmob.sdk.downloader.core.breakpoint.j;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.g;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f80437a = "HEAD";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f80438b = "Range";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f80439c = "If-Match";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f80440d = "User-Agent";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f80441e = "Content-Length";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f80442f = "Content-Range";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f80443g = "Etag";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f80444h = "Transfer-Encoding";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f80445i = "Accept-Ranges";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f80446j = "Content-Disposition";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f80447k = "chunked";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f80448l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f80449m = 416;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static b f80450n = new a();

    public static class a implements b {
        @Override // com.sigmob.sdk.downloader.core.c.b
        public void a(String tag, String msg) {
        }

        @Override // com.sigmob.sdk.downloader.core.c.b
        public void b(String tag, String msg) {
        }

        @Override // com.sigmob.sdk.downloader.core.c.b
        public void c(String tag, String msg) {
        }

        @Override // com.sigmob.sdk.downloader.core.c.b
        public void a(String tag, String msg, Exception e10) {
        }
    }

    public interface b {
        void a(String tag, String msg);

        void a(String tag, String msg, Exception e10);

        void b(String tag, String msg);

        void c(String tag, String msg);
    }

    public static long a(StatFs statFs) {
        return statFs.getAvailableBytes();
    }

    public static long b(String contentLength) {
        if (contentLength == null) {
            return -1L;
        }
        try {
            return Long.parseLong(contentLength);
        } catch (NumberFormatException unused) {
            b("Util", "parseContentLength failed parse for '" + contentLength + "'");
            return -1L;
        }
    }

    public static long c(Uri contentUri) {
        contentUri.getAuthority();
        Cursor cursorQuery = g.j().h().getContentResolver().query(contentUri, null, null, null, null);
        if (cursorQuery == null) {
            return 0L;
        }
        try {
            cursorQuery.moveToFirst();
            int columnIndex = cursorQuery.getColumnIndex("_size");
            if (columnIndex >= 0) {
                return cursorQuery.getLong(columnIndex);
            }
            return 0L;
        } finally {
            cursorQuery.close();
        }
    }

    public static long d(String contentRange) {
        if (contentRange != null && contentRange.length() != 0) {
            try {
                Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/\\d+").matcher(contentRange);
                if (matcher.find()) {
                    return (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                }
            } catch (Exception e10) {
                a("Util", "parse content-length from content-range failed " + e10);
            }
        }
        return -1L;
    }

    private static String e(String filename) {
        if (filename == null || filename.isEmpty()) {
            return null;
        }
        return filename.replaceAll("\\.\\./", "_");
    }

    public static j a(Context context) {
        try {
            return (j) i.class.getDeclaredConstructor(Context.class).newInstance(context);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
            return new h();
        }
    }

    public static b b() {
        return f80450n;
    }

    public static com.sigmob.sdk.downloader.core.connection.a.b c() {
        String name = com.sigmob.sdk.downloader.core.connection.b.a.class.getName();
        try {
            if (o.a().ab()) {
                return (com.sigmob.sdk.downloader.core.connection.a.b) Class.forName(name).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
        }
        return new com.sigmob.sdk.downloader.core.connection.c.b();
    }

    public static j a(j originStore) {
        try {
            originStore = (j) originStore.getClass().getMethod("createRemitSelf", new Class[0]).invoke(originStore, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        b("Util", "Get final download store is " + originStore);
        return originStore;
    }

    public static void b(String tag, String msg) {
        b bVar = f80450n;
        if (bVar != null) {
            bVar.b(tag, msg);
        }
    }

    public static void c(String tag, String msg) {
        b bVar = f80450n;
        if (bVar != null) {
            bVar.c(tag, msg);
        }
    }

    public static File a(final File file) {
        File parentFile = file.getParentFile();
        return parentFile == null ? new File(e.F0) : parentFile;
    }

    public static void b(Map<String, List<String>> headerFields, com.sigmob.sdk.downloader.core.connection.a connection) {
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            String key = entry.getKey();
            Iterator<String> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                connection.a(key, it2.next());
            }
        }
    }

    public static boolean c(String permission) {
        return g.j().h().checkCallingOrSelfPermission(permission) == 0;
    }

    public static String a(long bytes, boolean si) {
        int i10 = si ? 1000 : 1024;
        if (bytes < i10) {
            return bytes + " B";
        }
        double d10 = bytes;
        double d11 = i10;
        int iLog = (int) (Math.log(d10) / Math.log(d11));
        StringBuilder sb2 = new StringBuilder();
        sb2.append((si ? "kMGTPE" : "KMGTPE").charAt(iLog - 1));
        sb2.append(si ? "" : "i");
        return String.format(Locale.ENGLISH, "%.1f %sB", Double.valueOf(d10 / Math.pow(d11, iLog)), sb2.toString());
    }

    public static boolean b(ConnectivityManager manager) {
        if (manager == null) {
            a("Util", "failed to get connectivity manager!");
            return true;
        }
        NetworkInfo activeNetworkInfo = manager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static String a(String string) {
        byte[] bArrDigest;
        try {
            bArrDigest = MessageDigest.getInstance("MD5").digest(string.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            bArrDigest = null;
        }
        if (bArrDigest == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
        for (byte b10 : bArrDigest) {
            int i10 = b10 & 255;
            if (i10 < 16) {
                sb2.append('0');
            }
            sb2.append(Integer.toHexString(i10));
        }
        return sb2.toString();
    }

    public static boolean b(Uri uri) {
        return uri.getScheme().equals("file");
    }

    public static ThreadFactory a(final String name, final boolean daemon) {
        return new ThreadFactory() { // from class: com.sigmob.sdk.downloader.core.c.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, name);
                thread.setDaemon(daemon);
                return thread;
            }
        };
    }

    public static void a() {
        f80450n = null;
    }

    public static void a(com.sigmob.sdk.downloader.core.breakpoint.a info) {
        boolean z10 = true;
        if (info.a() >= 0 && info.a() <= info.d()) {
            z10 = false;
        }
        if (z10) {
            a("resetBlockIfDirty", "block is dirty so have to reset: " + info);
            info.f();
        }
    }

    public static void a(b l10) {
        f80450n = l10;
    }

    public static void a(final com.sigmob.sdk.downloader.core.connection.a connection) {
    }

    public static void a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info, long instanceLength, boolean isAcceptRange) {
        int iA = g.j().g().a(isAcceptRange) ? g.j().g().a(task, instanceLength) : 1;
        info.f();
        long j10 = iA;
        long j11 = instanceLength / j10;
        long j12 = 0;
        int i10 = 0;
        long j13 = 0;
        while (i10 < iA) {
            j12 += j13;
            j13 = i10 == 0 ? (instanceLength % j10) + j11 : j11;
            info.a(new com.sigmob.sdk.downloader.core.breakpoint.a(j12, j13));
            i10++;
        }
    }

    public static void a(String tag, String msg) {
        b bVar = f80450n;
        if (bVar != null) {
            bVar.a(tag, msg);
        }
    }

    public static void a(String tag, String msg, Exception e10) {
        b bVar = f80450n;
        if (bVar != null) {
            bVar.a(tag, msg, e10);
        }
    }

    public static void a(Map<String, List<String>> headerField) throws IOException {
        if (headerField.containsKey("If-Match") || headerField.containsKey("Range")) {
            throw new IOException("If-Match and Range only can be handle by internal!");
        }
    }

    public static void a(Map<String, List<String>> userHeaderField, com.sigmob.sdk.downloader.core.connection.a connection) throws IOException {
        a(userHeaderField);
        b(userHeaderField, connection);
    }

    public static boolean a(long fetchedLength, long contentLength) {
        return fetchedLength == contentLength;
    }

    public static boolean a(ConnectivityManager manager) {
        if (manager == null) {
            a("Util", "failed to get connectivity manager!");
            return true;
        }
        NetworkInfo activeNetworkInfo = manager.getActiveNetworkInfo();
        return activeNetworkInfo == null || activeNetworkInfo.getType() != 1;
    }

    public static boolean a(Uri uri) {
        return uri.getScheme().equals("content");
    }

    public static boolean a(CharSequence str) {
        return str == null || str.length() == 0;
    }
}
