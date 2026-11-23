package com.join.mgps.activity;

import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CopyTextViewNew;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;

/* JADX INFO: loaded from: classes4.dex */
@WindowFeature({10})
@EActivity(R.layout.mg_forum_post_copy_activity)
public class ForumPostsCopyActivity extends BaseAppCompatActivity {

    @Extra
    String extBean;

    @ViewById
    CopyTextViewNew forum_post_message;

    @ViewById
    TextView forum_title_center;

    @AfterViews
    void afterViews() {
        this.forum_title_center.setVisibility(0);
        this.forum_title_center.setText("请长按自由复制");
        this.forum_post_message.setTextForum(this.extBean);
    }

    @Click
    void back_image() {
        finish();
    }
}
