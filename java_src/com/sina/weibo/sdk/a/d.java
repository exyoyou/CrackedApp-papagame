package com.sina.weibo.sdk.a;

import android.content.Context;
import com.sina.weibo.sdk.net.HttpManager;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends c<Void, Void, String> {
    private Context Z;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private com.sina.weibo.sdk.net.c<String> f82222aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private Throwable f82223ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private String f82224ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private String f82225ad;
    private String ae;

    public d(Context context, String str, String str2, String str3, com.sina.weibo.sdk.net.c<String> cVar) {
        this.Z = context;
        this.f82224ac = str;
        this.f82225ad = str2;
        this.ae = str3;
        this.f82222aa = cVar;
    }

    private String d(String str) {
        return HttpManager.a(this.Z, "", this.ae, this.f82225ad, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.sina.weibo.sdk.a.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public String l() {
        try {
            String strValueOf = String.valueOf(System.currentTimeMillis() / 1000);
            com.sina.weibo.sdk.net.e.a aVar = new com.sina.weibo.sdk.net.e.a();
            aVar.f82242i = "https://service.weibo.com/share/mobilesdk_uppic.php";
            return new com.sina.weibo.sdk.net.b().a(aVar.a("oauth_timestamp", strValueOf).a("oauth_sign", d(strValueOf)).b("appKey", this.f82225ad).b("oauth_timestamp", strValueOf).b("oauth_sign", d(strValueOf)).b("img", this.f82224ac).e()).f();
        } catch (Throwable th) {
            th.printStackTrace();
            this.f82223ab = th;
            return null;
        }
    }

    @Override // com.sina.weibo.sdk.a.c
    protected final /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        Throwable th = this.f82223ab;
        if (th != null) {
            com.sina.weibo.sdk.net.c<String> cVar = this.f82222aa;
            if (cVar != null) {
                cVar.onError(th);
                return;
            }
            return;
        }
        com.sina.weibo.sdk.net.c<String> cVar2 = this.f82222aa;
        if (cVar2 != null) {
            cVar2.a(str2);
        }
    }
}
