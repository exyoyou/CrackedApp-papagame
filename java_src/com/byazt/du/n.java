package com.byazt.du;

import android.text.TextUtils;
import com.byazt.xl.u;
import com.join.mgps.Util.o0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 441, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.aq.tt f13177c;
    public tt tt;
    public c uj;
    public com.byazt.aq.x ve;

    @com.byazt.zqa.c(c = {0, 1, 441, 151})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f13178c;
        public float tt;
        public float ve;
    }

    public n(double d10, int i10, double d11, String str, u uVar) {
        this.tt = new tt(d10, i10, d11, str, uVar);
    }

    public void c(c cVar) {
        this.uj = cVar;
    }

    public void c() {
        this.tt.c();
    }

    public void c(com.byazt.aq.x xVar, float f10, float f11) {
        if (xVar != null) {
            this.ve = xVar;
        }
        com.byazt.aq.x xVar2 = this.ve;
        float fX = xVar2.x();
        float fI = xVar2.i();
        float f12 = TextUtils.equals(xVar2.da().n().p(), "fixed") ? fI : 65536.0f;
        this.tt.c();
        this.tt.ve(xVar2, fX, f12);
        tt.ve veVarC = this.tt.c(xVar2);
        com.byazt.aq.tt ttVar = new com.byazt.aq.tt();
        ttVar.f11722c = f10;
        ttVar.tt = f11;
        if (veVarC != null) {
            fX = veVarC.f13190c;
        }
        ttVar.ve = fX;
        if (veVarC != null) {
            fI = veVarC.tt;
        }
        ttVar.uj = fI;
        ttVar.f11725n = "root";
        ttVar.f11724i = 1280.0f;
        ttVar.f11721a = xVar2;
        xVar2.ve(f10);
        ttVar.f11721a.uj(ttVar.tt);
        ttVar.f11721a.n(ttVar.ve);
        ttVar.f11721a.a(ttVar.uj);
        com.byazt.aq.tt ttVarC = c(ttVar, 0.0f);
        this.f13177c = ttVarC;
        c(ttVarC);
    }

    public void c(com.byazt.aq.tt ttVar) {
        if (ttVar == null) {
            return;
        }
        ttVar.f11721a.da().getType();
        List<List<com.byazt.aq.tt>> list = ttVar.sp;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (List<com.byazt.aq.tt> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                Iterator<com.byazt.aq.tt> it2 = list2.iterator();
                while (it2.hasNext()) {
                    c(it2.next());
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:137:0x0320  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:87:0x01f1  */
    public com.byazt.aq.tt c(com.byazt.aq.tt ttVar, float f10) {
        float fC;
        float fC2;
        float f11;
        com.byazt.aq.a aVar;
        float fC3;
        float fC4;
        com.byazt.aq.tt ttVar2;
        com.byazt.aq.i iVarC;
        float f12;
        com.byazt.aq.i iVar;
        tt.ve veVarC;
        tt.ve veVarC2;
        com.byazt.aq.tt ttVar3 = ttVar;
        com.byazt.aq.x xVar = ttVar3.f11721a;
        if (xVar == null) {
            return ttVar3;
        }
        xVar.rl();
        List<List<com.byazt.aq.x>> listNu = xVar.nu();
        if (listNu == null || listNu.size() <= 0) {
            return ttVar3;
        }
        com.byazt.aq.a aVarN = xVar.da().n();
        float fNu = aVarN.nu();
        float fM = aVarN.m();
        float fYp = aVarN.yp();
        float fZ = aVarN.z();
        float fT = aVarN.t();
        String strSv = aVarN.sv();
        String strAw = aVarN.aw();
        float f13 = ttVar3.f11722c + fZ;
        float f14 = ttVar3.tt + fNu;
        float f15 = fT * 2.0f;
        float f16 = ((ttVar3.ve - fZ) - fM) - f15;
        float f17 = ((ttVar3.uj - fNu) - fYp) - f15;
        com.byazt.aq.i iVar2 = new com.byazt.aq.i(f13, f14);
        if (ttVar3.sp == null) {
            ttVar3.sp = new ArrayList();
        }
        Iterator<List<com.byazt.aq.x>> it2 = listNu.iterator();
        float f18 = 0.0f;
        while (it2.hasNext()) {
            tt.ve veVarC3 = this.tt.c(it2.next());
            if (veVarC3 != null) {
                f18 += veVarC3.tt;
            }
        }
        String str = "space-between";
        String str2 = "space-around";
        if (f18 >= f17) {
            fC = 0.0f;
            fC2 = 0.0f;
        } else {
            if (TextUtils.equals(strAw, "center")) {
                fC = (f17 - f18) / 2.0f;
            } else if (TextUtils.equals(strAw, "flex-end")) {
                fC = f17 - f18;
            } else if (TextUtils.equals(strAw, "space-around")) {
                fC = da.c((f17 - f18) / (listNu.size() + 1));
                fC2 = fC;
            } else if (!TextUtils.equals(strAw, "space-between") || listNu.size() <= 1) {
                fC = 0.0f;
            } else {
                fC2 = da.c((f17 - f18) / (listNu.size() - 1));
                fC = 0.0f;
            }
            fC2 = 0.0f;
        }
        iVar2.tt += fC;
        float f19 = f10;
        int i10 = 0;
        while (i10 < listNu.size()) {
            List<com.byazt.aq.x> list = listNu.get(i10);
            int i11 = i10 + 1;
            List<List<com.byazt.aq.x>> list2 = listNu;
            if (i11 >= ttVar3.sp.size()) {
                int size = (i11 - ttVar3.sp.size()) + 1;
                int i12 = 0;
                while (i12 < size) {
                    ttVar3.sp.add(new ArrayList());
                    i12++;
                    size = size;
                    fC2 = fC2;
                }
                f11 = fC2;
            } else {
                f11 = fC2;
            }
            Iterator<com.byazt.aq.x> it3 = list.iterator();
            float f20 = 0.0f;
            while (true) {
                aVar = aVarN;
                if (!it3.hasNext()) {
                    break;
                }
                com.byazt.aq.x next = it3.next();
                com.byazt.aq.a aVarN2 = next.da().n();
                String strMd = aVarN2.md();
                Iterator<com.byazt.aq.x> it4 = it3;
                int iB = aVarN2.b();
                if (!TextUtils.equals(strMd, "flex") && iB != 1 && iB != 2 && (veVarC2 = this.tt.c(next)) != null) {
                    f20 += veVarC2.f13190c;
                }
                aVarN = aVar;
                it3 = it4;
            }
            float fMax = Math.max(f16 - f20, 0.0f);
            Iterator<com.byazt.aq.x> it5 = list.iterator();
            float f21 = 0.0f;
            while (it5.hasNext()) {
                com.byazt.aq.x next2 = it5.next();
                com.byazt.aq.a aVarN3 = next2.da().n();
                Iterator<com.byazt.aq.x> it6 = it5;
                if (aVarN3.b() != 1 && aVarN3.b() != 2 && (veVarC = this.tt.c(next2)) != null) {
                    f21 += veVarC.f13190c;
                }
                it5 = it6;
            }
            if (f21 >= f16) {
                fC3 = 0.0f;
                fC4 = 0.0f;
            } else {
                if (TextUtils.equals(strSv, "center")) {
                    fC3 = (f16 - f21) / 2.0f;
                } else if (TextUtils.equals(strSv, "flex-end")) {
                    fC3 = f16 - f21;
                } else if (TextUtils.equals(strSv, str2)) {
                    fC3 = da.c((f16 - f21) / (list.size() + 1));
                    fC4 = fC3;
                } else if (!TextUtils.equals(strSv, str) || list.size() <= 1) {
                    fC3 = 0.0f;
                } else {
                    fC4 = da.c((f16 - f21) / (list.size() - 1.0f));
                    fC3 = 0.0f;
                }
                fC4 = 0.0f;
            }
            iVar2.f11714c += fC3;
            Iterator<com.byazt.aq.x> it7 = list.iterator();
            float fMax2 = 0.0f;
            while (it7.hasNext()) {
                com.byazt.aq.x next3 = it7.next();
                Iterator<com.byazt.aq.x> it8 = it7;
                float f22 = this.tt.c(next3) != null ? this.tt.c(next3).tt : 0.0f;
                com.byazt.aq.a aVarN4 = next3.da().n();
                String str3 = str;
                fMax2 = Math.max(fMax2, (aVarN4.b() == 1 || aVarN4.b() == 2) ? 0.0f : f22);
                it7 = it8;
                str = str3;
            }
            String str4 = str;
            Iterator<com.byazt.aq.x> it9 = list.iterator();
            f19 = f19;
            while (it9.hasNext()) {
                com.byazt.aq.x next4 = it9.next();
                Iterator<com.byazt.aq.x> it10 = it9;
                tt.ve veVarC4 = this.tt.c(next4);
                String str5 = str2;
                com.byazt.aq.a aVarN5 = next4.da().n();
                String str6 = strSv;
                float fBm = aVarN5.bm();
                float f23 = f19;
                float fLo = aVarN5.lo();
                float f24 = f16;
                float fLr = aVarN5.lr();
                float f25 = fC4;
                float fL = aVarN5.l();
                com.byazt.aq.i iVar3 = iVar2;
                float f26 = veVarC4 == null ? 0.0f : veVarC4.f13190c;
                float f27 = veVarC4 == null ? 0.0f : veVarC4.tt;
                com.byazt.aq.x xVar2 = xVar;
                float f28 = TextUtils.equals(xVar.ve(), "root") ? i11 : f23;
                int i13 = i11;
                if (aVarN5.b() == 1) {
                    ttVar2 = ttVar;
                    iVarC = c(ttVar2, aVarN5, (f26 - fLo) - fL, (f27 - fBm) - fLr);
                } else {
                    ttVar2 = ttVar;
                    iVarC = iVar3;
                }
                com.byazt.aq.i iVarC2 = aVarN5.b() == 2 ? c(aVarN5, this.tt.c(this.ve), new tt.ve((f26 - fLo) - fL, (f27 - fBm) - fLr)) : iVarC;
                String strIr = aVar.ir();
                if (fMax2 <= f27 || TextUtils.equals(strIr, "flex-start")) {
                    f12 = 0.0f;
                } else {
                    strIr.hashCode();
                    if (strIr.equals("center")) {
                        f12 = (fMax2 - f27) / 2.0f;
                    } else if (strIr.equals("flex-end")) {
                        f12 = fMax2 - f27;
                    } else {
                        f12 = 0.0f;
                    }
                }
                com.byazt.aq.tt ttVar4 = new com.byazt.aq.tt();
                ttVar4.f11722c = iVarC2.f11714c + fL;
                ttVar4.tt = iVarC2.tt + fBm + f12;
                ttVar4.ve = (f26 - fLo) - fL;
                ttVar4.uj = (f27 - fBm) - fLr;
                ttVar4.f11725n = ttVar2.f11725n + o0.f49827a + next4.ve();
                ttVar4.f11726x = ttVar2;
                ttVar4.f11721a = next4;
                fMax = fMax;
                ttVar4.f11724i = fMax;
                List<com.byazt.aq.x> list3 = list;
                ttVar4.f11723da = list3;
                next4.ve(ttVar4.f11722c);
                ttVar4.f11721a.uj(ttVar4.tt);
                ttVar4.f11721a.n(ttVar4.ve);
                ttVar4.f11721a.a(ttVar4.uj);
                float f29 = f28;
                ttVar2.sp.get(i13).add(c(ttVar4, f29));
                if (aVarN5.b() == 1) {
                    iVar = iVar3;
                } else if (aVarN5.b() != 2) {
                    iVar = iVar3;
                    iVar.f11714c += f26 + f25;
                } else {
                    iVar = iVar3;
                }
                list = list3;
                f19 = f29;
                iVar2 = iVar;
                i11 = i13;
                strSv = str6;
                str2 = str5;
                f16 = f24;
                fC4 = f25;
                xVar = xVar2;
                it9 = it10;
            }
            com.byazt.aq.i iVar4 = iVar2;
            iVar4.f11714c = f13;
            iVar4.tt += fMax2 + f11;
            ttVar3 = ttVar;
            i10 = i11;
            strSv = strSv;
            listNu = list2;
            aVarN = aVar;
            fC2 = f11;
            str = str4;
            xVar = xVar;
        }
        return ttVar3;
    }

    private com.byazt.aq.i c(com.byazt.aq.a aVar, tt.ve veVar, tt.ve veVar2) {
        float fDz = aVar.dz();
        float fYf = aVar.yf();
        float fMa = aVar.ma();
        float f10 = aVar.f();
        boolean zKk = aVar.kk();
        boolean zTx = aVar.tx();
        boolean zV = aVar.v();
        boolean zOs = aVar.os();
        if (!zKk) {
            if (zTx) {
                float f11 = this.uj.f13178c;
                fDz = ((f11 != 0.0f ? Math.min(f11, veVar.f13190c) : veVar.f13190c) - fMa) - veVar2.f13190c;
            } else {
                fDz = 0.0f;
            }
        }
        if (!zV) {
            if (zOs) {
                float f12 = this.uj.tt;
                if (f12 == 0.0f) {
                    f12 = veVar.tt;
                }
                fYf = (f12 - f10) - veVar2.tt;
            } else {
                fYf = 0.0f;
            }
        }
        return new com.byazt.aq.i(fDz, fYf);
    }

    private com.byazt.aq.i c(com.byazt.aq.tt ttVar, com.byazt.aq.a aVar, float f10, float f11) {
        float f12;
        float f13;
        float f14 = ttVar.f11722c;
        float f15 = ttVar.tt;
        float fDz = aVar.dz();
        float fYf = aVar.yf();
        float fMa = aVar.ma();
        float f16 = aVar.f();
        boolean zKk = aVar.kk();
        boolean zTx = aVar.tx();
        boolean zV = aVar.v();
        boolean zOs = aVar.os();
        String strQ = aVar.q();
        float f17 = ttVar.ve;
        float f18 = ttVar.uj;
        if (TextUtils.equals(strQ, "0")) {
            if (zKk) {
                f14 = ttVar.f11722c + fDz;
            } else if (zTx) {
                f14 = ((ttVar.f11722c + f17) - fMa) - f10;
            }
            if (zV) {
                f13 = ttVar.tt;
                f15 = f13 + fYf;
            } else if (zOs) {
                f12 = ttVar.tt;
                f15 = ((f12 + f18) - f16) - f11;
            }
        } else if (TextUtils.equals(strQ, "1")) {
            f14 = ttVar.f11722c + ((f17 - f10) / 2.0f);
            if (zV) {
                f13 = ttVar.tt;
                f15 = f13 + fYf;
            } else if (zOs) {
                f12 = ttVar.tt;
                f15 = ((f12 + f18) - f16) - f11;
            }
        } else if (TextUtils.equals(strQ, "2")) {
            f15 = ttVar.tt + ((f18 - f11) / 2.0f);
            if (zKk) {
                f14 = ttVar.f11722c + fDz;
            } else if (zTx) {
                f14 = ((ttVar.f11722c + f17) - fMa) - f10;
            }
        } else if (TextUtils.equals(strQ, "3")) {
            f14 = ttVar.f11722c + ((f17 - f10) / 2.0f);
            f15 = ttVar.tt + ((f18 - f11) / 2.0f);
        }
        return new com.byazt.aq.i(f14, f15);
    }
}
