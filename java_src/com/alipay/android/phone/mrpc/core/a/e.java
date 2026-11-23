package com.alipay.android.phone.mrpc.core.a;

import java.util.ArrayList;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes7.dex */
public final class e extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f6886d;

    public e(int i10, String str, Object obj) {
        super(str, obj);
        this.f6885c = i10;
    }

    @Override // com.alipay.android.phone.mrpc.core.a.f
    public final void a(Object obj) {
        this.f6886d = obj;
    }

    @Override // com.alipay.android.phone.mrpc.core.a.f
    public final byte[] a() {
        try {
            ArrayList arrayList = new ArrayList();
            if (this.f6886d != null) {
                arrayList.add(new BasicNameValuePair("extParam", com.alipay.a.a.f.a(this.f6886d)));
            }
            arrayList.add(new BasicNameValuePair("operationType", this.f6883a));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f6885c);
            arrayList.add(new BasicNameValuePair("id", sb2.toString()));
            Objects.toString(this.f6884b);
            Object obj = this.f6884b;
            arrayList.add(new BasicNameValuePair("requestData", obj == null ? HttpUrl.PATH_SEGMENT_ENCODE_SET_URI : com.alipay.a.a.f.a(obj)));
            return URLEncodedUtils.format(arrayList, "utf-8").getBytes();
        } catch (Exception e10) {
            StringBuilder sb3 = new StringBuilder("request  =");
            sb3.append(this.f6884b);
            sb3.append(":");
            sb3.append(e10);
            throw new com.alipay.android.phone.mrpc.core.c(9, sb3.toString() == null ? "" : e10.getMessage(), e10);
        }
    }
}
