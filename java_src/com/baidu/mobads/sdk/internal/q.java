package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.CpuChannelResponse;
import com.baidu.mobads.sdk.api.IOAdEvent;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ IOAdEvent f7922a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ p f7923b;

    q(p pVar, IOAdEvent iOAdEvent) {
        this.f7923b = pVar;
        this.f7922a = iOAdEvent;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        IOAdEvent iOAdEvent = this.f7922a;
        if (iOAdEvent == null || TextUtils.isEmpty(iOAdEvent.getType())) {
            return;
        }
        String type = this.f7922a.getType();
        if (z.ar.equals(type)) {
            List<CpuChannelResponse> listA = n.a((JSONArray) this.f7922a.getData().get("cpuChannelList"));
            if (this.f7923b.f7921a.f7918t != null) {
                this.f7923b.f7921a.f7918t.onChannelListLoaded(listA);
                return;
            }
            return;
        }
        if (z.as.equals(type)) {
            Map<String, Object> data = this.f7922a.getData();
            int iIntValue = 0;
            if (data != null) {
                str = (String) data.get("error_message");
                Object obj = data.get("error_code");
                if (obj == null) {
                    obj = 0;
                }
                iIntValue = ((Integer) obj).intValue();
            } else {
                str = "";
            }
            if (this.f7923b.f7921a.f7918t != null) {
                this.f7923b.f7921a.f7918t.onChannelListError(str, iIntValue);
            }
        }
    }
}
