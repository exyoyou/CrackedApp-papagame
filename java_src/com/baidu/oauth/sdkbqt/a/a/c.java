package com.baidu.oauth.sdkbqt.a.a;

import android.os.Looper;
import com.baidu.passbqt.http.HttpResponseHandler;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
class c extends HttpResponseHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f8101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f8102b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    c(a aVar, Looper looper, boolean z10, f fVar) {
        super(looper, z10);
        this.f8102b = aVar;
        this.f8101a = fVar;
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void a() {
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void b() {
        this.f8101a.b();
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void a(int i10, String str, HashMap<String, String> map) {
        try {
            this.f8101a.a(i10, str, map);
        } catch (Throwable th) {
            a(th, str);
        }
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void a(Throwable th, String str) {
        this.f8102b.a(this.f8101a, th, str);
    }
}
