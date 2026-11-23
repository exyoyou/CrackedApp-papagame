package com.baidu.passbqt.http;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.passbqt.NoProguard;
import com.baidu.passbqt.common.Log;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public class PassHttpClient implements NoProguard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f8340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f8341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final AtomicInteger f8342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ThreadFactory f8343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ThreadPoolExecutor f8344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final PassHttpClient f8345f;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f8340a = iAvailableProcessors;
        int i10 = iAvailableProcessors > 64 ? iAvailableProcessors / 2 : 32;
        f8341b = i10;
        f8342c = new AtomicInteger();
        ThreadFactory threadFactory = new ThreadFactory() { // from class: com.baidu.passbqt.http.PassHttpClient.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final AtomicInteger f8346a = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "pass_net_thread#" + this.f8346a.getAndIncrement());
            }
        };
        f8343d = threadFactory;
        f8345f = new PassHttpClient();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i10, 60L, TimeUnit.SECONDS, new PriorityBlockingQueue(), threadFactory);
        f8344e = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    private PassHttpClient() {
    }

    public static PassHttpClient a() {
        return f8345f;
    }

    public PassHttpClientRequest b(Context context, PassHttpParamDTO passHttpParamDTO, HttpResponseHandler httpResponseHandler) {
        return a(Method.POST, context, passHttpParamDTO, null, httpResponseHandler);
    }

    public PassHttpClientRequest a(Context context, PassHttpParamDTO passHttpParamDTO, HttpResponseHandler httpResponseHandler) {
        try {
            a(context, passHttpParamDTO);
            return a(Method.GET, context, passHttpParamDTO, httpResponseHandler);
        } catch (Exception e10) {
            Log.d(Log.f8297a, "get ex=" + e10.getMessage());
            if (httpResponseHandler == null) {
                return null;
            }
            httpResponseHandler.c(e10, e10.getMessage());
            return null;
        }
    }

    public PassHttpClientRequest a(Context context, PassHttpParamDTO passHttpParamDTO, HttpRequestHandler httpRequestHandler, HttpResponseHandler httpResponseHandler) {
        try {
            a(context, passHttpParamDTO);
            return a(Method.POST, context, passHttpParamDTO, httpRequestHandler, httpResponseHandler);
        } catch (Exception e10) {
            if (httpResponseHandler == null) {
                return null;
            }
            httpResponseHandler.c(e10, e10.getMessage());
            return null;
        }
    }

    private void a(Context context, PassHttpParamDTO passHttpParamDTO) {
        if (context != null) {
            if (passHttpParamDTO == null || TextUtils.isEmpty(passHttpParamDTO.f8360a)) {
                throw new IllegalArgumentException("paramDTO can't be null or paramDTO.url can't be empty");
            }
            return;
        }
        throw new IllegalArgumentException("Invalid context argument");
    }

    private PassHttpClientRequest a(Method method, Context context, PassHttpParamDTO passHttpParamDTO, HttpResponseHandler httpResponseHandler) {
        return a(method, context, passHttpParamDTO, null, httpResponseHandler);
    }

    private PassHttpClientRequest a(Method method, Context context, PassHttpParamDTO passHttpParamDTO, HttpRequestHandler httpRequestHandler, HttpResponseHandler httpResponseHandler) {
        PassHttpClientRequest passHttpClientRequest = new PassHttpClientRequest(method, context, passHttpParamDTO, f8342c.incrementAndGet(), httpRequestHandler, httpResponseHandler);
        f8344e.execute(passHttpClientRequest);
        return passHttpClientRequest;
    }
}
