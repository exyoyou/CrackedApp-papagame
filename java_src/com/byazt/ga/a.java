package com.byazt.ga;

import android.graphics.Rect;
import android.util.LongSparseArray;
import android.util.SparseArray;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, 34})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<com.byazt.nb.sp> f14339a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Rect f14341da;
    public c gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<com.byazt.zk.x> f14342i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public uj f14343m;
    public ve my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<String, com.byazt.nb.ve> f14344n;
    public tt rh;
    public float sl;
    public SparseArray<com.byazt.nb.uj> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f14345t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f14346u;
    public Map<String, i> uj;
    public Map<String, List<com.byazt.zk.x>> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public LongSparseArray<com.byazt.zk.x> f14347x;
    public boolean yp;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final rh f14340c = new rh();
    public final HashSet<String> tt = new HashSet<>();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f14348z = 0;
    public String nu = "";

    @com.byazt.zqa.c(c = {0, 1, 256, 464})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f14350c;
        public String tt;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f14351n = -1.0f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f14349a = -1.0f;
        public float sp = -1.0f;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public float f14352x = -1.0f;

        public String toString() {
            return "area[" + this.f14350c + "," + this.tt + "," + this.ve + "," + this.uj + "]->[" + this.f14351n + "," + this.f14349a + "," + this.sp + "," + this.f14352x + "]";
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 256, 480})
    public static class tt {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f14353a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14354c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f14355n;
        public JSONArray sp;
        public Map<String, Object> tt;
        public int uj;
        public Map<String, Object> ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public com.byazt.rs.uj f14356x;
    }

    @com.byazt.zqa.c(c = {0, 1, 256, 474})
    public static class uj {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f14357a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14358c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int f14359da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public JSONArray f14360i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int[] f14361n;
        public int sl;
        public JSONArray sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public String[] f14362t;
        public String tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f14363u;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public String f14364x;
    }

    @com.byazt.zqa.c(c = {0, 1, 256, 471})
    public static class ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f14365c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f14366n;
        public int[][] tt;
        public int uj = 10;
        public JSONArray ve;
    }

    public float a() {
        return this.sl;
    }

    public void c(Rect rect, float f10, float f11, float f12, List<com.byazt.zk.x> list, LongSparseArray<com.byazt.zk.x> longSparseArray, Map<String, List<com.byazt.zk.x>> map, Map<String, i> map2, SparseArray<com.byazt.nb.uj> sparseArray, Map<String, com.byazt.nb.ve> map3, List<com.byazt.nb.sp> list2, uj ujVar, String str, tt ttVar, ve veVar, c cVar) {
        this.f14341da = rect;
        this.sl = f10;
        this.f14345t = f11;
        this.f14346u = f12;
        this.f14342i = list;
        this.f14347x = longSparseArray;
        this.ve = map;
        this.uj = map2;
        this.sp = sparseArray;
        this.f14344n = map3;
        this.f14339a = list2;
        this.f14343m = ujVar;
        this.nu = str;
        this.rh = ttVar;
        this.my = veVar;
        this.gt = cVar;
    }

    public c da() {
        return this.gt;
    }

    public String i() {
        return this.nu;
    }

    public Map<String, com.byazt.nb.ve> m() {
        return this.f14344n;
    }

    public float n() {
        return (long) ((rh() / this.f14346u) * 1000.0f);
    }

    public Map<String, i> nu() {
        return this.uj;
    }

    public float rh() {
        return this.f14345t - this.sl;
    }

    public ve sl() {
        return this.my;
    }

    public float sp() {
        return this.f14345t;
    }

    public tt t() {
        return this.rh;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        Iterator<com.byazt.zk.x> it2 = this.f14342i.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().c("\t"));
        }
        return sb2.toString();
    }

    public int tt() {
        return this.f14348z;
    }

    public float u() {
        return this.f14346u;
    }

    public Rect uj() {
        return this.f14341da;
    }

    public rh ve() {
        return this.f14340c;
    }

    public uj x() {
        return this.f14343m;
    }

    public List<com.byazt.zk.x> yp() {
        return this.f14342i;
    }

    public SparseArray<com.byazt.nb.uj> z() {
        return this.sp;
    }

    public void tt(boolean z10) {
        this.f14340c.c(z10);
    }

    public com.byazt.nb.sp ve(String str) {
        int size = this.f14339a.size();
        for (int i10 = 0; i10 < size; i10++) {
            com.byazt.nb.sp spVar = this.f14339a.get(i10);
            if (spVar.c(str)) {
                return spVar;
            }
        }
        return null;
    }

    public List<com.byazt.zk.x> tt(String str) {
        return this.ve.get(str);
    }

    public void c(String str) {
        com.byazt.kk.a.tt(str);
        this.tt.add(str);
    }

    public void c(boolean z10) {
        this.yp = z10;
    }

    public void c(int i10) {
        this.f14348z += i10;
    }

    public boolean c() {
        return this.yp;
    }

    public com.byazt.zk.x c(long j10) {
        return this.f14347x.get(j10);
    }

    public float c(float f10) {
        return com.byazt.kk.i.c(this.sl, this.f14345t, f10);
    }
}
