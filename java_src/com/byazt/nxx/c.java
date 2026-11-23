package com.byazt.nxx;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.dna.qp;
import com.byazt.emg.ve;
import com.byazt.nr.m;
import com.byazt.utw.a;
import com.byazt.utw.uj;
import com.byazt.ydv.n;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import net.lingala.zip4j.util.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1156, 20})
public final class c {
    public static final Handler tt = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f17672c = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: com.byazt.nxx.c$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 1156, 26})
    static class AnonymousClass1 implements FilenameFilter {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Pattern f17673c = Pattern.compile("^cpu[0-9]+$");

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.f17673c.matcher(str).matches();
        }
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static String tt(int i10, int i11) {
        if (i10 >= 0 && i11 > 0) {
            return i10 + "-" + i11;
        }
        if (i10 > 0) {
            return i10 + "-";
        }
        if (i10 >= 0 || i11 <= 0) {
            return null;
        }
        return "-" + i11;
    }

    public static void c(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            try {
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean c(String str) {
        if (str != null) {
            return str.startsWith("http://") || str.startsWith("https://");
        }
        return false;
    }

    public static boolean tt(String str) {
        if (str != null) {
            return str.startsWith("video/") || "application/octet-stream".equals(str) || "binary/octet-stream".equals(str);
        }
        return false;
    }

    public static int c(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public static boolean tt() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static void tt(Runnable runnable) {
        if (runnable != null) {
            if (tt()) {
                runnable.run();
            } else {
                tt.post(runnable);
            }
        }
    }

    public static String c(int i10, int i11) {
        String strTt = tt(i10, i11);
        if (strTt == null) {
            return null;
        }
        return "bytes=" + strTt;
    }

    public static List<String> c(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (c(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static String tt(List<a.tt> list) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            a.tt ttVar = list.get(i10);
            if (ttVar != null) {
                sb2.append(ttVar.f20999c);
                sb2.append(": ");
                sb2.append(ttVar.tt);
                sb2.append("\r\n");
            }
        }
        return sb2.toString();
    }

    public static int c() {
        return Math.max(Runtime.getRuntime().availableProcessors(), 1);
    }

    public static String tt(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb2.append((Object) entry.getKey());
            sb2.append(": ");
            sb2.append((Object) entry.getValue());
            sb2.append("\r\n");
        }
        return sb2.toString();
    }

    public static int c(com.byazt.ydv.c cVar) {
        int iLastIndexOf;
        if (cVar == null) {
            return -1;
        }
        if (cVar.c() == 200) {
            return c(cVar.c("Content-Length", null), -1);
        }
        if (cVar.c() == 206) {
            String strC = cVar.c("Content-Range", null);
            if (!TextUtils.isEmpty(strC) && (iLastIndexOf = strC.lastIndexOf(e.F0)) >= 0 && iLastIndexOf < strC.length() - 1) {
                return c(strC.substring(iLastIndexOf + 1), -1);
            }
        }
        return -1;
    }

    public static String c(com.byazt.ydv.c cVar, boolean z10, boolean z11) {
        String strC;
        if (cVar == null) {
            if (uj.f21023n) {
                m.uj("TAG_PROXY_Response", "response null");
            }
            return "response null";
        }
        if (!cVar.tt()) {
            if (uj.f21023n) {
                m.uj("TAG_PROXY_Response", "response code: " + cVar.c());
            }
            return "response code: " + cVar.c();
        }
        String strC2 = cVar.c("Content-Type", null);
        if (!tt(strC2)) {
            if (uj.f21023n) {
                m.uj("TAG_PROXY_Response", "Content-Type: " + strC2);
            }
            return "Content-Type: " + strC2;
        }
        int iC = c(cVar);
        if (iC <= 0) {
            if (uj.f21023n) {
                m.uj("TAG_PROXY_Response", "Content-Length: " + iC);
            }
            return "Content-Length: " + iC;
        }
        if (z10 && ((strC = cVar.c("Accept-Ranges", null)) == null || !strC.contains("bytes"))) {
            if (uj.f21023n) {
                m.uj("TAG_PROXY_Response", "Accept-Ranges: " + strC);
            }
            return "Accept-Ranges: " + strC;
        }
        if (!z11 || cVar.uj() != null) {
            return null;
        }
        if (uj.f21023n) {
            m.uj("TAG_PROXY_Response", "response body null");
        }
        return "response body null";
    }

    public static void c(Runnable runnable) {
        if (runnable != null) {
            if (tt()) {
                ((qp) com.byazt.ut.uj.getService("thread_service")).executeFastTask(runnable);
                boolean z10 = uj.f21023n;
            } else {
                runnable.run();
                boolean z11 = uj.f21023n;
            }
        }
    }

    public static List<a.tt> c(List<a.tt> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        if (uj.f21023n) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                a.tt ttVar = list.get(i10);
                if (ttVar != null) {
                    m.c("TAG_PROXY_PRE_FILTER", ttVar.f20999c + ": " + ttVar.f20999c);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (a.tt ttVar2 : list) {
            if ("Host".equals(ttVar2.f20999c) || "Keep-Alive".equals(ttVar2.f20999c) || "Connection".equals(ttVar2.f20999c) || "Proxy-Connection".equals(ttVar2.f20999c)) {
                arrayList.add(ttVar2);
            }
        }
        list.removeAll(arrayList);
        if (uj.f21023n) {
            int size2 = list.size();
            for (int i11 = 0; i11 < size2; i11++) {
                a.tt ttVar3 = list.get(i11);
                if (ttVar3 != null) {
                    m.c("TAG_PROXY_POST_FILTER", ttVar3.f20999c + ": " + ttVar3.tt);
                }
            }
        }
        return list;
    }

    public static List<a.tt> c(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            try {
                Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, String> entry : setEntrySet) {
                    arrayList.add(new a.tt(entry.getKey(), entry.getValue()));
                }
                return arrayList;
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return null;
    }

    public static com.byazt.emg.c c(com.byazt.ydv.c cVar, ve veVar, String str, int i10) {
        String strTt;
        String str2;
        String string;
        com.byazt.emg.c cVarQuery = veVar.query(str, i10);
        if (cVarQuery != null) {
            return cVarQuery;
        }
        int iC = c(cVar);
        String strC = cVar.c("Content-Type", null);
        if (iC <= 0 || TextUtils.isEmpty(strC)) {
            return cVarQuery;
        }
        n nVarN = cVar.n();
        if (nVarN != null) {
            str2 = nVarN.tt;
            strTt = tt(nVarN.f22168n);
        } else {
            strTt = "";
            str2 = strTt;
        }
        String strTt2 = tt(cVar.ve());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("requestUrl", str2);
            jSONObject.put("requestHeaders", strTt);
            jSONObject.put("responseHeaders", strTt2);
            string = jSONObject.toString();
        } catch (Throwable unused) {
            string = "";
        }
        com.byazt.emg.c cVar2 = new com.byazt.emg.c(str, strC, iC, i10, string);
        veVar.insert(cVar2);
        return cVar2;
    }
}
