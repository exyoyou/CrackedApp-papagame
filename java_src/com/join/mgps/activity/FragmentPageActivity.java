package com.join.mgps.activity;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_fragment_page)
public class FragmentPageActivity extends BaseActivity {

    @ViewById
    ImageView back_image;

    @Extra
    Bundle extras;
    Fragment fragment;

    @Extra
    int scene;

    @Extra
    String title;

    @ViewById
    TextView tv_title;

    @AfterViews
    void afterViews() {
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        this.tv_title.setText(this.title);
        if (this.scene == 1) {
            this.fragment = new MyGamePapaCloudFragment_();
        }
        Bundle bundle = this.extras;
        if (bundle != null) {
            this.fragment.setArguments(bundle);
        }
        fragmentTransactionBeginTransaction.add(R.id.fl_container, this.fragment);
        fragmentTransactionBeginTransaction.commit();
    }

    @Click({R.id.back_image})
    void onBackClick() {
        finish();
    }
}
