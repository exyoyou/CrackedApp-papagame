package com.join.mgps.activity;

import android.content.Context;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.ResultMainBean;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.downlarge_game_dialog_activity)
public class DownLargeGameDialogActivity extends BaseActivity {
    com.join.mgps.rpc.e client;

    @ViewById
    TextView content;
    Context context;
    IntentDateBean intentDateBean;

    @ViewById
    TextView openH5;

    @ViewById
    TextView title;

    @AfterViews
    void afterviews() {
        this.context = this;
        this.client = com.join.mgps.rpc.impl.d.O1();
        IntentDateBean intentDateBean = new IntentDateBean();
        this.intentDateBean = intentDateBean;
        intentDateBean.setLink_type(4);
        this.intentDateBean.setLink_type_val("http://anv3cjapi.5fun.com/member/vip_view/welcome?go=vip");
        getData();
    }

    @Click
    void closed() {
        finish();
    }

    @Background
    void getData() {
        try {
            ResultMainBean<List<RecomDatabean>> resultMainBeanK = this.client.K(RequestBeanUtil.getInstance(this.context).getSimulatorRequest("", "", 0));
            if (resultMainBeanK == null || resultMainBeanK.getMessages() == null || resultMainBeanK.getMessages().getData() == null || resultMainBeanK.getMessages().getData().size() <= 0) {
                return;
            }
            RecomDatabean recomDatabean = resultMainBeanK.getMessages().getData().get(0);
            this.intentDateBean = recomDatabean.getSub().get(0).getIntentDataBean();
            updateUi(recomDatabean.getMain().getTitle(), recomDatabean.getMain().getSub_title());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void openH5() {
        IntentUtil.getInstance().intentActivity(this.context, this.intentDateBean);
        finish();
    }

    @UiThread
    void updateUi(String titleS, String subTitle) {
        this.title.setText(titleS);
        this.content.setText(subTitle);
    }
}
