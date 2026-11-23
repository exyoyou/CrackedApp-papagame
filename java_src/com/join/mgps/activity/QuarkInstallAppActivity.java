package com.join.mgps.activity;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.service.CommonService_;
import io.reactivex.functions.Consumer;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_quark_install_app)
public class QuarkInstallAppActivity extends BaseActivity {

    @Extra
    int count;

    @Extra
    String gamePath;

    @ViewById
    SimpleDraweeView ivIcon;

    @ViewById
    TextView tvName;

    @ViewById
    TextView tvTitle;

    class a implements Consumer<com.tbruyelle.rxpermissions2.b> {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            ((CommonService_.n0) CommonService_.P2(QuarkInstallAppActivity.this).extra("action", "quarkScan")).a();
        }
    }

    @AfterViews
    void afterViews() {
        String str;
        Drawable drawableLoadIcon;
        com.join.mgps.Util.p2.v(this);
        try {
            PackageManager packageManager = getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getPackageArchiveInfo(this.gamePath, 1).applicationInfo;
            String str2 = this.gamePath;
            applicationInfo.sourceDir = str2;
            applicationInfo.publicSourceDir = str2;
            str = ((Object) applicationInfo.loadLabel(packageManager)) + "";
            try {
                drawableLoadIcon = applicationInfo.loadIcon(packageManager);
            } catch (Exception unused) {
                drawableLoadIcon = null;
            }
        } catch (Exception unused2) {
            str = "";
        }
        this.tvTitle.setText(getString(R.string.have_games_install, this.count + ""));
        this.tvName.setText(str);
        if (drawableLoadIcon != null) {
            this.ivIcon.getHierarchy().e(drawableLoadIcon, 100.0f, true);
        }
    }

    @Click
    void close() {
        finish();
    }

    @Click
    void tvInstall() {
        new com.tbruyelle.rxpermissions2.c(this).r(com.kuaishou.weapon.p0.g.f74785i).subscribe(new a());
        finish();
    }
}
