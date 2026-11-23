package com.byazt.ete;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 155})
public class lr {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<ir> f13794c;

    public lr(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject == null || (jSONArrayOptJSONArray = jSONObject.optJSONArray("components")) == null) {
            return;
        }
        this.f13794c = new ArrayList();
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            this.f13794c.add(new ir(jSONArrayOptJSONArray.optJSONObject(i10), 3));
        }
    }

    public static List<ir> c(ic icVar) {
        lr lrVarWy;
        if (icVar == null || (lrVarWy = icVar.wy()) == null) {
            return null;
        }
        return lrVarWy.f13794c;
    }

    public static boolean tt(ic icVar) {
        lr lrVarWy;
        List<ir> list;
        return (icVar == null || (lrVarWy = icVar.wy()) == null || (list = lrVarWy.f13794c) == null || list.isEmpty()) ? false : true;
    }
}
