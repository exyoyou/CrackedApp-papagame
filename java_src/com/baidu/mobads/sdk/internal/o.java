package com.baidu.mobads.sdk.internal;

import android.content.Context;
import com.baidu.mobads.sdk.api.CpuChannelListManager;
import com.baidu.mobads.sdk.api.IAdInterListener;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class o extends ae {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CpuChannelListManager.CpuChannelListListener f7918t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f7919u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f7920v;

    public o(Context context) {
        super(context);
    }

    public void a(CpuChannelListManager.CpuChannelListListener cpuChannelListListener) {
        this.f7918t = cpuChannelListListener;
    }

    public void a(String str, int i10) {
        this.f7919u = str;
        this.f7920v = i10;
    }

    @Override // com.baidu.mobads.sdk.internal.ae, com.baidu.mobads.sdk.internal.bj
    public void a() {
        if (this.f7577m == null) {
            this.f7578n = false;
            return;
        }
        this.f7578n = true;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, "cpu");
            this.f7577m.createProdHandler(jSONObject2);
            p pVar = new p(this);
            this.f7577m.addEventListener(z.ar, pVar);
            this.f7577m.addEventListener(z.as, pVar);
            jSONObject.put("appsid", this.f7919u);
            jSONObject.put("subChannelId", this.f7920v);
            jSONObject.put("event_type", "cpu_channelIds");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        a(jSONObject);
    }
}
