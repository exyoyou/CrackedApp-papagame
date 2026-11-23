package com.byazt.aq;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.join.mgps.Util.o0;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1950, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap<String, Object> f11729c = new HashMap<>();
    public JSONObject tt;

    public ve(JSONObject jSONObject) {
        this.tt = jSONObject;
    }

    public Object c(String str) {
        if (this.f11729c.containsKey(str)) {
            return this.f11729c.get(str);
        }
        return null;
    }

    public boolean tt(String str) {
        return this.f11729c.containsKey(str);
    }

    public void c() {
        Iterator<String> itKeys = this.tt.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = this.tt.opt(next);
            int i10 = 0;
            if (TextUtils.equals("image", next)) {
                if (objOpt instanceof JSONArray) {
                    while (true) {
                        JSONArray jSONArray = (JSONArray) objOpt;
                        if (i10 < jSONArray.length()) {
                            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                            if (jSONObjectOptJSONObject != null) {
                                Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    Object objOpt2 = jSONObjectOptJSONObject.opt(next2);
                                    this.f11729c.put(next + o0.f49827a + i10 + o0.f49827a + next2, objOpt2);
                                }
                            }
                            i10++;
                        }
                    }
                }
            } else if (TextUtils.equals("dynamic_creative", next)) {
                if (objOpt instanceof String) {
                    try {
                        JSONObject jSONObject = new JSONObject((String) objOpt);
                        Iterator<String> itKeys3 = jSONObject.keys();
                        while (itKeys3.hasNext()) {
                            String next3 = itKeys3.next();
                            Object objOpt3 = jSONObject.opt(next3);
                            if ((objOpt3 instanceof JSONArray) && !TextUtils.equals(next3, "short_phrase") && !TextUtils.equals(next3, "long_phrase")) {
                                for (int i11 = 0; i11 < ((JSONArray) objOpt3).length(); i11++) {
                                    this.f11729c.put(next + o0.f49827a + next3 + o0.f49827a + i11, ((JSONArray) objOpt3).opt(i11));
                                }
                            } else if ((objOpt3 instanceof JSONObject) && TextUtils.equals(next3, PayCenterOrderRequest.PAY_TYPE_COUPON)) {
                                Iterator<String> itKeys4 = ((JSONObject) objOpt3).keys();
                                while (itKeys4.hasNext()) {
                                    String next4 = itKeys4.next();
                                    Object objOpt4 = ((JSONObject) objOpt3).opt(next4);
                                    this.f11729c.put(next + o0.f49827a + next3 + o0.f49827a + next4, objOpt4);
                                }
                            } else if ((objOpt3 instanceof JSONObject) && TextUtils.equals(next3, "live_room_data")) {
                                c(next, next3, objOpt3);
                            } else {
                                this.f11729c.put(next + o0.f49827a + next3, objOpt3);
                            }
                        }
                    } catch (JSONException e10) {
                        m.c(e10);
                    }
                }
            } else if (!(objOpt instanceof JSONObject)) {
                this.f11729c.put(next, objOpt);
                if (objOpt instanceof String) {
                    this.f11729c.put(next, objOpt);
                }
            } else if (objOpt != null) {
                JSONObject jSONObject2 = (JSONObject) objOpt;
                Iterator<String> itKeys5 = jSONObject2.keys();
                while (itKeys5.hasNext()) {
                    String next5 = itKeys5.next();
                    Object objOpt5 = jSONObject2.opt(next5);
                    this.f11729c.put(next + o0.f49827a + next5, objOpt5);
                }
            }
        }
    }

    private void c(String str, String str2, Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if ((objOpt instanceof JSONArray) && TextUtils.equals(next, "product_infos")) {
                int i10 = 0;
                while (true) {
                    JSONArray jSONArray = (JSONArray) objOpt;
                    if (i10 < jSONArray.length()) {
                        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                        Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            Object objOpt2 = jSONObjectOptJSONObject.opt(next2);
                            this.f11729c.put(str + o0.f49827a + str2 + o0.f49827a + next + o0.f49827a + i10 + o0.f49827a + next2, objOpt2);
                        }
                        i10++;
                    }
                }
            } else {
                this.f11729c.put(str + o0.f49827a + str2 + o0.f49827a + next, objOpt);
            }
        }
    }
}
