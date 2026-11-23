package com.byazt.no;

import com.byazt.nr.m;
import com.byazt.w.a;
import com.haima.hmcp.proto.GSSDK;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Y_VALUE, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17538c;
    public final Map<String, ve> tt;
    public final Map<String, uj> ve;

    /* JADX INFO: renamed from: com.byazt.no.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Y_VALUE, 44})
    private static final class C0386c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final c f17539c = new c();
    }

    public void c(String str, ve veVar) {
        synchronized (this.tt) {
            this.tt.put(str, veVar);
        }
    }

    public uj tt(String str, List<com.byazt.t.ve> list) {
        uj ujVarRemove;
        synchronized (this.ve) {
            ujVarRemove = this.ve.remove(str);
        }
        if (ujVarRemove == null) {
            return null;
        }
        if (a.c(ujVarRemove.a(), list)) {
            try {
                ujVarRemove.n();
            } catch (InterruptedException e10) {
                m.c(e10);
            }
            if (ujVarRemove.x() && ujVarRemove.sp()) {
                return ujVarRemove;
            }
        }
        try {
            ujVarRemove.uj();
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private c() {
        this.tt = new HashMap();
        this.ve = new LinkedHashMap(3);
        this.f17538c = 3;
    }

    public void c(int i10) {
        this.f17538c = i10;
    }

    public ve c(String str, List<com.byazt.t.ve> list) {
        ve veVarRemove;
        synchronized (this.tt) {
            veVarRemove = this.tt.remove(str);
        }
        if (veVarRemove == null) {
            return null;
        }
        if (a.c(veVarRemove.x(), list)) {
            try {
                veVarRemove.uj();
            } catch (InterruptedException e10) {
                m.c(e10);
            }
            if (veVarRemove.a() && veVarRemove.n()) {
                return veVarRemove;
            }
        }
        try {
            veVarRemove.ve();
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean c(String str) {
        ve veVar = this.tt.get(str);
        if (veVar != null) {
            if (veVar.sp()) {
                return true;
            }
            if (veVar.a() && veVar.n()) {
                return true;
            }
        }
        return false;
    }

    public static c c() {
        return C0386c.f17539c;
    }
}
