package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONObject;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class s0 implements j1 {
    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        if (obj == null) {
            v0Var.w().p0();
            return;
        }
        Date date = (Date) obj;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("date", (Object) Integer.valueOf(date.getDate()));
        jSONObject.put(com.windmill.sdk.strategy.m.a.f87213e, (Object) Integer.valueOf(date.getDay()));
        jSONObject.put("hours", (Object) Integer.valueOf(date.getHours()));
        jSONObject.put("minutes", (Object) Integer.valueOf(date.getMinutes()));
        jSONObject.put(com.windmill.sdk.strategy.m.a.f87212d, (Object) Integer.valueOf(date.getMonth()));
        jSONObject.put("seconds", (Object) Integer.valueOf(date.getSeconds()));
        jSONObject.put("time", (Object) Long.valueOf(date.getTime()));
        jSONObject.put("timezoneOffset", (Object) Integer.valueOf(date.getTimezoneOffset()));
        jSONObject.put("year", (Object) Integer.valueOf(date.getYear()));
        v0Var.K(jSONObject);
    }
}
