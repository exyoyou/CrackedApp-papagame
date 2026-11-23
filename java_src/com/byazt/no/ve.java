package com.byazt.no;

import com.byazt.hs.sp;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Y_VALUE, 54})
public class ve implements sp {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final ArrayList<String> f17545n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17547c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f17548da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f17549i;
    public sp sl;
    public int sp;
    public final long tt;
    public List<com.byazt.t.ve> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f17550x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<String, String> f17546a = null;
    public final Object uj = new Object();

    static {
        ArrayList<String> arrayList = new ArrayList<>(6);
        f17545n = arrayList;
        arrayList.add("Content-Length");
        arrayList.add("Content-Range");
        arrayList.add("Transfer-Encoding");
        arrayList.add("Accept-Ranges");
        arrayList.add(com.sigmob.sdk.downloader.core.c.f80443g);
        arrayList.add(com.sigmob.sdk.downloader.core.c.f80446j);
    }

    public ve(String str, List<com.byazt.t.ve> list, long j10) {
        this.f17547c = str;
        this.ve = list;
        this.tt = j10;
    }

    public boolean a() {
        return System.currentTimeMillis() - this.f17550x < tt.tt;
    }

    public boolean c(int i10) {
        return i10 >= 200 && i10 < 300;
    }

    public Map<String, String> i() {
        return this.f17546a;
    }

    public boolean n() {
        return this.f17549i;
    }

    public boolean sp() {
        return this.f17548da;
    }

    @Override // com.byazt.hs.sp
    public int tt() throws IOException {
        return this.sp;
    }

    public void uj() throws InterruptedException {
        synchronized (this.uj) {
            if (this.f17548da && this.f17546a == null) {
                this.uj.wait();
            }
        }
    }

    @Override // com.byazt.hs.sp
    public void ve() {
        sp spVar = this.sl;
        if (spVar != null) {
            spVar.ve();
        }
    }

    public List<com.byazt.t.ve> x() {
        return this.ve;
    }

    public void c() throws Exception {
        if (this.f17546a != null) {
            return;
        }
        try {
            this.f17548da = true;
            this.sl = com.byazt.zz.ve.c(this.f17547c, this.ve);
            synchronized (this.uj) {
                if (this.sl != null) {
                    HashMap map = new HashMap();
                    this.f17546a = map;
                    c(this.sl, map);
                    this.sp = this.sl.tt();
                    this.f17550x = System.currentTimeMillis();
                    this.f17549i = c(this.sp);
                }
                this.f17548da = false;
                this.uj.notifyAll();
            }
        } catch (Throwable th) {
            synchronized (this.uj) {
                if (this.sl != null) {
                    HashMap map2 = new HashMap();
                    this.f17546a = map2;
                    c(this.sl, map2);
                    this.sp = this.sl.tt();
                    this.f17550x = System.currentTimeMillis();
                    this.f17549i = c(this.sp);
                }
                this.f17548da = false;
                this.uj.notifyAll();
                throw th;
            }
        }
    }

    private void c(sp spVar, Map<String, String> map) {
        if (spVar == null || map == null) {
            return;
        }
        for (String str : f17545n) {
            map.put(str, spVar.c(str));
        }
    }

    @Override // com.byazt.hs.sp
    public String c(String str) {
        Map<String, String> map = this.f17546a;
        if (map != null) {
            return map.get(str);
        }
        sp spVar = this.sl;
        if (spVar != null) {
            return spVar.c(str);
        }
        return null;
    }
}
