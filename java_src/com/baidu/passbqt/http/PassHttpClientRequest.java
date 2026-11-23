package com.baidu.passbqt.http;

import android.content.Context;
import com.baidu.passbqt.NoProguard;
import com.baidu.passbqt.common.Log;

/* JADX INFO: loaded from: classes6.dex */
public class PassHttpClientRequest implements NoProguard, Comparable<PassHttpClientRequest>, Runnable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f8347g = "PassHttpClientRequest";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f8348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HttpResponseHandler f8349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HttpRequestHandler f8350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PassHttpParamDTO f8351d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Method f8352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f8353f = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8354h;

    PassHttpClientRequest(Method method, Context context, PassHttpParamDTO passHttpParamDTO, int i10, HttpRequestHandler httpRequestHandler, HttpResponseHandler httpResponseHandler) {
        this.f8354h = i10;
        this.f8352e = method;
        this.f8348a = context;
        this.f8351d = passHttpParamDTO;
        this.f8349b = httpResponseHandler;
        this.f8350c = httpRequestHandler;
    }

    public void a() {
        this.f8353f = true;
        this.f8349b = null;
    }

    @Override // java.lang.Runnable
    public void run() {
        HttpResponseHandler httpResponseHandler = this.f8349b;
        if (httpResponseHandler != null) {
            httpResponseHandler.c();
        }
        Log.d(f8347g, "network request already run");
        try {
            new HttpStack().a(this.f8350c).a(this);
        } catch (Exception e10) {
            Log.d(f8347g, "PassHttpClientRequestrun " + e10.getMessage());
            HttpResponseHandler httpResponseHandler2 = this.f8349b;
            if (httpResponseHandler2 != null) {
                httpResponseHandler2.b(e10, e10.getMessage());
            }
        }
        HttpResponseHandler httpResponseHandler3 = this.f8349b;
        if (httpResponseHandler3 != null) {
            httpResponseHandler3.d();
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(PassHttpClientRequest passHttpClientRequest) {
        ReqPriority reqPriority = this.f8351d.f8366g;
        ReqPriority reqPriority2 = passHttpClientRequest.f8351d.f8366g;
        return reqPriority == reqPriority2 ? this.f8354h - passHttpClientRequest.f8354h : reqPriority2.ordinal() - reqPriority.ordinal();
    }
}
