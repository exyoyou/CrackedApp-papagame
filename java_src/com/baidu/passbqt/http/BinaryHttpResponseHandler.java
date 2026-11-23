package com.baidu.passbqt.http;

import android.os.Looper;
import com.baidu.passbqt.NoProguard;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class BinaryHttpResponseHandler extends HttpResponseHandler implements NoProguard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String[] f8311a;

    public BinaryHttpResponseHandler(Looper looper) {
        super(looper);
        this.f8311a = new String[]{"image/png", "image/jpeg", "image/jpg", "image/gif"};
    }

    protected void a(int i10, byte[] bArr) {
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    void b(int i10, HashMap<String, String> map, byte[] bArr) {
        if (map == null || map.get("Content-Type") == null) {
            b(new HttpErrorException(i10, "None or more than one Content-Type Header found!"), null);
            return;
        }
        String str = map.get("Content-Type");
        boolean z10 = false;
        for (String str2 : this.f8311a) {
            if (str2.equalsIgnoreCase(str)) {
                z10 = true;
                break;
            }
        }
        if (z10) {
            a(i10, bArr);
        } else {
            b(new HttpErrorException(i10, "Content-Type not allowed!"), null);
        }
    }

    @Override // com.baidu.passbqt.http.HttpResponseHandler
    void a(int i10, HashMap<String, String> map, byte[] bArr) {
        if (this.f8322o) {
            b(i10, map, bArr);
        } else {
            sendMessage(obtainMessage(0, new Object[]{Integer.valueOf(i10), map, bArr}));
        }
    }

    public BinaryHttpResponseHandler(Looper looper, String[] strArr) {
        this(looper, strArr, false);
    }

    public BinaryHttpResponseHandler(Looper looper, String[] strArr, boolean z10) {
        super(looper);
        this.f8311a = strArr;
        this.f8322o = z10;
    }
}
