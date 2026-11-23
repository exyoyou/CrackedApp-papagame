package com.cloudplay.messagesdk.network;

import android.content.Context;
import com.cloudplay.messagesdk.a.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class b implements INetwork {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile b f23967b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private INetwork f23968a;

    private b() {
    }

    public static b a() {
        if (f23967b == null) {
            synchronized (b.class) {
                f23967b = new b();
            }
        }
        return f23967b;
    }

    @Override // com.cloudplay.messagesdk.network.INetwork
    public void cancel(String str) {
        if (f23967b != null) {
            this.f23968a.cancel(str);
        } else {
            e.b("NetworkManager", "cancel() mInstance is null ");
        }
    }

    @Override // com.cloudplay.messagesdk.network.INetwork
    public void init(Context context) {
        c cVarB = c.b();
        this.f23968a = cVarB;
        cVarB.init(context);
    }

    @Override // com.cloudplay.messagesdk.network.INetwork
    public void postJson(String str, JSONObject jSONObject, HttpResultListener httpResultListener) {
        if (f23967b != null) {
            this.f23968a.postJson(str, jSONObject, httpResultListener);
        } else {
            e.b("NetworkManager", "postJson() mInstance is null ");
        }
    }
}
