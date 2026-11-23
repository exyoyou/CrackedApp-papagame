package com.windmill.sdk.common;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes8.dex */
class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, q> f86862a;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static r f86863a = new r();

        private a() {
        }
    }

    public void a(String load_id, q rewardCheckItem) {
        this.f86862a.put(load_id, rewardCheckItem);
    }

    public q b(String key) {
        if (TextUtils.isEmpty(key)) {
            return null;
        }
        return this.f86862a.get(key);
    }

    private r() {
        this.f86862a = new HashMap<>();
    }

    public void a(String loadId) {
        this.f86862a.remove(loadId);
    }

    public static r a() {
        return a.f86863a;
    }
}
