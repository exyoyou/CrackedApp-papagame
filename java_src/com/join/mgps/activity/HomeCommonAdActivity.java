package com.join.mgps.activity;

import android.view.View;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.home_common_ad_activity)
public class HomeCommonAdActivity extends BaseDialogActivity {

    @Extra
    String adJson;
    CommonGameInfoBean commonGameInfoBean;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    SimpleDraweeView sdv_ad_image;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            HomeCommonAdActivity homeCommonAdActivity = HomeCommonAdActivity.this;
            intentUtil.intentActivity(homeCommonAdActivity, homeCommonAdActivity.commonGameInfoBean.getIntentDataBean());
            com.papa.sim.statistic.t.l(HomeCommonAdActivity.this).R1(Event.wfAdUpTipsClick, new Ext());
            HomeCommonAdActivity.this.finish();
        }
    }

    @AfterViews
    void afterViews() {
        try {
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) JsonMapper.getInstance().fromJson(com.join.mgps.Util.t2.g(this.adJson), CommonGameInfoBean.class);
            this.commonGameInfoBean = commonGameInfoBean;
            if (commonGameInfoBean != null) {
                com.join.android.app.common.utils.l.o(this.sdv_ad_image, commonGameInfoBean.getCoverPicUrl());
                this.sdv_ad_image.setOnClickListener(new a());
                this.prefDef.home_common_quark_ad_times().g(Integer.valueOf(this.prefDef.home_common_quark_ad_times().d().intValue() + 1));
                com.papa.sim.statistic.t.l(this).R1(Event.wfAdUpTipsExp, new Ext());
            } else {
                finish();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    public View getContentView() {
        return this.sdv_ad_image;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        setResult(1);
    }
}
