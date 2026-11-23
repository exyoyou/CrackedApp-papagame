package com.join.mgps.activity;

import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.handshank_over)
public class HandShankOverActivity extends BaseActivity {
    @Click
    void backImage() {
        finish();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }
}
