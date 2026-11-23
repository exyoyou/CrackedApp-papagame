package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c implements x0 {
    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        Object objQ;
        String strR;
        Object time;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 2) {
            Long lValueOf = Long.valueOf(dVarZ.y());
            dVarZ.l(16);
            objQ = lValueOf;
        } else if (dVarZ.b() == 4) {
            strR = dVarZ.R();
            dVarZ.l(16);
            if (dVarZ.c(Feature.AllowISO8601DateFormat)) {
                com.alibaba.fastjson.parser.g gVar = new com.alibaba.fastjson.parser.g(strR);
                if (gVar.V0()) {
                    objQ = strR;
                    time = strR;
                    time = gVar.j0().getTime();
                }
                objQ = strR;
                time = strR;
                gVar.close();
                objQ = time;
            }
        } else if (dVarZ.b() == 8) {
            dVarZ.j();
            objQ = null;
        } else if (dVarZ.b() == 12) {
            dVarZ.j();
            if (dVarZ.b() != 4) {
                throw new JSONException("syntax error");
            }
            if (com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(dVarZ.R())) {
                dVarZ.j();
                cVar.a(17);
                Class<?> clsK = com.alibaba.fastjson.util.k.K(dVarZ.R());
                if (clsK != null) {
                    type = clsK;
                }
                cVar.a(4);
                cVar.a(16);
            }
            dVarZ.L(2);
            if (dVarZ.b() != 2) {
                throw new JSONException("syntax error : " + dVarZ.h());
            }
            long jY = dVarZ.y();
            dVarZ.j();
            Long lValueOf2 = Long.valueOf(jY);
            cVar.a(13);
            objQ = lValueOf2;
        } else if (cVar.J() == 2) {
            cVar.y0(0);
            cVar.a(16);
            if (dVarZ.b() != 4) {
                throw new JSONException("syntax error");
            }
            if (!"val".equals(dVarZ.R())) {
                throw new JSONException("syntax error");
            }
            dVarZ.j();
            cVar.a(17);
            Object objQ2 = cVar.Q();
            cVar.a(13);
            objQ = objQ2;
        } else {
            objQ = cVar.Q();
        }
        objQ = strR;
        return (T) d(cVar, type, obj, objQ);
    }

    protected abstract <T> T d(com.alibaba.fastjson.parser.c cVar, Type type, Object obj, Object obj2);
}
