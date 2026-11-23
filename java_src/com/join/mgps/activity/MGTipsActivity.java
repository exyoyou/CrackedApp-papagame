package com.join.mgps.activity;

import android.content.Context;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_tips_activity)
public class MGTipsActivity extends BaseActivity {
    private String TAG = getClass().getSimpleName();
    private Context context;

    @ViewById
    TextView title_textview;

    @AfterViews
    void AfterViews() {
        this.context = this;
        showMain();
    }

    @Click
    void back_image() {
        finish();
    }

    @UiThread
    void showMain() {
        this.title_textview.setText("温馨提示");
    }
}
