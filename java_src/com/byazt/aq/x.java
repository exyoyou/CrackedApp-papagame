package com.byazt.aq;

import android.text.TextUtils;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.sigmob.sdk.base.mta.PointType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1950, 71})
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f11730a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f11731c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public List<x> f11732da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public n f11733i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f11735n;
    public x sl;
    public float sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public List<List<x>> f11736t;
    public float tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f11737u;
    public float uj;
    public float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f11738x;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Map<String, String> f11739z = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Map<Integer, String> f11734m = new HashMap();

    public float a() {
        return this.tt;
    }

    public String c() {
        return this.f11737u;
    }

    public n da() {
        return this.f11733i;
    }

    public boolean gr() {
        return this.f11733i.n().yf() < 0 || this.f11733i.n().f() < 0 || this.f11733i.n().dz() < 0 || this.f11733i.n().ma() < 0;
    }

    public Map<String, String> gt() {
        return this.f11739z;
    }

    public String gu() {
        return this.f11733i.n().gu();
    }

    public float i() {
        return this.sp;
    }

    public float m() {
        a aVarN = this.f11733i.n();
        return yp() + aVarN.nu() + aVarN.yp() + (aVarN.t() * 2.0f);
    }

    public boolean my() {
        return this.yp;
    }

    public float n() {
        return this.f11735n;
    }

    public List<List<x>> nu() {
        return this.f11736t;
    }

    public boolean qy() {
        return TextUtils.equals(this.f11733i.n().md(), "flex");
    }

    public boolean rh() {
        List<x> list = this.f11732da;
        return list == null || list.size() <= 0;
    }

    public void rl() {
        List<List<x>> list = this.f11736t;
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (List<x> list2 : this.f11736t) {
            if (list2 != null && list2.size() > 0) {
                arrayList.add(list2);
            }
        }
        this.f11736t = arrayList;
    }

    public List<x> sl() {
        return this.f11732da;
    }

    public float sp() {
        return this.ve;
    }

    public x t() {
        return this.sl;
    }

    public String toString() {
        return "DynamicLayoutUnit{id='" + this.f11731c + "', x=" + this.tt + ", y=" + this.ve + ", width=" + this.f11730a + ", height=" + this.sp + ", remainWidth=" + this.f11738x + ", rootBrick=" + this.f11733i + ", childrenBrickUnits=" + this.f11732da + '}';
    }

    public Map<Integer, String> tt() {
        return this.f11734m;
    }

    public int u() {
        a aVarN = this.f11733i.n();
        return aVarN.l() + aVarN.lo();
    }

    public float uj() {
        return this.uj;
    }

    public String ve() {
        return this.f11731c;
    }

    public float x() {
        return this.f11730a;
    }

    public int yp() {
        a aVarN = this.f11733i.n();
        return aVarN.bm() + aVarN.lr();
    }

    public float z() {
        a aVarN = this.f11733i.n();
        return u() + aVarN.z() + aVarN.m() + (aVarN.t() * 2.0f);
    }

    public void a(float f10) {
        this.sp = f10;
    }

    public void c(String str) {
        this.f11737u = str;
    }

    public void n(float f10) {
        this.f11730a = f10;
    }

    public void sp(float f10) {
        this.f11738x = f10;
    }

    public void tt(String str) {
        this.f11731c = str;
    }

    public void uj(float f10) {
        this.ve = f10;
    }

    public void ve(float f10) {
        this.tt = f10;
    }

    public void c(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() == 0) {
                    return;
                }
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    this.f11734m.put(Integer.valueOf(jSONObjectOptJSONObject.optInt("id")), jSONObjectOptJSONObject.optString(HmInputMappingContent.FIELD_VALUE));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void tt(float f10) {
        this.f11735n = f10;
    }

    public void ve(String str) {
        this.f11733i.n().a(str);
    }

    public void tt(List<List<x>> list) {
        this.f11736t = list;
    }

    public void c(float f10) {
        this.uj = f10;
    }

    public void c(n nVar) {
        this.f11733i = nVar;
    }

    public void c(List<x> list) {
        this.f11732da = list;
    }

    public void c(x xVar) {
        this.sl = xVar;
    }

    public void c(boolean z10) {
        this.yp = z10;
    }

    public void c(String str, String str2) {
        this.f11739z.put(str, str2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:9:0x005b  */
    public String c(int i10) {
        int i11;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f11733i.getType());
        sb2.append(":");
        sb2.append(this.f11731c);
        if (this.f11733i.n() != null) {
            sb2.append(":");
            sb2.append(this.f11733i.n().cf());
        }
        sb2.append(":");
        sb2.append(i10);
        if (this.f11733i.n() != null) {
            sb2.append(":");
            String strNb = this.f11733i.n().nb();
            strNb.hashCode();
            switch (strNb) {
                case "9":
                case "16":
                case "29":
                    i11 = 1;
                    break;
                default:
                    i11 = 0;
                    break;
            }
            String strNb2 = this.f11733i.n().nb();
            strNb2.hashCode();
            if (strNb2.equals(PointType.LOAD_READY) || strNb2.equals("18")) {
                i11 = (i11 * 10) + 2;
            }
            String strNb3 = this.f11733i.n().nb();
            strNb3.hashCode();
            switch (strNb3) {
                case "0":
                case "5":
                case "10":
                case "12":
                case "13":
                case "20":
                case "22":
                case "24":
                case "29":
                    i11 = (i11 * 10) + 3;
                    break;
            }
            sb2.append(i11);
        }
        return sb2.toString();
    }
}
