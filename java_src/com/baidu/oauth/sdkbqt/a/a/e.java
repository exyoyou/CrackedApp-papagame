package com.baidu.oauth.sdkbqt.a.a;

import android.os.Looper;
import com.baidu.passbqt.http.HttpResponseHandler;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class e extends HttpResponseHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f8111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f8112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ g f8113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ HashMap f8114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ List f8115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ String f8116f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ int f8117g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ a f8118h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e(a aVar, Looper looper, boolean z10, f fVar, String str, g gVar, HashMap map, List list, String str2, int i10) {
        super(looper, z10);
        this.f8118h = aVar;
        this.f8111a = fVar;
        this.f8112b = str;
        this.f8113c = gVar;
        this.f8114d = map;
        this.f8115e = list;
        this.f8116f = str2;
        this.f8117g = i10;
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void a() {
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void b() {
        this.f8111a.b();
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void a(int i10, String str, HashMap<String, String> map) {
        this.f8111a.a(i10, str, map);
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void a(Throwable th, String str) {
        if (!this.f8118h.f8098c) {
            this.f8118h.a(this.f8111a, th, str);
        } else {
            this.f8118h.f8098c = false;
            this.f8118h.b(this.f8112b, this.f8113c, this.f8114d, this.f8115e, this.f8116f, this.f8117g, this.f8111a);
        }
    }
}
