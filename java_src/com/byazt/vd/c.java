package com.byazt.vd;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1582, 20})
public abstract class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashSet<String> f21179c = new HashSet<>(Arrays.asList("convert", "dislike", "openAppPermission", "openAppPolicy", "openPrivacy", "openAppFunction", "close", "skip", "videoControl", "pauseVideo", "resumeVideo", "muteVideo", "preventEvent"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<String, Object> f21180a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f21181n;
    public String sp;
    public com.byazt.pm.a.c tt;
    public String uj;
    public com.byazt.xj.ve ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f21182x;

    /* JADX INFO: renamed from: com.byazt.vd.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 1582, 44})
    public static class C0462c {
        public static c c(com.byazt.xj.ve veVar, String str, com.byazt.pm.a.c cVar) {
            if (cVar == null) {
                return null;
            }
            com.byazt.pm.tt ttVarC = com.byazt.pm.uj.c(cVar.tt());
            if (ttVarC == null && (TextUtils.isEmpty(cVar.c()) || !TextUtils.equals(cVar.c(), "global"))) {
                ttVarC = com.byazt.pm.uj.c(cVar.n());
            }
            if (ttVarC == null) {
                return new ve(veVar, str, cVar);
            }
            c cVarC = ttVarC.c(veVar, str, cVar);
            return cVarC == null ? new ve(veVar, str, cVar) : cVarC;
        }
    }

    public c(com.byazt.xj.ve veVar, String str, com.byazt.pm.a.c cVar) {
        this.ve = veVar;
        this.tt = cVar;
        this.sp = str;
        n();
    }

    private void n() {
        com.byazt.pm.a.c cVar = this.tt;
        if (cVar == null) {
            return;
        }
        this.uj = cVar.c();
        this.f21181n = this.tt.tt();
        Map<String, Object> mapVe = this.tt.ve();
        this.f21180a = mapVe;
        if (mapVe == null || mapVe.isEmpty() || !this.f21180a.containsKey("emitCustomEvent") || !(this.f21180a.get("emitCustomEvent") instanceof String)) {
            return;
        }
        this.f21182x = (String) this.f21180a.get("emitCustomEvent");
    }

    public abstract void c();

    public void tt() {
        ve();
    }

    public boolean uj() {
        return !TextUtils.isEmpty(this.f21182x);
    }

    public void ve() {
        if (uj()) {
            com.byazt.pm.a.c cVar = new com.byazt.pm.a.c();
            cVar.c("custom");
            cVar.tt("emit");
            HashMap map = new HashMap();
            map.put("name", this.f21182x);
            cVar.c(map);
            new tt(this.ve, this.f21181n, cVar).c();
        }
    }
}
