package com.cloudplay.messagesdk.network.volley.toolbox;

import com.cloudplay.messagesdk.network.volley.Cache;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.windmill.sdk.WMConstants;
import io.netty.handler.codec.http.HttpHeaders;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import org.apache.http.client.utils.DateUtils;

/* JADX INFO: loaded from: classes9.dex */
public class f {
    public static Cache.a a(com.cloudplay.messagesdk.network.volley.f fVar) {
        boolean z10;
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = fVar.f24047b;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        long jB = str != null ? b(str) : 0L;
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
                    } catch (Exception unused) {
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
        long jB2 = str3 != null ? b(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long jB3 = str4 != null ? b(str4) : 0L;
        String str5 = map.get("ETag");
        if (i10 != 0) {
            long j15 = jCurrentTimeMillis + (j10 * 1000);
            if (z10) {
                j14 = j15;
            } else {
                Long.signum(j11);
                j14 = (j11 * 1000) + j15;
            }
            j12 = j15;
            j13 = j14;
        } else {
            j12 = 0;
            if (jB <= 0 || jB2 < jB) {
                j13 = 0;
            } else {
                j13 = jCurrentTimeMillis + (jB2 - jB);
                j12 = j13;
            }
        }
        Cache.a aVar = new Cache.a();
        aVar.f23972a = fVar.f24046a;
        aVar.f23973b = str5;
        aVar.f23977f = j12;
        aVar.f23976e = j13;
        aVar.f23974c = jB;
        aVar.f23975d = jB3;
        aVar.f23978g = map;
        aVar.f23979h = fVar.f24048c;
        return aVar;
    }

    public static long b(String str) {
        try {
            return a(DateUtils.PATTERN_RFC1123).parse(str).getTime();
        } catch (ParseException e10) {
            if ("0".equals(str) || WMConstants.TIMER_STAGE_NONE.equals(str)) {
                com.cloudplay.messagesdk.network.volley.g.d("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            com.cloudplay.messagesdk.network.volley.g.a(e10, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    static String a(long j10) {
        return a("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j10));
    }

    private static SimpleDateFormat a(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    public static String a(Map<String, String> map, String str) {
        String str2;
        if (map != null && (str2 = map.get("Content-Type")) != null) {
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

    static Map<String, String> a(List<com.cloudplay.messagesdk.network.volley.d> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (com.cloudplay.messagesdk.network.volley.d dVar : list) {
            treeMap.put(dVar.a(), dVar.b());
        }
        return treeMap;
    }

    static List<com.cloudplay.messagesdk.network.volley.d> a(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new com.cloudplay.messagesdk.network.volley.d(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    static List<com.cloudplay.messagesdk.network.volley.d> a(List<com.cloudplay.messagesdk.network.volley.d> list, Cache.a aVar) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<com.cloudplay.messagesdk.network.volley.d> it2 = list.iterator();
            while (it2.hasNext()) {
                treeSet.add(it2.next().a());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<com.cloudplay.messagesdk.network.volley.d> list2 = aVar.f23979h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (com.cloudplay.messagesdk.network.volley.d dVar : aVar.f23979h) {
                    if (!treeSet.contains(dVar.a())) {
                        arrayList.add(dVar);
                    }
                }
            }
        } else if (!aVar.f23978g.isEmpty()) {
            for (Map.Entry<String, String> entry : aVar.f23978g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new com.cloudplay.messagesdk.network.volley.d(entry.getKey(), entry.getValue()));
                }
            }
        }
        return arrayList;
    }

    static Map<String, String> a(Cache.a aVar) {
        if (aVar == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        String str = aVar.f23973b;
        if (str != null) {
            map.put("If-None-Match", str);
        }
        long j10 = aVar.f23975d;
        if (j10 > 0) {
            map.put("If-Modified-Since", a(j10));
        }
        return map;
    }
}
