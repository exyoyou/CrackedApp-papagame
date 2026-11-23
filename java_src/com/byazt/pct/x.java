package com.byazt.pct;

import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 71})
public final class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public t f18672c;

    private x(t tVar) {
        this.f18672c = tVar;
    }

    public static x c(t tVar) {
        return new x(tVar);
    }

    public <T> T c(String str, Type type) throws JSONException {
        c(str);
        return (type.equals(JSONObject.class) || ((type instanceof Class) && JSONObject.class.isAssignableFrom((Class) type))) ? (T) new JSONObject(str) : (T) this.f18672c.c(str, type);
    }

    public <T> String c(T t10) {
        String string;
        if (t10 == null) {
            return "{}";
        }
        if (!(t10 instanceof JSONObject) && !(t10 instanceof JSONArray)) {
            string = this.f18672c.c(t10);
        } else {
            string = t10.toString();
        }
        c(string);
        return string;
    }

    private static void c(String str) {
        if (str.startsWith("{") && str.endsWith("}")) {
            return;
        }
        i.c(new IllegalArgumentException("Param is not allowed to be List or JSONArray, rawString:\n ".concat(str)));
    }
}
