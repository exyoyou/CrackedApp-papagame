package com.baidu.oauth.sdkbqt.a.a;

import android.os.Looper;
import com.baidu.passbqt.http.HttpErrorException;
import com.baidu.passbqt.http.HttpResponseHandler;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class d extends HttpResponseHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f8103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f8104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ g f8105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ HashMap f8106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ List f8107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ String f8108f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ int f8109g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ a f8110h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d(a aVar, Looper looper, boolean z10, f fVar, String str, g gVar, HashMap map, List list, String str2, int i10) {
        super(looper, z10);
        this.f8110h = aVar;
        this.f8103a = fVar;
        this.f8104b = str;
        this.f8105c = gVar;
        this.f8106d = map;
        this.f8107e = list;
        this.f8108f = str2;
        this.f8109g = i10;
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void a() {
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void b() {
        this.f8103a.b();
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void a(int i10, String str, HashMap<String, String> map) {
        this.f8103a.a(i10, str, map);
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    protected void a(Throwable th, String str) {
        if ((th instanceof HttpErrorException) && ((HttpErrorException) th).f8312a == 304) {
            this.f8110h.f8098c = false;
        }
        if (!this.f8110h.f8098c) {
            this.f8110h.a(this.f8103a, th, str);
        } else {
            this.f8110h.f8098c = false;
            this.f8110h.a(this.f8104b, this.f8105c, this.f8106d, this.f8107e, this.f8108f, this.f8109g, this.f8103a);
        }
    }
}
