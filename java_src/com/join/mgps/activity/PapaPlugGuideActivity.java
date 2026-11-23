package com.join.mgps.activity;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.widget.TextView;
import com.BaseActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.BootPageItem;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.util.Iterator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.papa_plug_guide_notice_layout)
public class PapaPlugGuideActivity extends BaseActivity {

    @ViewById
    TextView describe;

    @ViewById
    TextView describe2;

    @Extra
    String gameId;

    @ViewById
    SimpleDraweeView guideImage;

    @ViewById
    TextView iKnow;

    @Pref
    PrefDef_ prefDef;

    @Extra
    int from = 0;
    int number = 5;

    private void installApk(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.join.android.app.common.utils.g.t0(this).z(this, new File(downloadTask.getGameZipPath()));
    }

    @AfterViews
    void afterview() {
        DownloadTask next;
        BootPageItem game_setup_boot;
        String[] pic;
        BootPageItem performance_boot;
        this.iKnow.setText(Html.fromHtml("我知道了<font color = '#ffffff'>(5S)</font>"), TextView.BufferType.SPANNABLE);
        String strD = this.prefDef.insatllAppFirstData().d();
        if (strD != null) {
            BootPageData bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(strD, BootPageData.class);
            if (this.from == 0) {
                this.describe.setText("为了悟饭游戏稳定运行，请按图示修改设置");
                if (bootPageData != null && bootPageData.getPerformance_boot() != null && (performance_boot = bootPageData.getPerformance_boot()) != null) {
                    String[] pic2 = performance_boot.getPic();
                    String title = performance_boot.getTitle();
                    if (com.join.mgps.Util.t2.i(title)) {
                        this.describe.setText(title);
                    }
                    if (pic2 != null && pic2.length > 0) {
                        this.guideImage.setController((com.facebook.drawee.backends.pipeline.d) Fresco.newDraweeControllerBuilder().b(Uri.parse(pic2[0])).c(this.guideImage.getController()).F(true).build());
                    }
                }
            } else {
                if (com.join.mgps.Util.t2.i(this.gameId)) {
                    next = q5.f.M().G(this.gameId);
                    this.describe.setText("《" + next.getShowName() + "》待安装\n请按下图操作");
                } else {
                    Iterator<DownloadTask> it2 = q5.f.M().v().iterator();
                    if (it2.hasNext()) {
                        next = it2.next();
                        this.describe.setText("《" + next.getShowName() + "》待安装");
                        this.describe2.setText("请按下图操作");
                    } else {
                        next = null;
                    }
                }
                if (bootPageData != null && bootPageData.getGame_setup_boot() != null && (game_setup_boot = bootPageData.getGame_setup_boot()) != null && (pic = game_setup_boot.getPic()) != null && pic.length > 0) {
                    String str = pic[0];
                    String title2 = game_setup_boot.getTitle();
                    if (com.join.mgps.Util.t2.i(title2)) {
                        String showName = next.getShowName();
                        if (showName.contains("-")) {
                            showName = showName.substring(0, showName.lastIndexOf("-"));
                        }
                        this.describe.setText("《" + showName + "》待安装");
                        this.describe2.setText(title2);
                    }
                    try {
                        this.guideImage.setController((com.facebook.drawee.backends.pipeline.d) Fresco.newDraweeControllerBuilder().b(Uri.parse(str)).c(this.guideImage.getController()).F(true).build());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                if (next != null && next.getFileType().equals(Dtype.chajian.name()) && next.getDown_type() == 2 && next.getStatus() == 11) {
                    if (!com.join.android.app.common.utils.o.r(this, next, false, new String[0])) {
                        com.join.android.app.common.servcie.j.f().w(getApplicationContext(), next);
                    }
                    finish();
                    return;
                }
            }
        }
        netTip();
    }

    @Click
    void iKnow() {
        if (this.from != 0) {
            if (com.join.mgps.Util.t2.i(this.gameId)) {
                installApk(q5.f.M().G(this.gameId));
            } else {
                Iterator<DownloadTask> it2 = q5.f.M().v().iterator();
                while (it2.hasNext()) {
                    installApk(it2.next());
                }
            }
            finish();
            return;
        }
        String str = Build.BRAND;
        if (str.contains("vivo")) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.vivo.abe", "com.vivo.applicationbehaviorengine.ui.ExcessivePowerManagerActivity"));
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(intent);
        } else if (str.toLowerCase().contains("gionee")) {
            com.join.android.app.common.utils.g.t0(this).U(this, "com.gionee.softmanager");
        } else {
            Intent intent2 = new Intent("android.intent.action.POWER_USAGE_SUMMARY");
            if (getPackageManager().resolveActivity(intent2, 0) != null) {
                startActivity(intent2);
            }
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void netTip() {
        this.number--;
        this.iKnow.setText(Html.fromHtml("我知道了<font color = '#ffffff'>(" + this.number + "S)</font>"), TextView.BufferType.SPANNABLE);
        if (this.number > 0) {
            netTip();
            return;
        }
        this.iKnow.setEnabled(true);
        this.iKnow.setTextColor(-1);
        this.iKnow.setText("我知道了");
    }
}
