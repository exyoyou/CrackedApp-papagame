package com.join.mgps.activity;

import android.content.Context;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.CommonAdBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.uc.crashsdk.export.LogType;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.update_feature_dialog)
public class UpdateFeatureDialog extends BaseActivity {

    @ViewById
    RecyclerView appList;

    @Extra
    CommonAdBean commonAdBean;
    private Context context;

    @ViewById
    TextView tvClose;

    class a extends BaseQuickAdapter<CommonGameInfoBean, com.join.mgps.base.b> {
        public a() {
            super(R.layout.item_update_feature_dialog, UpdateFeatureDialog.this.commonAdBean.getAd_info_list());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(CommonGameInfoBean commonGameInfoBean, View view) {
            IntentUtil.getInstance().intentActivity(UpdateFeatureDialog.this.context, commonGameInfoBean.getIntentDataBean());
            UpdateFeatureDialog.this.finish();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, final CommonGameInfoBean item) {
            helper.setText(R.id.tvTitle, item.getTitle()).setText(R.id.tvSubTitle, item.getSub_title()).setText(R.id.tvBtn, item.getDescription()).setVisible(R.id.divider, helper.getLayoutPosition() < getItemCount() - 1);
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.aa
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f56463b.t(item, view);
                }
            });
        }
    }

    private void initRecycleview() {
        this.appList.setAdapter(new a());
    }

    @AfterViews
    void afterviews() {
        this.context = this;
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        CommonAdBean commonAdBean = this.commonAdBean;
        if (commonAdBean == null || commonAdBean.getAd_info_list() == null || this.commonAdBean.getAd_info_list().size() <= 0) {
            finish();
        }
        initRecycleview();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Click
    void tvClose() {
        finish();
    }
}
