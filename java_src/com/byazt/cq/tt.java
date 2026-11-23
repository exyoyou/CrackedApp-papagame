package com.byazt.cq;

import android.text.TextUtils;
import com.byazt.nd.a;
import com.byazt.nd.n;
import com.byazt.nd.uj;
import com.byazt.nd.ve;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2016, 13})
public class tt implements uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12567a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f12568c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.cq.c f12569n;
    public JSONObject tt;
    public ve uj;
    public Map<String, Object> ve;

    @com.byazt.zqa.c(c = {0, 1, 2016, 194})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Map<String, Object> f12571a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f12572c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public JSONObject f12573n;
        public ve sp;
        public String tt;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public JSONObject f12574x;

        public c(String str) {
            this.tt = str;
            this.f12572c = 1;
        }

        public c c(JSONObject jSONObject) {
            this.f12573n = jSONObject;
            return this;
        }

        public c tt(JSONObject jSONObject) {
            this.f12574x = jSONObject;
            return this;
        }

        public c c(Map<String, Object> map) {
            this.f12571a = map;
            return this;
        }

        public c(String str, int i10) {
            this.f12572c = i10;
            if (i10 == 3) {
                this.uj = str;
            } else if (i10 == 2) {
                this.ve = str;
            }
        }

        public c c(ve veVar) {
            this.sp = veVar;
            return this;
        }

        public tt c() {
            return new tt(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        ve veVar = this.uj;
        if (veVar != null) {
            veVar.c(this);
        }
    }

    @Override // com.byazt.nd.uj
    public a tt() {
        return null;
    }

    @Override // com.byazt.nd.uj
    public n ve() {
        return new n() { // from class: com.byazt.cq.tt.1
            @Override // com.byazt.nd.n
            public void c(com.byazt.cq.c cVar, Map<String, Object> map) {
                List<com.byazt.bh.c> listC = com.byazt.bh.tt.INSTANCE.c(tt.this.f12568c).c(cVar.x(), cVar.ve(), map);
                if (!cVar.a() && listC.isEmpty()) {
                    tt.this.uj();
                }
                Iterator<com.byazt.bh.c> it2 = listC.iterator();
                while (it2.hasNext()) {
                    tt.this.c(it2.next(), map);
                }
            }

            @Override // com.byazt.nd.n
            public void c(com.byazt.cq.c cVar, Map<String, Object> map, com.byazt.qb.c cVar2) {
                List<com.byazt.bh.c> listTt = com.byazt.bh.tt.INSTANCE.c(tt.this.f12568c).tt(cVar.x(), cVar.ve(), map);
                if (!cVar.a() && listTt.isEmpty()) {
                    tt.this.uj();
                }
                Iterator<com.byazt.bh.c> it2 = listTt.iterator();
                while (it2.hasNext()) {
                    tt.this.c(it2.next(), map);
                }
            }
        };
    }

    private tt(c cVar) {
        this.f12567a = 1;
        this.f12567a = cVar.f12572c;
        if (cVar.f12572c == 2) {
            this.f12569n = new com.byazt.cq.c(cVar.ve, 2, cVar.f12573n, cVar.f12571a);
        } else if (cVar.f12572c == 3) {
            this.f12569n = new com.byazt.cq.c(cVar.uj, 3, cVar.f12573n, cVar.f12571a);
        } else {
            this.f12568c = cVar.tt;
            if (cVar.f12574x != null) {
                com.byazt.bh.tt.INSTANCE.c(cVar.f12574x);
            }
        }
        this.tt = cVar.f12573n;
        this.ve = cVar.f12571a;
        this.uj = cVar.sp;
    }

    public void c() {
        com.byazt.bh.ve veVarC;
        int i10 = this.f12567a;
        if (i10 != 2 && i10 != 3) {
            if (TextUtils.isEmpty(this.f12568c) || (veVarC = com.byazt.bh.tt.INSTANCE.c(this.f12568c)) == null) {
                return;
            }
            c(veVarC.tt(), this.ve);
            return;
        }
        ve veVar = this.uj;
        if (veVar != null) {
            veVar.c(this.f12569n);
        }
        this.f12569n.sp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.bh.c cVar, Map<String, Object> map) {
        if (cVar == null) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        com.byazt.cq.c cVar2 = new com.byazt.cq.c(cVar, this.tt, map);
        cVar2.c(this.f12568c);
        cVar2.c(this);
        ve veVar = this.uj;
        if (veVar != null) {
            veVar.c(cVar2);
        }
        List<com.byazt.bh.c> listVe = com.byazt.bh.tt.INSTANCE.c(this.f12568c).ve(cVar, cVar2.ve(), map);
        if (!listVe.isEmpty()) {
            cVar2.c(true);
        }
        cVar2.sp();
        for (com.byazt.bh.c cVar3 : listVe) {
            if (cVar3 != null) {
                c(cVar3, map);
            }
        }
    }
}
