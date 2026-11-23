package com.sina.weibo.sdk.net;

import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class h {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private HashMap<String, String> f82250q = new HashMap<>();

    public final String g() {
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = true;
        for (String str : this.f82250q.keySet()) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(x.a.f97576d);
            }
            String str2 = this.f82250q.get(str);
            if (!TextUtils.isEmpty(str2)) {
                try {
                    sb2.append(URLEncoder.encode(str, "UTF-8"));
                    sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                    sb2.append(URLEncoder.encode(str2, "UTF-8"));
                } catch (UnsupportedEncodingException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return sb2.toString();
    }

    public final void put(String str, String str2) {
        this.f82250q.put(str, str2);
    }
}
