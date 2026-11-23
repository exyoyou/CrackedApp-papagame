package com.byazt.pm;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.byazt.nr.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1355, 42})
public class i implements sl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.sz.a f18758a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f18759c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f18760da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.dq.c f18761i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.xj.ve f18762n;
    public boolean sl;
    public yp sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f18763t;
    public c tt;
    public Map<String, List<com.byazt.ji.tt>> uj;
    public Map<String, List<com.byazt.ji.tt>> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public u f18764x;

    @com.byazt.zqa.c(c = {0, 1, 1355, 64})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Map<String, List<com.byazt.ji.tt>> f18767c;
        public Map<String, List<com.byazt.ji.tt>> tt;
        public Map<String, com.byazt.ji.tt> ve;

        public c(Map<String, List<com.byazt.ji.tt>> map, Map<String, com.byazt.ji.tt> map2, Map<String, List<com.byazt.ji.tt>> map3) {
            this.f18767c = map;
            this.ve = map2;
            this.tt = map3;
        }
    }

    public i(com.byazt.xj.ve veVar, c cVar) {
        this.f18762n = veVar;
        this.tt = cVar;
        if (cVar != null) {
            this.ve = cVar.f18767c;
            this.uj = cVar.tt;
        }
        if (veVar != null && veVar.lt() && this.f18761i == null) {
            this.f18761i = new com.byazt.dq.c();
        }
    }

    public void a() {
        List<com.byazt.ji.tt> listTt = tt("timerState");
        if (listTt == null || listTt.isEmpty()) {
            return;
        }
        for (com.byazt.ji.tt ttVar : listTt) {
            if (ttVar != null) {
                ttVar.c(this);
                ttVar.c(new Object[0]);
            }
        }
    }

    public void n() {
        List<com.byazt.ji.tt> listTt = tt("animateState");
        if (listTt == null || listTt.isEmpty()) {
            return;
        }
        for (com.byazt.ji.tt ttVar : listTt) {
            if (ttVar != null) {
                ttVar.c(this);
                ttVar.c(new Object[0]);
            }
        }
    }

    public void sp() {
        List<com.byazt.ji.tt> listTt = tt("timer");
        if (listTt == null || listTt.isEmpty()) {
            return;
        }
        for (com.byazt.ji.tt ttVar : listTt) {
            if (ttVar != null) {
                ttVar.c(this);
                ttVar.c(new Object[0]);
            }
        }
    }

    public void tt() {
        List<com.byazt.ji.tt> listTt = tt("shake");
        if (listTt == null || listTt.isEmpty()) {
            return;
        }
        for (com.byazt.ji.tt ttVar : listTt) {
            if (ttVar != null) {
                ttVar.c(this);
                ttVar.c(new Object[0]);
            }
        }
    }

    public void uj() {
        List<com.byazt.ji.tt> value;
        c cVar = this.tt;
        if (cVar == null) {
            return;
        }
        for (Map.Entry<String, List<com.byazt.ji.tt>> entry : cVar.f18767c.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null && !value.isEmpty()) {
                for (com.byazt.ji.tt ttVar : value) {
                    if (ttVar instanceof com.byazt.ji.ve) {
                        ttVar.c(this);
                        ttVar.c(new Object[0]);
                    }
                }
            }
        }
    }

    public void ve() {
        List<com.byazt.ji.tt> listTt = tt("twist");
        if (listTt == null || listTt.isEmpty()) {
            return;
        }
        for (com.byazt.ji.tt ttVar : listTt) {
            if (ttVar != null) {
                ttVar.c(this);
                ttVar.c(new Object[0]);
            }
        }
    }

    public Map<String, List<com.byazt.ji.tt>> x() {
        return this.ve;
    }

    public void c(com.byazt.sz.a aVar) {
        this.f18758a = aVar;
    }

    public void c(yp ypVar) {
        this.sp = ypVar;
    }

    public void c(u uVar) {
        this.f18764x = uVar;
    }

    public u c() {
        return this.f18764x;
    }

    public List<com.byazt.ji.tt> tt(String str) {
        Map<String, List<com.byazt.ji.tt>> map;
        Map<String, List<com.byazt.ji.tt>> map2 = this.ve;
        if (((map2 == null || map2.isEmpty()) && ((map = this.uj) == null || map.isEmpty())) || TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, List<com.byazt.ji.tt>> map3 = this.ve;
        if (map3 != null && map3.containsKey(str)) {
            return this.ve.get(str);
        }
        Map<String, List<com.byazt.ji.tt>> map4 = this.uj;
        if (map4 != null && map4.containsKey(str)) {
            return this.uj.get(str);
        }
        return null;
    }

    public List<com.byazt.ji.tt> ve(String str) {
        Map<String, List<com.byazt.ji.tt>> map;
        Map<String, List<com.byazt.ji.tt>> map2 = this.uj;
        if (map2 == null || map2.isEmpty() || TextUtils.isEmpty(str) || (map = this.uj) == null || !map.containsKey(str)) {
            return null;
        }
        return this.uj.get(str);
    }

    public void c(int i10) {
        List<com.byazt.ji.tt> listTt = tt("timer");
        if (listTt == null || listTt.isEmpty()) {
            return;
        }
        for (com.byazt.ji.tt ttVar : listTt) {
            if (ttVar instanceof com.byazt.ji.a) {
                ((com.byazt.ji.a) ttVar).c(i10);
            }
        }
    }

    public void c(boolean z10) {
        List<com.byazt.ji.tt> listTt = tt("timer");
        if (listTt == null || listTt.isEmpty()) {
            return;
        }
        for (com.byazt.ji.tt ttVar : listTt) {
            if (ttVar instanceof com.byazt.ji.a) {
                ((com.byazt.ji.a) ttVar).c(z10);
            }
        }
    }

    public void c(String str) {
        List<com.byazt.ji.tt> listTt = tt("timer");
        if (listTt == null || listTt.isEmpty()) {
            return;
        }
        if (str == null) {
            str = "";
        }
        for (com.byazt.ji.tt ttVar : listTt) {
            if (ttVar instanceof com.byazt.ji.a) {
                com.byazt.ji.a aVar = (com.byazt.ji.a) ttVar;
                if (TextUtils.equals(str, aVar.tt())) {
                    aVar.c();
                }
            }
        }
    }

    public boolean c(MotionEvent motionEvent) {
        List<com.byazt.ji.tt> listTt = tt("touchStart");
        if (listTt != null && !listTt.isEmpty()) {
            for (com.byazt.ji.tt ttVar : listTt) {
                if (ttVar instanceof com.byazt.ji.da) {
                    ttVar.c(this);
                    ttVar.c(motionEvent);
                }
            }
        }
        List<com.byazt.ji.tt> listTt2 = tt("touchEnd");
        List<com.byazt.ji.tt> listTt3 = tt("tap");
        List<com.byazt.ji.tt> listTt4 = tt("slide");
        if (listTt2 != null && !listTt2.isEmpty()) {
            for (com.byazt.ji.tt ttVar2 : listTt2) {
                if (ttVar2 instanceof com.byazt.ji.i) {
                    ttVar2.c(this);
                    this.f18763t = ttVar2.c(motionEvent);
                }
            }
        }
        if ((listTt3 != null && !listTt3.isEmpty()) || (listTt4 != null && !listTt4.isEmpty())) {
            if (this.f18763t && motionEvent.getAction() == 1) {
                return true;
            }
            com.byazt.dq.c cVar = this.f18761i;
            if (cVar != null) {
                if (cVar.c(motionEvent)) {
                    return false;
                }
                this.f18761i.c(this.f18762n, motionEvent);
            }
            if (listTt3 != null && !listTt3.isEmpty()) {
                for (com.byazt.ji.tt ttVar3 : listTt3) {
                    if (ttVar3 instanceof com.byazt.ji.n) {
                        ((com.byazt.ji.n) ttVar3).c(this.sp);
                        ttVar3.c(this);
                        this.f18760da = ttVar3.c(motionEvent);
                    }
                }
            }
            int action = motionEvent.getAction();
            if ((action == 1 || action == 3) && this.f18760da) {
                com.byazt.dq.c cVar2 = this.f18761i;
                if (cVar2 != null) {
                    cVar2.c();
                }
                return true;
            }
            if (listTt4 != null && !listTt4.isEmpty()) {
                for (com.byazt.ji.tt ttVar4 : listTt4) {
                    if (ttVar4 instanceof com.byazt.ji.uj) {
                        ((com.byazt.ji.uj) ttVar4).c(this.f18764x);
                        ttVar4.c(this);
                        this.sl = ttVar4.c(motionEvent);
                    }
                }
            }
            if (action == 1 || action == 3) {
                if (this.sl) {
                    com.byazt.dq.c cVar3 = this.f18761i;
                    if (cVar3 != null) {
                        cVar3.c();
                    }
                    return true;
                }
                com.byazt.dq.c cVar4 = this.f18761i;
                if (cVar4 != null) {
                    cVar4.c(this.f18762n);
                }
            }
            return this.f18760da || this.sl;
        }
        return this.f18763t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, List<a.c> list) {
        com.byazt.vd.c cVarC;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (a.c cVar : list) {
            if (cVar != null && (cVarC = com.byazt.vd.c.C0462c.c(this.f18762n, str, cVar)) != null) {
                cVarC.c();
                cVarC.tt();
            }
        }
    }

    public void c(String str, Object... objArr) {
        List<com.byazt.ji.tt> listVe = ve(str);
        if (listVe == null || listVe.isEmpty()) {
            return;
        }
        for (com.byazt.ji.tt ttVar : listVe) {
            ttVar.c(this);
            ttVar.c(objArr);
        }
    }

    @Override // com.byazt.pm.sl
    public void c(final com.byazt.xj.ve veVar, final String str, final List<a.c> list, a aVar) {
        if (aVar.ve()) {
            return;
        }
        final int iUj = aVar.uj();
        if (iUj > 0) {
            this.f18759c.postDelayed(new com.byazt.cd.da(new Runnable() { // from class: com.byazt.pm.i.1
                @Override // java.lang.Runnable
                public void run() {
                    if (i.this.f18758a != null) {
                        i.this.f18758a.c(veVar, str, list);
                    }
                    i.this.c(str, (List<a.c>) list);
                }
            }), iUj);
            return;
        }
        com.byazt.sz.a aVar2 = this.f18758a;
        if (aVar2 != null) {
            aVar2.c(veVar, str, list);
        }
        c(str, list);
    }

    public static i c(com.byazt.xj.ve veVar, String str) {
        com.byazt.ji.tt ttVarC;
        if (veVar != null && !TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() <= 0) {
                    return null;
                }
                c cVar = new c(new HashMap(), new HashMap(), new HashMap());
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null && (ttVarC = com.byazt.ji.tt.c.c(veVar.i().getContext(), veVar, jSONObjectOptJSONObject, veVar.da())) != null) {
                        if (cVar.f18767c.containsKey(ttVarC.sp())) {
                            List<com.byazt.ji.tt> list = cVar.f18767c.get(ttVarC.sp());
                            if (list == null) {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(ttVarC);
                                cVar.f18767c.put(ttVarC.sp(), arrayList);
                                cVar.tt.put(ttVarC.i(), arrayList);
                            } else {
                                list.add(ttVarC);
                            }
                        } else {
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(ttVarC);
                            cVar.f18767c.put(ttVarC.sp(), arrayList2);
                            cVar.tt.put(ttVarC.i(), arrayList2);
                        }
                        cVar.ve.put(ttVarC.x(), ttVarC);
                    }
                }
                return new i(veVar, cVar);
            } catch (JSONException e10) {
                m.c(e10);
            }
        }
        return null;
    }
}
