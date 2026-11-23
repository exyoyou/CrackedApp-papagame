package com.czhj.volley.toolbox;

import android.text.TextUtils;
import com.czhj.volley.Cache;
import com.czhj.volley.Header;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyLog;
import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.HttpHeaders;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
public class HttpHeaderParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f25792a = "Content-Type";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f25793b = "ISO-8859-1";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f25794c = "EEE, dd MMM yyyy HH:mm:ss zzz";

    static String a(long j10) {
        return a().format(new Date(j10));
    }

    public static String getHeader(Map<String, String> map, String str) {
        return map.get(str);
    }

    public static boolean isGzipContent(Map<String, String> map) {
        return TextUtils.equals(getHeader(map, "Content-Encoding"), "gzip");
    }

    public static boolean isSupportRange(Map<String, String> map) {
        if (TextUtils.equals(getHeader(map, "Accept-Ranges"), "bytes")) {
            return true;
        }
        String header = getHeader(map, "Content-Range");
        return header != null && header.startsWith("bytes");
    }

    public static Cache.Entry parseCacheHeaders(NetworkResponse networkResponse) {
        boolean z10;
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = networkResponse.headers;
        String str = map.get("Date");
        long dateAsEpoch = str != null ? parseDateAsEpoch(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i10 = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(",", 0);
            z10 = false;
            j10 = 0;
            j11 = 0;
            while (i10 < strArrSplit.length) {
                String strTrim = strArrSplit[i10].trim();
                if (strTrim.equals("no-cache") || strTrim.equals(HttpHeaders.Values.NO_STORE)) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j10 = Long.parseLong(strTrim.substring(8));
                    } catch (Throwable unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j11 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    z10 = true;
                }
                i10++;
            }
            i10 = 1;
        } else {
            z10 = false;
            j10 = 0;
            j11 = 0;
        }
        String str3 = map.get("Expires");
        long dateAsEpoch2 = str3 != null ? parseDateAsEpoch(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long dateAsEpoch3 = str4 != null ? parseDateAsEpoch(str4) : 0L;
        String str5 = map.get("ETag");
        if (i10 != 0) {
            j13 = jCurrentTimeMillis + (j10 * 1000);
            if (z10) {
                j14 = j13;
            } else {
                Long.signum(j11);
                j14 = (j11 * 1000) + j13;
            }
            j12 = j14;
        } else {
            j12 = 0;
            if (dateAsEpoch <= 0 || dateAsEpoch2 < dateAsEpoch) {
                j13 = 0;
            } else {
                j13 = jCurrentTimeMillis + (dateAsEpoch2 - dateAsEpoch);
                j12 = j13;
            }
        }
        Cache.Entry entry = new Cache.Entry();
        entry.data = networkResponse.data;
        entry.etag = str5;
        entry.softTtl = j13;
        entry.ttl = j12;
        entry.serverDate = dateAsEpoch;
        entry.lastModified = dateAsEpoch3;
        entry.responseHeaders = map;
        entry.allResponseHeaders = networkResponse.allHeaders;
        return entry;
    }

    public static String parseCharset(Map<String, String> map) {
        return parseCharset(map, f25793b);
    }

    public static long parseDateAsEpoch(String str) {
        try {
            return a().parse(str).getTime();
        } catch (ParseException e10) {
            VolleyLog.e(e10, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    private static SimpleDateFormat a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    public static String parseCharset(Map<String, String> map, String str) {
        String str2 = map.get("Content-Type");
        if (str2 != null) {
            String[] strArrSplit = str2.split(";", 0);
            for (int i10 = 1; i10 < strArrSplit.length; i10++) {
                String[] strArrSplit2 = strArrSplit[i10].trim().split(SimpleComparison.EQUAL_TO_OPERATION, 0);
                if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                    return strArrSplit2[1];
                }
            }
        }
        return str;
    }

    static List<Header> a(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    static Map<String, String> a(List<Header> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : list) {
            treeMap.put(header.getName(), header.getValue());
        }
        return treeMap;
    }
}
