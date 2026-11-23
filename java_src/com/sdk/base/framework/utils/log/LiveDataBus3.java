package com.sdk.base.framework.utils.log;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class LiveDataBus3 {
    public static int key;
    private final Map<String, String> bus;

    public static class SingletonHolder {
        private static final LiveDataBus3 DEFAULT_BUS = new LiveDataBus3();

        private SingletonHolder() {
        }
    }

    private LiveDataBus3() {
        this.bus = new HashMap();
    }

    public static LiveDataBus3 get() {
        return SingletonHolder.DEFAULT_BUS;
    }

    public static boolean init() {
        SingletonHolder.DEFAULT_BUS.bus.clear();
        key = 0;
        return true;
    }

    public static String post(String str) {
        Map<String, String> map = SingletonHolder.DEFAULT_BUS.bus;
        int i10 = key;
        key = i10 + 1;
        return map.put(String.valueOf(i10), str);
    }

    public static String toStr(int i10) {
        Map<String, String> map = SingletonHolder.DEFAULT_BUS.bus;
        int size = map.size();
        String str = "\n";
        for (int i11 = 0; i11 < size; i11++) {
            String str2 = map.get(String.valueOf(i11));
            int iIndexOf = str2.indexOf(LogUtils.CSTR_TIMES_START) + 5;
            int iIndexOf2 = str2.indexOf(LogUtils.CSTR_TIMES_END);
            if (iIndexOf >= 0 && iIndexOf2 >= 0 && iIndexOf2 > iIndexOf) {
                String strSubstring = str2.substring(iIndexOf, iIndexOf2);
                if (strSubstring.length() < 5 && Integer.parseInt(strSubstring) >= i10) {
                    str = ((str + i11 + ": ") + str2) + "\n-----------------------\n";
                }
            }
        }
        return str;
    }
}
