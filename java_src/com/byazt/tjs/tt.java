package com.byazt.tjs;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1209, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Uri f20229c;
    public String tt;
    public Map<String, String> ve;

    public tt(WebResourceRequest webResourceRequest, String str) {
        if (webResourceRequest != null) {
            this.f20229c = webResourceRequest.getUrl();
            this.tt = webResourceRequest.getMethod();
            this.ve = webResourceRequest.getRequestHeaders();
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f20229c = Uri.parse(str);
        this.tt = "GET";
    }

    public Uri c() {
        return this.f20229c;
    }

    public String tt() {
        return this.tt;
    }

    public Map<String, String> ve() {
        return this.ve;
    }
}
