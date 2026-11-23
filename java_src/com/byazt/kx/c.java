package com.byazt.kx;

import com.byazt.ca.a;
import com.byazt.ca.da;
import com.byazt.ca.i;
import com.byazt.ca.n;
import com.byazt.ca.sp;
import com.byazt.ca.tt;
import com.byazt.ca.uj;
import com.byazt.ca.ve;
import com.byazt.ca.x;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1433, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.byazt.pz.c f16494c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f16495n;
    public final com.byazt.pz.c tt;
    public Deque<com.byazt.dr.c> uj = new LinkedList();
    public com.byazt.dr.c ve;

    static {
        int i10 = 8;
        a[] aVarArr = {new da(), new uj(), new i(), new tt(), new n(), new com.byazt.ca.c(), new sp(), new ve(), new x()};
        final com.byazt.pz.c cVar = new com.byazt.pz.c() { // from class: com.byazt.kx.c.1
            @Override // com.byazt.pz.c
            public int c(String str, int i11, Deque<com.byazt.dr.c> deque) {
                return i11;
            }
        };
        while (i10 >= 0) {
            final a aVar = aVarArr[i10];
            i10--;
            cVar = new com.byazt.pz.c() { // from class: com.byazt.kx.c.2
                @Override // com.byazt.pz.c
                public int c(String str, int i11, Deque<com.byazt.dr.c> deque) {
                    return aVar.c(str, i11, deque, cVar);
                }
            };
        }
        f16494c = cVar;
    }

    private c(String str, com.byazt.pz.c cVar) {
        this.tt = cVar;
        this.f16495n = str;
        try {
            c();
        } catch (Exception e10) {
            throw new com.byazt.hh.tt(str, e10);
        }
    }

    public static c c(String str) {
        return new c(str, f16494c);
    }

    private void c() {
        int length = this.f16495n.length();
        int i10 = 0;
        while (i10 < length) {
            int iC = this.tt.c(this.f16495n, i10, this.uj);
            if (iC == i10) {
                throw new IllegalArgumentException("Unrecognized expression, unrecognized characters encountered during parsing:" + this.f16495n.substring(0, i10));
            }
            i10 = iC;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            com.byazt.dr.c cVarPollFirst = this.uj.pollFirst();
            if (cVarPollFirst == null) {
                this.ve = com.byazt.to.tt.c(arrayList, this.f16495n, i10);
                this.uj = null;
                return;
            }
            arrayList.add(0, cVarPollFirst);
        }
    }

    public <T> T c(JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put("default_key", jSONObject);
        return (T) c(map);
    }

    public <T> T c(Map<String, JSONObject> map) {
        return (T) this.ve.c(map);
    }
}
