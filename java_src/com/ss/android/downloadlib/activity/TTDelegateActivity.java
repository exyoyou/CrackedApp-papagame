package com.ss.android.downloadlib.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.bv.BaseConstants;
import com.byazt.dd.tt;
import com.byazt.de.n;
import com.byazt.di.da;
import com.byazt.gq.t;
import com.byazt.gq.z;
import com.byazt.hu.u;
import com.byazt.hu.x;
import com.byazt.nn.a;
import com.byazt.nr.m;
import com.byazt.ok.c;
import com.byazt.ou.rl;
import com.byazt.t.DownloadInfo;
import com.byazt.tg.ve;
import com.byazt.tk.AdBaseConstants;
import com.byazt.zz.Downloader;
import com.bykv.vk.component.ttvideo.player.C;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TTDelegateActivity extends Activity {
    private static c uj;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Intent f82433c = null;
    private boolean tt;
    private tt ve;

    public static void c(String str, String[] strArr) {
        Intent intent = new Intent(t.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 1);
        intent.putExtra("permission_id_key", str);
        intent.putExtra("permission_content_key", strArr);
        if (t.getContext() != null) {
            t.getContext().startActivity(intent);
        }
    }

    public static void tt(String str, com.byazt.dd.c cVar) {
        Intent intentVe = ve(cVar);
        intentVe.addFlags(C.ENCODING_PCM_MU_LAW);
        intentVe.putExtra("type", 11);
        intentVe.putExtra("package_name", str);
        if (t.getContext() != null) {
            t.getContext().startActivity(intentVe);
        }
    }

    private static Intent ve(@NonNull com.byazt.dd.c cVar) {
        return new Intent(t.getContext(), (Class<?>) TTDelegateActivity.class);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        tt();
        this.f82433c = getIntent();
        t.tt(this);
        c();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.f82433c = intent;
        t.tt(this);
        c();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        t.n().c(this, i10, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onStop() {
        tt ttVar;
        super.onStop();
        if (!this.tt || (ttVar = this.ve) == null) {
            return;
        }
        DownloadInfo downloadInfoC = !TextUtils.isEmpty(ttVar.oz()) ? da.c(t.getContext()).c(this.ve.oz(), null, true) : da.c(t.getContext()).tt(this.ve.c());
        if (downloadInfoC == null || downloadInfoC.getCurBytes() < downloadInfoC.getTotalBytes() || isFinishing()) {
            return;
        }
        finish();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0098  */
    private void ve() {
        int iC;
        int i10;
        int i11;
        CharSequence charSequence;
        long longExtra = this.f82433c.getLongExtra("model_id", 0L);
        String stringExtra = this.f82433c.getStringExtra("message_text");
        String stringExtra2 = this.f82433c.getStringExtra("positive_button_text");
        String stringExtra3 = this.f82433c.getStringExtra("negative_button_text");
        String stringExtra4 = this.f82433c.getStringExtra("delete_button_text");
        int intExtra = this.f82433c.getIntExtra("type", 0);
        tt ttVarUj = a.c().uj(longExtra);
        if (ttVarUj == null) {
            iC = -1;
            i10 = 0;
            i11 = 0;
        } else {
            DownloadInfo downloadInfoC = !TextUtils.isEmpty(ttVarUj.oz()) ? da.c(t.getContext()).c(ttVarUj.oz(), null, true) : da.c(t.getContext()).tt(ttVarUj.c());
            if (downloadInfoC != null) {
                long curBytes = downloadInfoC.getCurBytes();
                long totalBytes = downloadInfoC.getTotalBytes();
                if (curBytes <= 0 || totalBytes <= 0) {
                    iC = -1;
                    i10 = 0;
                    i11 = 0;
                } else {
                    i11 = (int) (curBytes / 1048576);
                    i10 = (int) (totalBytes / 1048576);
                    iC = com.byazt.gq.da.c(downloadInfoC.getId(), (int) ((curBytes * 100) / totalBytes));
                }
            } else {
                iC = -1;
                i10 = 0;
                i11 = 0;
            }
        }
        n.c cVarVe = new n.c(this).c(false).c(stringExtra).tt(stringExtra2).ve(stringExtra3);
        if (intExtra == 7) {
            if (com.byazt.tg.a.c() == null) {
                return;
            }
            cVarVe.c(com.byazt.tg.a.c());
            cVarVe.c().show();
            charSequence = "download_percent";
        } else if (intExtra == 8) {
            if (com.byazt.tg.c.c() == null) {
                return;
            }
            cVarVe.c(com.byazt.tg.c.c());
            cVarVe.c().show();
            charSequence = "apk_size";
        } else if (intExtra == 20) {
            if (ve.c() == null || ve.tt() == null) {
                return;
            }
            cVarVe.c(ve.c()).uj(stringExtra4).c(ve.tt());
            cVarVe.c().show();
            charSequence = "download_percent_cancel";
        } else if (intExtra != 21) {
            charSequence = "";
        } else {
            if (com.byazt.tg.tt.c() == null || com.byazt.tg.tt.tt() == null) {
                return;
            }
            cVarVe.c(com.byazt.tg.tt.c()).uj(stringExtra4).c(com.byazt.tg.tt.tt());
            cVarVe.c().show();
            charSequence = "apk_size_cancel";
        }
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        this.tt = true;
        this.ve = ttVarUj;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("pause_optimise_type", charSequence);
            jSONObject.putOpt("pause_optimise_action", "show_dialog");
            jSONObject.putOpt("download_percent", Integer.valueOf(iC));
            jSONObject.putOpt("download_current_bytes", Integer.valueOf(i11));
            jSONObject.putOpt("download_total_bytes", Integer.valueOf(i10));
        } catch (JSONException e10) {
            m.c(e10);
        }
        if (TextUtils.equals(charSequence, "download_percent") || TextUtils.equals(charSequence, "apk_size")) {
            com.byazt.zn.c.c().c("pause_optimise", jSONObject, ttVarUj);
        } else if (TextUtils.equals(charSequence, "download_percent_cancel") || TextUtils.equals(charSequence, "apk_size_cancel")) {
            com.byazt.zn.c.c().c("pause_cancel_optimise", jSONObject, ttVarUj);
        }
    }

    public static void tt(String str, long j10, String str2) {
        Intent intent = new Intent(t.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 14);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j10);
        intent.putExtra("market_app_id", str2);
        if (t.getContext() != null) {
            t.getContext().startActivity(intent);
        }
    }

    public static void c(String str, com.byazt.dd.c cVar) {
        Intent intentVe = ve(cVar);
        intentVe.addFlags(C.ENCODING_PCM_MU_LAW);
        intentVe.putExtra("type", 2);
        intentVe.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
        if (t.getContext() != null) {
            t.getContext().startActivity(intentVe);
        }
    }

    public static void c(com.byazt.dd.c cVar) {
        Intent intentVe = ve(cVar);
        intentVe.addFlags(C.ENCODING_PCM_MU_LAW);
        intentVe.putExtra("type", 4);
        intentVe.putExtra("model_id", cVar.tt());
        if (t.getContext() != null) {
            t.getContext().startActivity(intentVe);
        }
    }

    public static void tt(@NonNull com.byazt.dd.c cVar) {
        c(cVar, 5, "", "", "", "");
    }

    public static void tt(@NonNull com.byazt.dd.c cVar, String str, String str2, String str3) {
        c(cVar, 7, str, str2, str3, "");
    }

    public static void tt(@NonNull com.byazt.dd.c cVar, String str, String str2, String str3, String str4) {
        c(cVar, 20, str, str2, str3, str4);
    }

    private void tt() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    public static void c(com.byazt.dd.c cVar, c cVar2) {
        Intent intentVe = ve(cVar);
        intentVe.addFlags(C.ENCODING_PCM_MU_LAW);
        intentVe.putExtra("type", 9);
        uj = cVar2;
        if (t.getContext() != null) {
            t.getContext().startActivity(intentVe);
        }
    }

    private void tt(final String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null && strArr.length > 0) {
            rl rlVar = new rl() { // from class: com.ss.android.downloadlib.activity.TTDelegateActivity.1
                public WeakReference<Activity> ve;

                {
                    this.ve = new WeakReference<>(TTDelegateActivity.this);
                }

                @Override // com.byazt.ou.rl
                public void c() {
                    com.byazt.hu.da.c(str);
                    com.byazt.z.ve.c(this.ve.get());
                }

                @Override // com.byazt.ou.rl
                public void c(String str2) {
                    com.byazt.hu.da.c(str, str2);
                    com.byazt.z.ve.c(this.ve.get());
                }
            };
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    t.n().c(this, strArr, rlVar);
                    return;
                } catch (Exception e10) {
                    t.gt().c(e10, "requestPermission");
                }
            }
            rlVar.c();
            return;
        }
        com.byazt.z.ve.c((Activity) this);
    }

    public static void c(long j10) {
        Intent intent = new Intent(t.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 10);
        intent.putExtra("app_info_id", j10);
        if (t.getContext() != null) {
            t.getContext().startActivity(intent);
        }
    }

    private void tt(String str) {
        Intent intentSp = u.sp(this, str);
        if (intentSp == null) {
            com.byazt.z.ve.c((Activity) this);
            return;
        }
        try {
            intentSp.addFlags(C.ENCODING_PCM_MU_LAW);
            intentSp.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            startActivity(intentSp);
        } catch (Exception e10) {
            m.c(e10);
        } finally {
            com.byazt.z.ve.c((Activity) this);
        }
    }

    public static void c(String str, long j10, String str2, @NonNull JSONObject jSONObject) {
        Intent intent = new Intent(t.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 12);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j10);
        intent.putExtra(com.alipay.sdk.authjs.a.f7127l, str2);
        intent.putExtra("ext_json", jSONObject.toString());
        if (t.getContext() != null) {
            t.getContext().startActivity(intent);
        }
    }

    private void tt(long j10) {
        final tt ttVarUj = a.c().uj(j10);
        if (ttVarUj == null) {
            com.byazt.dm.ve.c().c("showOpenAppDialogInner nativeModel null");
            com.byazt.z.ve.c((Activity) this);
            return;
        }
        com.byazt.ou.u uVarVe = t.ve();
        com.byazt.e.tt.c cVarC = new com.byazt.e.tt.c(this).c("已安装完成");
        Object[] objArr = new Object[1];
        objArr[0] = TextUtils.isEmpty(ttVarUj.aw()) ? "刚刚下载的应用" : ttVarUj.aw();
        uVarVe.tt(cVarC.tt(String.format("%1$s已安装完成，是否立即打开？", objArr)).ve("打开").uj("取消").c(false).c(u.uj(this, ttVarUj.n())).c(new com.byazt.e.tt.InterfaceC0300tt() { // from class: com.ss.android.downloadlib.activity.TTDelegateActivity.2
            @Override // com.byazt.e.tt.InterfaceC0300tt
            public void c(DialogInterface dialogInterface) {
                com.byazt.us.c.tt(ttVarUj);
                TTDelegateActivity tTDelegateActivity = TTDelegateActivity.this;
                if (tTDelegateActivity != null && !tTDelegateActivity.isFinishing()) {
                    dialogInterface.dismiss();
                }
                com.byazt.z.ve.c((Activity) TTDelegateActivity.this);
            }

            @Override // com.byazt.e.tt.InterfaceC0300tt
            public void tt(DialogInterface dialogInterface) {
                com.byazt.zn.c.c().tt("market_openapp_cancel", ttVarUj);
                TTDelegateActivity tTDelegateActivity = TTDelegateActivity.this;
                if (tTDelegateActivity != null && !tTDelegateActivity.isFinishing()) {
                    dialogInterface.dismiss();
                }
                com.byazt.z.ve.c((Activity) TTDelegateActivity.this);
            }

            @Override // com.byazt.e.tt.InterfaceC0300tt
            public void ve(DialogInterface dialogInterface) {
                com.byazt.z.ve.c((Activity) TTDelegateActivity.this);
            }
        }).c(2).c());
        com.byazt.zn.c.c().tt("market_openapp_window_show", ttVarUj);
    }

    public static void c(String str, long j10, String str2) {
        Intent intent = new Intent(t.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 13);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j10);
        intent.putExtra(BaseConstants.VIVO_MARKET_NEED_COMMENT, str2);
        if (t.getContext() != null) {
            t.getContext().startActivity(intent);
        }
    }

    public static void c(String str, long j10) {
        Intent intent = new Intent(t.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 15);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j10);
        if (t.getContext() != null) {
            t.getContext().startActivity(intent);
        }
    }

    private void ve(long j10) {
        new com.byazt.lr.c(this, j10).show();
    }

    public static void c(@NonNull com.byazt.dd.c cVar, String str) {
        c(cVar, 19, "", "", "", str);
    }

    public static void c(@NonNull com.byazt.dd.c cVar, String str, String str2, String str3) {
        c(cVar, 8, str, str2, str3, "");
    }

    public static void c(@NonNull com.byazt.dd.c cVar, String str, String str2, String str3, String str4) {
        c(cVar, 21, str, str2, str3, str4);
    }

    private static void c(@NonNull com.byazt.dd.c cVar, int i10, String str, String str2, String str3, String str4) {
        Intent intentVe = ve(cVar);
        intentVe.addFlags(C.ENCODING_PCM_MU_LAW);
        intentVe.putExtra("type", i10);
        if (!TextUtils.isEmpty(str2)) {
            intentVe.putExtra("positive_button_text", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            intentVe.putExtra("negative_button_text", str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            intentVe.putExtra("delete_button_text", str4);
        }
        if (!TextUtils.isEmpty(str)) {
            intentVe.putExtra("message_text", str);
        }
        intentVe.putExtra("model_id", cVar.tt());
        if (t.getContext() != null) {
            t.getContext().startActivity(intentVe);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected void c() {
        Intent intent = this.f82433c;
        if (intent != null) {
            switch (intent.getIntExtra("type", 0)) {
                case 1:
                    tt(this.f82433c.getStringExtra("permission_id_key"), this.f82433c.getStringArrayExtra("permission_content_key"));
                    break;
                case 2:
                    c(this.f82433c.getStringExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL));
                    break;
                case 3:
                case 6:
                case 17:
                case 18:
                default:
                    com.byazt.z.ve.c((Activity) this);
                    break;
                case 4:
                    tt(this.f82433c.getLongExtra("model_id", 0L));
                    break;
                case 5:
                    c(this.f82433c.getLongExtra("model_id", 0L), "");
                    break;
                case 7:
                case 8:
                case 20:
                case 21:
                    ve();
                    break;
                case 9:
                    c cVar = uj;
                    if (cVar != null) {
                        cVar.c();
                    }
                    com.byazt.z.ve.c((Activity) this);
                    break;
                case 10:
                    ve(this.f82433c.getLongExtra("app_info_id", 0L));
                    break;
                case 11:
                    tt(this.f82433c.getStringExtra("package_name"));
                    break;
                case 12:
                    x.c(this, this.f82433c.getStringExtra("package_name"), this.f82433c.getLongExtra("model_id", 0L), this.f82433c.getStringExtra(com.alipay.sdk.authjs.a.f7127l), this.f82433c.getStringExtra("ext_json"));
                    com.byazt.z.ve.c((Activity) this);
                    break;
                case 13:
                    x.c(this, this.f82433c.getStringExtra("package_name"), this.f82433c.getLongExtra("model_id", 0L), this.f82433c.getStringExtra(BaseConstants.VIVO_MARKET_NEED_COMMENT));
                    com.byazt.z.ve.c((Activity) this);
                    break;
                case 14:
                    x.tt(this, this.f82433c.getStringExtra("package_name"), this.f82433c.getLongExtra("model_id", 0L), this.f82433c.getStringExtra("market_app_id"));
                    com.byazt.z.ve.c((Activity) this);
                    break;
                case 15:
                    x.c((Activity) this, this.f82433c.getStringExtra("package_name"), this.f82433c.getLongExtra("model_id", 0L));
                    com.byazt.z.ve.c((Activity) this);
                    break;
                case 16:
                    x.c((Context) this, this.f82433c.getStringExtra("package_name"), this.f82433c.getLongExtra("model_id", 0L));
                    com.byazt.z.ve.c((Activity) this);
                    break;
                case 19:
                    c(this.f82433c.getLongExtra("model_id", 0L), this.f82433c.getStringExtra("delete_button_text"));
                    break;
            }
            this.f82433c = null;
        }
    }

    private void c(long j10, String str) {
        if (z.c() == null) {
            return;
        }
        tt ttVarUj = a.c().uj(j10);
        if (ttVarUj != null) {
            DownloadInfo downloadInfo = Downloader.getInstance(t.getContext()).getDownloadInfo(ttVarUj.my());
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("time_after_click", Long.valueOf(System.currentTimeMillis() - ttVarUj.lo()));
                jSONObject.putOpt("click_download_size", Long.valueOf(ttVarUj.pu()));
                if (downloadInfo != null) {
                    jSONObject.putOpt("download_length", Long.valueOf(downloadInfo.getCurBytes()));
                    jSONObject.putOpt("download_percent", Long.valueOf(downloadInfo.getCurBytes() / downloadInfo.getTotalBytes()));
                    jSONObject.putOpt("download_apk_size", Long.valueOf(downloadInfo.getTotalBytes()));
                    jSONObject.putOpt("download_current_bytes", Integer.valueOf((int) (downloadInfo.getCurBytes() / 1048576)));
                    jSONObject.putOpt("download_total_bytes", Integer.valueOf((int) (downloadInfo.getTotalBytes() / 1048576)));
                }
            } catch (Exception e10) {
                m.c(e10);
            }
            if (!TextUtils.isEmpty(str)) {
                com.byazt.zn.c.c().c("cancel_pause_reserve_wifi_dialog_show", jSONObject, ttVarUj);
            } else {
                com.byazt.zn.c.c().tt("pause_reserve_wifi_dialog_show", jSONObject, ttVarUj);
            }
        }
        n.c cVarC = new n.c(this).c(false).c(z.c());
        if (!TextUtils.isEmpty(str)) {
            cVarC.uj(str).c(z.tt());
        }
        cVarC.c().show();
        this.tt = true;
        this.ve = ttVarUj;
    }

    private void c(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                com.byazt.z.ve.c((Activity) this);
                return;
            }
            Uri uri = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            if (com.byazt.k.c.ve().c("fix_app_link_flag")) {
                intent.addFlags(67108864);
            }
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            startActivity(intent);
        } catch (Exception e10) {
            m.c(e10);
        } finally {
            com.byazt.z.ve.c((Activity) this);
        }
    }
}
