package io.socket.parseqs;

import com.j256.ormlite.stmt.query.SimpleComparison;
import io.socket.global.Global;
import java.util.HashMap;
import java.util.Map;
import x.a;

/* JADX INFO: loaded from: classes.dex */
public class ParseQS {
    private ParseQS() {
    }

    public static Map<String, String> decode(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split(a.f97576d)) {
            String[] strArrSplit = str2.split(SimpleComparison.EQUAL_TO_OPERATION);
            map.put(Global.decodeURIComponent(strArrSplit[0]), strArrSplit.length > 1 ? Global.decodeURIComponent(strArrSplit[1]) : "");
        }
        return map;
    }

    public static String encode(Map<String, String> map) {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb2.length() > 0) {
                sb2.append(a.f97576d);
            }
            sb2.append(Global.encodeURIComponent(entry.getKey()));
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb2.append(Global.encodeURIComponent(entry.getValue()));
        }
        return sb2.toString();
    }
}
