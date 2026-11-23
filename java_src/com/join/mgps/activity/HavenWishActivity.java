package com.join.mgps.activity;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.czhj.sdk.common.Constants;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.HavenWishResultBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.haven_wish_acitivity)
public class HavenWishActivity extends BaseAppCompatActivity {

    @ViewById
    ImageView back;
    com.join.mgps.rpc.i client;

    @Extra
    DownloadTask downloadTask;

    @ViewById
    EditText edittext;

    @ViewById
    TextView sennd;

    @AfterViews
    void afterviews() {
        this.client = com.join.mgps.rpc.impl.g.A0();
        this.edittext.setText("求大神告诉我哪里可以下载" + this.downloadTask.getShowName() + "？");
        this.edittext.requestFocus();
        EditText editText = this.edittext;
        editText.setSelection(editText.getText().length());
        showKeyboard();
    }

    @Click
    void back() {
        finish();
    }

    @Click
    void sennd() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d("请检查网络");
            return;
        }
        String string = this.edittext.getText().toString();
        if (com.join.mgps.Util.t2.i(string.trim())) {
            senndWish(string);
        } else {
            com.join.mgps.Util.a3.b(this).d("请输入你的愿望");
        }
    }

    @Background
    void senndWish(String wish) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            HashMap map = new HashMap();
            map.put("uid", Integer.valueOf(accountData.getUid()));
            map.put(Constants.TOKEN, accountData.getToken());
            map.put("message", wish);
            map.put("game_id", this.downloadTask.getCrc_link_type_val());
            showMessage(this.client.p0(map).getData());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread(delay = 300)
    void showKeyboard() {
        ((InputMethodManager) getSystemService("input_method")).showSoftInput(this.edittext, 0);
    }

    @UiThread
    void showMessage(HavenWishResultBean bean) {
        if (!bean.isResult()) {
            com.join.mgps.Util.a3.b(this).d(bean.getMsg());
        } else {
            finish();
            com.join.mgps.Util.a3.b(this).d("许愿成功");
        }
    }
}
