package com.join.mgps.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.WebViewSearchActivity_;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EActivity(R.layout.dialog_sniffer_promt)
public class DownloadSnifferPromptDialog extends BaseActivity {
    Button btnDownload;
    Button btnSearch;
    Button btnSource;

    @ViewById
    View constraintLayout;

    @Extra
    String downloadSearchUrl;

    @Extra
    String downloadSourceUrl;

    @Extra
    DownloadTask downloadTask;

    @Extra
    String download_original_switch;
    b mBarHideEnableObserver;
    int style = 7;
    private ContentObserver mNavigationBarObserver = new a(new Handler());

    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            if (Settings.Global.getInt(DownloadSnifferPromptDialog.this.getContentResolver(), "navigationbar_is_min", 0) == 1) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadSnifferPromptDialog.this.constraintLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
                DownloadSnifferPromptDialog.this.constraintLayout.setLayoutParams(layoutParams);
            } else {
                ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadSnifferPromptDialog.this.constraintLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = DownloadSnifferPromptDialog.this.getNavigationBarHeight();
                DownloadSnifferPromptDialog.this.constraintLayout.setLayoutParams(layoutParams2);
            }
        }
    }

    private class b extends ContentObserver {
        b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            if (!DownloadSnifferPromptDialog.this.isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadSnifferPromptDialog.this.constraintLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
                DownloadSnifferPromptDialog.this.constraintLayout.setLayoutParams(layoutParams);
            } else {
                ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadSnifferPromptDialog.this.constraintLayout.getLayoutParams();
                int navigationBarHeight = DownloadSnifferPromptDialog.this.getNavigationBarHeight();
                com.join.mgps.Util.v1.e();
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = navigationBarHeight;
                DownloadSnifferPromptDialog.this.constraintLayout.setLayoutParams(layoutParams2);
            }
        }
    }

    public static boolean checkDeviceHasNavigationBar(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z10 = false;
        boolean z11 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if (!"1".equals(str)) {
                z10 = "0".equals(str) ? true : z11;
            }
            return z10;
        } catch (Exception unused) {
            return z11;
        }
    }

    public static int getNavigationBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static View getNavigationBarView(Activity activity) {
        return new View(activity);
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    private void registerNavigationBarObserver() {
        getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_is_min"), true, this.mNavigationBarObserver);
    }

    public static void setNavigationBarColor(Activity activity, int color) {
        if (Build.VERSION.SDK_INT > 21) {
            activity.getWindow().setNavigationBarColor(color);
            return;
        }
        activity.getWindow().addFlags(134217728);
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        View navigationBarView = getNavigationBarView(activity);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, getNavigationBarHeight(activity));
        layoutParams.gravity = 80;
        navigationBarView.setLayoutParams(layoutParams);
        navigationBarView.setBackgroundColor(color);
        viewGroup.addView(navigationBarView);
    }

    @AfterViews
    void afterViews() {
        this.btnDownload = (Button) findViewById(R.id.btnDownload);
        this.btnSource = (Button) findViewById(R.id.btnSource);
        this.btnSearch = (Button) findViewById(R.id.btnSearch);
        if (TextUtils.isEmpty(this.download_original_switch) || !this.download_original_switch.equals("1")) {
            this.style &= 6;
        } else {
            this.style |= 1;
        }
        if (TextUtils.isEmpty(this.downloadSourceUrl)) {
            this.style &= 5;
        } else {
            this.style |= 2;
        }
        if (TextUtils.isEmpty(this.downloadSearchUrl)) {
            this.style &= 3;
        } else {
            this.style |= 4;
        }
        setStyle(this.style);
        initNavigationBarObserver();
    }

    @Click
    void btnDownload() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask != null) {
            com.php25.PDownload.d.e(downloadTask, this);
        }
        finish();
    }

    @Click
    void btnSearch() {
        WebViewSearchActivity_.intent(this).b(this.downloadSearchUrl).a(this.downloadTask).start();
        finish();
    }

    @Click
    void btnSource() {
        WebViewSearchActivity_.intent(this).b(this.downloadSourceUrl).a(this.downloadTask).start();
        finish();
    }

    @Click
    void close() {
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.bottom_out);
    }

    void initNavigationBarObserver() {
        try {
            registerContentResolver();
            if (checkDeviceHasNavigationBar(this) && isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.constraintLayout.getLayoutParams();
                int navigationBarHeight = getNavigationBarHeight();
                com.join.mgps.Util.v1.e();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = navigationBarHeight;
                this.constraintLayout.setLayoutParams(layoutParams);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean isNavigationBarShow() {
        try {
            if (com.join.mgps.Util.v1.e()) {
                return com.join.mgps.Util.v1.a(this) && !com.join.mgps.Util.v1.f(this);
            }
            if (com.join.mgps.Util.v1.g() && Settings.Global.getInt(getContentResolver(), "force_fsg_nav_bar", 0) != 0) {
                return false;
            }
            Display defaultDisplay = getWindowManager().getDefaultDisplay();
            Point point = new Point();
            Point point2 = new Point();
            defaultDisplay.getSize(point);
            defaultDisplay.getRealSize(point2);
            return point2.y != point.y;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            getContentResolver().unregisterContentObserver(this.mBarHideEnableObserver);
            getContentResolver().unregisterContentObserver(this.mNavigationBarObserver);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void outside() {
        finish();
    }

    void registerContentResolver() {
        this.mBarHideEnableObserver = new b(new Handler());
        getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_hide_bar_enabled"), true, this.mBarHideEnableObserver);
        registerNavigationBarObserver();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        com.join.mgps.Util.p2.r(this, 16777215, true);
    }

    public void setStyle(int style) {
        this.style = style;
        if ((style & 1) == 1) {
            this.btnDownload.setVisibility(0);
        } else {
            this.btnDownload.setVisibility(8);
        }
        if (((style & 2) >> 1) == 1) {
            this.btnSource.setVisibility(0);
        } else {
            this.btnSource.setVisibility(8);
        }
        if (((style & 4) >> 2) == 1) {
            this.btnSearch.setVisibility(0);
        } else {
            this.btnSearch.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNavigationBarHeight() {
        Resources resources = getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }
}
