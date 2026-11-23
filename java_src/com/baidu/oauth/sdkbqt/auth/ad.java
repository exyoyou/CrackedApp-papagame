package com.baidu.oauth.sdkbqt.auth;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
class ad extends com.baidu.oauth.sdkbqt.callback.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ac f8180a;

    ad(ac acVar) {
        this.f8180a = acVar;
    }

    @Override // com.baidu.oauth.sdkbqt.callback.OauthCallback
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(com.baidu.oauth.sdkbqt.result.a aVar) {
        com.baidu.oauth.sdkbqt.a.d.a(i.f8198b, "FE need get a new sso_hash");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errno", 0);
            jSONObject.put("sso_hash", aVar.f8262a);
        } catch (JSONException e10) {
            com.baidu.oauth.sdkbqt.a.d.a(e10);
        }
        this.f8180a.f8179a.f8217u.confirm(aVar.f8262a);
    }
}
