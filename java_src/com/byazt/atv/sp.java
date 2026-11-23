package com.byazt.atv;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.aas.or;
import com.byazt.ete.gr;
import com.byazt.ete.ic;
import com.byazt.ete.ma;
import com.byazt.ete.pu;
import com.byazt.ouz.sl;
import com.byazt.sz.gt;
import com.byazt.sz.rh;
import com.byazt.sz.yp;
import com.byazt.xl.x;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 134, 91})
public class sp extends n implements c {
    public com.byazt.kdw.tt gu;
    public sl qy;

    public sp(Context context, ic icVar, tt ttVar, ViewGroup viewGroup) {
        super(context, icVar, ttVar, viewGroup);
        if (ttVar != null) {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            uj.c(this.f11746a, this.f11747c, ttVar.qp(), atomicBoolean);
            uj.tt(this.f11746a, this.f11747c, ttVar.qp(), atomicBoolean);
        }
    }

    private void rh() {
        yp ypVar = new yp();
        HashMap map = new HashMap();
        ic icVar = this.f11746a;
        if (icVar != null) {
            map.put("shake_value", Integer.valueOf(icVar.ge()));
            map.put("calculation_method", Integer.valueOf(this.f11746a.e()));
            map.put("rotation_angle", Integer.valueOf(this.f11746a.br()));
            map.put("calculation_method_twist", Integer.valueOf(this.f11746a.pe()));
            map.put("twist_config", this.f11746a.lv());
            map.put("image_info", com.byazt.jlk.tt.n(this.f11746a));
            map.put("cache_dir", com.byazt.bzd.sl.n());
            map.put("shake_interact_conf", this.f11746a.cy());
            map.put("twist_interact_conf", this.f11746a.yx());
        }
        ypVar.c(map);
        ypVar.c(this.tt);
        ypVar.c(this.uj);
        ypVar.tt(this.f11751n);
        this.f11747c.c("ad", ypVar);
    }

    private int ve(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        str.hashCode();
        if (str.equals("shake")) {
            return 1;
        }
        return !str.equals("twist") ? 0 : 2;
    }

    @Override // com.byazt.atv.n
    public com.byazt.xj.ve a() {
        com.byazt.xj.ve<View> veVar = this.ve;
        if (veVar == null) {
            return null;
        }
        return veVar.n("VideoV3");
    }

    @Override // com.byazt.atv.n, com.byazt.kn.uj
    public void c(CharSequence charSequence, int i10, int i11, boolean z10) {
    }

    @Override // com.byazt.atv.n
    public JSONObject sl() {
        return this.sp.n();
    }

    @Override // com.byazt.atv.n
    public void tt(com.byazt.xl.sp spVar) {
        rh();
        this.f11747c.c((rh) this);
        this.f11747c.c((gt) this);
        ma maVarSp = pu.sp(this.f11746a);
        try {
            if (maVarSp != null) {
                this.ve = this.f11747c.c(this.uj, this.f11751n, maVarSp.n());
            } else {
                this.ve = this.f11747c.c(this.uj, this.f11751n, (JSONObject) null);
            }
            if (this.f11747c.c()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("component_not_exist", new JSONArray((Collection) this.f11747c.tt()));
                this.sp.or().c(jSONObject);
                spVar.c(138, "ugen unknown component");
                return;
            }
            if (this.f11747c.ve()) {
                spVar.c(142, "ugen root disable");
                return;
            }
            if (this.ve != null) {
                if (this.rl == null) {
                    this.rl = new com.byazt.qmz.c(this.sp.n());
                }
                this.rl.c(this.f11747c, this.ve);
            }
            this.sp.or().tt();
            this.sp.or().ve();
        } catch (NoClassDefFoundError unused) {
            if (spVar != null) {
                spVar.c(140, "ugen no class def found error");
            }
        } catch (UnsatisfiedLinkError unused2) {
            if (spVar != null) {
                spVar.c(139, "ugen yoga so load fail");
            }
        } catch (Throwable unused3) {
            if (spVar != null) {
                spVar.c(141, "ugen other fail");
            }
        }
    }

    @Override // com.byazt.atv.n
    public JSONObject c() {
        return this.sp.n().optJSONObject("xTemplate");
    }

    @Override // com.byazt.atv.n, com.byazt.sz.rh
    public void c(final com.byazt.xj.ve veVar, final String str, final com.byazt.pm.a.c cVar) {
        if (cVar == null) {
            return;
        }
        if (!TextUtils.equals(str, "shake") && !TextUtils.equals(str, "twist")) {
            tt(veVar, str, cVar);
            return;
        }
        WeakReference<ViewGroup> weakReference = this.f11756z;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        or.c(this.f11756z, new com.byazt.hkv.ve() { // from class: com.byazt.atv.sp.1
            @Override // com.byazt.hkv.ve
            public void c() {
                WeakReference<ViewGroup> weakReference2 = sp.this.f11756z;
                if (weakReference2 == null || weakReference2.get() == null || !or.c(sp.this.f11756z.get())) {
                    return;
                }
                sp.this.tt(veVar, str, cVar);
            }
        });
    }

    public void c(String str, Map<String, String> map) {
        if (this.ve == null) {
            return;
        }
        com.byazt.pm.a.c cVar = new com.byazt.pm.a.c();
        cVar.c("custom");
        cVar.tt("emit");
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        map2.put("name", str);
        cVar.c(map2);
        com.byazt.vd.c.C0462c.c(this.ve, "jsb", cVar).c();
    }

    @Override // com.byazt.atv.c
    public void c(sl slVar) {
        this.qy = slVar;
    }

    public void c(com.byazt.kdw.tt ttVar) {
        this.gu = ttVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x00af  */
    public void tt(com.byazt.xj.ve veVar, String str, com.byazt.pm.a.c cVar) {
        CharSequence text;
        String strTt = cVar.tt();
        Map<String, Object> mapVe = cVar.ve();
        if (tt()) {
            HashMap map = new HashMap();
            map.put("ugen_click_event_params", this.yp);
            map.put("convert_action_type", Integer.valueOf(ve(str)));
            map.put("v3_trigger_name", str);
            if (com.byazt.qdk.c.c().c(cVar, this.f11746a, this.tt, veVar, sl(), this.f11754u, map)) {
                return;
            }
        }
        if (com.byazt.kdw.c.f16178c.contains(strTt)) {
            com.byazt.kdw.c.c(this.qy, this.gu, this.f11746a, this.tt, strTt, cVar, this.rh, veVar);
            return;
        }
        if ("uchain".equals(strTt)) {
            HashMap map2 = new HashMap();
            map2.put("material_meta", this.f11746a);
            map2.put("context", this.tt);
            map2.put("event_tag", nb.tt(this.f11746a));
            com.byazt.ppf.ve.c(this.f11746a, (HashMap<String, Object>) map2, cVar);
            return;
        }
        strTt.hashCode();
        int i10 = 3;
        switch (strTt) {
            case "openAppPermission":
                i10 = 10;
                break;
            case "openCommonUrl":
                i10 = 13;
                break;
            case "renderScene":
                if (mapVe != null) {
                    c(Objects.toString(mapVe.get("scene"), ""), Objects.toString(mapVe.get("ugen_id"), ""), Objects.toString(mapVe.get("ugen_md5"), ""), Objects.toString(mapVe.get("ugen_url"), ""), Objects.toString(mapVe.get("displayAreaAndroid"), ""), Objects.toString(mapVe.get("render_sequence"), ""));
                    return;
                }
                return;
            case "openPrivacy":
                i10 = 7;
                break;
            case "resumeVideo":
                sl slVar = this.qy;
                if (slVar != null) {
                    slVar.c(3);
                    return;
                }
                return;
            case "pauseVideo":
                sl slVar2 = this.qy;
                if (slVar2 != null) {
                    slVar2.c(2);
                    return;
                }
                return;
            case "skip":
                i10 = 6;
                break;
            case "close":
                i10 = 8;
                break;
            case "openAppFunction":
                i10 = 12;
                break;
            case "dismissScene":
                if (mapVe != null) {
                    c(Objects.toString(mapVe.get("scene"), ""));
                    return;
                }
                return;
            case "videoControl":
                i10 = 4;
                break;
            case "convert":
                i10 = 2;
                break;
            case "muteVideo":
                i10 = 5;
                break;
            case "openAppPolicy":
                i10 = 9;
                break;
            case "dislike":
                break;
            default:
                i10 = 0;
                break;
        }
        gr.c cVarC = new gr.c().uj(this.yp.nu()).ve(this.yp.rh()).tt(this.yp.my()).c(this.yp.gt()).c(veVar.eo()).tt(this.yp.z()).c(this.yp.m()).c(tt(str));
        JSONObject jSONObject = new JSONObject();
        int iVe = ve(str);
        if (iVe > 0) {
            try {
                jSONObject.put("convertActionType", iVe);
            } catch (Throwable unused) {
            }
        }
        try {
            Object obj = mapVe.get("webUrl");
            Object obj2 = mapVe.get("webTitle");
            String strC = com.byazt.wj.tt.c(Objects.toString(obj, ""), sl());
            String strC2 = com.byazt.wj.tt.c(Objects.toString(obj2, ""), sl());
            jSONObject.put("openCommonWebUrl", strC);
            jSONObject.put("openCommonWebTitle", strC2);
        } catch (JSONException unused2) {
        }
        View viewI = veVar.i();
        try {
            if ((viewI instanceof TextView) && (text = ((TextView) viewI).getText()) != null && text.toString().contains("下载")) {
                jSONObject.put("is_compliant_download", true);
            }
        } catch (JSONException unused3) {
        }
        cVarC.c(jSONObject);
        gr grVarC = cVarC.c();
        x xVar = this.f11749i;
        if (xVar != null) {
            xVar.c(viewI, i10, grVarC, -1);
        }
    }

    public static byte tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return (byte) 0;
        }
        str.hashCode();
        switch (str) {
            case "tap":
                return (byte) 1;
            case "shake":
                return (byte) 3;
            case "slide":
                return (byte) 2;
            case "twist":
                return (byte) 4;
            case "longTap":
                return (byte) 5;
            default:
                return (byte) 0;
        }
    }
}
