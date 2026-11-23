package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes7.dex */
public class o implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f6567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Integer, Enum> f6568b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, Enum> f6569c = new HashMap();

    public o(Class<?> cls) {
        this.f6567a = cls;
        try {
            for (Object obj : (Object[]) cls.getMethod(HmDataChannelManager.BEHAVIOR_VALUE, new Class[0]).invoke(null, new Object[0])) {
                Enum r10 = (Enum) obj;
                this.f6568b.put(Integer.valueOf(r10.ordinal()), r10);
                this.f6569c.put(r10.name(), r10);
            }
        } catch (Exception unused) {
            throw new JSONException("init enum values error, " + cls.getName());
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 2;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        try {
            com.alibaba.fastjson.parser.d dVarZ = cVar.z();
            if (dVarZ.b() == 2) {
                Integer numValueOf = Integer.valueOf(dVarZ.I());
                dVarZ.l(16);
                T t10 = (T) this.f6568b.get(numValueOf);
                if (t10 != null) {
                    return t10;
                }
                throw new JSONException("parse enum " + this.f6567a.getName() + " error, value : " + numValueOf);
            }
            if (dVarZ.b() == 4) {
                String strR = dVarZ.R();
                dVarZ.l(16);
                if (strR.length() == 0) {
                    return null;
                }
                this.f6569c.get(strR);
                return (T) Enum.valueOf(this.f6567a, strR);
            }
            if (dVarZ.b() == 8) {
                dVarZ.l(16);
                return null;
            }
            throw new JSONException("parse enum " + this.f6567a.getName() + " error, value : " + cVar.Q());
        } catch (JSONException e10) {
            throw e10;
        } catch (Throwable th) {
            throw new JSONException(th.getMessage(), th);
        }
    }
}
