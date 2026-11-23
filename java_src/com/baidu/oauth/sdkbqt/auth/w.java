package com.baidu.oauth.sdkbqt.auth;

import android.text.TextUtils;
import android.webkit.JsPromptResult;

/* JADX INFO: loaded from: classes6.dex */
class w implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f8249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ JsPromptResult f8250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String[] f8251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ u f8252d;

    w(u uVar, String str, JsPromptResult jsPromptResult, String[] strArr) {
        this.f8252d = uVar;
        this.f8249a = str;
        this.f8250b = jsPromptResult;
        this.f8251c = strArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        i.e eVarA = i.e.a(this.f8249a);
        if (eVarA == null) {
            this.f8250b.cancel();
            return;
        }
        String strA = eVarA.a();
        if ("oauth_sso_hash".equals(strA)) {
            this.f8252d.f8246a.f8217u = this.f8250b;
        }
        if (!TextUtils.isEmpty(strA) && this.f8252d.f8246a.f8200d.get(strA) != null) {
            this.f8251c[0] = ((i.a) this.f8252d.f8246a.f8200d.get(strA)).a(eVarA);
        }
        if (eVarA.b().size() > 2 && "prompt_on_cancel".equals(eVarA.b().get(2))) {
            this.f8250b.cancel();
        } else {
            if ("oauth_sso_hash".equals(strA)) {
                return;
            }
            this.f8250b.confirm(this.f8251c[0]);
        }
    }
}
