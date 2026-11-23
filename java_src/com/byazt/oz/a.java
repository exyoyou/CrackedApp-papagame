package com.byazt.oz;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.byazt.yj.d;
import com.byazt.yj.eo;
import com.byazt.yj.my;
import com.byazt.yj.qp;
import com.byazt.yj.rh;
import com.byazt.yj.zb;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 213, 34})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.yj.n f18550a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public d f18552i;
    public rh sp;
    public final my tt;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ExecutorService f18554x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, List<ve>> f18551c = new ConcurrentHashMap();
    public Map<String, eo> ve = new HashMap();
    public Map<String, zb> uj = new HashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<String, com.byazt.yj.uj> f18553n = new HashMap();

    public a(Context context, my myVar) {
        this.tt = (my) x.c(myVar);
        if (context != null) {
            com.byazt.ep.c.c(context, myVar.i());
        }
    }

    private com.byazt.yj.uj a(com.byazt.yj.tt ttVar) {
        com.byazt.yj.uj ujVarSp = this.tt.sp();
        return ujVarSp != null ? ujVarSp : new com.byazt.ss.tt(ttVar.getCacheDir(), ttVar.getFileCacheSize(), a());
    }

    private rh da() {
        rh rhVarC = this.tt.c();
        return rhVarC != null ? rhVarC : com.byazt.sb.tt.c();
    }

    private com.byazt.yj.n i() {
        com.byazt.yj.n nVarUj = this.tt.uj();
        return nVarUj == null ? com.byazt.rc.tt.c() : nVarUj;
    }

    private zb n(com.byazt.yj.tt ttVar) {
        zb zbVarA = this.tt.a();
        return zbVarA != null ? zbVarA : com.byazt.bl.n.c(ttVar.getRawMemoryCacheSize());
    }

    private ExecutorService sl() {
        ExecutorService executorServiceTt = this.tt.tt();
        return executorServiceTt != null ? executorServiceTt : com.byazt.sb.ve.c();
    }

    private d t() {
        d dVarX = this.tt.x();
        return dVarX == null ? new sp() : dVarX;
    }

    private eo uj(com.byazt.yj.tt ttVar) {
        eo eoVarN = this.tt.n();
        return eoVarN != null ? com.byazt.bl.c.c(eoVarN) : com.byazt.bl.c.c(ttVar.getMemoryCacheSize());
    }

    public Collection<eo> c() {
        return this.ve.values();
    }

    public Map<String, List<ve>> sp() {
        return this.f18551c;
    }

    public Collection<zb> tt() {
        return this.uj.values();
    }

    public Collection<com.byazt.yj.uj> ve() {
        return this.f18553n.values();
    }

    public d x() {
        if (this.f18552i == null) {
            this.f18552i = t();
        }
        return this.f18552i;
    }

    public eo c(com.byazt.yj.tt ttVar) {
        if (ttVar == null) {
            ttVar = com.byazt.ep.c.c();
        }
        String string = ttVar.getCacheDir().toString();
        eo eoVar = this.ve.get(string);
        if (eoVar != null) {
            return eoVar;
        }
        eo eoVarUj = uj(ttVar);
        this.ve.put(string, eoVarUj);
        return eoVarUj;
    }

    public zb tt(com.byazt.yj.tt ttVar) {
        if (ttVar == null) {
            ttVar = com.byazt.ep.c.c();
        }
        String string = ttVar.getCacheDir().toString();
        zb zbVar = this.uj.get(string);
        if (zbVar != null) {
            return zbVar;
        }
        zb zbVarN = n(ttVar);
        this.uj.put(string, zbVarN);
        return zbVarN;
    }

    public com.byazt.yj.uj ve(com.byazt.yj.tt ttVar) {
        if (ttVar == null) {
            ttVar = com.byazt.ep.c.c();
        }
        String string = ttVar.getCacheDir().toString();
        com.byazt.yj.uj ujVar = this.f18553n.get(string);
        if (ujVar != null) {
            return ujVar;
        }
        com.byazt.yj.uj ujVarA = a(ttVar);
        this.f18553n.put(string, ujVarA);
        return ujVarA;
    }

    public ExecutorService a() {
        ExecutorService executorServiceC;
        qp qpVarVe = this.tt.ve();
        if (qpVarVe != null && (executorServiceC = qpVarVe.c()) != null) {
            return executorServiceC;
        }
        if (this.f18554x == null) {
            this.f18554x = sl();
        }
        return this.f18554x;
    }

    public rh n() {
        if (this.sp == null) {
            this.sp = da();
        }
        return this.sp;
    }

    public com.byazt.yj.n uj() {
        if (this.f18550a == null) {
            this.f18550a = i();
        }
        return this.f18550a;
    }

    public com.byazt.yj.uj c(String str) {
        return ve(com.byazt.ep.c.c(new File(str)));
    }

    public com.byazt.ib.c c(ve veVar) {
        ImageView.ScaleType scaleType = veVar.getScaleType();
        if (scaleType == null) {
            scaleType = com.byazt.ib.c.f15291c;
        }
        ImageView.ScaleType scaleType2 = scaleType;
        Bitmap.Config configUj = veVar.uj();
        if (configUj == null) {
            configUj = com.byazt.ib.c.tt;
        }
        return new com.byazt.ib.c(veVar.getWidth(), veVar.getHeight(), scaleType2, configUj, veVar.c(), veVar.tt());
    }
}
