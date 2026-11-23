package com.byazt.lu;

import android.os.Bundle;
import com.byazt.ds.i;
import com.byazt.tv.x;
import com.byazt.yv.da;
import com.byazt.yv.u;
import com.haima.hmcp.proto.GSSDK;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_L1_VALUE, 34})
public class a extends tt {
    public static final long[] tt = {60000};
    public boolean uj;
    public long ve;

    public a(uj ujVar) {
        super(ujVar);
        this.uj = true;
    }

    public void c(boolean z10) {
        this.uj = z10;
    }

    @Override // com.byazt.lu.tt
    public long[] tt() {
        return tt;
    }

    @Override // com.byazt.lu.tt
    public String uj() {
        return "s";
    }

    @Override // com.byazt.lu.tt
    public boolean ve() {
        Bundle bundleC;
        long jCurrentTimeMillis = System.currentTimeMillis();
        sp spVarA = this.f16785c.a();
        if (spVarA != null && (bundleC = spVarA.c(jCurrentTimeMillis, 50000L)) != null) {
            com.byazt.gj.c.c("play_session", bundleC, 1);
            com.byazt.gj.c.tt();
        }
        com.byazt.tv.tt ttVarTt = this.f16785c.tt();
        i iVarUj = this.f16785c.uj();
        if (iVarUj.t() != 0) {
            JSONObject jSONObjectVe = u.ve(iVarUj.c());
            if (jSONObjectVe != null) {
                c(ttVarTt.c(jSONObjectVe));
                this.ve = System.currentTimeMillis();
                return true;
            }
            da.tt((Throwable) null);
        }
        return false;
    }

    @Override // com.byazt.lu.tt
    public long c() {
        long jGr = this.f16785c.ve().gr();
        if (jGr > 60000 || jGr <= 0) {
            jGr = 60000;
        }
        tt[0] = jGr;
        return this.ve + jGr;
    }

    private void c(ArrayList<x> arrayList) {
        int iC;
        com.byazt.tv.tt ttVarTt = this.f16785c.tt();
        ArrayList<x> arrayList2 = new ArrayList<>();
        ArrayList<x> arrayList3 = new ArrayList<>();
        com.byazt.ds.x xVarVe = this.f16785c.ve();
        ArrayList<x> arrayList4 = new ArrayList();
        if (!arrayList.isEmpty()) {
            arrayList4.addAll(arrayList);
        }
        ArrayList<x> arrayListC = ttVarTt.c();
        if (!arrayListC.isEmpty()) {
            arrayList4.addAll(arrayListC);
        }
        if (arrayList4.size() > 0) {
            for (x xVar : arrayList4) {
                byte[] bArr = xVar.f20462t;
                if (bArr != null && bArr.length > 0) {
                    if (this.uj) {
                        uj ujVar = this.f16785c;
                        iC = com.byazt.mp.c.c(com.byazt.mp.tt.c(ujVar, ujVar.getContext(), this.f16785c.uj().c()), xVar.f20462t, xVarVe);
                    } else {
                        iC = 200;
                    }
                    if (com.byazt.mp.c.c(iC)) {
                        if (!arrayList.contains(xVar)) {
                            break;
                        }
                        xVar.yp = iC;
                        arrayList3.add(xVar);
                        break;
                    }
                    if (iC == 200) {
                        arrayList2.add(xVar);
                    } else {
                        xVar.yp = iC;
                        arrayList3.add(xVar);
                    }
                } else {
                    arrayList2.add(xVar);
                }
            }
            if (arrayList2.size() > 0 || arrayList3.size() > 0) {
                ttVarTt.setResult(arrayList2, arrayList3, arrayList);
            }
            da.uj(uj() + " " + arrayList2.size() + " " + arrayList4.size(), null);
        }
    }
}
