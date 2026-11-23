package com.byazt.ete;

import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.join.mgps.activity.PapayPayDetialActivity_;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 42})
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f13690a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f13691c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f13692d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final long f13693da;
    public int gr;
    public final String gt;
    public int gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13694h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f13695i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f13696m;
    public byte md;
    public final String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f13697n;
    public final int nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public byte f13698p;
    public SparseArray<com.byazt.hkv.uj.c> qy;
    public final String rh;
    public final String rl;
    public final int sl;
    public final float sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f13699t;
    public final int[] tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f13700u;
    public final int[] uj;
    public final int[] ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final float f13701x;
    public final float yp;
    public int yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f13702z;
    public String zm;

    @com.byazt.zqa.c(c = {0, 1, 8, 64})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f13704c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int[] f13706da;
        public String gt;
        public String my;
        public SparseArray<com.byazt.hkv.uj.c> nu;
        public String qy;
        public int rh;
        public String rl;
        public int[] sl;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int[] f13712t;
        public int tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int[] f13713u;
        public float ve;
        public String zm;
        public long uj = -1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f13710n = -1;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f13703a = -1.0f;
        public float sp = -1.0f;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public float f13714x = -1.0f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f13708i = -1.0f;
        public int yp = -1;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f13715z = -1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f13709m = -1024;
        public int gu = -1;
        public int gr = -1;
        public int yv = -1;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f13711p = false;
        public byte md = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public byte f13707h = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f13705d = Integer.MIN_VALUE;

        public c a(float f10) {
            this.f13708i = f10;
            return this;
        }

        public c c(int i10) {
            this.f13705d = i10;
            return this;
        }

        public c i(int i10) {
            this.yv = i10;
            return this;
        }

        public c n(float f10) {
            this.f13714x = f10;
            return this;
        }

        public c sp(int i10) {
            this.gu = i10;
            return this;
        }

        public c tt(byte b10) {
            this.md = b10;
            return this;
        }

        public c uj(float f10) {
            this.sp = f10;
            return this;
        }

        public c ve(int i10) {
            this.rh = i10;
            return this;
        }

        public c x(int i10) {
            this.gr = i10;
            return this;
        }

        public c a(int i10) {
            this.f13709m = i10;
            return this;
        }

        public c c(byte b10) {
            this.f13707h = b10;
            return this;
        }

        public c n(int i10) {
            this.f13715z = i10;
            return this;
        }

        public c tt(int i10) {
            this.tt = i10;
            return this;
        }

        public c uj(int[] iArr) {
            this.f13713u = iArr;
            return this;
        }

        public c ve(float f10) {
            this.f13703a = f10;
            return this;
        }

        public c c(float f10) {
            this.f13704c = f10;
            return this;
        }

        public c n(String str) {
            this.zm = str;
            return this;
        }

        public c tt(float f10) {
            this.ve = f10;
            return this;
        }

        public c uj(int i10) {
            this.yp = i10;
            return this;
        }

        public c ve(int[] iArr) {
            this.f13712t = iArr;
            return this;
        }

        public c c(SparseArray<com.byazt.hkv.uj.c> sparseArray) {
            this.nu = sparseArray;
            return this;
        }

        public c tt(long j10) {
            this.f13710n = j10;
            return this;
        }

        public c uj(String str) {
            this.qy = str;
            return this;
        }

        public c ve(String str) {
            this.rl = str;
            return this;
        }

        public c c(long j10) {
            this.uj = j10;
            return this;
        }

        public c tt(int[] iArr) {
            this.sl = iArr;
            return this;
        }

        public c c(int[] iArr) {
            this.f13706da = iArr;
            return this;
        }

        public c tt(String str) {
            this.gt = str;
            return this;
        }

        public c c(String str) {
            this.my = str;
            return this;
        }

        public c c(boolean z10) {
            this.f13711p = z10;
            return this;
        }

        public i c() {
            return new i(this);
        }
    }

    public JSONObject c(ic icVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            int[] iArr = this.f13691c;
            if (iArr != null && iArr.length == 2) {
                jSONObject.putOpt("ad_x", Integer.valueOf(iArr[0])).putOpt("ad_y", Integer.valueOf(this.f13691c[1]));
            }
            int[] iArr2 = this.tt;
            if (iArr2 != null && iArr2.length == 2) {
                jSONObject.putOpt("width", Integer.valueOf(iArr2[0])).putOpt("height", Integer.valueOf(this.tt[1]));
            }
            int[] iArr3 = this.ve;
            if (iArr3 != null && iArr3.length == 2) {
                jSONObject.putOpt("button_x", Integer.valueOf(iArr3[0])).putOpt("button_y", Integer.valueOf(this.ve[1]));
            }
            int[] iArr4 = this.uj;
            if (iArr4 != null && iArr4.length == 2) {
                jSONObject.putOpt("button_width", Integer.valueOf(iArr4[0])).putOpt("button_height", Integer.valueOf(this.uj[1]));
            }
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (this.qy != null) {
                for (int i10 = 0; i10 < this.qy.size(); i10++) {
                    com.byazt.hkv.uj.c cVarValueAt = this.qy.valueAt(i10);
                    if (cVarValueAt != null) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.putOpt("force", Double.valueOf(cVarValueAt.ve)).putOpt("mr", Double.valueOf(cVarValueAt.tt)).putOpt(TypedValues.CycleType.S_WAVE_PHASE, Integer.valueOf(cVarValueAt.f14957c)).putOpt("ts", Long.valueOf(cVarValueAt.uj));
                        jSONArray.put(jSONObject3);
                    }
                }
            }
            jSONObject2.putOpt("ftc", Integer.valueOf(this.nu)).putOpt(PapayPayDetialActivity_.INFO_EXTRA, jSONArray);
            jSONObject.putOpt("down_x", Float.toString(this.f13697n)).putOpt("down_y", Float.toString(this.f13690a)).putOpt("up_x", Float.toString(this.sp)).putOpt("up_y", Float.toString(this.f13701x)).putOpt("down_time", Long.valueOf(this.f13695i)).putOpt("up_time", Long.valueOf(this.f13693da)).putOpt("toolType", Integer.valueOf(this.sl)).putOpt("deviceId", Integer.valueOf(this.f13699t)).putOpt("source", Integer.valueOf(this.f13700u)).putOpt("density", Float.valueOf(this.yp)).putOpt("densityDpi", Integer.valueOf(this.f13702z)).putOpt("scaleDensity", Float.valueOf(this.f13696m)).putOpt("ft", jSONObject2).putOpt("click_area_type", this.rh).putOpt("areaType", this.my).putOpt("rectInfo", this.rl).putOpt("click_area_id", this.gt);
            int i11 = this.gu;
            if (i11 != -1) {
                jSONObject.putOpt("if_shake", Integer.valueOf(i11));
            }
            int i12 = this.gr;
            if (i12 != -1) {
                jSONObject.putOpt("if_twist", Integer.valueOf(i12));
            }
            int i13 = this.yv;
            if (i13 != -1) {
                jSONObject.putOpt("dpa_position", Integer.valueOf(i13)).putOpt("dpa_pid", this.zm);
            }
            if (this.f13692d) {
                jSONObject.put("referer", "directDownload");
            }
            jSONObject.putOpt("convert_type", Byte.valueOf(this.f13698p));
            byte b10 = this.md;
            if (b10 != -1) {
                jSONObject.putOpt("biz_type", Byte.valueOf(b10));
            }
            int i14 = this.f13694h;
            if (i14 != Integer.MIN_VALUE) {
                jSONObject.putOpt("fail_status", Integer.valueOf(i14));
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private i(c cVar) {
        this.gr = -1;
        this.yv = -1;
        this.md = (byte) -1;
        this.f13694h = Integer.MIN_VALUE;
        this.f13691c = cVar.sl;
        this.tt = cVar.f13712t;
        this.uj = cVar.f13713u;
        this.ve = cVar.f13706da;
        this.f13697n = cVar.f13708i;
        this.f13690a = cVar.f13714x;
        this.sp = cVar.sp;
        this.f13701x = cVar.f13703a;
        this.f13695i = cVar.f13710n;
        this.f13693da = cVar.uj;
        this.sl = cVar.yp;
        this.f13699t = cVar.f13715z;
        this.f13700u = cVar.f13709m;
        this.yp = cVar.f13704c;
        this.rh = cVar.my;
        this.my = cVar.gt;
        this.rl = cVar.qy;
        this.gt = cVar.rl;
        this.f13702z = cVar.tt;
        this.f13696m = cVar.ve;
        this.nu = cVar.rh;
        this.qy = cVar.nu;
        this.gu = cVar.gu;
        this.gr = cVar.gr;
        this.zm = cVar.zm;
        this.yv = cVar.yv;
        this.f13692d = cVar.f13711p;
        this.f13698p = cVar.md;
        this.md = cVar.f13707h;
        this.f13694h = cVar.f13705d;
    }
}
