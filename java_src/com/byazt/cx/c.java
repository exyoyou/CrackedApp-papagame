package com.byazt.cx;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.byazt.nr.m;
import com.byazt.yv.TTEncryptUtils;
import com.coremedia.iso.boxes.k1;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.umeng.analytics.pro.bm;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import net.lingala.zip4j.util.e;
import x.a;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2470, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static InterfaceC0286c f12636c;
    public static boolean tt;

    /* JADX INFO: renamed from: com.byazt.cx.c$c, reason: collision with other inner class name */
    public interface InterfaceC0286c {
        boolean c();

        boolean tt();

        boolean ve();
    }

    public static String c(String str, List<Pair<String, String>> list) {
        if (TextUtils.isEmpty(str) || f12636c == null || tt) {
            return str;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Uri uri = Uri.parse(str);
            c(uri, linkedHashMap);
            LinkedList linkedList = new LinkedList();
            c(linkedHashMap, linkedList, "device_id");
            c(linkedHashMap, linkedList, bm.ai);
            c(linkedHashMap, linkedList, bm.F);
            c(linkedHashMap, linkedList, k1.f24950p);
            c(linkedHashMap, linkedList, "openudid");
            String strC = c((List<Pair<String, List<String>>>) linkedList, false, "UTF-8");
            if (TextUtils.isEmpty(strC)) {
                return str;
            }
            byte[] bytes = strC.getBytes();
            byte[] bArrA = TTEncryptUtils.a(bytes, bytes.length);
            if (bArrA == null) {
                return str;
            }
            String strEncodeToString = Base64.encodeToString(bArrA, 2);
            LinkedList linkedList2 = new LinkedList();
            if (f12636c.c()) {
                LinkedList linkedList3 = new LinkedList();
                linkedList3.add(strEncodeToString);
                linkedList2.add(new Pair("ss_queries", linkedList3));
            }
            if (f12636c.tt() && list != null) {
                list.add(new Pair<>("X-SS-QUERIES", c(strEncodeToString, "UTF-8")));
            }
            if (!linkedHashMap.isEmpty()) {
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    if (entry != null) {
                        linkedList2.add(new Pair(entry.getKey(), entry.getValue()));
                    }
                }
            }
            return c(uri.getScheme(), uri.getHost(), uri.getPort(), uri.getPath(), c((List<Pair<String, List<String>>>) linkedList2, true, "UTF-8"), uri.getFragment()).toString();
        } catch (Throwable th) {
            m.c(th);
            return str;
        }
    }

    private static boolean c(Map<String, List<String>> map, List<Pair<String, List<String>>> list, String str) throws UnsupportedEncodingException {
        if (TextUtils.isEmpty(str) || list == null || !map.containsKey(str)) {
            return false;
        }
        list.add(new Pair<>(str, map.get(str)));
        if (f12636c.ve()) {
            return true;
        }
        map.remove(str);
        return true;
    }

    public static void c(Uri uri, Map<String, List<String>> map) throws IOException {
        if (uri == null) {
            throw new IOException("parseUrl url is null !!!");
        }
        if (map != null) {
            try {
                String query = uri.getQuery();
                if (query != null) {
                    for (String str : query.split(a.f97576d)) {
                        int iIndexOf = str.indexOf(SimpleComparison.EQUAL_TO_OPERATION);
                        if (iIndexOf >= 0) {
                            String strDecode = URLDecoder.decode(str.substring(0, iIndexOf), "UTF-8");
                            List<String> linkedList = map.get(strDecode);
                            if (linkedList == null) {
                                linkedList = new LinkedList<>();
                            }
                            linkedList.add(URLDecoder.decode(str.substring(iIndexOf + 1), "UTF-8"));
                            map.put(strDecode, linkedList);
                        } else {
                            String strDecode2 = URLDecoder.decode(str, "UTF-8");
                            List<String> linkedList2 = map.get(strDecode2);
                            if (linkedList2 == null) {
                                linkedList2 = new LinkedList<>();
                            }
                            linkedList2.add("");
                            map.put(strDecode2, linkedList2);
                        }
                    }
                }
            } catch (Throwable th) {
                m.c(th);
                throw new IOException("parseUrl url is null !!!");
            }
        }
    }

    private static Uri c(String str, String str2, int i10, String str3, String str4, String str5) {
        StringBuilder sb2 = new StringBuilder();
        if (str2 != null) {
            if (str != null) {
                sb2.append(str);
                sb2.append("://");
            }
            sb2.append(str2);
            if (i10 > 0) {
                sb2.append(':');
                sb2.append(i10);
            }
        }
        if (str3 == null || !str3.startsWith(e.F0)) {
            sb2.append('/');
        }
        if (str3 != null) {
            sb2.append(str3);
        }
        if (str4 != null) {
            sb2.append('?');
            sb2.append(str4);
        }
        if (str5 != null) {
            sb2.append('#');
            sb2.append(str5);
        }
        return Uri.parse(sb2.toString());
    }

    private static String c(List<Pair<String, List<String>>> list, boolean z10, String str) {
        StringBuilder sb2 = new StringBuilder();
        for (Pair<String, List<String>> pair : list) {
            Object obj = pair.first;
            String strC = (String) obj;
            if (z10) {
                strC = c((String) obj, str);
            }
            List<String> list2 = (List) pair.second;
            if (list2 != null && list2.size() > 0) {
                for (String strC2 : list2) {
                    if (z10) {
                        strC2 = strC2 != null ? c(strC2, str) : "";
                    }
                    if (sb2.length() > 0) {
                        sb2.append(a.f97576d);
                    }
                    sb2.append(strC);
                    sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                    sb2.append(strC2);
                }
            }
        }
        return sb2.toString();
    }

    private static String c(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalArgumentException(e10);
        }
    }
}
