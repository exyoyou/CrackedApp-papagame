package com.baidu.oauth.sdkbqt.a;

import android.text.TextUtils;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f8143a = "bdoauth_init";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f8144b = "bdoauth_open";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f8145c = "bdoauth_suc";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f8146d = "bdoauth_err";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final HashMap<String, String> f8147e;

    static {
        HashMap<String, String> map = new HashMap<>();
        f8147e = map;
        map.put(ForumPostsTagSelectActivity_.PID_EXTRA, "111");
        map.put("type", "1023");
        map.put("device", "android");
    }

    private f() {
    }

    public static void a(String str) {
        a(str, null);
    }

    public static void a(String str, HashMap<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.baidu.oauth.sdkbqt.a.a.g gVar = new com.baidu.oauth.sdkbqt.a.a.g();
            gVar.a(f8147e);
            gVar.a("name", str);
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    if (!TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                        gVar.a(entry.getKey(), entry.getValue());
                    }
                }
            }
            new com.baidu.oauth.sdkbqt.a.a.a().a(c.c(), gVar, new g(true));
        } catch (Throwable th) {
            d.a(th);
        }
    }
}
