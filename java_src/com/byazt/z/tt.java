package com.byazt.z;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.provider.FontsContractCompat;
import com.byazt.bv.BaseConstants;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.u.x;
import com.byazt.y.JumpUnknownSourceActivity;
import com.byazt.zz.Downloader;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 133, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22550c = "tt";
    public static ve tt;
    public static c ve;

    @com.byazt.zqa.c(c = {0, 1, 133, 194})
    private static class c implements com.byazt.g.c.InterfaceC0315c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final n f22551c;
        public final int tt;
        public JSONObject ve;

        public c(Context context, Intent intent, int i10, JSONObject jSONObject, InterfaceC0499tt interfaceC0499tt) {
            this.ve = jSONObject;
            int iOptInt = jSONObject.optInt("query_interval", 1000);
            this.tt = iOptInt;
            this.f22551c = new n(context, intent, i10, interfaceC0499tt, iOptInt);
        }

        @Override // com.byazt.g.c.InterfaceC0315c
        public void tt() {
            if (!this.f22551c.f22554i) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 2;
                this.f22551c.f22553a.sendMessage(messageObtain);
            }
            com.byazt.g.c.c().tt(this);
            c unused = tt.ve = null;
        }

        @Override // com.byazt.g.c.InterfaceC0315c
        public void ve() {
            int iOptInt = this.ve.optInt("time_out_second", 20);
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            this.f22551c.f22553a.sendMessage(messageObtain);
            if (iOptInt <= 0 || iOptInt >= 60) {
                return;
            }
            Message messageObtain2 = Message.obtain();
            messageObtain2.what = 2;
            this.f22551c.f22553a.sendMessageDelayed(messageObtain2, iOptInt * 1000);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 133, 1697})
    private static class n implements x.c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static int f22552c;
        public static int tt;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Handler f22553a;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f22554i = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final InterfaceC0499tt f22555n;
        public final long sp;
        public final Intent uj;
        public final Context ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public Future<Boolean> f22556x;

        public n(Context context, Intent intent, int i10, InterfaceC0499tt interfaceC0499tt, long j10) {
            this.ve = context;
            this.uj = intent;
            tt = i10;
            this.f22555n = interfaceC0499tt;
            this.f22553a = new x(Looper.getMainLooper(), this);
            this.sp = j10;
        }

        @Override // com.byazt.u.x.c
        public void c(Message message) {
            if (message != null) {
                int i10 = message.what;
                if (i10 == 1) {
                    long j10 = this.sp;
                    if (j10 <= 0 || j10 > 10000) {
                        return;
                    }
                    f22552c = 1;
                    this.f22556x = com.byazt.zz.ve.t().submit(new uj(this.f22553a, this.ve, this.f22555n, this.sp));
                    return;
                }
                if (i10 == 2) {
                    f22552c = 2;
                    this.f22553a.removeMessages(2);
                    this.f22553a.removeMessages(1);
                    Future<Boolean> future = this.f22556x;
                    if (future != null) {
                        future.cancel(true);
                    }
                    if (!this.f22554i && (Build.VERSION.SDK_INT < 29 || com.byazt.g.c.c().tt())) {
                        Intent intent = this.uj;
                        if (intent != null) {
                            tt.tt(this.ve, intent);
                        } else {
                            DownloadInfo downloadInfo = Downloader.getInstance(this.ve).getDownloadInfo(tt);
                            if (downloadInfo != null && downloadInfo.isDownloadOverStatus()) {
                                com.byazt.z.ve.tt(this.ve, tt, false);
                            }
                        }
                        this.f22554i = true;
                    }
                    tt.tt(tt, this.uj == null, tt.c(this.ve));
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.byazt.z.tt$tt, reason: collision with other inner class name */
    interface InterfaceC0499tt {
        boolean c(@NonNull Context context);
    }

    @com.byazt.zqa.c(c = {0, 1, 133, 1886})
    private static class uj implements Callable<Boolean> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Context f22557c;
        public final InterfaceC0499tt tt;
        public final long uj;
        public final Handler ve;

        public uj(Handler handler, Context context, InterfaceC0499tt interfaceC0499tt, long j10) {
            this.f22557c = context;
            this.tt = interfaceC0499tt;
            this.ve = handler;
            this.uj = j10;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            try {
                InterfaceC0499tt interfaceC0499tt = this.tt;
                if (interfaceC0499tt != null) {
                    long j10 = this.uj;
                    if (j10 > 0 && j10 <= 10000) {
                        Context context = this.f22557c;
                        boolean zC = context != null ? interfaceC0499tt.c(context) : false;
                        Message messageObtain = Message.obtain();
                        if (zC) {
                            messageObtain.what = 2;
                            this.ve.sendMessage(messageObtain);
                        } else {
                            messageObtain.what = 1;
                            this.ve.sendMessageDelayed(messageObtain, this.uj);
                        }
                        return Boolean.FALSE;
                    }
                }
                return Boolean.FALSE;
            } catch (Throwable unused) {
            }
        }
    }

    public interface ve {
        void c(DownloadInfo downloadInfo, com.byazt.z.c cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(api = 26)
    public static boolean n(Context context) {
        if (context == null) {
            return true;
        }
        try {
            return context.getPackageManager().canRequestPackageInstalls();
        } catch (Throwable unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean uj(Context context) {
        if (context == null) {
            return true;
        }
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "install_non_market_apps", 1) > 0;
        } catch (Throwable unused) {
            return true;
        }
    }

    private static boolean tt(Context context, @NonNull DownloadInfo downloadInfo, JSONObject jSONObject, @NonNull com.byazt.z.c cVar) {
        if (context != null && jSONObject != null) {
            String savePath = downloadInfo.getSavePath();
            if (TextUtils.isEmpty(savePath)) {
                return false;
            }
            cVar.uj = "custom";
            com.byazt.a.c cVarC = com.byazt.a.uj.c(context, "custom", jSONObject, downloadInfo);
            if (cVarC != null && cVarC.c()) {
                Intent intentTt = cVarC.tt();
                if (intentTt == null) {
                    return false;
                }
                if (!c(new File(savePath), downloadInfo, jSONObject)) {
                    cVar.tt = 6;
                } else {
                    if (tt(context, intentTt)) {
                        cVar.tt = 0;
                        return true;
                    }
                    cVar.tt = 1;
                }
                return false;
            }
            cVar.tt = 3;
        }
        return false;
    }

    private static void uj(int i10, JSONObject jSONObject) {
        int i11 = 1;
        boolean z10 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z10) {
            i11 = 2;
        }
        try {
            jSONObject2.put("scene", i11);
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.zz.ve.bm().tt(i10, "guide_auth_dialog_show", jSONObject2);
    }

    public static void ve(int i10, JSONObject jSONObject) {
        int i11 = 1;
        boolean z10 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z10) {
            i11 = 2;
        }
        try {
            jSONObject2.put("scene", i11);
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.zz.ve.bm().tt(i10, "guide_auth_open_setting", jSONObject2);
    }

    public static boolean c(Context context, DownloadInfo downloadInfo, Intent intent, boolean z10) {
        JSONArray jSONArrayN = com.byazt.k.c.c(downloadInfo.getId()).n("ah_plans");
        if (jSONArrayN == null) {
            return false;
        }
        int length = jSONArrayN.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayN.optJSONObject(i10);
            if (com.byazt.i.c.c(jSONObjectOptJSONObject) && c(context, downloadInfo, intent, jSONObjectOptJSONObject, z10)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:100:0x0173  */
    /* JADX WARN: Code duplicated, block: B:107:0x0196  */
    /* JADX WARN: Code duplicated, block: B:10:0x0030  */
    /* JADX WARN: Code duplicated, block: B:110:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:97:0x0169  */
    /* JADX WARN: Code duplicated, block: B:99:0x0171 A[PHI: r15
      0x0171: PHI (r15v13 com.byazt.z.c) = (r15v2 com.byazt.z.c), (r15v8 com.byazt.z.c), (r15v14 com.byazt.z.c) binds: [B:98:0x016f, B:88:0x0147, B:60:0x00e7] A[DONT_GENERATE, DONT_INLINE]] */
    private static boolean c(Context context, DownloadInfo downloadInfo, Intent intent, JSONObject jSONObject, boolean z10) {
        com.byazt.z.c cVarC;
        boolean zC;
        boolean z11 = false;
        if (jSONObject != null && downloadInfo != null) {
            com.byazt.z.c cVar = new com.byazt.z.c();
            String strOptString = jSONObject.optString("type");
            if (!TextUtils.isEmpty(strOptString)) {
                com.byazt.k.c cVarC2 = com.byazt.k.c.c(downloadInfo);
                cVar.f22518c = strOptString;
                strOptString.hashCode();
                switch (strOptString) {
                    case "plan_a":
                    case "plan_e":
                        if (!downloadInfo.isSavePathRedirected()) {
                            cVar.tt = downloadInfo.getAntiHijackErrorCode(-1);
                        } else {
                            cVarC = c(jSONObject, cVarC2);
                            if (cVarC.tt == 0) {
                                cVar = cVarC;
                            } else if (!strOptString.equals("plan_f") && TextUtils.isEmpty(downloadInfo.getDBJsonString("file_content_uri"))) {
                                cVar.tt = downloadInfo.getAntiHijackErrorCode(10);
                            } else {
                                zC = c(context, downloadInfo, jSONObject, cVar);
                                z11 = zC;
                            }
                        }
                        if (z11) {
                            downloadInfo.getTempCacheData().put("ah_attempt", cVar.c());
                        }
                        if (tt != null) {
                            downloadInfo.getTempCacheData().put(Constants.WS_MESSAGE_TYPE_INTENT, intent);
                            tt.c(downloadInfo, cVar);
                            break;
                        }
                        break;
                    case "plan_b":
                        cVarC = c(jSONObject, cVarC2);
                        if (cVarC.tt != 0) {
                            cVar = cVarC;
                        } else if (!downloadInfo.isSavePathRedirected()) {
                            cVar.tt = downloadInfo.getAntiHijackErrorCode(-1);
                        } else {
                            zC = tt(context, downloadInfo, jSONObject, cVar);
                            z11 = zC;
                        }
                        if (z11) {
                            downloadInfo.getTempCacheData().put("ah_attempt", cVar.c());
                        }
                        if (tt != null) {
                            downloadInfo.getTempCacheData().put(Constants.WS_MESSAGE_TYPE_INTENT, intent);
                            tt.c(downloadInfo, cVar);
                            break;
                        }
                        break;
                    case "plan_c":
                        if (Build.VERSION.SDK_INT >= 26 || com.byazt.i.n.ve()) {
                            if ((jSONObject.optInt("enable_for_all", 0) == 1) || z10) {
                                if (!(jSONObject.optInt("show_unknown_source_on_startup") == 1)) {
                                    zC = c(context, intent, jSONObject, downloadInfo.getId(), cVar);
                                    z11 = zC;
                                }
                            }
                        }
                        if (z11) {
                            downloadInfo.getTempCacheData().put("ah_attempt", cVar.c());
                        }
                        if (tt != null) {
                            downloadInfo.getTempCacheData().put(Constants.WS_MESSAGE_TYPE_INTENT, intent);
                            tt.c(downloadInfo, cVar);
                            break;
                        }
                        break;
                    case "plan_d":
                        cVar.f22518c = "plan_d";
                        if (!com.byazt.i.n.uj()) {
                            cVar.tt = 2;
                        } else {
                            try {
                                com.byazt.z.ve.c(context, intent);
                                cVar.tt = 0;
                                z11 = true;
                            } catch (Throwable th) {
                                cVar.tt = 4;
                                cVar.ve = th.toString();
                            }
                        }
                        if (z11) {
                            downloadInfo.getTempCacheData().put("ah_attempt", cVar.c());
                        }
                        if (tt != null) {
                            downloadInfo.getTempCacheData().put(Constants.WS_MESSAGE_TYPE_INTENT, intent);
                            tt.c(downloadInfo, cVar);
                            break;
                        }
                        break;
                    case "plan_f":
                        cVarC = c(jSONObject, cVarC2);
                        if (cVarC.tt == 0) {
                            if (!strOptString.equals("plan_f")) {
                            }
                            zC = c(context, downloadInfo, jSONObject, cVar);
                            z11 = zC;
                            break;
                        } else {
                            cVar = cVarC;
                        }
                        if (z11) {
                            downloadInfo.getTempCacheData().put("ah_attempt", cVar.c());
                        }
                        if (tt != null) {
                            downloadInfo.getTempCacheData().put(Constants.WS_MESSAGE_TYPE_INTENT, intent);
                            tt.c(downloadInfo, cVar);
                            break;
                        }
                        break;
                    case "plan_g":
                        cVarC = tt(jSONObject, cVarC2);
                        if (cVarC.tt != 0) {
                            cVar = cVarC;
                        } else {
                            zC = c(context, downloadInfo, jSONObject, cVar, cVarC2);
                            z11 = zC;
                        }
                        if (z11) {
                            downloadInfo.getTempCacheData().put("ah_attempt", cVar.c());
                        }
                        if (tt != null) {
                            downloadInfo.getTempCacheData().put(Constants.WS_MESSAGE_TYPE_INTENT, intent);
                            tt.c(downloadInfo, cVar);
                            break;
                        }
                        break;
                    case "plan_h":
                        String strC = com.byazt.i.ve.c(cVarC2.ve("bh"), cVarC2.ve("s"));
                        com.byazt.z.c cVarC3 = c(jSONObject, strC, context, cVarC2);
                        if (cVarC3.tt != 0) {
                            cVar = cVarC3;
                        } else {
                            String packageName = context.getPackageName();
                            if (com.byazt.i.c.c(com.byazt.k.c.tt(), context, strC)) {
                                try {
                                    com.byazt.z.ve.c(context, intent);
                                    cVar.tt = 0;
                                    com.byazt.i.c.c(com.byazt.k.c.tt(), context, packageName);
                                    z11 = true;
                                } catch (Throwable th2) {
                                    try {
                                        cVar.tt = 1;
                                        cVar.ve = th2.toString();
                                        com.byazt.i.c.c(com.byazt.k.c.tt(), context, packageName);
                                    } catch (Throwable th3) {
                                        com.byazt.i.c.c(com.byazt.k.c.tt(), context, packageName);
                                        throw th3;
                                    }
                                }
                            } else {
                                cVar.tt = 11;
                            }
                        }
                        if (z11) {
                            downloadInfo.getTempCacheData().put("ah_attempt", cVar.c());
                        }
                        if (tt != null) {
                            downloadInfo.getTempCacheData().put(Constants.WS_MESSAGE_TYPE_INTENT, intent);
                            tt.c(downloadInfo, cVar);
                            break;
                        }
                        break;
                    default:
                        if (z11) {
                            downloadInfo.getTempCacheData().put("ah_attempt", cVar.c());
                        }
                        if (tt != null) {
                            downloadInfo.getTempCacheData().put(Constants.WS_MESSAGE_TYPE_INTENT, intent);
                            tt.c(downloadInfo, cVar);
                            break;
                        }
                        break;
                }
            }
        }
        return z11;
    }

    public static com.byazt.z.c tt(JSONObject jSONObject, com.byazt.k.c cVar) {
        com.byazt.z.c cVar2 = new com.byazt.z.c();
        if (jSONObject == null) {
            return cVar2;
        }
        cVar2.f22518c = jSONObject.optString("type");
        cVar2.f22519n = "vbi";
        if (com.byazt.a.uj.c(com.byazt.zz.ve.ic(), "vbi", jSONObject, cVar)) {
            cVar2.tt = 0;
        } else {
            c(cVar2, 3);
        }
        return cVar2;
    }

    public static void tt(int i10, JSONObject jSONObject) {
        int i11 = 1;
        boolean z10 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z10) {
            i11 = 2;
        }
        try {
            jSONObject2.put("scene", i11);
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.zz.ve.bm().tt(i10, "guide_auth_dialog_cancel", jSONObject2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(int i10, boolean z10, boolean z11) {
        JSONObject jSONObject = new JSONObject();
        int i11 = 1;
        try {
            jSONObject.put("scene", z10 ? 1 : 2);
            if (!z11) {
                i11 = 2;
            }
            jSONObject.put(FontsContractCompat.Columns.RESULT_CODE, i11);
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.zz.ve.bm().tt(i10, "guide_auth_result", jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tt(Context context, Intent intent) {
        return c(context, intent, true);
    }

    private static boolean c(Context context, @NonNull DownloadInfo downloadInfo, JSONObject jSONObject, @NonNull com.byazt.z.c cVar, com.byazt.k.c cVar2) {
        boolean zTt;
        String strOptString = jSONObject.optString("type");
        cVar.f22518c = strOptString;
        Intent intentTt = com.byazt.a.uj.c(context, "vbi", jSONObject, downloadInfo).tt();
        StringBuilder sb2 = new StringBuilder();
        try {
            zTt = tt(context, intentTt);
        } catch (Throwable th) {
            sb2.append(strOptString);
            sb2.append(" startActivity failed : ");
            sb2.append(c(th));
            c(cVar, 1);
            zTt = false;
        }
        if (!zTt) {
            cVar.ve = sb2.toString();
        } else {
            cVar.tt = 0;
        }
        return true;
    }

    private static boolean c(Context context, DownloadInfo downloadInfo, JSONObject jSONObject, com.byazt.z.c cVar) {
        String str;
        boolean z10;
        if (context != null && jSONObject != null) {
            String strOptString = jSONObject.optString("device_plans");
            cVar.f22519n = strOptString;
            if (!TextUtils.isEmpty(strOptString)) {
                String[] strArrSplit = strOptString.split(",");
                String savePath = downloadInfo.getSavePath();
                if (TextUtils.isEmpty(savePath)) {
                    return false;
                }
                File file = new File(savePath);
                StringBuilder sb2 = new StringBuilder();
                int length = strArrSplit.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        str = null;
                        z10 = false;
                        break;
                    }
                    str = strArrSplit[i10];
                    com.byazt.a.c cVarC = com.byazt.a.uj.c(context, str, jSONObject, downloadInfo);
                    if (cVarC != null) {
                        Intent intentTt = cVarC.tt();
                        if (intentTt != null) {
                            if (c(file, downloadInfo, jSONObject)) {
                                z10 = true;
                                try {
                                    c(context, intentTt, false);
                                    break;
                                } catch (Throwable th) {
                                    sb2.append(str);
                                    sb2.append(" startActivity failed : ");
                                    sb2.append(c(th));
                                    c(cVar, 1);
                                }
                            } else {
                                c(cVar, 6);
                                sb2.append(str);
                                sb2.append(" createDescFile failed! ");
                            }
                        } else {
                            c(cVar, 3);
                            sb2.append(str);
                            sb2.append(" resolveActivity failed! ");
                        }
                    }
                    sb2.append("  ");
                    i10++;
                }
                if (!z10) {
                    cVar.ve = sb2.toString();
                } else {
                    cVar.uj = str;
                    cVar.tt = 0;
                }
                return z10;
            }
        }
        return false;
    }

    public static int c(@NonNull com.byazt.k.c cVar) {
        JSONObject jSONObjectUj = cVar.uj("download_dir");
        if (!(jSONObjectUj != null ? !TextUtils.isEmpty(jSONObjectUj.optString("dir_name")) : false)) {
            return 5;
        }
        if (!com.byazt.k.c.ve().c("get_download_info_by_list")) {
            return 4;
        }
        JSONArray jSONArrayN = cVar.n("ah_plans");
        int i10 = -1;
        if (jSONArrayN != null) {
            int length = jSONArrayN.length();
            for (int i11 = 0; i11 < length; i11++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayN.optJSONObject(i11);
                if (com.byazt.i.c.c(jSONObjectOptJSONObject)) {
                    String strOptString = jSONObjectOptJSONObject.optString("type");
                    if (!"plan_a".equals(strOptString) && !"plan_b".equals(strOptString) && !"plan_e".equals(strOptString) && !"plan_f".equals(strOptString)) {
                        if ("plan_d".equalsIgnoreCase(strOptString) || "plan_h".equalsIgnoreCase(strOptString) || ("plan_g".equalsIgnoreCase(strOptString) && (i10 = tt(jSONObjectOptJSONObject, cVar).tt) == 0)) {
                            return 0;
                        }
                    } else {
                        i10 = c(jSONObjectOptJSONObject, cVar).tt;
                        if (i10 == 0) {
                            return 0;
                        }
                    }
                }
            }
        }
        return i10;
    }

    @NonNull
    public static com.byazt.z.c c(JSONObject jSONObject, com.byazt.k.c cVar) {
        com.byazt.z.c cVar2 = new com.byazt.z.c();
        if (jSONObject == null) {
            return cVar2;
        }
        String strOptString = jSONObject.optString("type");
        cVar2.f22518c = strOptString;
        if ("plan_b".equals(strOptString)) {
            cVar2.f22519n = "custom";
            if (com.byazt.a.uj.c(com.byazt.zz.ve.ic(), "custom", jSONObject, cVar)) {
                cVar2.tt = 0;
                return cVar2;
            }
            c(cVar2, 3);
        } else {
            String strOptString2 = jSONObject.optString("device_plans");
            cVar2.f22519n = strOptString2;
            if (!TextUtils.isEmpty(strOptString2)) {
                for (String str : strOptString2.split(",")) {
                    if (com.byazt.a.uj.c(com.byazt.zz.ve.ic(), str, jSONObject, cVar)) {
                        cVar2.tt = 0;
                        return cVar2;
                    }
                    c(cVar2, 3);
                }
            }
        }
        return cVar2;
    }

    public static com.byazt.z.c c(JSONObject jSONObject, String str, Context context, com.byazt.k.c cVar) {
        com.byazt.z.c cVar2 = new com.byazt.z.c();
        if (jSONObject != null && com.byazt.i.n.ve()) {
            cVar2.f22518c = jSONObject.optString("type");
            if (cVar.c("bi", 0) == 1) {
                cVar2.tt = 0;
                return cVar2;
            }
            if (c(context)) {
                cVar2.tt = 2;
            } else if (com.byazt.i.c.c(str) != null) {
                cVar2.tt = 0;
            } else {
                cVar2.tt = 9;
            }
        }
        return cVar2;
    }

    private static void c(com.byazt.z.c cVar, int i10) {
        int i11 = cVar.tt;
        if (i11 != -1) {
            cVar.tt = (i11 * 10) + i10;
        } else {
            cVar.tt = i10;
        }
    }

    private static boolean c(File file, DownloadInfo downloadInfo, @NonNull JSONObject jSONObject) {
        if (file == null) {
            return false;
        }
        String path = file.getPath();
        JSONObject jSONObjectUj = com.byazt.k.c.c(downloadInfo.getId()).uj("download_dir");
        File file2 = null;
        String strOptString = jSONObjectUj != null ? jSONObjectUj.optString("ins_desc") : null;
        if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString)) {
            file2 = new File(path + File.separator + strOptString);
        }
        if (file2 == null) {
            return true;
        }
        try {
            if (!file2.createNewFile()) {
                return true;
            }
            file2.deleteOnExit();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean c(Context context, @Nullable Intent intent, JSONObject jSONObject, int i10, @Nullable com.byazt.z.c cVar) {
        if (context != null && jSONObject != null) {
            long jOptLong = jSONObject.optLong("jump_interval", 0L);
            if (jOptLong <= 0) {
                return false;
            }
            SharedPreferences sharedPreferencesTt = com.byazt.nys.tt.tt(context, "sp_ah_config", 0);
            if ((System.currentTimeMillis() - sharedPreferencesTt.getLong("last_jump_unknown_source_time", 0L)) / 60000 >= jOptLong && !c(context)) {
                sharedPreferencesTt.edit().putLong("last_jump_unknown_source_time", System.currentTimeMillis()).apply();
                if (jSONObject.optInt("show_unknown_source_dialog", 0) == 1) {
                    Intent intent2 = new Intent(context, (Class<?>) JumpUnknownSourceActivity.class);
                    intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                    intent2.putExtra(Constants.WS_MESSAGE_TYPE_INTENT, intent);
                    intent2.putExtra("config", jSONObject.toString());
                    intent2.putExtra("id", i10);
                    try {
                        if (c(context, intent2, false)) {
                            uj(i10, jSONObject);
                        }
                        return true;
                    } catch (Throwable th) {
                        if (cVar != null) {
                            cVar.tt = 1;
                            cVar.ve = "tryShowUnknownSourceDialog" + c(th);
                        }
                        return false;
                    }
                }
                if (c(context, intent, i10, jSONObject)) {
                    ve(i10, jSONObject);
                }
                return true;
            }
        }
        return false;
    }

    public static boolean c(Context context, @Nullable Intent intent, int i10, JSONObject jSONObject) {
        try {
            if (com.byazt.i.n.ve() && Build.VERSION.SDK_INT < 26 && !uj(context)) {
                com.byazt.a.a aVar = new com.byazt.a.a(context);
                if (aVar.c()) {
                    c(context, intent, i10, jSONObject, new InterfaceC0499tt() { // from class: com.byazt.z.tt.1
                        @Override // com.byazt.z.tt.InterfaceC0499tt
                        public boolean c(@NonNull Context context2) {
                            return tt.uj(context2);
                        }
                    });
                    return tt(context, aVar.tt());
                }
            } else if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26 && !n(context)) {
                com.byazt.a.tt ttVar = new com.byazt.a.tt(context);
                if (ttVar.c()) {
                    c(context, intent, i10, jSONObject, new InterfaceC0499tt() { // from class: com.byazt.z.tt.2
                        @Override // com.byazt.z.tt.InterfaceC0499tt
                        public boolean c(@NonNull Context context2) {
                            return tt.n(context2);
                        }
                    });
                    return tt(context, ttVar.tt());
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean c(Context context) {
        if (context == null) {
            return true;
        }
        try {
            if (com.byazt.i.n.ve() && Build.VERSION.SDK_INT < 26) {
                return uj(context);
            }
            if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26) {
                return n(context);
            }
            return true;
        } catch (Throwable unused) {
        }
    }

    public static boolean c() {
        return n.f22552c == 1;
    }

    public static void c(int i10, JSONObject jSONObject) {
        int i11 = 1;
        boolean z10 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z10) {
            i11 = 2;
        }
        try {
            jSONObject2.put("scene", i11);
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.zz.ve.bm().tt(i10, "guide_auth_dialog_confirm", jSONObject2);
    }

    private static void c(Context context, Intent intent, int i10, JSONObject jSONObject, InterfaceC0499tt interfaceC0499tt) {
        if (ve != null) {
            com.byazt.g.c.c().tt(ve);
            ve = null;
        }
        ve = new c(context, intent, i10, jSONObject, interfaceC0499tt);
        com.byazt.g.c.c().c(ve);
    }

    public static boolean c(Context context, Intent intent, boolean z10) {
        if (context == null || intent == null) {
            return false;
        }
        if (z10) {
            try {
                intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
                context.startActivity(intent);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        context.startActivity(intent);
        return true;
    }

    public static String c(Throwable th) {
        String string = th.toString();
        return string.length() > 800 ? string.substring(0, 500) : string;
    }

    public static void c(ve veVar) {
        tt = veVar;
    }
}
