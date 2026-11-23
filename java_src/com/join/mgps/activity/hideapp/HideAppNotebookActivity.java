package com.join.mgps.activity.hideapp;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.j2;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.pref.PrefDef_;
import com.uc.crashsdk.export.LogType;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_hide_app_notebook)
public class HideAppNotebookActivity extends BaseAppCompatActivity {
    private Context context;

    @ViewById
    EditText etNote;

    @Extra
    boolean isFromBackground;

    @Pref
    PrefDef_ prefDef;
    private String pwd;

    @ViewById
    View statubar;

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s10) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            if (TextUtils.equals(s10.toString(), HideAppNotebookActivity.this.pwd)) {
                HideAppNotebookActivity hideAppNotebookActivity = HideAppNotebookActivity.this;
                if (!hideAppNotebookActivity.isFromBackground) {
                    MGMainActivity_.intent(hideAppNotebookActivity.context).start();
                }
                HideAppNotebookActivity.this.finish();
            }
        }
    }

    @AfterViews
    void afterviews() {
        this.context = this;
        this.pwd = this.prefDef.hide_app_pwd().d();
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        int iV = q.v(this);
        View view = this.statubar;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = iV;
            this.statubar.setLayoutParams(layoutParams);
        }
        this.etNote.addTextChangedListener(new a());
        if (TextUtils.isEmpty(this.pwd)) {
            PackageManager packageManager = getPackageManager();
            packageManager.setComponentEnabledSetting(new ComponentName(this, "default.alias"), 1, 1);
            packageManager.setComponentEnabledSetting(new ComponentName(this, "com.join.mgps.activity.hideapp.HideAppNotebookActivity_"), 2, 1);
            packageManager.setComponentEnabledSetting(new ComponentName(this, "com.join.mgps.activity.hideapp.HideAppCalculatorActivity_"), 2, 1);
            j2.a(this);
            MGMainActivity_.intent(this.context).start();
            finish();
        }
    }

    @Click
    void back_image() {
        moveTaskToBack(true);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        moveTaskToBack(true);
    }
}
