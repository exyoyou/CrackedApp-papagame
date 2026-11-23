package com.byazt.tl;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.byazt.by.a;
import com.byazt.ete.ic;
import com.byazt.nr.h;
import com.byazt.nr.m;
import com.byazt.nr.sp;
import com.byazt.nys.PluginConstants;
import com.byazt.omf.gr;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.omf.x;
import com.haima.hmcp.Constants;
import com.umeng.analytics.pro.bm;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 467, 46})
public class n implements com.byazt.sif.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ic f20242c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f20243n;
    public final WeakReference<Context> tt;
    public String uj;
    public final uj ve;

    public n(ic icVar, Context context, uj ujVar, boolean z10) {
        this.f20242c = icVar;
        this.tt = new WeakReference<>(context);
        this.ve = ujVar;
        this.f20243n = z10;
    }

    private String ve(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("app_name", x.m().qy());
            jSONObject.putOpt(PluginConstants.KEY_APP_ID, x.m().rl());
            jSONObject.putOpt("os_api", Integer.valueOf(Build.VERSION.SDK_INT));
            jSONObject.putOpt(bm.f84422y, Build.VERSION.RELEASE);
            jSONObject.putOpt("manufacturer", Build.MANUFACTURER);
            jSONObject.putOpt("did", ((com.byazt.dna.ve) com.byazt.ut.uj.getService("embed_applog")).getDid());
            jSONObject.putOpt("sdk_version", 7611);
            jSONObject.putOpt("sdk_api_version", Integer.valueOf(p.uj));
            jSONObject.putOpt("live_sdk_version", com.byazt.apd.tt.c().sp());
            jSONObject.putOpt("msg", str);
            jSONObject.putOpt("recordId", str2);
            jSONObject.putOpt(bm.f84421x, "Android");
            jSONObject.putOpt("ad_info", this.f20242c.mk());
            com.byazt.dj.tt ttVarIj = this.f20242c.ij();
            if (ttVarIj != null) {
                jSONObject.putOpt("ad_slot_type", Integer.valueOf(ttVarIj.gt()));
                jSONObject.putOpt("rit", ttVarIj.my());
            }
            return jSONObject.toString();
        } catch (Exception e10) {
            m.tt("#oncall#", e10);
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(final String str) {
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.tl.n.3
            @Override // java.lang.Runnable
            public void run() {
                if (n.this.tt.get() != null) {
                    h.c((Context) n.this.tt.get(), str, 1);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(String str, String str2) throws Throwable {
        HashMap map = null;
        File file = new File(sp.tt(gt.getContext(), false, null), str);
        file.mkdirs();
        gr grVar = (gr) gt.c();
        com.byazt.dj.tt ttVarIj = this.f20242c.ij();
        JSONObject jSONObjectC = grVar.c(ttVarIj, new com.byazt.ete.bm(), ttVarIj.gt(), false, 6, false);
        if (jSONObjectC == null) {
            return;
        }
        com.byazt.bzd.n.c(a.c().tt(jSONObjectC.toString()).uj().toString(), new File(file, "request.info"));
        com.byazt.bzd.n.c(com.byazt.nr.c.c(com.byazt.ogz.x.c((com.byazt.ogz.n) null).a()).toString(), new File(file, "setting.info"));
        com.byazt.bzd.n.c(com.byazt.nr.c.c(this.f20242c.yg()).toString(), new File(file, "meta.info"));
        File fileC = com.byazt.bzd.n.c(file, str + ".zip");
        String strVe = ve(str2, str);
        HashMap map2 = new HashMap();
        Pair<Integer, JSONObject> pairC = a.c().c(strVe, false);
        if (pairC != null) {
            map = new HashMap();
            map2.put("deviceInfo", ((JSONObject) pairC.second).optString("message"));
            map.put("x-pglcypher", String.valueOf(pairC.first));
        }
        new com.byazt.sml.c().c(this.ve.ve(), fileC, map2, new com.byazt.sml.c.InterfaceC0430c() { // from class: com.byazt.tl.n.5
            @Override // com.byazt.sml.c.InterfaceC0430c
            public void c(String str3) {
                n nVar = n.this;
                nVar.tt(nVar.f20243n ? "已复制广告ID\r\n请前往应用内上报问题" : "反馈上传成功！");
            }

            @Override // com.byazt.sml.c.InterfaceC0430c
            public void c(int i10, String str3) {
                n nVar = n.this;
                nVar.tt(nVar.f20243n ? "反馈失败\r\n 请重新复制" : "反馈失败");
            }
        }, map);
        fileC.delete();
        com.byazt.bzd.n.tt(file);
    }

    @Override // com.byazt.sif.c
    public boolean c(String str, Dialog dialog) {
        if (TextUtils.isEmpty(str) || this.tt.get() == null || !str.startsWith("#oncall#")) {
            return false;
        }
        return c(this.tt.get(), str, dialog);
    }

    @Override // com.byazt.sif.c
    public boolean c(com.byazt.nc.a aVar, String str, Dialog dialog) {
        com.byazt.vo.ve veVarC = uj.c();
        if (veVarC == null || !TextUtils.equals(aVar.getId(), veVarC.getId()) || !TextUtils.equals(aVar.getName(), veVarC.getName())) {
            return false;
        }
        m.tt("TTAdDislikeImpl", "click feedback :" + aVar.getName() + ":" + aVar.getId());
        if (this.f20243n) {
            if (this.uj != null) {
                return true;
            }
            String string = UUID.randomUUID().toString();
            this.uj = string;
            c(string, str);
            c(this.uj);
            return true;
        }
        return c(this.tt.get(), str, dialog);
    }

    private void c(String str) {
        try {
            Context context = this.tt.get();
            if (context == null) {
                return;
            }
            ((ClipboardManager) context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setPrimaryClip(ClipData.newPlainText(null, str));
        } catch (Throwable unused) {
        }
    }

    public boolean c(Context context, final String str, Dialog dialog) {
        try {
            if (this.uj == null) {
                this.uj = UUID.randomUUID().toString();
            }
            if (dialog != null) {
                dialog.dismiss();
            }
            new AlertDialog.Builder(context).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.byazt.tl.n.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (dialogInterface != null) {
                        dialogInterface.dismiss();
                    }
                    n nVar = n.this;
                    nVar.c(nVar.uj, str);
                }
            }).setNegativeButton("取消", new DialogInterface.OnClickListener() { // from class: com.byazt.tl.n.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                }
            }).setMessage(this.ve.uj() + "\n\n您此次反馈的id为：" + this.uj).setCancelable(true).create().show();
            return true;
        } catch (Exception e10) {
            m.c(e10);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final String str, final String str2) {
        tt("反馈上传中，请您稍等！");
        com.byazt.bwm.n.tt(new com.byazt.bwm.sp("upload_oncall") { // from class: com.byazt.tl.n.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    n.this.tt(str, str2);
                } catch (Throwable th) {
                    m.tt("#oncall#", th);
                }
            }
        });
    }

    public static void c(Context context, com.byazt.dyf.tt ttVar, ic icVar) {
        if (ttVar == null || icVar == null) {
            return;
        }
        boolean zCg = gt.tt().cg();
        uj ujVarIj = gt.tt().ij();
        if (ujVarIj == null || TextUtils.isEmpty(ujVarIj.ve())) {
            return;
        }
        if (ujVarIj.tt() || zCg) {
            ttVar.addInterceptor(new n(icVar, context, ujVarIj, zCg));
        }
    }
}
