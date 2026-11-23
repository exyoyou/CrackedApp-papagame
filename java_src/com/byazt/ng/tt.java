package com.byazt.ng;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 248, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f17329c;
    public List<c> tt = new CopyOnWriteArrayList();

    @com.byazt.zqa.c(c = {0, 1, 248, 194})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public uj f17330c;
        public JSONObject tt;

        public c(uj ujVar, JSONObject jSONObject) {
            this.f17330c = ujVar;
            this.tt = jSONObject;
        }

        public uj c() {
            return this.f17330c;
        }

        public JSONObject tt() {
            return com.byazt.ng.c.c(this.f17330c, this.tt);
        }
    }

    private tt() {
    }

    public static tt c() {
        if (f17329c == null) {
            synchronized (tt.class) {
                if (f17329c == null) {
                    f17329c = new tt();
                }
            }
        }
        return f17329c;
    }

    public List<c> tt() {
        return this.tt;
    }

    public void ve() {
        com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- event 清空埋点辅助模块");
        List<c> list = this.tt;
        if (list != null) {
            list.clear();
        }
    }

    public void c(uj ujVar, JSONObject jSONObject) {
        com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- event 保存到埋点辅助模块");
        this.tt.add(new c(ujVar, jSONObject));
    }
}
