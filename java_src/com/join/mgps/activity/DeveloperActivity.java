package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Environment;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import com.BaseActivity;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.network.message.MessageManager;
import com.join.kotlin.quark.SourceShareActivity;
import com.join.kotlin.ui.gameexpress.GameExpressActivity;
import com.join.kotlin.ui.modleregin.BtReginActivity;
import com.join.kotlin.ui.modleregin.MustPalyReginActivity;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.hideapp.HideAppHomeActivity_;
import com.join.mgps.hmcloud.HMCloudGameManager;
import com.papa91.arc.ext.ToastManager;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_developer)
public class DeveloperActivity extends BaseActivity {
    public static final String TAG = "DeveloperActivity";

    @ViewById
    EditText et_apk_path;
    com.join.mgps.ad.l groMAdVideo;
    com.join.mgps.ad.a0 ttAdVideo;
    com.join.mgps.ad.y ttInteractAdVideo;
    String path = "/sdcard/testom1.apk";
    boolean hasInstall = false;
    int num = 0;

    class a extends com.join.mgps.ad.a0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ boolean f51184u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f51184u = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
            DeveloperActivity developerActivity = DeveloperActivity.this;
            com.join.mgps.ad.a0 a0Var = developerActivity.ttAdVideo;
            com.join.mgps.ad.d.h(developerActivity, 9);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f51184u);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
            DeveloperActivity developerActivity = DeveloperActivity.this;
            com.join.mgps.ad.a0 a0Var = developerActivity.ttAdVideo;
            com.join.mgps.ad.d.h(developerActivity, 9);
        }
    }

    class b extends com.join.mgps.ad.y {
        b(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(false);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
        }
    }

    class c extends com.join.mgps.ad.l {
        c(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(true);
        }
    }

    private String getPackageName(String filePath) {
        PackageInfo packageArchiveInfo;
        if (filePath == null || (packageArchiveInfo = getPackageManager().getPackageArchiveInfo(filePath, 1)) == null) {
            return null;
        }
        String str = packageArchiveInfo.applicationInfo.packageName;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("call method getPackageName, packageName = ");
        sb2.append(str);
        return str;
    }

    @AfterViews
    void afterViews() {
        ToastManager.init(this);
    }

    @Click({R.id.btRegin})
    void btRegin() {
        startActivity(new Intent(this, (Class<?>) BtReginActivity.class));
    }

    @Click
    void btnCollectionSeven() {
        initGroMRewardTTAd(this, "5019681", "102999037");
    }

    @Click
    void btnQuarkShare() {
        startActivity(new Intent(this, (Class<?>) SourceShareActivity.class));
    }

    @Click({R.id.btnTTTools})
    void btnTTTools() {
    }

    @Click
    void btnVideo() {
        Bundle bundle = new Bundle();
        bundle.putString("packageName", "com.lmq.sx.pt.ff");
        bundle.putInt("userId", 0);
        Bundle bundleA = com.xinzhu.overmind.shared.n.a(com.xinzhu.overmind.shared.k.f90037e, "miniGameInfo", null, bundle);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("btnVideo: ");
        sb2.append(bundleA);
    }

    @Click({R.id.btn_delete_file})
    void deleteFile() {
        UtilsMy.delete(new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/testabc/test2"));
    }

    @Click({R.id.btn_notify})
    void doNotify() {
        HMCloudGameManager.W().h1("", 60);
    }

    @Click({R.id.btn_download_finish})
    void downFinish() {
    }

    @Click
    void hideApp() {
        HideAppHomeActivity_.intent(this).start();
    }

    public void initGroMRewardTTAd(Context context, String appid, String adid) {
        if (this.groMAdVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            this.groMAdVideo.d(true);
            return;
        }
        c cVar = new c(context, appid, adid);
        this.groMAdVideo = cVar;
        cVar.a();
    }

    public void initInteractTTAd(Context context, String appid, String adid) {
        if (this.ttInteractAdVideo == null && com.join.mgps.Util.t2.i(appid)) {
            this.ttInteractAdVideo = new b(context, appid, adid);
        } else {
            this.ttInteractAdVideo.d(false);
        }
    }

    public void initTTAd(String appid, String adid, boolean needShow) {
        if (this.ttAdVideo == null && com.join.mgps.Util.t2.i(appid)) {
            a aVar = new a(this, appid, adid, needShow);
            this.ttAdVideo = aVar;
            aVar.a();
        } else {
            com.join.mgps.ad.a0 a0Var = this.ttAdVideo;
            if (a0Var != null) {
                a0Var.d(false);
            }
        }
    }

    @Click({R.id.install})
    void install() {
        GameExpressActivity.start(this);
    }

    @Click({R.id.btn_install_a})
    void installA() {
    }

    @Click({R.id.btn_install_b})
    void installB() {
        com.join.mgps.Util.h0.h0(this).b0(this, null);
    }

    @Click({R.id.launch})
    void launch() {
        MessageManager.INSTANCE.initMessageClient();
    }

    public void matchText(TextView tv2, String text, String regExp) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
        Matcher matcher = Pattern.compile(regExp, 2).matcher(text);
        while (matcher.find()) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(SupportMenu.CATEGORY_MASK), matcher.start(0), matcher.end(0), 33);
        }
        tv2.setText(spannableStringBuilder);
    }

    @Click({R.id.mustpaly})
    void mustpaly() {
        startActivity(new Intent(this, (Class<?>) MustPalyReginActivity.class));
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Click({R.id.btnFCLoad})
    void onFCLoad() {
        initInteractTTAd(this, "5311400", "949085233");
    }

    @Click({R.id.btnFCShow})
    void onFCShow() {
        com.join.mgps.ad.y yVar = this.ttInteractAdVideo;
        if (yVar != null) {
            yVar.p(this);
        }
    }

    @Click({R.id.btnRewardLoad})
    void onRewardLoad() {
        initTTAd("5311400", "949129415", false);
    }

    @Click({R.id.btnRewardShow})
    void onRewardShow() {
        com.join.mgps.ad.a0 a0Var = this.ttAdVideo;
        if (a0Var != null) {
            a0Var.p(this);
        }
    }

    @Click({R.id.start_app})
    void startApp() {
        com.join.android.app.common.utils.g.t0(this);
        APKUtils.f0(this, "com.rockstar.gta3");
        PackageManager packageManager = getPackageManager();
        try {
            getPackageManager().getApplicationInfo("com.rockstargames.gtavc", 8192);
        } catch (PackageManager.NameNotFoundException e10) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo("com.rockstargames.gtavc", 1);
                if (packageInfo != null) {
                    int length = packageInfo.activities.length;
                }
            } catch (PackageManager.NameNotFoundException e11) {
                e11.printStackTrace();
            }
            e10.printStackTrace();
        }
    }

    @Click({R.id.btnTestHtml})
    void testHtml() {
        TestHtmlActivity_.intent(this).start();
    }
}
