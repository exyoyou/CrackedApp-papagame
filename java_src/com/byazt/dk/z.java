package com.byazt.dk;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.aas.nb;
import com.byazt.c.h;
import com.byazt.hs.IDownloadHttpService;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.ou.IDownloadButtonClickListener;
import com.byazt.ou.my;
import com.byazt.ou.rh;
import com.byazt.ou.rl;
import com.byazt.su.DownloadController;
import com.byazt.su.DownloadEventConfig;
import com.byazt.su.DownloadModel;
import com.byazt.t.DownloadInfo;
import com.byazt.tk.AdBaseConstants;
import com.byazt.zz.DownloaderBuilder;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.posting.PostingActivity_;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT, 133})
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Context f12992a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f12993c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final com.byazt.yq.c f12994i;
    public static Map<Integer, com.byazt.dk.ve.c> sp;
    public static com.byazt.dk.uj ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static com.byazt.ocd.tt f12996x;
    public static final AtomicBoolean uj = new AtomicBoolean(false);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final AtomicBoolean f12995n = new AtomicBoolean(false);
    public static boolean tt = true;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT, 2251})
    public static class a implements IDownloadHttpService {
        @Override // com.byazt.hs.IDownloadHttpService
        public com.byazt.hs.i downloadWithConnection(int i10, String str, List<com.byazt.t.ve> list) throws IOException {
            final yp.c cVarC = yp.c(str, list);
            if (cVarC != null) {
                return new com.byazt.hs.i() { // from class: com.byazt.dk.z.a.1
                    @Override // com.byazt.hs.i
                    public InputStream c() {
                        return cVarC.f12991c;
                    }

                    @Override // com.byazt.hs.sp
                    public int tt() {
                        return cVarC.ve;
                    }

                    @Override // com.byazt.hs.i
                    public void uj() {
                        try {
                            cVarC.uj.disconnect();
                        } catch (Exception unused) {
                        }
                    }

                    @Override // com.byazt.hs.sp
                    public void ve() {
                    }

                    @Override // com.byazt.hs.sp
                    public String c(String str2) {
                        Map<String, String> map = cVarC.tt;
                        if (map != null) {
                            return map.get(str2);
                        }
                        return null;
                    }
                };
            }
            return null;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT, 1876})
    public static class tt implements com.byazt.ou.sp {
        private void ve(com.byazt.e.ve veVar) {
            if (veVar == null) {
                return;
            }
            Object objT = veVar.t();
            x xVarTt = x.c().c(veVar.tt()).tt(veVar.x()).c(objT instanceof JSONObject ? (JSONObject) objT : null).tt(veVar.ve());
            boolean z10 = "download_notification".equals(veVar.tt()) || "landing_h5_download_ad_button".equals(veVar.tt());
            if (z.sp() != null) {
                z.sp().c(xVarTt, z10);
            }
        }

        @Override // com.byazt.ou.sp
        public void c(com.byazt.e.ve veVar) {
            c(veVar, true);
        }

        @Override // com.byazt.ou.sp
        public void tt(com.byazt.e.ve veVar) {
            c(veVar, false);
            ve(veVar);
        }

        private void c(com.byazt.e.ve veVar, boolean z10) {
            sp spVarTt;
            if (z.sp() == null || (spVarTt = z.sp().tt()) == null || veVar == null) {
                return;
            }
            if (spVarTt.c() && z.sp().c(veVar.toString())) {
                return;
            }
            if (z10) {
                z.tt(veVar);
            } else {
                z.tt(veVar);
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT, 1878})
    private static class uj implements com.byazt.ou.i {
        @Override // com.byazt.ou.i
        public void c(Activity activity, int i10, String[] strArr, int[] iArr) {
        }

        @Override // com.byazt.ou.i
        public void c(Activity activity, String[] strArr, final rl rlVar) {
            if (z.sp() != null) {
                z.sp().c(activity, strArr, new com.byazt.dk.a() { // from class: com.byazt.dk.z.uj.1
                    @Override // com.byazt.dk.a
                    public void c() {
                        rl rlVar2 = rlVar;
                        if (rlVar2 != null) {
                            rlVar2.c();
                        }
                    }

                    @Override // com.byazt.dk.a
                    public void c(String str) {
                        rl rlVar2 = rlVar;
                        if (rlVar2 != null) {
                            rlVar2.c(str);
                        }
                    }
                });
            }
        }

        @Override // com.byazt.ou.i
        public boolean c(Context context, String str) {
            if (z.sp() != null) {
                return z.sp().c(context, str);
            }
            return false;
        }
    }

    static {
        try {
            f12993c = com.byazt.nr.sp.c(getContext(), Environment.DIRECTORY_DOWNLOADS, false, null).getPath();
        } catch (Throwable unused) {
        }
        f12994i = new com.byazt.yq.c() { // from class: com.byazt.dk.z.2
            @Override // com.byazt.yq.c
            public void c(DownloadInfo downloadInfo, String str) {
                z.ve(str);
            }
        };
    }

    private static Context getContext() {
        Context context = f12992a;
        return context == null ? gt.getContext() : context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject i() {
        try {
            com.byazt.dk.uj ujVarSp = sp();
            if (ujVarSp != null) {
                JSONObject jSONObjectC = ujVarSp.c();
                if (jSONObjectC.optInt("enable_app_install_receiver", 1) == 0) {
                    jSONObjectC.put("enable_app_install_receiver", 0);
                }
                return jSONObjectC;
            }
        } catch (Exception unused) {
        }
        return new JSONObject();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.byazt.dk.uj sp() {
        if (ve == null) {
            ve = u.uj();
        }
        return ve;
    }

    public static Map<Integer, com.byazt.dk.ve.c> uj() {
        return sp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ve(String str) {
        com.byazt.dd.tt ttVarC;
        JSONObject jSONObjectSp;
        if (TextUtils.isEmpty(str) || (ttVarC = com.byazt.nn.a.c().c(str)) == null || (jSONObjectSp = ttVarC.sp()) == null || sp() == null) {
            return;
        }
        sp().c(jSONObjectSp, str);
    }

    private static boolean x() {
        return UMModuleRegister.INNER.equals(p.f18095x);
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT, 1205})
    private static class c implements com.byazt.ou.da {
        private c() {
        }

        @Override // com.byazt.ou.da
        public boolean c(DownloadModel downloadModel, DownloadInfo downloadInfo) {
            com.byazt.dk.uj ujVarSp = z.sp();
            if (ujVarSp != null) {
                return ujVarSp.c(downloadModel, downloadInfo);
            }
            return false;
        }

        @Override // com.byazt.ou.da
        public boolean tt(DownloadModel downloadModel, DownloadInfo downloadInfo) {
            com.byazt.dk.uj ujVarSp = z.sp();
            if (ujVarSp != null) {
                return ujVarSp.tt(downloadModel, downloadInfo);
            }
            return false;
        }

        @Override // com.byazt.ou.da
        public boolean c(DownloadModel downloadModel) {
            com.byazt.dk.uj ujVarSp = z.sp();
            if (ujVarSp != null) {
                return ujVarSp.c(downloadModel);
            }
            return false;
        }
    }

    public static com.byazt.di.da tt() {
        c(getContext());
        return com.byazt.di.da.c(getContext());
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT, 1874})
    private static class ve implements com.byazt.ou.x {
        private ve() {
        }

        @Override // com.byazt.ou.x
        public void c(String str, String str2, Map<String, Object> map, final my myVar) {
            str.hashCode();
            int i10 = 0;
            if (!str.equals("GET") && str.equals("POST")) {
                i10 = 1;
            }
            if (z.sp() != null) {
                z.sp().c(i10, str2, map, new com.byazt.dk.n() { // from class: com.byazt.dk.z.ve.1
                    @Override // com.byazt.dk.n
                    public void c(String str3) {
                        my myVar2 = myVar;
                        if (myVar2 != null) {
                            myVar2.c(str3);
                        }
                    }

                    @Override // com.byazt.dk.n
                    public void c(Throwable th) {
                        my myVar2 = myVar;
                        if (myVar2 != null) {
                            myVar2.c(th);
                        }
                    }
                });
            }
        }

        @Override // com.byazt.ou.x
        public void c(String str, byte[] bArr, String str2, int i10, final my myVar) {
            if (z.sp() != null) {
                z.sp().c(str, bArr, str2, new com.byazt.dk.n() { // from class: com.byazt.dk.z.ve.2
                    @Override // com.byazt.dk.n
                    public void c(String str3) {
                        my myVar2 = myVar;
                        if (myVar2 != null) {
                            myVar2.c(str3);
                        }
                    }

                    @Override // com.byazt.dk.n
                    public void c(Throwable th) {
                        my myVar2 = myVar;
                        if (myVar2 != null) {
                            myVar2.c(th);
                        }
                    }
                });
            }
        }
    }

    public static void c(com.byazt.ocd.tt ttVar) {
        f12996x = ttVar;
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT, 2248})
    public static class n implements com.byazt.ou.u {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WeakReference<Context> f13001c;

        public n(Context context) {
            this.f13001c = new WeakReference<>(context);
        }

        private com.byazt.dk.c ve(final com.byazt.e.tt ttVar) {
            return com.byazt.dk.c.c().c(ttVar.tt).tt(ttVar.ve).uj(ttVar.f13253n).ve(ttVar.uj).c(ttVar.sp).c(new com.byazt.dk.tt() { // from class: com.byazt.dk.z.n.2
                @Override // com.byazt.dk.tt
                public void c(DialogInterface dialogInterface) {
                    com.byazt.e.tt.InterfaceC0300tt interfaceC0300tt = ttVar.f13254x;
                    if (interfaceC0300tt != null) {
                        interfaceC0300tt.c(dialogInterface);
                    }
                }

                @Override // com.byazt.dk.tt
                public void tt(DialogInterface dialogInterface) {
                    com.byazt.e.tt.InterfaceC0300tt interfaceC0300tt = ttVar.f13254x;
                    if (interfaceC0300tt != null) {
                        try {
                            interfaceC0300tt.tt(dialogInterface);
                        } catch (Exception e10) {
                            com.byazt.nr.m.c(e10);
                        }
                    }
                }

                @Override // com.byazt.dk.tt
                public void ve(DialogInterface dialogInterface) {
                    com.byazt.e.tt.InterfaceC0300tt interfaceC0300tt = ttVar.f13254x;
                    if (interfaceC0300tt != null) {
                        interfaceC0300tt.ve(dialogInterface);
                    }
                }
            });
        }

        @Override // com.byazt.ou.u
        public void c(int i10, final Context context, DownloadModel downloadModel, final String str, Drawable drawable, int i11) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                com.byazt.bzd.x.c((Runnable) new com.byazt.bwm.sp("tt_download_toast") { // from class: com.byazt.dk.z.n.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(context, str, 0).show();
                    }
                });
            } catch (Exception e10) {
                com.byazt.nr.m.uj("LibUIFactory", "showToastWithDuration e " + e10.getMessage());
            }
        }

        @Override // com.byazt.ou.u
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public AlertDialog tt(com.byazt.e.tt ttVar) {
            if (ttVar != null && z.sp() != null) {
                Context context = ttVar.f13250c;
                if (context != null && (context instanceof Activity)) {
                    return z.sp().c((Activity) ttVar.f13250c, ttVar.f13251da == 1, ve(ttVar));
                }
                z.sp().c(this.f13001c, ttVar.f13251da == 1, ve(ttVar));
            }
            return null;
        }
    }

    public static com.byazt.ocd.tt c() {
        return f12996x;
    }

    private static boolean tt(final Context context) {
        com.byazt.d.c cVarC;
        if (context == null) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            packageName = "";
        }
        if (x()) {
            try {
                cVarC = com.byazt.di.da.c(applicationContext).c(AdBaseConstants.DownloadConfigureName.PANGOLIN);
            } catch (Throwable unused) {
                cVarC = com.byazt.di.da.c(applicationContext).c();
            }
        } else {
            cVarC = com.byazt.di.da.c(applicationContext).c();
        }
        if (cVarC == null) {
            return false;
        }
        cVarC.c(new uj()).c(new tt()).c(new n(applicationContext)).c(new ve()).c(new com.byazt.s.sp() { // from class: com.byazt.dk.z.9
            @Override // com.byazt.s.sp
            public Uri c(int i10, String str, String str2) {
                return m.instance(context).c(str, str2);
            }
        }).c(new com.byazt.s.ve() { // from class: com.byazt.dk.z.8
            @Override // com.byazt.s.ve
            public Map<String, Object> c(Object obj) {
                return m.instance(context).c(obj);
            }
        }).c(new com.byazt.ou.sl() { // from class: com.byazt.dk.z.7
            @Override // com.byazt.ou.sl
            public JSONObject c() {
                return z.i();
            }
        }).c(new c()).c(new com.byazt.ou.tt() { // from class: com.byazt.dk.z.6
            @Override // com.byazt.ou.tt
            public boolean c() {
                if (z.sp() != null) {
                    return z.sp().ve();
                }
                return false;
            }
        }).c(new com.byazt.e.c.C0299c().tt("143").c("open_news").ve(p.f18094n).uj(String.valueOf(p.uj)).c()).c(new rh() { // from class: com.byazt.dk.z.5
            @Override // com.byazt.ou.rh
            public byte[] c(byte[] bArr, int i10) {
                return new byte[0];
            }
        }).c(packageName + ".TTFileProvider").c(new com.byazt.ou.gt() { // from class: com.byazt.dk.z.4
            @Override // com.byazt.ou.gt
            public void c(@Nullable Context context2, @Nullable DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig, @Nullable String str, int i10) {
                z.tt(downloadModel);
            }
        }).c(new com.byazt.ou.ve() { // from class: com.byazt.dk.z.1
            @Override // com.byazt.ou.ve
            public void c(@Nullable Context context2, @NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig, String str, @NonNull String str2) {
                z.tt(downloadModel);
            }
        }).c(c(applicationContext, i())).c();
        com.byazt.hu.c.c();
        if (!p.f18095x.equals(UMModuleRegister.INNER)) {
            com.byazt.di.da.c(applicationContext).uj().c(1);
            com.byazt.di.da.c(applicationContext).c(f12994i);
            com.byazt.z.uj.sl().c(new h() { // from class: com.byazt.dk.z.10
                @Override // com.byazt.c.h
                public boolean c(Intent intent) {
                    return false;
                }
            });
        }
        return true;
    }

    public static void c(Context context) {
        if (context == null) {
            context = gt.getContext();
        }
        if (context == null) {
            return;
        }
        String strTt = com.byazt.nr.gt.tt(context);
        if (strTt != null && strTt.contains(":downloader") && p.uj >= 7000) {
            com.byazt.zz.ve.c(new a());
        }
        AtomicBoolean atomicBoolean = uj;
        if (!atomicBoolean.get()) {
            synchronized (z.class) {
                if (!atomicBoolean.get()) {
                    f12992a = context.getApplicationContext();
                    if (sp() != null) {
                        String strC = sp().c(tt);
                        if (!TextUtils.isEmpty(strC)) {
                            f12993c = strC;
                        }
                    }
                    atomicBoolean.set(tt(f12992a));
                }
            }
        }
        if (atomicBoolean.get()) {
            AtomicBoolean atomicBoolean2 = f12995n;
            if (atomicBoolean2.compareAndSet(false, true)) {
                if ((sp() != null ? sp().tt() : null) == null) {
                    atomicBoolean2.set(false);
                }
            }
        }
    }

    public static void ve() {
        tt().sp();
        if (sp() != null) {
            sp().tt(f12993c);
        }
    }

    public static void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f12993c = str;
    }

    public static boolean c(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener) {
        return tt().n().c(context, uri, downloadModel, downloadEventConfig, downloadController, iDownloadButtonClickListener);
    }

    public static boolean c(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        return tt().n().c(context, uri, downloadModel, downloadEventConfig, downloadController);
    }

    public static boolean c(Uri uri) {
        return com.byazt.us.da.c(uri);
    }

    public static void c(int i10) {
        Map<Integer, com.byazt.dk.ve.c> map = sp;
        if (map != null) {
            map.remove(Integer.valueOf(i10));
        }
    }

    public static void c(int i10, com.byazt.dk.ve.c cVar) {
        if (cVar != null) {
            if (sp == null) {
                sp = Collections.synchronizedMap(new WeakHashMap());
            }
            sp.put(Integer.valueOf(i10), cVar);
        }
    }

    public static boolean c(String str, String str2, JSONObject jSONObject, Object obj) {
        Map<Integer, com.byazt.dk.ve.c> mapUj;
        boolean z10 = false;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && jSONObject != null && (mapUj = uj()) != null) {
            for (Map.Entry<Integer, com.byazt.dk.ve.c> entry : mapUj.entrySet()) {
                int iIntValue = entry.getKey().intValue();
                com.byazt.dk.ve.c value = entry.getValue();
                if (value != null) {
                    boolean zC = value.c(iIntValue, jSONObject.toString(), str, str2, obj);
                    if (!z10 && !zC) {
                        z10 = true;
                    }
                }
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(DownloadModel downloadModel) {
        JSONObject extra;
        JSONObject jSONObjectOptJSONObject;
        if (downloadModel == null || (extra = downloadModel.getExtra()) == null || (jSONObjectOptJSONObject = extra.optJSONObject("open_ad_sdk_download_extra")) == null) {
            return;
        }
        String strOptString = jSONObjectOptJSONObject.optString("material_meta");
        String strOptString2 = jSONObjectOptJSONObject.optString(TagGameListActivity_.TAG_EXTRA);
        if (!TextUtils.isEmpty(strOptString) && strOptString.contains("self_reward_callback") && com.byazt.hu.u.c(downloadModel)) {
            com.byazt.omf.tt.c().put("save_jump_success_time", System.currentTimeMillis());
            com.byazt.omf.tt.c().put("save_jump_success_ad_tag", strOptString2);
            com.byazt.omf.tt.c().put("save_download_open_app_success_meta", strOptString);
        }
    }

    private static DownloaderBuilder c(Context context, JSONObject jSONObject) {
        return new DownloaderBuilder(context).downloadSetting(new com.byazt.c.p() { // from class: com.byazt.dk.z.11
            @Override // com.byazt.c.p
            public JSONObject c() {
                return z.i();
            }
        }).httpService(new a());
    }

    public static boolean c(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            List<DownloadInfo> listTt = com.byazt.z.uj.sl().tt(context);
            if (!listTt.isEmpty()) {
                for (DownloadInfo downloadInfo : listTt) {
                    if (downloadInfo != null && str.equals(downloadInfo.getUrl())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject tt(com.byazt.e.ve veVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PointParamKey.CATEGORY, veVar.c());
            jSONObject.put(TagGameListActivity_.TAG_EXTRA, veVar.tt());
            jSONObject.put(PostingActivity_.LABEL_EXTRA, veVar.ve());
            jSONObject.put("isAd", veVar.uj());
            jSONObject.put("adId", veVar.n());
            jSONObject.put("logExtra", veVar.a());
            jSONObject.put("extValue", veVar.sp());
            jSONObject.put("extJson", veVar.x());
            jSONObject.put("paramsJson", veVar.i());
            jSONObject.put("eventSource", veVar.sl());
            jSONObject.put("extraObject", veVar.t());
            jSONObject.put("clickTrackUrl", veVar.da());
            jSONObject.put("isV3", veVar.u());
            jSONObject.put("V3EventName", veVar.yp());
            jSONObject.put("V3EventParams", veVar.z());
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        return jSONObject;
    }

    public static Bundle c(com.byazt.qt.c cVar, int i10) {
        String str;
        boolean z10;
        String str2;
        Bundle bundle = new Bundle();
        try {
            if (i10 == 101) {
                boolean zTt = nb.tt(cVar.ve());
                String str3 = zTt ? "open" : com.sigmob.sdk.base.n.f79590q;
                if (zTt) {
                    com.byazt.nn.sp spVarC = com.byazt.hu.i.c(cVar.ve());
                    str2 = spVarC.getType() + "_" + spVarC.c() + "_" + spVarC.tt();
                    bundle.putString("msg", "open ".concat(String.valueOf(str2)));
                    z10 = true;
                } else {
                    boolean zC = com.byazt.z.uj.c(f12992a, cVar.uj());
                    if (zC) {
                        str = "mem install";
                    } else {
                        str = "cache install";
                        zC = com.byazt.z.uj.c(f12992a, c(cVar.da(), cVar.i()));
                    }
                    String str4 = str;
                    z10 = zC;
                    str2 = str4;
                    bundle.putString("msg", "install ".concat(String.valueOf(z10)));
                }
                com.byazt.yih.n.c(cVar.sp(), cVar, str3, "media_install", str2, z10 ? "success" : "failure");
            } else {
                bundle.putString("msg", "event_type:" + i10 + " not support");
                com.byazt.yih.n.c(cVar.sp(), cVar, "notSupport_".concat(String.valueOf(i10)), "media_install", "error", "failure");
            }
        } catch (Exception e10) {
            bundle.putString("msg", e10.getMessage());
        }
        return bundle;
    }

    private static int c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return 0;
        }
        String strN = com.byazt.w.a.n(String.format("%s_%s", str, str2));
        if (TextUtils.isEmpty(strN)) {
            return 0;
        }
        return strN.hashCode();
    }

    public static boolean c(Activity activity, final com.byazt.ocd.c cVar) {
        return com.byazt.de.c.c().c(activity, false, new com.byazt.de.c.InterfaceC0290c() { // from class: com.byazt.dk.z.3
            @Override // com.byazt.de.c.InterfaceC0290c
            public void c() {
                com.byazt.ocd.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.c();
                }
            }
        });
    }
}
