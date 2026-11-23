package com.byazt.lk;

import android.util.Pair;
import com.byazt.ut.i;
import com.byazt.ut.sl;
import java.util.Map;
import java.util.function.Function;
import n0.a;
import n0.b;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 715, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i f16664c;
    public final com.byazt.ut.c tt;

    public ve(com.byazt.ut.c cVar) {
        this.tt = cVar;
    }

    public void c(i iVar) {
        this.f16664c = iVar;
    }

    public Object tt(sl slVar, com.byazt.dna.c cVar, Object obj, Function function, boolean z10) {
        return c(slVar, cVar, obj, function, z10, true);
    }

    public Object c(sl slVar, com.byazt.dna.c cVar, Object obj, Function function, boolean z10) {
        return c(slVar, cVar, obj, function, z10, false);
    }

    private Object c(sl slVar, com.byazt.dna.c cVar, Object obj, Function function, boolean z10, boolean z11) {
        if (obj.getClass().getClassLoader() == com.byazt.ut.c.class.getClassLoader() && !slVar.f20976c.isAssignableFrom(obj.getClass())) {
            Object objC = slVar.c(cVar);
            if (this.f16664c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("key", slVar.f20975a);
                    jSONObject.putOpt("origin", obj.getClass().getName());
                    jSONObject.putOpt("memoryProxyService", objC);
                    jSONObject.putOpt("apiClazz", slVar.f20976c.getName());
                    Map<String, Object> mapC = this.tt.n().c();
                    if (mapC != null) {
                        for (String str : mapC.keySet()) {
                            Object obj2 = mapC.get(str);
                            if (obj2 instanceof Pair) {
                                Pair pair = (Pair) obj2;
                                jSONObject.putOpt(str + "_create", pair.first);
                                jSONObject.putOpt(str, pair.second);
                            } else {
                                jSONObject.putOpt(str, obj2);
                            }
                        }
                    }
                    jSONObject.putOpt("allServices", mapC);
                } catch (JSONException unused) {
                }
                this.f16664c.c(5, jSONObject.toString(), new RuntimeException("service not match"));
            }
            if (objC != null) {
                return objC;
            }
            return null;
        }
        Object objC2 = c(slVar, cVar, obj, z11);
        if (z10) {
            slVar.c(objC2, cVar);
            if (function != null) {
                slVar.c(function);
                slVar.c(com.byazt.rj.c.c(function, slVar.f20975a));
            } else {
                slVar.c(slVar.ve);
            }
        }
        return objC2;
    }

    private Object c(sl slVar, com.byazt.dna.c cVar, Object obj, boolean z10) {
        try {
            if (slVar.tt.isInstance(obj)) {
                return obj;
            }
            if (slVar.f20976c.isInstance(obj)) {
                return slVar.tt.getDeclaredConstructor(slVar.f20976c).newInstance(obj);
            }
            if (b.a(obj)) {
                if (slVar.f20978i && z10) {
                    obj = slVar.tt.getDeclaredConstructor(a.a(), slVar.f20976c).newInstance(obj, this.tt.ve().c(slVar, cVar, false).second);
                } else {
                    obj = slVar.tt.getDeclaredConstructor(a.a()).newInstance(obj);
                }
                i iVar = this.f16664c;
            } else {
                i iVar2 = this.f16664c;
                if (iVar2 != null) {
                    iVar2.c(slVar, 0, "service not instanceof Function:".concat(String.valueOf(obj)), (Throwable) null);
                }
            }
            return obj;
        } catch (Throwable th) {
            i iVar3 = this.f16664c;
            if (iVar3 != null) {
                iVar3.c(slVar, 0, "reuse failed", th);
            }
        }
    }
}
