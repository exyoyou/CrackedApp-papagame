package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.UninstallAppReasonBean;
import com.join.mgps.dto.UninstallAppReasonSubmitArgs;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_uninstall_wufun_reason)
public class UninstallWufunReasonActivity extends BaseActivity {
    private a adapter;

    @ViewById
    EditText etDesc;
    private Context mContext;
    private com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    RecyclerView rvReportType;
    private int selectedIndex = -1;
    private List<String> reasons = new ArrayList();

    class a extends BaseQuickAdapter<String, com.join.mgps.base.b> {
        public a(List<String> data) {
            super(R.layout.item_uninstall_reason_list, data);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(com.join.mgps.base.b bVar, View view) {
            UninstallWufunReasonActivity.this.selectedIndex = bVar.getLayoutPosition();
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull final com.join.mgps.base.b helper, String item) {
            helper.setText(R.id.tvReason, item);
            helper.getView(R.id.ivCheck).setSelected(helper.getLayoutPosition() == UninstallWufunReasonActivity.this.selectedIndex);
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.y9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f58270b.t(helper, view);
                }
            });
        }
    }

    @AfterViews
    void afterviews() {
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        this.mContext = this;
        this.rvReportType.setLayoutManager(new LinearLayoutManager(this));
        a aVar = new a(this.reasons);
        this.adapter = aVar;
        this.rvReportType.setAdapter(aVar);
        getData();
    }

    @Click
    void btnSubmit() {
        int i10 = this.selectedIndex;
        if (i10 < 0) {
            showToast("请选择卸载理由");
            return;
        }
        submit(this.reasons.get(i10));
        Ext ext = new Ext();
        ext.setReMarks((this.selectedIndex + 1) + "");
        com.papa.sim.statistic.t.l(this.mContext).R1(Event.clickUninstallSubmitBtn, ext);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.bottom_out);
    }

    @Background
    void getData() {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                RequestModel requestModel = new RequestModel();
                UninstallAppReasonSubmitArgs uninstallAppReasonSubmitArgs = new UninstallAppReasonSubmitArgs();
                uninstallAppReasonSubmitArgs.setUid(AccountUtil_.getInstance_(this.mContext).getUid());
                requestModel.setArgs(uninstallAppReasonSubmitArgs);
                requestModel.setDefault(this);
                ResponseModel<UninstallAppReasonBean> responseModelH = this.rpcGameClient.H(requestModel.makeSign());
                if (responseModelH == null || responseModelH.getCode() != 200 || responseModelH.getData() == null) {
                    return;
                }
                updateUI(responseModelH.getData());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Click
    void ivClose() {
        finish();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Click
    void outside() {
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
    void showToast(String msg) {
        com.join.mgps.Util.a3.b(this.mContext).d(msg);
    }

    @Background
    void submit(String content) {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                RequestModel requestModel = new RequestModel();
                UninstallAppReasonSubmitArgs uninstallAppReasonSubmitArgs = new UninstallAppReasonSubmitArgs();
                uninstallAppReasonSubmitArgs.setUid(AccountUtil_.getInstance_(this.mContext).getUid());
                uninstallAppReasonSubmitArgs.setContent(content);
                uninstallAppReasonSubmitArgs.setText(this.etDesc.getText().toString().trim());
                requestModel.setArgs(uninstallAppReasonSubmitArgs);
                requestModel.setDefault(this);
                this.rpcGameClient.J(requestModel.makeSign());
                uninstallWufun();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void uninstallWufun() {
        startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + getPackageName())));
    }

    @UiThread
    void updateUI(UninstallAppReasonBean data) {
        if (data == null || data.getReason() == null) {
            return;
        }
        List<String> reason = data.getReason();
        this.reasons = reason;
        this.adapter.setNewData(reason);
    }
}
