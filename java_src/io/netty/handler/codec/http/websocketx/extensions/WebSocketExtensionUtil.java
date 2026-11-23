package io.netty.handler.codec.http.websocketx.extensions;

import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaderValues;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class WebSocketExtensionUtil {
    private static final String EXTENSION_SEPARATOR = ",";
    private static final Pattern PARAMETER = Pattern.compile("^([^=]+)(=[\\\"]?([^\\\"]+)[\\\"]?)?$");
    private static final char PARAMETER_EQUAL = '=';
    private static final String PARAMETER_SEPARATOR = ";";

    private WebSocketExtensionUtil() {
    }

    static String appendExtension(String str, String str2, Map<String, String> map) {
        StringBuilder sb2 = new StringBuilder(str != null ? str.length() : str2.length() + 1);
        if (str != null && !str.trim().isEmpty()) {
            sb2.append(str);
            sb2.append(EXTENSION_SEPARATOR);
        }
        sb2.append(str2);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb2.append(PARAMETER_SEPARATOR);
            sb2.append(entry.getKey());
            if (entry.getValue() != null) {
                sb2.append(PARAMETER_EQUAL);
                sb2.append(entry.getValue());
            }
        }
        return sb2.toString();
    }

    public static List<WebSocketExtensionData> extractExtensions(String str) {
        Map mapEmptyMap;
        String[] strArrSplit = str.split(EXTENSION_SEPARATOR);
        if (strArrSplit.length <= 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(strArrSplit.length);
        for (String str2 : strArrSplit) {
            String[] strArrSplit2 = str2.split(PARAMETER_SEPARATOR);
            String strTrim = strArrSplit2[0].trim();
            if (strArrSplit2.length > 1) {
                mapEmptyMap = new HashMap(strArrSplit2.length - 1);
                for (int i10 = 1; i10 < strArrSplit2.length; i10++) {
                    Matcher matcher = PARAMETER.matcher(strArrSplit2[i10].trim());
                    if (matcher.matches() && matcher.group(1) != null) {
                        mapEmptyMap.put(matcher.group(1), matcher.group(3));
                    }
                }
            } else {
                mapEmptyMap = Collections.emptyMap();
            }
            arrayList.add(new WebSocketExtensionData(strTrim, mapEmptyMap));
        }
        return arrayList;
    }

    static boolean isWebsocketUpgrade(HttpHeaders httpHeaders) {
        return httpHeaders.containsValue(HttpHeaderNames.CONNECTION, HttpHeaderValues.UPGRADE, true) && httpHeaders.contains((CharSequence) HttpHeaderNames.UPGRADE, (CharSequence) HttpHeaderValues.WEBSOCKET, true);
    }
}
