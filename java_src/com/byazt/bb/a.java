package com.byazt.bb;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import com.byazt.eia.i;
import com.byazt.ete.ic;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 147, 34})
public class a implements com.byazt.hl.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f11854a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.hl.c f11855c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Map<String, Object> f11856i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11857n;
    public Map<String, Object> sp;
    public Context tt;
    public String uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public i f11858x;

    public a(i iVar, Context context, String str, String str2, Map<String, Object> map) {
        this.f11858x = iVar;
        this.tt = context;
        this.ve = str;
        this.uj = str2;
        this.f11856i = map;
        tt();
    }

    public static boolean c(int i10) {
        switch (i10) {
            case 101:
            case 102:
            case 103:
            case 104:
                return true;
            default:
                return false;
        }
    }

    private ic ve() {
        return com.byazt.ppf.ve.c(this.f11858x, this.f11856i);
    }

    public void tt(Map<String, Object> map) {
        this.sp = map;
    }

    private void tt() {
        i iVar = this.f11858x;
        if (iVar != null) {
            this.f11857n = iVar.n();
        } else {
            this.f11857n = -1;
        }
    }

    private void ve(int i10) {
        com.byazt.cr.uj ujVar;
        if (i10 == 0) {
            ujVar = com.byazt.cr.uj.ve;
        } else if (i10 == 1) {
            ujVar = com.byazt.cr.uj.f12588n;
        } else if (i10 != 3) {
            ujVar = i10 != 4 ? com.byazt.cr.uj.uj : com.byazt.cr.uj.f12587a;
        } else {
            ujVar = com.byazt.cr.uj.sp;
        }
        com.byazt.ppf.ve.c(this.f11856i, ujVar);
    }

    @Override // com.byazt.hl.c
    public boolean c(Map<String, Object> map) {
        boolean zC = c();
        tt();
        if (zC) {
            return true;
        }
        HashMap map2 = new HashMap(2);
        map2.put("event_tag", this.ve);
        if (!TextUtils.isEmpty(this.uj)) {
            map2.put("dpa_tag", this.uj);
        }
        map2.put("material_meta", ve());
        int iC = com.byazt.apd.tt.c().c(this.tt, this.f11858x, map2) & 255;
        ve(iC);
        if (iC == 0) {
            return true;
        }
        com.byazt.hl.c cVar = this.f11855c;
        return cVar != null && cVar.c(map);
    }

    public void tt(int i10) {
        this.f11857n = i10;
    }

    private boolean c() {
        if (this.f11857n < 2) {
            return false;
        }
        HashMap map = new HashMap(2);
        if (c(this.f11857n)) {
            map.put("live_saas_param_interaction_type", Integer.valueOf(this.f11857n));
        }
        if (this.f11856i.containsKey("saas_status_while_click")) {
            map.put("saas_status_while_click", this.f11856i.get("saas_status_while_click"));
        }
        map.put("event_tag", this.ve);
        String str = this.uj;
        if (str != null) {
            map.put("dpa_tag", str);
        }
        map.put("material_meta", ve());
        if (this.sp == null) {
            this.sp = new HashMap();
        }
        com.byazt.apd.tt.c().c(this.f11854a, this.f11858x.sl(), map, this.sp);
        int iC = com.byazt.apd.tt.c().c(this.tt, this.f11858x, map);
        int i10 = iC & 255;
        int i11 = (iC & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        if (i11 > 0) {
            this.sp.put("click_saas_action", Integer.valueOf(i11));
        }
        return i10 == 0;
    }

    public void c(View view) {
        this.f11854a = view;
    }
}
