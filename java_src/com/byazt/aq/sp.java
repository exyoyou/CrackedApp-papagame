package com.byazt.aq;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.core.view.GravityCompat;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.du.sl;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1950, 91})
public class sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public n f11718a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11719c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a f11720n;
    public String sp;
    public String tt;
    public JSONObject uj;
    public String ve;

    public sp(n nVar) {
        this.f11718a = nVar;
        this.f11719c = nVar.c();
        this.tt = nVar.tt();
        this.ve = nVar.ve();
        this.uj = nVar.n().r();
        this.sp = nVar.uj();
        if (com.byazt.sr.uj.tt() == 1) {
            this.f11720n = nVar.sp();
        } else {
            this.f11720n = nVar.n();
        }
        if (com.byazt.sr.uj.c()) {
            this.f11720n = nVar.n();
        }
    }

    private boolean hj() {
        return (com.byazt.sr.uj.c() && (this.f11718a.getType().contains("logo-union") || this.f11718a.getType().contains("logounion") || this.f11718a.getType().contains("logoad"))) || "logo-union".equals(this.f11718a.getType()) || "logounion".equals(this.f11718a.getType()) || "logoad".equals(this.f11718a.getType());
    }

    private boolean xd() {
        if (com.byazt.sr.uj.c()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.tt) && this.tt.contains("adx:")) || sl.tt();
    }

    public String a() {
        if (this.f11719c == 0) {
            return !TextUtils.isEmpty(this.tt) ? this.tt : this.uj.optString(com.byazt.or.x.uj(com.byazt.sr.uj.getContext()));
        }
        return "";
    }

    public String aw() {
        return this.f11720n.nb();
    }

    public boolean b() {
        return this.f11720n.eo();
    }

    public int bm() {
        return this.f11720n.ij();
    }

    public int bx() {
        return this.f11720n.j();
    }

    public int c() {
        return (int) this.f11720n.yp();
    }

    public int cu() {
        return this.f11720n.i();
    }

    public int d() {
        return this.f11720n.ve();
    }

    public String da() {
        int i10 = this.f11719c;
        return (i10 == 2 || i10 == 13) ? this.tt : "";
    }

    public int dz() {
        return this.f11720n.nt();
    }

    public int eo() {
        return this.f11720n.tt();
    }

    public String f() {
        return this.f11719c == 29 ? this.ve : "";
    }

    public boolean g() {
        return this.f11720n.gk();
    }

    public String gr() {
        return this.f11720n.pf();
    }

    public boolean gt() {
        return this.f11720n.is();
    }

    public int gu() {
        return this.f11720n.hd();
    }

    public double h() {
        return this.f11720n.x();
    }

    public int hd() {
        return this.f11720n.sp();
    }

    public int i() {
        int iX = x();
        if (iX == 4) {
            return 17;
        }
        return iX == 3 ? GravityCompat.END : GravityCompat.START;
    }

    public boolean ic() {
        return this.f11720n.mm();
    }

    public List<String> ir() {
        return this.f11720n.cl();
    }

    public int iu() {
        return this.f11720n.gy();
    }

    public int j() {
        return this.f11720n.gx();
    }

    public int kk() {
        return this.f11720n.zb();
    }

    public boolean kp() {
        return this.f11720n.u();
    }

    public int l() {
        return this.f11720n.pn();
    }

    public int lo() {
        return this.f11720n.xd();
    }

    public int lr() {
        return this.f11720n.ej();
    }

    public String lt() {
        return this.f11720n.h();
    }

    public int m() {
        return c(this.f11720n.yv());
    }

    public boolean ma() {
        return this.f11720n.yo();
    }

    public int md() {
        return c(this.f11720n.gu());
    }

    public int my() {
        return this.f11720n.jt();
    }

    public float n() {
        return this.f11720n.rh();
    }

    public String nb() {
        return this.f11720n.bx();
    }

    public float nu() {
        return this.f11720n.t();
    }

    public int or() {
        return this.f11720n.uj();
    }

    public double os() {
        return this.f11720n.qp();
    }

    public int oz() {
        return this.f11720n.kz();
    }

    public int p() {
        String strPf = this.f11720n.pf();
        if ("skip-with-time-skip-btn".equals(this.f11718a.getType()) || "skip".equals(this.f11718a.getType()) || TextUtils.equals("skip-with-countdowns-skip-btn", this.f11718a.getType())) {
            return 6;
        }
        if (!"skip-with-time-countdown".equals(this.f11718a.getType()) && !"skip-with-time".equals(this.f11718a.getType())) {
            if (this.f11719c == 10 && TextUtils.equals(this.f11720n.bx(), "click")) {
                return 5;
            }
            if (hj() && xd()) {
                return 0;
            }
            if (hj()) {
                return 7;
            }
            if ("feedback-dislike".equals(this.f11718a.getType())) {
                return 3;
            }
            if (!TextUtils.isEmpty(strPf) && !strPf.equals("none")) {
                if (strPf.equals("video") || (this.f11718a.c() == 7 && TextUtils.equals(strPf, "normal"))) {
                    return (com.byazt.sr.uj.c() && this.f11718a.n() != null && this.f11718a.n().nl()) ? 11 : 4;
                }
                if (strPf.equals("normal")) {
                    return 1;
                }
                return (strPf.equals("creative") || "slide".equals(this.f11720n.bx())) ? 2 : 0;
            }
        }
        return 0;
    }

    public boolean pf() {
        return this.f11720n.y();
    }

    public boolean pu() {
        return this.f11720n.yo();
    }

    public String q() {
        return this.f11720n.d();
    }

    public String qp() {
        return this.f11720n.da();
    }

    public boolean qy() {
        return this.f11720n.ic();
    }

    public String r() {
        return this.f11720n.hg();
    }

    public int rh() {
        return this.f11720n.az();
    }

    public String rl() {
        return this.f11720n.gr();
    }

    public String s() {
        return this.f11720n.hq();
    }

    public String sl() {
        int i10 = this.f11719c;
        return (i10 == 1 || i10 == 29) ? this.tt : "";
    }

    public int sp() {
        return c(this.f11720n.qy());
    }

    public int sv() {
        return this.f11720n.iu();
    }

    public String t() {
        return this.sp;
    }

    public String tk() {
        return this.f11720n.pl();
    }

    public String to() {
        return this.f11720n.vp();
    }

    public int tt() {
        return (int) this.f11720n.nu();
    }

    public int tx() {
        return this.f11720n.or();
    }

    public double u() {
        if (this.f11719c == 11) {
            try {
                double d10 = Double.parseDouble(this.tt);
                return !com.byazt.sr.uj.c() ? (int) d10 : d10;
            } catch (NumberFormatException unused) {
            }
        }
        return -1.0d;
    }

    public int uj() {
        return (int) this.f11720n.m();
    }

    public double v() {
        return this.f11720n.cu();
    }

    public int ve() {
        return (int) this.f11720n.z();
    }

    public int x() {
        String strRl = this.f11720n.rl();
        if (ScrollClickView.DIR_LEFT.equals(strRl)) {
            return 17;
        }
        if ("center".equals(strRl)) {
            return 4;
        }
        return ScrollClickView.DIR_RIGHT.equals(strRl) ? 3 : 2;
    }

    public boolean y() {
        return this.f11720n.ny();
    }

    public String yf() {
        return this.f11720n.zm();
    }

    public double yp() {
        return this.f11720n.my();
    }

    public long yv() {
        return this.f11720n.nc();
    }

    public float z() {
        return this.f11720n.sl();
    }

    public int zb() {
        return this.f11720n.n();
    }

    public String zm() {
        return this.f11720n.iy();
    }

    public static float[] tt(String str) {
        String[] strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
        return (strArrSplit == null || strArrSplit.length != 4) ? new float[]{0.0f, 0.0f, 0.0f, 0.0f} : new float[]{Float.parseFloat(strArrSplit[0]), Float.parseFloat(strArrSplit[1]), Float.parseFloat(strArrSplit[2]), Float.parseFloat(strArrSplit[3])};
    }

    public void c(float f10) {
        this.f11720n.c(f10);
    }

    public static int c(String str) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str)) {
            return -16777216;
        }
        if (str.equals("transparent")) {
            return 0;
        }
        if (str.charAt(0) == '#' && str.length() == 7) {
            return Color.parseColor(str);
        }
        if (str.charAt(0) == '#' && str.length() == 9) {
            return Color.parseColor(str);
        }
        if (str.startsWith("rgba") && (strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",")) != null) {
            try {
                if (strArrSplit.length == 4) {
                    return (((int) ((Float.parseFloat(strArrSplit[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(strArrSplit[0])) << 16) | (((int) Float.parseFloat(strArrSplit[1])) << 8) | ((int) Float.parseFloat(strArrSplit[2])) | 0;
                }
            } catch (NumberFormatException unused) {
                return 0;
            }
        }
        return -16777216;
    }

    public boolean c(int i10) {
        n nVar = this.f11718a;
        if (nVar == null) {
            return false;
        }
        if (i10 == 1) {
            this.f11720n = nVar.sp();
        } else {
            this.f11720n = nVar.n();
        }
        return this.f11720n != null;
    }
}
