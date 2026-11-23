package com.join.mgps.activity.mygame.dialog;

import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.g;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.f2;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.p2;
import com.join.mgps.Util.t2;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.Filepath;
import com.join.mgps.dto.RequestDomainInfoArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.pref.h;
import com.join.mgps.rpc.impl.i;
import com.join.mgps.rpc.k;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.php25.PDownload.d;
import java.io.File;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import q5.f;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.wufungame_unzipfailed_dialog)
public class UnzipFailedDialog extends BaseDialogActivity {
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
    LinearLayout llReUnzip;

    @ViewById
    View main;

    @ViewById
    TextView message;

    @ViewById
    LinearLayout moreSelecter;
    boolean needFinish = false;

    @Pref
    PrefDef_ prefDef_;
    k rpcGameClient;

    @ViewById
    SimpleDraweeView sdv_image;

    @ViewById
    TextView startButn;
    View viewx;

    @RequiresApi(api = 26)
    private void initGoInstall() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.unzip_or_install_failed_item, (ViewGroup) null);
        ((ImageView) viewInflate.findViewById(R.id.icon)).setImageResource(R.drawable.sdcardicon2);
        ((TextView) viewInflate.findViewById(R.id.title)).setText("安装权限是否允许");
        ((TextView) viewInflate.findViewById(R.id.subtitle)).setVisibility(8);
        ((TextView) viewInflate.findViewById(R.id.message)).setText("前往权限管理，找到" + a0.a(this) + "-应用内安装其他应用，选择允许");
        viewInflate.findViewById(R.id.main).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                UnzipFailedDialog.this.startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + v10.getContext().getPackageName())), 1);
            }
        });
        this.moreSelecter.addView(viewInflate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAssignFolder(String path) {
        if (g.t0(this).e(this, "com.android.filemanager")) {
            g.t0(this).U(this, "com.android.filemanager");
            return;
        }
        if (g.t0(this).e(this, "com.android.fileexplorer")) {
            g.t0(this).U(this, "com.android.fileexplorer");
            return;
        }
        if (g.t0(this).e(this, "com.coloros.filemanager")) {
            g.t0(this).U(this, "com.coloros.filemanager");
            return;
        }
        if (g.t0(this).e(this, "com.sec.android.app.myfiles")) {
            g.t0(this).U(this, "com.sec.android.app.myfiles");
            return;
        }
        if (g.t0(this).e(this, "com.google.android.documentsui")) {
            g.t0(this).U(this, "com.google.android.documentsui");
            return;
        }
        if (g.t0(this).e(this, "com.huawei.hidisk")) {
            Intent intent = new Intent();
            if (UtilsMy.s2() && g.t0(this).e(this, "com.huawei.filemanager")) {
                intent = getPackageManager().getLaunchIntentForPackage("com.huawei.filemanager");
            } else {
                intent.setClassName("com.huawei.hidisk", "com.huawei.hidisk.filemanager.FileManager");
            }
            if (getPackageManager().resolveActivity(intent, 0) == null) {
                g.t0(this).U(this, "com.huawei.hidisk");
                return;
            } else {
                startActivity(intent);
                return;
            }
        }
        try {
            for (APKUtils.a aVar : g.t0(this).r(this)) {
                g1.c(aVar.c() + "  ");
                if (aVar.c().contains("fileexplorer") || aVar.c().contains("filemanager") || aVar.c().contains("myfile") || aVar.c().contains("myfiles")) {
                    g.t0(this).U(this, aVar.c());
                    return;
                }
            }
            for (APKUtils.a aVar2 : g.t0(this).p(this)) {
                g1.c(aVar2.c() + "  ");
                if (aVar2.c().contains("fileexplorer") || aVar2.c().contains("filemanager") || aVar2.c().contains("myfile") || aVar2.c().contains("myfiles")) {
                    g.t0(this).U(this, aVar2.c());
                    return;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterviews() {
        p2.w(this, false);
        this.prefDef_.lastInstallApp().g("");
        this.rpcGameClient = i.P0();
        g1.d("unzipfailedxx", "show");
        DownloadTask downloadTaskG = f.M().G(this.gameId);
        this.downloadTask = downloadTaskG;
        if (downloadTaskG == null) {
            finish();
            return;
        }
        l.d(this.icon, R.drawable.main_normal_icon, downloadTaskG.getPortraitURL());
        this.gameName.setText(this.downloadTask.getShowName());
        if (this.from == 1) {
            this.message.setText(Html.fromHtml("<font color=#ff001c>解压失败：</font>请确认下方几项是否正常后解压"));
            this.startButn.setVisibility(8);
            this.llReUnzip.setVisibility(0);
            t.l(this).R1(Event.showFailUnzip, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
            getPrivateDomain(this.gameId, 10);
        } else {
            this.message.setText(Html.fromHtml("如果安装失败，请检查以下问题后安装。"));
            this.llReUnzip.setVisibility(8);
            this.startButn.setVisibility(0);
            t.l(this).R1(Event.showFailApkInstall, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
            getPrivateDomain(this.gameId, 11);
        }
        final List<Filepath> listA = f2.a(this);
        for (final Filepath filepath : listA) {
            String gameZipPath = t2.i(this.downloadTask.getGameZipPath()) ? this.downloadTask.getGameZipPath() : t2.i(this.downloadTask.getPath()) ? this.downloadTask.getPath() : "";
            this.moreSelecter.removeAllViews();
            if (gameZipPath.contains(filepath.getPathRoot())) {
                filepath.getAvailable();
                View viewInflate = LayoutInflater.from(this).inflate(R.layout.unzip_or_install_failed_item, (ViewGroup) null);
                this.viewx = viewInflate;
                ((ImageView) viewInflate.findViewById(R.id.icon)).setImageResource(R.drawable.sdcardicon2);
                ((TextView) this.viewx.findViewById(R.id.title)).setText("内存是否充足");
                TextView textView = (TextView) this.viewx.findViewById(R.id.subtitle);
                textView.setText("（可用空间" + UtilsMy.c(filepath.getAvailable()) + "）");
                if (filepath.getAvailable() < this.downloadTask.getActual_size() * 2) {
                    textView.setTextColor(Color.parseColor("#ff001c"));
                } else {
                    textView.setTextColor(Color.parseColor("#00c81e"));
                }
                ((TextView) this.viewx.findViewById(R.id.message)).setText("前往手机文件夹，查看手机存储空间是否不足，若不足请清除多余文件");
                this.viewx.findViewById(R.id.main).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        UnzipFailedDialog.this.openAssignFolder(filepath.getPathHome());
                    }
                });
                this.moreSelecter.addView(this.viewx);
                if (filepath.isIslocal() || this.from != 1) {
                    break;
                    break;
                }
                View viewInflate2 = LayoutInflater.from(this).inflate(R.layout.unzip_or_install_failed_item, (ViewGroup) null);
                ((ImageView) viewInflate2.findViewById(R.id.icon)).setImageResource(R.drawable.sdcardicon);
                ((TextView) viewInflate2.findViewById(R.id.title)).setText("下载位置设置为手机内存");
                viewInflate2.findViewById(R.id.subtitle).setVisibility(8);
                ((TextView) viewInflate2.findViewById(R.id.message)).setText("下载位置为SD卡时可能会导致解压失败，点击此处可切换下载位置");
                viewInflate2.findViewById(R.id.main).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        for (Filepath filepath2 : listA) {
                            if (filepath2.isIslocal()) {
                                h.n(v10.getContext()).V(filepath2.getPathHome());
                            }
                        }
                        AppZipFailed2DialogAcitivity_.intent(v10.getContext()).gameId(UnzipFailedDialog.this.gameId).start();
                        UnzipFailedDialog.this.finish();
                    }
                });
                this.moreSelecter.addView(viewInflate2);
                break;
            }
            View viewInflate3 = LayoutInflater.from(this).inflate(R.layout.unzip_or_install_failed_item, (ViewGroup) null);
            this.viewx = viewInflate3;
            ((ImageView) viewInflate3.findViewById(R.id.icon)).setImageResource(R.drawable.sdcardicon2);
            ((TextView) this.viewx.findViewById(R.id.title)).setText("内存是否充足");
            TextView textView2 = (TextView) this.viewx.findViewById(R.id.subtitle);
            textView2.setText("（可用空间0)");
            textView2.setTextColor(Color.parseColor("#ff001c"));
            ((TextView) this.viewx.findViewById(R.id.message)).setText("前往手机文件夹，查看手机存储空间是否不足，若不足请清除多余文件");
            this.viewx.findViewById(R.id.main).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    UnzipFailedDialog.this.openAssignFolder(filepath.getPathHome());
                }
            });
            this.moreSelecter.addView(this.viewx);
            if (this.from == 1) {
                View viewInflate4 = LayoutInflater.from(this).inflate(R.layout.unzip_or_install_failed_item, (ViewGroup) null);
                ((ImageView) viewInflate4.findViewById(R.id.icon)).setImageResource(R.drawable.sdcardicon);
                ((TextView) viewInflate4.findViewById(R.id.title)).setText("下载位置设置为手机内存");
                viewInflate4.findViewById(R.id.subtitle).setVisibility(8);
                ((TextView) viewInflate4.findViewById(R.id.message)).setText("下载位置为SD卡时可能会导致解压失败，点击此处可切换下载位置");
                viewInflate4.findViewById(R.id.main).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        for (Filepath filepath2 : listA) {
                            if (filepath2.isIslocal()) {
                                h.n(v10.getContext()).V(filepath2.getPathHome());
                            }
                        }
                        AppZipFailed2DialogAcitivity_.intent(v10.getContext()).gameId(UnzipFailedDialog.this.gameId).start();
                        UnzipFailedDialog.this.finish();
                    }
                });
                this.moreSelecter.addView(viewInflate4);
            }
        }
        if (this.from != 2 || Build.VERSION.SDK_INT < 26) {
            return;
        }
        initGoInstall();
    }

    @Click
    void close() {
        finish();
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.anim_bottom_in, R.anim.anim_bottom_out);
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    public View getContentView() {
        return this.main;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getPrivateDomain(String gameId, int location) {
        if (!m.j(this)) {
            showDefaultUI();
            return;
        }
        try {
            RequestDomainInfoArgs requestDomainInfoArgs = new RequestDomainInfoArgs();
            requestDomainInfoArgs.setGameId(gameId);
            requestDomainInfoArgs.setLocation(Integer.valueOf(location));
            RequestModel requestModel = new RequestModel(this);
            requestModel.setArgs(requestDomainInfoArgs);
            requestModel.makeSign();
            try {
                ResponseModel<DomainInfoBean> responseModelT0 = this.rpcGameClient.t0(requestModel.makeSign());
                if (responseModelT0 == null || responseModelT0.getData() == null) {
                    showDefaultUI();
                } else {
                    showDomainUI(responseModelT0.getData());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showDefaultUI();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            showDefaultUI();
        }
    }

    @Click
    void goH5() {
        if (IntentUtil.getInstance().goLogin(this)) {
            return;
        }
        IntentUtil.getInstance().goFeedback(this);
        this.needFinish = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        if (g.t0(this).e(this, this.downloadTask.getPackageName())) {
            this.needFinish = true;
        }
        if (this.needFinish) {
            this.prefDef_.lastInstallApp().g("");
            finish();
        }
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDefaultUI() {
        this.sdv_image.setVisibility(8);
        this.goH5.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDomainUI(final DomainInfoBean domainInfoBean) {
        this.sdv_image.setVisibility(0);
        this.goH5.setVisibility(8);
        if (t2.i(domainInfoBean.getPic())) {
            l.h(this.sdv_image, domainInfoBean.getPic());
        }
        this.sdv_image.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                t.l(UnzipFailedDialog.this).R1(Event.pdSetupUnzipFailClick, new Ext().setGameId(UnzipFailedDialog.this.gameId).setTestAbNumber(domainInfoBean.getAb_test_number()).setIsJoin(domainInfoBean.getIs_join()).setActType(UnzipFailedDialog.this.from == 1 ? "unzip_fail" : "setup_fail"));
                UtilsMy.D4(UnzipFailedDialog.this, domainInfoBean.getInfo(), UnzipFailedDialog.this.from == 1 ? "game_unzip_fail" : "game_setup_fail");
            }
        });
        t.l(this).R1(Event.pdSetupUnzipFail, new Ext().setGameId(this.gameId).setIsJoin(domainInfoBean.getIs_join()).setTestAbNumber(domainInfoBean.getAb_test_number()).setActType(this.from == 1 ? "unzip_fail" : "setup_fail"));
    }

    @Click
    void startButn() {
        if (Dtype.MOD.name().equals(this.downloadTask.getFileType()) || APKUtils.P(this.downloadTask)) {
            g.t0(this);
            APKUtils.F(this, this.downloadTask);
        } else {
            g.t0(this).z(this, new File(this.downloadTask.getGameZipPath()));
        }
        t.l(this).R1(Event.reApkInstall, new Ext().setGameId(this.gameId));
        this.needFinish = true;
    }

    @Click
    void tvReDownload() {
        if (this.downloadTask != null) {
            j.f().d(this, this.downloadTask);
            f.M().n(this.gameId);
            d.c(this.downloadTask, this);
            this.needFinish = true;
            close();
        }
    }

    @Click
    void tvReUnzip() {
        t.l(this).R1(Event.reUnzip, new Ext().setGameId(this.gameId));
        d.l(this, this.downloadTask);
        finish();
        this.needFinish = true;
    }
}
