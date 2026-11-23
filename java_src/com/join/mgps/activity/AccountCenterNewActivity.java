package com.join.mgps.activity;

import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.login.UsercenterFragmentNew_;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_account_center_new)
public class AccountCenterNewActivity extends BaseFragmentActivity {
    @AfterViews
    void afterviews() {
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.add(R.id.fragmentLayout, new UsercenterFragmentNew_());
        fragmentTransactionBeginTransaction.commit();
    }

    @Click
    void back() {
        finish();
    }
}
