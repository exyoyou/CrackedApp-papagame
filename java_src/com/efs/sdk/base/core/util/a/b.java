package com.efs.sdk.base.core.util.a;

import androidx.annotation.Nullable;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.http.HttpEnv;
import com.efs.sdk.base.http.HttpResponse;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class b implements com.efs.sdk.base.core.util.concurrent.c<HttpResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f26384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Map<String, String> f26385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f26386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public File f26387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f26388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map<String, String> f26389f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f26390g = false;

    @Override // com.efs.sdk.base.core.util.concurrent.c
    @Nullable
    public final /* synthetic */ HttpResponse a() {
        String str = this.f26388e;
        str.hashCode();
        if (str.equals("get")) {
            return HttpEnv.getInstance().getHttpUtil().get(this.f26384a, this.f26385b);
        }
        if (str.equals("post")) {
            byte[] bArr = this.f26386c;
            if (bArr == null || bArr.length <= 0) {
                return HttpEnv.getInstance().getHttpUtil().post(this.f26384a, this.f26385b, this.f26387d);
            }
            return this.f26390g ? HttpEnv.getInstance().getHttpUtil().postAsFile(this.f26384a, this.f26385b, this.f26386c) : HttpEnv.getInstance().getHttpUtil().post(this.f26384a, this.f26385b, this.f26386c);
        }
        Log.e("efs.util.http", "request not support method '" + this.f26388e + "'");
        return null;
    }
}
