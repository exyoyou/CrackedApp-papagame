package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class e extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f6556c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6557d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private x0 f6558e;

    public e(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        super(cls, eVar);
        if (e() instanceof ParameterizedType) {
            this.f6556c = ((ParameterizedType) e()).getActualTypeArguments()[0];
        } else {
            this.f6556c = Object.class;
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public int a() {
        return 14;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void g(com.alibaba.fastjson.parser.c cVar, Object obj, Type type, Map<String, Object> map) {
        if (cVar.z().b() == 8) {
            k(obj, null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        com.alibaba.fastjson.parser.j context = cVar.getContext();
        cVar.t0(context, obj, this.f6570a.getName());
        m(cVar, type, arrayList);
        cVar.v0(context);
        if (obj == null) {
            map.put(this.f6570a.getName(), arrayList);
        } else {
            j(obj, arrayList);
        }
    }

    public final void m(com.alibaba.fastjson.parser.c cVar, Type type, Collection collection) {
        int i10;
        Type type2 = this.f6556c;
        x0 x0VarG = this.f6558e;
        int i11 = 0;
        if ((type2 instanceof TypeVariable) && (type instanceof ParameterizedType)) {
            TypeVariable typeVariable = (TypeVariable) type2;
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Class cls = parameterizedType.getRawType() instanceof Class ? (Class) parameterizedType.getRawType() : null;
            if (cls == null) {
                i10 = -1;
                break;
            }
            int length = cls.getTypeParameters().length;
            i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (cls.getTypeParameters()[i10].getName().equals(typeVariable.getName())) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 != -1) {
                type2 = parameterizedType.getActualTypeArguments()[i10];
                if (!type2.equals(this.f6556c)) {
                    x0VarG = cVar.j().g(type2);
                }
            }
        }
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() != 14) {
            String str = "exepct '[', but " + com.alibaba.fastjson.parser.h.a(dVarZ.b());
            if (type != null) {
                str = str + ", type : " + type;
            }
            throw new JSONException(str);
        }
        if (x0VarG == null) {
            x0VarG = cVar.j().g(type2);
            this.f6558e = x0VarG;
            this.f6557d = x0VarG.b();
        }
        dVarZ.l(this.f6557d);
        while (true) {
            if (dVarZ.c(Feature.AllowArbitraryCommas)) {
                while (dVarZ.b() == 16) {
                    dVarZ.j();
                }
            }
            if (dVarZ.b() == 15) {
                dVarZ.l(16);
                return;
            }
            collection.add(x0VarG.c(cVar, type2, Integer.valueOf(i11)));
            cVar.f(collection);
            if (dVarZ.b() == 16) {
                dVarZ.l(this.f6557d);
            }
            i11++;
        }
    }
}
