package com.byazt.vu;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.byazt.aas.or;
import com.byazt.aas.pf;
import com.byazt.ete.da;
import com.byazt.ete.gr;
import com.byazt.ete.ic;
import com.byazt.hkv.uj;
import com.byazt.hkv.ve;
import com.byazt.nk.z;
import com.byazt.nr.m;
import com.byazt.xl.sl;
import com.byazt.yzg.a;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1240, 20})
public class c extends uj implements com.byazt.wl.c, ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public sl f21343c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public View f21344da;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile boolean f21345n;
    public z sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f21346t;
    public boolean tt;
    public WeakReference<ViewGroup> uj;
    public ic ve;

    public c(ic icVar, WeakReference<ViewGroup> weakReference) {
        super(null);
        this.f21345n = false;
        this.f21346t = Integer.MIN_VALUE;
        this.ve = icVar;
        this.uj = weakReference;
    }

    private JSONObject uj(View view) {
        return new JSONObject();
    }

    private void ve(View view) {
        try {
            c(view, ((Integer) view.getTag()).intValue());
        } catch (ArrayIndexOutOfBoundsException e10) {
            m.c(e10);
            e10.getMessage();
        } catch (Exception e11) {
            m.uj("DynamicClickListener", e11.getMessage());
        }
    }

    @Override // com.byazt.wl.c
    public void c(sl slVar) {
        this.f21343c = slVar;
    }

    @Override // com.byazt.wl.c
    public void tt(View view) {
        this.sp.c(view);
    }

    private void tt() {
        WeakReference<ViewGroup> weakReference = this.uj;
        if (weakReference == null || weakReference.get() == null || !or.c(this.uj.get())) {
            return;
        }
        this.f21346t = 1;
        ve(this.f21344da);
    }

    @Override // com.byazt.wl.c
    public void c(boolean z10, z zVar) {
        this.f21345n = true;
        this.tt = z10;
        this.sl = zVar;
        WeakReference<ViewGroup> weakReference = this.uj;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        or.c(this.uj, this);
    }

    @Override // com.byazt.wl.c
    public void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f21346t = jSONObject.optInt("convertActionType", Integer.MIN_VALUE);
    }

    @Override // com.byazt.wl.c
    public void c(View view) {
        this.sp.tt(view);
    }

    @Override // com.byazt.hkv.uj
    public void c(View view, da daVar) {
        this.f21344da = view;
        if (this.f21345n) {
            this.f21345n = false;
        } else {
            ve(view);
        }
    }

    private void c(View view, int i10) {
        CharSequence text;
        if (this.f21343c != null) {
            if (this.tt && this.ve != null) {
                a.uj = true;
            }
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            View viewI = this.sp.i();
            if (viewI != null) {
                int[] iArrC = pf.c(viewI);
                if (iArrC != null) {
                    iArr = iArrC;
                }
                int[] iArrVe = pf.ve(viewI);
                if (iArrVe != null) {
                    iArr2 = iArrVe;
                }
            }
            JSONObject jSONObject = new JSONObject();
            try {
                if ((view instanceof TextView) && (text = ((TextView) view).getText()) != null && text.toString().contains("下载")) {
                    jSONObject.put("is_compliant_download", true);
                }
                jSONObject.putOpt("convertActionType", Integer.valueOf(this.f21346t));
            } catch (Throwable unused) {
            }
            this.f21343c.c(view, i10, new gr.c().uj(this.sp.nu()).ve(this.sp.rh()).tt(this.sp.my()).c(this.sp.gt()).tt(this.sp.z()).c(this.sp.m()).c(iArr[0]).tt(iArr[1]).ve(iArr2[0]).uj(iArr2[1]).c(uj(view)).ve(String.valueOf(i10)).tt(String.valueOf(view.getTag(2097610714))).c(String.valueOf(view.getTag(2097610715))).uj(String.valueOf(view.getTag(2097610713))).c(this.sp.x()).c(jSONObject).c(this.sp.u()).c(), -1);
        }
    }

    @Override // com.byazt.hkv.ve
    public void c() {
        tt();
        this.f21345n = false;
        z zVar = this.sl;
        if (zVar != null) {
            zVar.n();
        }
    }
}
