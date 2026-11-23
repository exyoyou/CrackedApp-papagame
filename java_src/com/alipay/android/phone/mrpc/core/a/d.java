package com.alipay.android.phone.mrpc.core.a;

import java.lang.reflect.Type;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends a {
    public d(Type type, byte[] bArr) {
        super(type, bArr);
    }

    @Override // com.alipay.android.phone.mrpc.core.a.c
    public final Object a() {
        try {
            String str = new String(this.f6882b);
            Thread.currentThread().getId();
            JSONObject jSONObject = new JSONObject(str);
            int i10 = jSONObject.getInt("resultStatus");
            if (i10 == 1000) {
                return this.f6881a == String.class ? jSONObject.optString("result") : com.alipay.a.a.e.b(jSONObject.optString("result"), this.f6881a);
            }
            throw new com.alipay.android.phone.mrpc.core.c(Integer.valueOf(i10), jSONObject.optString("tips"));
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder("response  =");
            sb2.append(new String(this.f6882b));
            sb2.append(":");
            sb2.append(e10);
            throw new com.alipay.android.phone.mrpc.core.c((Integer) 10, sb2.toString() == null ? "" : e10.getMessage());
        }
    }
}
