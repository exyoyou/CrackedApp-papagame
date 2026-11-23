package com.byazt.gq;

import android.net.Uri;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.su.DownloadModel;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 52, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap<String, String> f14613c;
    public final ConcurrentHashMap<String, String> tt;

    @com.byazt.zqa.c(c = {0, 1, 52, 464})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static a f14614c = new a();
    }

    public static a c() {
        return c.f14614c;
    }

    private String ve(String str) {
        try {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            String lastPathSegment = uri.getLastPathSegment();
            if (!TextUtils.equals("https", scheme) || !lastPathSegment.endsWith(".apk")) {
                return null;
            }
            this.f14613c.put(str, lastPathSegment);
            return lastPathSegment;
        } catch (Exception e10) {
            m.c(e10);
            return null;
        }
    }

    public void tt(String str) {
        Iterator<Map.Entry<String, String>> it2 = this.tt.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, String> next = it2.next();
            if (TextUtils.equals(next.getValue(), str)) {
                it2.remove();
                this.f14613c.remove(next.getKey());
            }
        }
    }

    private a() {
        this.f14613c = new ConcurrentHashMap<>();
        this.tt = new ConcurrentHashMap<>();
    }

    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || this.tt.containsKey(str2)) {
            return;
        }
        this.tt.put(str2, str);
    }

    public String c(String str) {
        if (TextUtils.isEmpty(str) || this.tt.isEmpty() || !this.tt.containsKey(str)) {
            return null;
        }
        String strVe = ve(str);
        if (this.f14613c.containsValue(strVe)) {
            for (Map.Entry<String, String> entry : this.f14613c.entrySet()) {
                if (TextUtils.equals(entry.getValue(), strVe)) {
                    String str2 = this.tt.get(entry.getKey());
                    this.tt.put(str, str2);
                    if (!this.f14613c.containsKey(str)) {
                        this.f14613c.put(str, strVe);
                    }
                    return str2;
                }
            }
        }
        return this.tt.get(str);
    }

    public String c(DownloadModel downloadModel) {
        String strVe = ve(downloadModel.getDownloadUrl());
        if (strVe == null || TextUtils.isEmpty(strVe)) {
            return null;
        }
        String strN = com.byazt.w.a.n(strVe + downloadModel.getPackageName());
        this.tt.put(downloadModel.getDownloadUrl(), strN);
        return strN;
    }
}
