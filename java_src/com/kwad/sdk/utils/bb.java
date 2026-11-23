package com.kwad.sdk.utils;

import androidx.annotation.NonNull;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class bb {
    public static String appendUrl(@NonNull String str, Map<String, String> map) {
        String str2;
        if (map == null || map.size() <= 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it2 = map.keySet().iterator();
        while (true) {
            boolean zHasNext = it2.hasNext();
            str2 = x.a.f97576d;
            if (!zHasNext) {
                break;
            }
            String next = it2.next();
            if (map.get(next) != null) {
                sb2.append(next);
                sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                sb2.append(map.get(next));
                sb2.append(x.a.f97576d);
            }
        }
        String string = sb2.toString();
        String strSubstring = string.substring(0, string.length() - 1);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        if (!str.contains("?")) {
            str2 = "?";
        }
        sb3.append(str2);
        return sb3.toString() + strSubstring;
    }
}
