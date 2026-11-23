package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.view.View;
import android.webkit.WebView;
import com.baidu.mobads.sdk.api.NativeCPUManager;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
class ah implements NativeCPUManager.DataPostBackListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Object f7403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ae f7404b;

    ah(ae aeVar, Object obj) {
        this.f7404b = aeVar;
        this.f7403a = obj;
    }

    @Override // com.baidu.mobads.sdk.api.NativeCPUManager.DataPostBackListener
    public void postback(JSONObject jSONObject) {
        Object obj = this.f7403a;
        if (obj instanceof Activity) {
            View viewFindViewById = ((Activity) obj).findViewById(17);
            if (viewFindViewById instanceof WebView) {
                this.f7404b.a((WebView) viewFindViewById, jSONObject);
            }
        }
    }
}
