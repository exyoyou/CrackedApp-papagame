package com.sdk.u;

import android.content.Context;
import com.sdk.base.module.manager.SDKManager;
import com.sdk.f.c;
import com.sdk.f.d;
import com.sdk.g.b;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a<T> extends b<T> {
    public a(Context context, com.sdk.e.a<T> aVar, List<String> list, c cVar) {
        super(context, aVar, list, cVar);
        a();
    }

    public final void a() {
        if (d.f78523c) {
            String statisticalTestHost = SDKManager.getStatisticalTestHost();
            String testHost = SDKManager.getTestHost();
            if (com.sdk.r.a.a(testHost).booleanValue()) {
                testHost = d.b.f78526c.a();
            }
            com.sdk.r.a.b(statisticalTestHost).booleanValue();
            if (com.sdk.r.a.b(testHost).booleanValue()) {
                this.f78537g = testHost;
                return;
            }
        }
        this.f78537g = d.b.f78525b.a();
    }
}
