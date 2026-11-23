package com.join.mgps.activity;

import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_game_detail_permission)
public class GameDetailPermissionActivity extends BaseAppCompatActivity {

    @Extra
    String permission;

    @ViewById
    TextView title_textview;

    @ViewById
    TextView tvPermission;

    @AfterViews
    void afterviews() {
        this.title_textview.setText("敏感权限");
        if (TextUtils.isEmpty(this.permission)) {
            this.tvPermission.setText("无敏感权限");
        } else {
            this.tvPermission.setText(this.permission.replaceAll("\n", "\n\n"));
        }
        this.tvPermission.setMovementMethod(ScrollingMovementMethod.getInstance());
    }

    @Click
    void back_image() {
        finish();
    }
}
