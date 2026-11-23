package com.join.mgps.activity;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.EndGameReportTypeBean;
import com.join.mgps.dto.RequestEndGameReportReasonArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_end_game_report)
public class EndGameReportActivity extends BaseActivity {

    @Extra
    String endGameId;

    @ViewById
    EditText etDesc;

    @ViewById
    ConstraintLayout outside;
    com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    RecyclerView rvReportType;
    EndGameReportTypeBean selectedReason;

    class a extends BaseQuickAdapter<EndGameReportTypeBean, com.join.mgps.base.b> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<EndGameReportTypeBean> f51382e;

        public a(List<EndGameReportTypeBean> data) {
            super(R.layout.item_end_game_report_list, data);
            this.f51382e = data;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(EndGameReportTypeBean endGameReportTypeBean, View view) {
            EndGameReportActivity.this.selectedReason = endGameReportTypeBean;
            for (EndGameReportTypeBean endGameReportTypeBean2 : this.f51382e) {
                endGameReportTypeBean2.setSelected(TextUtils.equals(endGameReportTypeBean2.getCode(), endGameReportTypeBean.getCode()));
            }
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, final EndGameReportTypeBean item) {
            ((ImageView) helper.getView(R.id.ivCheck)).setSelected(item.isSelected());
            helper.setText(R.id.tvReason, item.getName());
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.x0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f58200b.t(item, view);
                }
            });
        }
    }

    @AfterViews
    void afterviews() {
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        getReasonType();
    }

    @Click
    void btnSubmit() {
        if (this.selectedReason == null) {
            showTost("请选择举报类型");
            return;
        }
        EditText editText = this.etDesc;
        if (editText == null || !TextUtils.isEmpty(editText.getText().toString().trim())) {
            report();
        } else {
            showTost("请填写举报描述");
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.bottom_out);
    }

    @Background
    void getReasonType() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showTost(getResources().getString(R.string.net_connect_failed));
            finish();
            return;
        }
        RequestEndGameReportReasonArgs requestEndGameReportReasonArgs = new RequestEndGameReportReasonArgs();
        requestEndGameReportReasonArgs.setType("mg_game_feedback_endgame");
        RequestModel requestModel = new RequestModel();
        requestModel.setArgs(requestEndGameReportReasonArgs);
        requestModel.setDefault(this);
        ResponseModel<List<EndGameReportTypeBean>> responseModelR = this.rpcGameClient.r(requestModel.makeSign());
        if (responseModelR == null || responseModelR.getCode() != 200) {
            finish();
        } else {
            updateUi(responseModelR.getData());
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Click
    void outside() {
        finish();
    }

    @Background
    void report() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showTost(getResources().getString(R.string.net_connect_failed));
            return;
        }
        RequestEndGameReportReasonArgs requestEndGameReportReasonArgs = new RequestEndGameReportReasonArgs();
        requestEndGameReportReasonArgs.setType("mg_game_feedback_endgame");
        requestEndGameReportReasonArgs.setUid(AccountUtil_.getInstance_(this).getUid());
        requestEndGameReportReasonArgs.setMsg(this.etDesc.getText().toString().trim());
        requestEndGameReportReasonArgs.setValue(this.selectedReason.getCode());
        requestEndGameReportReasonArgs.setResourceId(this.endGameId);
        RequestModel requestModel = new RequestModel();
        requestModel.setArgs(requestEndGameReportReasonArgs);
        requestModel.setDefault(this);
        ResponseModel responseModelA = this.rpcGameClient.A(requestModel.makeSign());
        if (responseModelA == null || responseModelA.getCode() != 200) {
            showTost("举报失败");
        } else {
            reportSuccess();
        }
    }

    @UiThread
    void reportSuccess() {
        showTost("举报成功");
        finish();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        com.join.mgps.Util.p2.r(this, 16777215, true);
    }

    @UiThread
    void showTost(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    @UiThread
    void updateUi(List<EndGameReportTypeBean> data) {
        this.rvReportType.setLayoutManager(new GridLayoutManager(this, 2));
        this.rvReportType.setAdapter(new a(data));
    }
}
