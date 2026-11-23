package com.join.mgps.activity;

import android.widget.ImageView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.fight_introduction_activity)
public class FightIntroductionActivity extends BaseActivity {

    @ViewById
    ImageView img;

    @Extra
    int mode;

    @AfterViews
    void afterViews() {
        if (this.mode == 1) {
            this.img.setImageDrawable(getResources().getDrawable(R.drawable.wifi_help));
        }
    }

    @Click
    void cancelClicked() {
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
