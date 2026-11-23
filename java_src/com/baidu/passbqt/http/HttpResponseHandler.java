package com.baidu.passbqt.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.baidu.passbqt.NoProguard;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class HttpResponseHandler extends Handler implements NoProguard {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected static final int f8316i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected static final int f8317j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected static final int f8318k = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected static final int f8319l = 3;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected static final String f8320m = "UTF-8";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected String f8321n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f8322o;

    public HttpResponseHandler() {
        this("UTF-8");
    }

    protected void a() {
    }

    protected void b() {
    }

    void c() {
        if (this.f8322o) {
            a();
        } else {
            sendMessage(obtainMessage(2));
        }
    }

    void d() {
        if (this.f8322o) {
            b();
        } else {
            sendMessage(obtainMessage(3));
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 0) {
            Object[] objArr = (Object[]) message.obj;
            b(((Integer) objArr[0]).intValue(), (HashMap) objArr[1], (byte[]) objArr[2]);
        } else if (i10 == 1) {
            Object[] objArr2 = (Object[]) message.obj;
            c((Throwable) objArr2[0], (String) objArr2[1]);
        } else if (i10 == 2) {
            a();
        } else {
            if (i10 != 3) {
                return;
            }
            b();
        }
    }

    public HttpResponseHandler(String str) {
        this.f8321n = str;
    }

    protected void a(int i10, String str) {
    }

    void b(Throwable th, String str) {
        if (this.f8322o) {
            a(th, str);
        } else {
            sendMessage(obtainMessage(1, new Object[]{th, str}));
        }
    }

    protected void a(Throwable th, String str) {
    }

    public HttpResponseHandler(Looper looper) {
        this(looper, false);
    }

    protected void a(int i10, String str, HashMap<String, String> map) {
        a(i10, str);
    }

    void c(int i10, HashMap<String, String> map, byte[] bArr) {
        if (i10 == 200) {
            a(i10, map, bArr);
        } else {
            String str = bArr == null ? null : new String(bArr);
            b(new HttpErrorException(i10, str), str);
        }
    }

    public HttpResponseHandler(Looper looper, boolean z10) {
        super(looper);
        this.f8322o = z10;
        this.f8321n = "UTF-8";
    }

    void a(int i10, HashMap<String, String> map, byte[] bArr) {
        if (this.f8322o) {
            a(i10, bArr == null ? null : new String(bArr), map);
        } else {
            sendMessage(obtainMessage(0, new Object[]{Integer.valueOf(i10), map, bArr}));
        }
    }

    void b(int i10, HashMap<String, String> map, byte[] bArr) {
        a(i10, bArr == null ? null : new String(bArr), map);
    }

    void c(Throwable th, String str) {
        a(th, str);
    }
}
