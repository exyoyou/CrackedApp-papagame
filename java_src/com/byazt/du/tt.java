package com.byazt.du;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.xl.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 441, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13182a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public u f13184i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public double f13185n;
    public double sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f13186x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, ve> f13183c = new HashMap();
    public Map<String, ve> tt = new HashMap();
    public Map<String, ve> ve = new HashMap();
    public double uj = Math.random();

    @com.byazt.zqa.c(c = {0, 1, 441, 194})
    static class c implements Cloneable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f13187c;
        public boolean tt;
        public float ve;

        public Object clone() {
            try {
                return (c) super.clone();
            } catch (CloneNotSupportedException e10) {
                m.c(e10);
                return null;
            }
        }
    }

    /* JADX INFO: renamed from: com.byazt.du.tt$tt, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 441, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA})
    static class C0296tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f13188c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f13189n;
        public int tt;
        public double uj;
        public int ve;

        public static JSONObject c(C0296tt c0296tt) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("fontSize", c0296tt.f13188c);
                jSONObject.put("letterSpacing", c0296tt.tt);
                jSONObject.put("lineHeight", c0296tt.uj);
                jSONObject.put("maxWidth", c0296tt.f13189n);
                jSONObject.put("fontWeight", c0296tt.ve);
            } catch (JSONException e10) {
                m.c(e10);
            }
            return jSONObject;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 441, 519})
    static class ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f13190c;
        public float tt;

        public ve() {
        }

        public String toString() {
            return "UnitSize{width=" + this.f13190c + ", height=" + this.tt + '}';
        }

        public ve(float f10, float f11) {
            this.f13190c = f10;
            this.tt = f11;
        }
    }

    public tt(double d10, int i10, double d11, String str, u uVar) {
        this.f13185n = d10;
        this.f13182a = i10;
        this.sp = d11;
        this.f13186x = str;
        this.f13184i = uVar;
    }

    private ve a(com.byazt.aq.x xVar, float f10, float f11) {
        com.byazt.aq.a aVarN = xVar.da().n();
        float fRh = aVarN.rh();
        int iLt = aVarN.lt();
        double dPu = aVarN.pu();
        int iTk = aVarN.tk();
        boolean zIc = aVarN.ic();
        boolean zKp = aVarN.kp();
        int iHd = aVarN.hd();
        C0296tt c0296tt = new C0296tt();
        c0296tt.f13188c = fRh;
        c0296tt.tt = iLt;
        c0296tt.ve = iTk;
        c0296tt.uj = dPu;
        c0296tt.f13189n = f10;
        return c(xVar.da().tt(), c0296tt, zIc, zKp, iHd, xVar);
    }

    private ve n(com.byazt.aq.x xVar, float f10, float f11) {
        String str = xVar.ve() + "_" + f10 + "_" + f11;
        if (this.ve.containsKey(str)) {
            return this.ve.get(str);
        }
        ve veVarA = a(xVar, f10, f11);
        this.ve.put(str, veVarA);
        return veVarA;
    }

    public ve c(com.byazt.aq.x xVar, float f10, float f11) {
        float f12;
        if (TextUtils.isEmpty(xVar.da().tt()) && xVar.da().n().oz() == null) {
            return new ve(0.0f, 0.0f);
        }
        if (TextUtils.equals(xVar.da().getType(), "creative-playable-bait")) {
            return new ve(0.0f, 0.0f);
        }
        float fX = xVar.x();
        float fI = xVar.i();
        com.byazt.aq.a aVarN = xVar.da().n();
        String strMd = aVarN.md();
        String strP = aVarN.p();
        float fU = xVar.u();
        float fYp = xVar.yp();
        float fZ = xVar.z();
        float fM = xVar.m();
        if (TextUtils.equals(strMd, "fixed")) {
            f10 = Math.min(fX, f10);
            if (TextUtils.equals(strP, "auto")) {
                f12 = tt(xVar, f10 - fZ, f11 - fM).tt;
                fI = f12 + fM;
            }
        } else if (TextUtils.equals(strMd, "auto")) {
            ve veVarTt = tt(xVar, f10 - fZ, f11 - fM);
            f10 = veVarTt.f13190c + fZ;
            if (TextUtils.equals(strP, "auto")) {
                f12 = veVarTt.tt;
                fI = f12 + fM;
            }
        } else if (!TextUtils.equals(strMd, "flex")) {
            f10 = fX;
        } else if (TextUtils.equals(strP, "auto")) {
            f12 = tt(xVar, f10 - fZ, f11 - fM).tt;
            fI = f12 + fM;
        }
        if (TextUtils.equals(strP, "scale")) {
            float fRound = Math.round((f10 - fU) / fI) + fYp;
            if (fRound > f11) {
                f10 = Math.round((f11 - fYp) * fI) + fU;
            } else {
                f11 = fRound;
            }
        } else if (TextUtils.equals(strP, "fixed")) {
            f11 = Math.min(fI + fYp, f11);
        } else if (!TextUtils.equals(strP, "flex")) {
            f11 = fI;
        }
        ve veVar = new ve();
        veVar.f13190c = f10;
        veVar.tt = f11;
        return veVar;
    }

    public ve tt(com.byazt.aq.x xVar, float f10, float f11) {
        ve veVar = new ve();
        if (xVar.da().n() == null) {
            return veVar;
        }
        ve veVarN = n(xVar, f10, f11);
        float f12 = veVarN.f13190c;
        float f13 = veVarN.tt;
        veVar.f13190c = Math.min(f12, f10);
        veVar.tt = Math.min(f13, f11);
        return veVar;
    }

    public ve uj(com.byazt.aq.x xVar, float f10, float f11) {
        float fMin;
        ve veVar = new ve();
        float f12 = 0.0f;
        if (f11 <= 0.0f || f10 <= 0.0f) {
            veVar.f13190c = 0.0f;
            veVar.tt = 0.0f;
            return veVar;
        }
        if (xVar.rh()) {
            return c(xVar, f10, f11);
        }
        float fX = xVar.x();
        float fI = xVar.i();
        float fZ = xVar.z();
        float fM = xVar.m();
        com.byazt.aq.a aVarN = xVar.da().n();
        String strMd = aVarN.md();
        String strP = aVarN.p();
        float fMin2 = ((TextUtils.equals(strMd, "flex") || TextUtils.equals(strMd, "auto")) ? f10 : Math.min(fX, f10)) - fZ;
        if (TextUtils.equals(strP, "scale")) {
            fMin = Math.round(fMin2 / fI) + fM;
            if (fMin > f11) {
                fMin2 = Math.round((f11 - fM) * fI);
            }
        } else {
            fMin = (TextUtils.equals(strP, "auto") || TextUtils.equals(strP, "flex")) ? f11 : Math.min(fI, f11);
        }
        float f13 = fMin - fM;
        List<List<com.byazt.aq.x>> listNu = xVar.nu();
        Iterator<List<com.byazt.aq.x>> it2 = listNu.iterator();
        float fMax = 0.0f;
        float fMax2 = 0.0f;
        while (it2.hasNext()) {
            Iterator<List<com.byazt.aq.x>> it3 = it2;
            List<com.byazt.aq.x> next = it2.next();
            ve veVar2 = veVar;
            ve veVarTt = tt(next, fMin2, f13);
            if (tt(next)) {
                f12 += 1.0f;
            } else {
                fMax = Math.max(fMax, veVarTt.f13190c);
            }
            float f14 = f12;
            fMax2 = xVar.da().getType().equals("carousel") ? Math.max(xVar.i(), veVarTt.tt) : fMax2 + veVarTt.tt;
            veVar = veVar2;
            it2 = it3;
            f12 = f14;
        }
        ve veVar3 = veVar;
        if (TextUtils.equals(strMd, "auto")) {
            if (f12 == listNu.size()) {
                fMin2 = f10;
            } else {
                for (List<com.byazt.aq.x> list : listNu) {
                    ve(list);
                    tt(list, fMax, f13);
                }
                fMin2 = fMax;
            }
        }
        if (TextUtils.equals(strP, "auto")) {
            if (fMax2 <= f11) {
                f13 = fMax2;
            } else {
                c(listNu, fMin2, f13);
            }
        } else if ((TextUtils.equals(strP, "fixed") || TextUtils.equals(strP, "flex")) && f13 < fMax2) {
            c(listNu, fMin2, f13);
        }
        veVar3.f13190c = Math.min(fMin2 + fZ, f10);
        veVar3.tt = Math.min(f13 + fM, f11);
        return veVar3;
    }

    public ve ve(com.byazt.aq.x xVar, float f10, float f11) {
        if (xVar == null) {
            return null;
        }
        ve veVarC = c(xVar);
        if (veVarC != null && (veVarC.f13190c != 0.0f || veVarC.tt != 0.0f)) {
            return veVarC;
        }
        ve veVarUj = uj(xVar, f10, f11);
        c(xVar, veVarUj);
        return veVarUj;
    }

    private ve ve(List<com.byazt.aq.x> list, float f10, float f11) {
        float fMax;
        uj(list);
        ve veVar = new ve();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (com.byazt.aq.x xVar : list) {
            com.byazt.aq.a aVarN = xVar.da().n();
            if (aVarN.b() == 1 || aVarN.b() == 2) {
                arrayList.add(xVar);
            }
            if (aVarN.b() != 1 && aVarN.b() != 2) {
                arrayList2.add(xVar);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ve((com.byazt.aq.x) it2.next(), f10, f11);
        }
        if (arrayList2.size() <= 0) {
            return veVar;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator<com.byazt.aq.x> it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(Float.valueOf(ve(it3.next(), f10, f11).f13190c));
        }
        ArrayList arrayList4 = new ArrayList();
        int i10 = 0;
        while (true) {
            fMax = 0.0f;
            if (i10 >= arrayList2.size()) {
                break;
            }
            com.byazt.aq.x xVar2 = arrayList2.get(i10);
            String strMd = xVar2.da().n().md();
            float fX = xVar2.x();
            boolean zEquals = TextUtils.equals(strMd, "flex");
            if (TextUtils.equals(strMd, "auto")) {
                List<List<com.byazt.aq.x>> listNu = xVar2.nu();
                if (listNu == null || listNu.size() <= 0) {
                    zEquals = false;
                    break;
                }
                Iterator<List<com.byazt.aq.x>> it4 = listNu.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        zEquals = false;
                        break;
                    }
                    if (tt(it4.next())) {
                        zEquals = true;
                        break;
                    }
                }
            }
            c cVar = new c();
            if (!zEquals) {
                fX = ((Float) arrayList3.get(i10)).floatValue();
            }
            cVar.f13187c = fX;
            cVar.tt = !zEquals;
            if (zEquals) {
                fMax = ((Float) arrayList3.get(i10)).floatValue();
            }
            cVar.ve = fMax;
            arrayList4.add(cVar);
            i10++;
        }
        c(arrayList4, f10, arrayList2);
        List<c> listC = da.c(f10, arrayList4);
        float f12 = 0.0f;
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            f12 += listC.get(i11).f13187c;
            if (((Float) arrayList3.get(i11)).floatValue() != listC.get(i11).f13187c) {
                uj(arrayList2.get(i11));
            }
        }
        Iterator<com.byazt.aq.x> it5 = arrayList2.iterator();
        int i12 = 0;
        boolean z10 = false;
        while (it5.hasNext()) {
            i12++;
            if (!tt(it5.next())) {
                z10 = false;
                break;
            }
            if (i12 == arrayList2.size()) {
                z10 = true;
            }
        }
        fMax = z10 ? f11 : 0.0f;
        ArrayList arrayList5 = new ArrayList();
        for (int i13 = 0; i13 < arrayList2.size(); i13++) {
            com.byazt.aq.x xVar3 = arrayList2.get(i13);
            ve veVarVe = ve(xVar3, listC.get(i13).f13187c, f11);
            if (!tt(xVar3)) {
                fMax = Math.max(fMax, veVarVe.tt);
            }
            arrayList5.add(veVarVe);
        }
        ArrayList arrayList6 = new ArrayList();
        Iterator it6 = arrayList5.iterator();
        while (it6.hasNext()) {
            arrayList6.add(Float.valueOf(((ve) it6.next()).tt));
        }
        if (!z10) {
            for (int i14 = 0; i14 < arrayList2.size(); i14++) {
                com.byazt.aq.x xVar4 = arrayList2.get(i14);
                if (tt(xVar4) && ((Float) arrayList6.get(i14)).floatValue() != fMax) {
                    uj(xVar4);
                    ve(xVar4, listC.get(i14).f13187c, fMax);
                }
            }
        }
        veVar.f13190c = f12;
        veVar.tt = fMax;
        return veVar;
    }

    private boolean tt(List<com.byazt.aq.x> list) {
        boolean z10;
        List<List<com.byazt.aq.x>> listNu;
        Iterator<com.byazt.aq.x> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            if (TextUtils.equals(it2.next().da().n().md(), "flex")) {
                z10 = true;
                break;
            }
        }
        if (z10) {
            return true;
        }
        while (true) {
            boolean z11 = false;
            for (com.byazt.aq.x xVar : list) {
                if (TextUtils.equals(xVar.da().n().md(), "auto") && (listNu = xVar.nu()) != null) {
                    Iterator<List<com.byazt.aq.x>> it3 = listNu.iterator();
                    int i10 = 0;
                    while (true) {
                        if (it3.hasNext()) {
                            List<com.byazt.aq.x> next = it3.next();
                            i10++;
                            if (tt(next)) {
                                if (i10 == next.size()) {
                                    z11 = true;
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            return z11;
        }
    }

    private String n(com.byazt.aq.x xVar) {
        return xVar.ve();
    }

    private ve tt(List<com.byazt.aq.x> list, float f10, float f11) {
        ve veVarC = c(list);
        if (veVarC != null && (veVarC.f13190c != 0.0f || veVarC.tt != 0.0f)) {
            return veVarC;
        }
        ve veVarVe = ve(list, f10, f11);
        c(list, veVarVe);
        return veVarVe;
    }

    private boolean tt(com.byazt.aq.x xVar) {
        if (xVar == null) {
            return false;
        }
        if (TextUtils.equals(xVar.da().n().p(), "flex")) {
            return true;
        }
        return ve(xVar);
    }

    private ve c(String str, C0296tt c0296tt, boolean z10, boolean z11, int i10, com.byazt.aq.x xVar) {
        return sl.c(str, xVar.da().getType(), C0296tt.c(c0296tt).toString(), z10, z11, i10, xVar, this.f13185n, this.f13182a, this.sp, this.f13186x, this.f13184i);
    }

    private void c(List<List<com.byazt.aq.x>> list, float f10, float f11) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<List<com.byazt.aq.x>> it2 = list.iterator();
        boolean z10 = false;
        while (it2.hasNext()) {
            if (c(it2.next(), false)) {
                z10 = true;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (List<com.byazt.aq.x> list2 : list) {
            c cVar = new c();
            boolean zC = c(list2, !z10);
            cVar.f13187c = zC ? 1.0f : tt(list2, f10, f11).tt;
            cVar.tt = !zC;
            arrayList.add(cVar);
        }
        List<c> listC = da.c(f11, arrayList);
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (((c) arrayList.get(i10)).f13187c != listC.get(i10).f13187c) {
                List<com.byazt.aq.x> list3 = list.get(i10);
                ve(list3);
                tt(list3, f10, listC.get(i10).f13187c);
            }
        }
    }

    private void uj(com.byazt.aq.x xVar) {
        this.f13183c.remove(n(xVar));
        List<List<com.byazt.aq.x>> listNu = xVar.nu();
        if (listNu == null || listNu.size() <= 0) {
            return;
        }
        Iterator<List<com.byazt.aq.x>> it2 = listNu.iterator();
        while (it2.hasNext()) {
            ve(it2.next());
        }
    }

    private String uj(List<com.byazt.aq.x> list) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String strVe = list.get(i10).ve();
            if (i10 < list.size() - 1) {
                sb2.append(strVe);
                sb2.append("-");
            } else {
                sb2.append(strVe);
            }
        }
        return sb2.toString();
    }

    private boolean c(List<com.byazt.aq.x> list, boolean z10) {
        boolean z11;
        Iterator<com.byazt.aq.x> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z11 = false;
                break;
            }
            com.byazt.aq.x next = it2.next();
            com.byazt.aq.a aVarN = next.da().n();
            String strP = aVarN.p();
            if (TextUtils.equals(strP, "flex") || (z10 && ((TextUtils.equals(aVarN.md(), "flex") && TextUtils.equals(aVarN.p(), "scale") && com.byazt.aq.n.f11715c.get(next.da().getType()).intValue() == 7) || TextUtils.equals(strP, "flex")))) {
                z11 = true;
                break;
            }
        }
        if (z11) {
            return true;
        }
        Iterator<com.byazt.aq.x> it3 = list.iterator();
        while (it3.hasNext()) {
            if (ve(it3.next())) {
                return true;
            }
        }
        return false;
    }

    private boolean ve(com.byazt.aq.x xVar) {
        List<List<com.byazt.aq.x>> listNu;
        if (!xVar.rh() && TextUtils.equals(xVar.da().n().p(), "auto") && (listNu = xVar.nu()) != null && listNu.size() > 0) {
            if (listNu.size() == 1) {
                Iterator<com.byazt.aq.x> it2 = listNu.get(0).iterator();
                while (it2.hasNext()) {
                    if (!tt(it2.next())) {
                        return false;
                    }
                }
                return true;
            }
            Iterator<List<com.byazt.aq.x>> it3 = listNu.iterator();
            while (it3.hasNext()) {
                if (c(it3.next(), true)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void c(List<c> list, float f10, List<com.byazt.aq.x> list2) {
        float f11 = 0.0f;
        for (c cVar : list) {
            if (cVar.tt) {
                f11 += cVar.f13187c;
            }
        }
        if (f11 > f10) {
            int i10 = 0;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                if (list.get(i11).tt && list2.get(i11).qy()) {
                    i10++;
                }
            }
            if (i10 > 0) {
                float fCeil = (float) (Math.ceil(((f11 - f10) / i10) * 1000.0f) / 1000.0d);
                for (int i12 = 0; i12 < list2.size(); i12++) {
                    c cVar2 = list.get(i12);
                    if (cVar2.tt && list2.get(i12).qy()) {
                        cVar2.f13187c -= fCeil;
                    }
                }
            }
        }
    }

    private void ve(List<com.byazt.aq.x> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.tt.remove(uj(list));
        Iterator<com.byazt.aq.x> it2 = list.iterator();
        while (it2.hasNext()) {
            uj(it2.next());
        }
    }

    public void c() {
        this.ve.clear();
        this.f13183c.clear();
        this.tt.clear();
    }

    public ve c(com.byazt.aq.x xVar) {
        return this.f13183c.get(n(xVar));
    }

    public ve c(List<com.byazt.aq.x> list) {
        return this.tt.get(uj(list));
    }

    private void c(com.byazt.aq.x xVar, ve veVar) {
        this.f13183c.put(n(xVar), veVar);
    }

    private void c(List<com.byazt.aq.x> list, ve veVar) {
        this.tt.put(uj(list), veVar);
    }
}
