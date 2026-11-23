package com.bun.miitmdid.content;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public class ProviderList {

    public enum DEVICE_PROVIDER {
        UNSUPPORT(-1, "unsupport"),
        HUA_WEI(0, "HUAWEI"),
        XIAOMI(1, "Xiaomi"),
        VIVO(2, "vivo"),
        OPPO(3, "oppo"),
        MOTO(4, "motorola"),
        LENOVO(5, "lenovo"),
        ASUS(6, "asus"),
        SAMSUNG(7, "samsung"),
        MEIZU(8, "meizu"),
        NUBIA(10, "nubia"),
        ZTE(11, "ZTE"),
        ONEPLUS(12, "OnePlus"),
        BLACKSHARK(13, "blackshark"),
        FREEMEOS(30, "freemeos"),
        SSUIOS(31, "ssui");

        private int index;
        private String name;

        DEVICE_PROVIDER(int i10, String str) {
            this.index = i10;
            this.name = str;
        }

        public static DEVICE_PROVIDER fromName(String str) {
            if (TextUtils.isEmpty(str)) {
                return UNSUPPORT;
            }
            DEVICE_PROVIDER[] device_providerArrValues = values();
            for (int i10 = 0; i10 < 16; i10++) {
                DEVICE_PROVIDER device_provider = device_providerArrValues[i10];
                if (device_provider.name.equalsIgnoreCase(str)) {
                    return device_provider;
                }
            }
            return UNSUPPORT;
        }
    }
}
