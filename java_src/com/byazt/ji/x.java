package com.byazt.ji;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.pm.sl;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 222, 71})
public class x extends tt implements sp {
    public String sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f15842t;

    public x(Context context) {
        super(context);
    }

    private void tt(com.byazt.xj.ve veVar) {
        List<com.byazt.xj.ve<View>> listSp;
        List<tt> listTt;
        if (veVar == null) {
            return;
        }
        com.byazt.pm.i iVarKp = veVar.kp();
        if (iVarKp != null && (listTt = iVarKp.tt("timer")) != null && !listTt.isEmpty()) {
            for (tt ttVar : listTt) {
                if (ttVar instanceof a) {
                    a aVar = (a) ttVar;
                    if (TextUtils.isEmpty(this.sl) || TextUtils.equals(this.sl, aVar.tt())) {
                        aVar.c(this);
                    }
                }
            }
        }
        if (!(veVar instanceof com.byazt.xj.c) || (listSp = ((com.byazt.xj.c) veVar).sp()) == null || listSp.isEmpty()) {
            return;
        }
        Iterator<com.byazt.xj.ve<View>> it2 = listSp.iterator();
        while (it2.hasNext()) {
            tt(it2.next());
        }
    }

    @Override // com.byazt.ji.tt
    public boolean c(Object... objArr) {
        Map<String, Object> map = this.f15836n;
        if (map != null && !map.isEmpty()) {
            Object obj = this.f15836n.get("name");
            if (obj != null) {
                this.sl = String.valueOf(obj);
            }
            Object obj2 = this.f15836n.get(NoticeTopAnimActivityDialog_.STATE_EXTRA);
            if (obj2 != null) {
                this.f15842t = String.valueOf(obj2);
            }
        }
        com.byazt.xj.ve veVar = this.tt;
        com.byazt.xj.ve veVarTt = veVar.tt(veVar);
        if (veVarTt == null) {
            return false;
        }
        tt(veVarTt);
        return false;
    }

    @Override // com.byazt.ji.sp
    public void c(String str) {
        sl slVar;
        if (TextUtils.equals(this.f15842t, "start") || TextUtils.isEmpty(this.f15842t)) {
            if ((TextUtils.isEmpty(this.sl) || TextUtils.equals(this.sl, str)) && (slVar = this.f15833c) != null) {
                slVar.c(this.tt, this.f15832a, this.ve.tt(), this.ve);
            }
        }
    }

    @Override // com.byazt.ji.sp
    public void tt(String str) {
        sl slVar;
        if (TextUtils.equals(this.f15842t, "complete") || TextUtils.isEmpty(this.f15842t)) {
            if ((TextUtils.isEmpty(this.sl) || TextUtils.equals(this.sl, str)) && (slVar = this.f15833c) != null) {
                slVar.c(this.tt, this.f15832a, this.ve.tt(), this.ve);
            }
        }
    }
}
