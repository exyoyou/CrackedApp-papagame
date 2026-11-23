package com.sina.weibo.sdk.a;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends c<Void, Void, String> {

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private com.sina.weibo.sdk.net.c<String> f82226aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private Throwable f82227ab;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private String f82228ad;
    private Oauth2AccessToken af;

    public e(String str, Oauth2AccessToken oauth2AccessToken, com.sina.weibo.sdk.net.c<String> cVar) {
        this.f82228ad = str;
        this.af = oauth2AccessToken;
        this.f82226aa = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.sina.weibo.sdk.a.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public String l() {
        try {
            com.sina.weibo.sdk.net.e.a aVar = new com.sina.weibo.sdk.net.e.a();
            aVar.f82242i = "https://api.weibo.com/oauth2/access_token";
            return new com.sina.weibo.sdk.net.b().a(aVar.b("client_id", this.f82228ad).b("appKey", this.f82228ad).b("grant_type", "refresh_token").b("refresh_token", this.af.getRefreshToken()).e()).f();
        } catch (Throwable th) {
            th.printStackTrace();
            this.f82227ab = th;
            return null;
        }
    }

    @Override // com.sina.weibo.sdk.a.c
    protected final /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        Throwable th = this.f82227ab;
        if (th != null) {
            com.sina.weibo.sdk.net.c<String> cVar = this.f82226aa;
            if (cVar != null) {
                cVar.onError(th);
                return;
            }
            return;
        }
        com.sina.weibo.sdk.net.c<String> cVar2 = this.f82226aa;
        if (cVar2 != null) {
            cVar2.a(str2);
        }
    }
}
