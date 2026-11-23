package com.byazt.vm;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.UUID;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 15})
public final class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static tt<String> f21258c = new tt<String>() { // from class: com.byazt.vm.uj.1
        @Override // com.byazt.vm.tt
        /* JADX INFO: renamed from: ve, reason: merged with bridge method [inline-methods] */
        public String c(Object... objArr) {
            SharedPreferences sharedPreferences = (SharedPreferences) objArr[0];
            String string = sharedPreferences.getString("cdid", "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String string2 = UUID.randomUUID().toString();
            sharedPreferences.edit().putString("cdid", string2).apply();
            return string2;
        }
    };

    public static String c(SharedPreferences sharedPreferences) {
        return f21258c.tt(sharedPreferences);
    }
}
