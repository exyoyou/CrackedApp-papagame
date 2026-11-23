package com.efs.sdk.net.a.a;

import android.text.TextUtils;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.net.NetManager;
import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class g implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AtomicInteger f26541a = new AtomicInteger(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static g f26542c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f26543b = new b();

    private g() {
    }

    public static g c() {
        if (f26542c == null) {
            f26542c = new g();
        }
        return f26542c;
    }

    @Override // com.efs.sdk.net.a.a.f
    public final void a(f.b bVar) {
        String str;
        Log.d("NetTrace-Interceptor", "request will be sent");
        b bVar2 = this.f26543b;
        try {
            String strA = bVar.a();
            bVar2.f26532a.put(bVar.a(), Long.valueOf(System.currentTimeMillis()));
            Log.i("NetTrace-Interceptor", "save request");
            com.efs.sdk.net.a.c cVarA = com.efs.sdk.net.a.a.a().a(strA);
            String strB = bVar.b();
            if (!TextUtils.isEmpty(strB)) {
                cVarA.f26555d = strB;
            }
            cVarA.f26556e = bVar.c();
            HashMap map = new HashMap();
            int iE = bVar.e();
            for (int i10 = 0; i10 < iE; i10++) {
                map.put(bVar.a(i10), bVar.b(i10));
            }
            cVarA.f26557f = b.a(bVar);
            if (NetManager.getNetConfigManager().getNetRequestBodyCollectState()) {
                String str2 = cVarA.f26556e;
                if ((str2 == null || !str2.equalsIgnoreCase("get")) && (str = cVarA.f26556e) != null && str.equalsIgnoreCase("post") && cVarA.f26557f < 10240) {
                    if (map.containsKey("Content-Type") || map.containsKey(com.alipay.sdk.packet.d.f7182f)) {
                        String str3 = (String) map.get("Content-Type");
                        if (TextUtils.isEmpty(str3)) {
                            str3 = (String) map.get(com.alipay.sdk.packet.d.f7182f);
                        }
                        if (str3 != null) {
                            if (str3.contains("application/json") || str3.contains("application/x-www-form-urlencoded")) {
                                cVarA.f26558g = new String(bVar.d());
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.efs.sdk.net.a.a.f
    public final String b() {
        Log.d("NetTrace-Interceptor", "next request id");
        return String.valueOf(f26541a.getAndIncrement());
    }

    @Override // com.efs.sdk.net.a.a.f
    public final void a(f.d dVar) {
        Log.d("NetTrace-Interceptor", "response headers received");
        b bVar = this.f26543b;
        Log.i("NetTrace-Interceptor", "save response");
        String strA = dVar.a();
        if (bVar.f26532a != null) {
            com.efs.sdk.net.a.a.a().a(strA).f26559h = dVar.b();
        }
    }

    @Override // com.efs.sdk.net.a.a.f
    @Nullable
    public final InputStream a(String str, @Nullable String str2, @Nullable String str3, @Nullable InputStream inputStream) {
        Log.d("NetTrace-Interceptor", "interpret response stream");
        return b.a(str, str2, str3, inputStream);
    }

    @Override // com.efs.sdk.net.a.a.f
    public final void a() {
        Log.d("NetTrace-Interceptor", "data sent");
    }
}
