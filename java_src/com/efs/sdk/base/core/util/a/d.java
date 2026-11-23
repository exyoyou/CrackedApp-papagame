package com.efs.sdk.base.core.util.a;

import androidx.annotation.NonNull;
import com.efs.sdk.base.http.AbsHttpListener;
import com.efs.sdk.base.http.HttpEnv;
import com.efs.sdk.base.http.HttpResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f26392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<com.efs.sdk.base.core.util.concurrent.b<HttpResponse>> f26393b;

    public d(@NonNull String str) {
        b bVar = new b();
        this.f26392a = bVar;
        bVar.f26384a = str;
    }

    public final d a(@NonNull Map<String, String> map) {
        this.f26392a.f26385b = map;
        return this;
    }

    public final d a(String str, String str2) {
        b bVar = this.f26392a;
        if (bVar.f26389f == null) {
            bVar.f26389f = new HashMap(5);
        }
        this.f26392a.f26389f.put(str, str2);
        return this;
    }

    public final d a(@NonNull AbsHttpListener absHttpListener) {
        if (this.f26393b == null) {
            this.f26393b = new ArrayList(5);
        }
        this.f26393b.add(absHttpListener);
        return this;
    }

    public final c a() {
        c cVar = new c(this.f26392a);
        List<com.efs.sdk.base.core.util.concurrent.b<HttpResponse>> list = this.f26393b;
        if (list != null && list.size() > 0) {
            cVar.a(this.f26393b);
        }
        List<com.efs.sdk.base.core.util.concurrent.b<HttpResponse>> httpListenerList = HttpEnv.getInstance().getHttpListenerList();
        if (httpListenerList != null && httpListenerList.size() > 0) {
            cVar.a(httpListenerList);
        }
        return cVar;
    }
}
