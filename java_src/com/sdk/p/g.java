package com.sdk.p;

import com.join.mgps.dto.Constant;
import com.sdk.base.framework.utils.log.LogUtils;
import java.util.Map;
import java.util.TreeMap;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes2.dex */
public class g extends com.sdk.h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78580a = "com.sdk.p.g";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f78581b = com.sdk.f.d.f78521a;

    public static String a(String str, String str2, TreeMap<String, Object> treeMap) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append(str2);
            stringBuffer.append('?');
            for (Map.Entry<String, Object> entry : treeMap.entrySet()) {
                String key = entry.getKey();
                String str3 = entry.getValue() + "";
                if (entry.getValue() != null && str3.length() > 0 && !"null".equals(str3) && !Constant.MD5.equals(key) && !key.startsWith("_") && !"file".equals(key)) {
                    stringBuffer.append(key);
                    stringBuffer.append('=');
                    stringBuffer.append(entry.getValue());
                    stringBuffer.append(Typography.amp);
                }
            }
            if (stringBuffer.charAt(stringBuffer.length() - 1) == '&') {
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            }
            return f.a().f78578a.a(stringBuffer.toString());
        } catch (Exception e10) {
            LogUtils.e(f78580a, e10.getMessage(), Boolean.valueOf(f78581b));
            return null;
        }
    }
}
