package com.join.mgps.activity;

import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.update_record_layout)
public class UpdateRecordActivity extends BaseActivity {
    private static final String TAG = "UpdateRecordActivity";

    @ViewById
    TextView title_textview;

    @Extra
    String updateRecord;

    @ViewById
    TextView webView;

    @AfterViews
    void afterViews() {
        this.title_textview.setText("更新记录");
        this.webView.setText(this.updateRecord);
    }

    @Click
    void back_image() {
        finish();
    }
}
