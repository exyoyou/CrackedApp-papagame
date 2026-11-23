package com.join.mgps.activity.mygame.dialog;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.FileProvider;
import com.byazt.tk.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.t2;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.h;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import java.io.File;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import q5.f;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.wufungame_installappfirst_dialog)
public class InstallAppFirstNoticeDialog extends Activity {

    @ViewById
    TextView appshow;

    @ViewById
    CheckBox checkbox;
    DownloadTask downloadTask;

    @Extra
    int from;

    @Extra
    String gameId;

    @ViewById
    TextView gameName;

    @ViewById
    TextView goH5;

    @ViewById
    SimpleDraweeView icon;

    @ViewById
    SimpleDraweeView img;

    @ViewById
    TextView message;

    @ViewById
    LinearLayout moreSelecter;

    @Pref
    PrefDef_ prefDef_;

    @ViewById
    TextView startButn;
    boolean checkboxischecked = false;
    String imgUrl = "";

    @AfterViews
    void afterviews() {
        DownloadTask downloadTaskG = f.M().G(this.gameId);
        this.downloadTask = downloadTaskG;
        if (downloadTaskG == null) {
            finish();
        }
        l.d(this.icon, R.drawable.main_normal_icon, this.downloadTask.getPortraitURL());
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            finish();
            return;
        }
        this.gameName.setText(downloadTask.getShowName());
        this.appshow.setText("允许“" + a0.a(this) + "”安装应用");
        this.checkbox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.join.mgps.activity.mygame.dialog.InstallAppFirstNoticeDialog.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                InstallAppFirstNoticeDialog installAppFirstNoticeDialog = InstallAppFirstNoticeDialog.this;
                installAppFirstNoticeDialog.checkboxischecked = isChecked;
                installAppFirstNoticeDialog.prefDef_.firstInstallAppCompanyDialog().g(Boolean.valueOf(!InstallAppFirstNoticeDialog.this.checkboxischecked));
            }
        });
        t.l(this).R1(Event.showApkInstall, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
        String str = h.M + "/upload/images/20190625/hw.png";
        String str2 = h.M + "/upload/images/20190625/xm.png";
        String str3 = h.M + "/upload/images/20190625/oppo.png";
        String str4 = h.M + "/upload/images/20190625/vivo.png";
        String str5 = h.M + "/upload/images/20190625/Google.png";
        String str6 = Build.BRAND;
        if (t2.i(str6)) {
            if (MediationConstant.ADN_XIAOMI.equals(str6.toLowerCase())) {
                this.imgUrl = str2;
                this.img.setAspectRatio(1.07f);
            } else if ("oppo".equals(str6.toLowerCase())) {
                this.imgUrl = str3;
                this.img.setAspectRatio(0.905f);
            } else if ("vivo".equals(str6.toLowerCase())) {
                this.imgUrl = str4;
                this.img.setAspectRatio(1.244f);
            } else if ("huawei".equals(str6.toLowerCase()) || "honor".equals(str6.toLowerCase())) {
                this.imgUrl = str;
                this.img.setAspectRatio(1.3f);
            } else if ("google".equals(str6.toLowerCase())) {
                this.imgUrl = str5;
                this.img.setAspectRatio(1.14f);
            } else {
                this.imgUrl = str5;
                this.img.setAspectRatio(1.14f);
            }
            l.h(this.img, this.imgUrl);
        }
    }

    @Click
    void close() {
        boolean z10 = this.checkboxischecked;
        t.l(this).R1(Event.exitApkInstall, new Ext().setPosition((z10 ? 1 : 0) + "").setGameId(this.downloadTask.getCrc_link_type_val()));
        this.prefDef_.lastInstallApp().g("");
        finish();
    }

    public void installAPK(Activity activity, File apkFile) {
        Uri uriForFile;
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setFlags(1);
            if (activity != null) {
                uriForFile = FileProvider.getUriForFile(activity, activity.getPackageName() + ".fileprovider", apkFile);
            } else {
                uriForFile = FileProvider.getUriForFile(activity, "com.join.android.app.mgsim.wufun.fileprovider", apkFile);
            }
            intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
        } else {
            intent.setDataAndType(Uri.fromFile(apkFile), AdBaseConstants.MIME_APK);
        }
        activity.startActivityForResult(intent, 1);
        finish();
    }

    @Click
    void startButn() {
        boolean z10 = this.checkboxischecked;
        this.prefDef_.lastInstallApp().g(this.downloadTask.getCrc_link_type_val());
        t.l(this).R1(Event.onclickApkInstall, new Ext().setPosition((z10 ? 1 : 0) + "").setGameId(this.downloadTask.getCrc_link_type_val()));
        installAPK(this, new File(this.downloadTask.getGameZipPath()));
    }
}
