package com.join.mgps.activity;

import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseFragmentActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.haima.hmcp.Constants;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.CommonAdBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.RequestCommonAdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.ext.ToastManager;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.about_activity)
public class MGPapaAboutActivity extends BaseFragmentActivity {

    @ViewById
    ImageView back_image;
    private Context context;
    private com.join.mgps.adapter.a mSubMenuAdapter;
    private com.join.mgps.adapter.b mTopMenuAdapter;

    @Pref
    PrefDef_ prefDef_;
    com.join.mgps.rpc.e recommendClient;
    com.join.mgps.rpc.b rpcAccountClient;

    @ViewById
    RecyclerView rv_menu_list;

    @ViewById
    RecyclerView rv_sub_menu_list;

    @ViewById
    TextView title_textview;

    @ViewById
    TextView tv_version;
    private String TAG = getClass().getSimpleName();
    private boolean loadLocalSuccess = false;

    class a extends LinearLayoutManager {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    class b extends LinearLayoutManager {
        b(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    class c extends com.join.mgps.base.decoration.b {
        c() {
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = Color.parseColor("#F3F3F3");
            aVar.f64120d = (int) MGPapaAboutActivity.this.getResources().getDimension(R.dimen.wdp2);
            return aVar;
        }
    }

    class d extends com.join.mgps.base.decoration.b {
        d() {
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = 0;
            aVar.f64120d = (int) MGPapaAboutActivity.this.getResources().getDimension(R.dimen.wdp6);
            return aVar;
        }
    }

    private void clipBoard(String text) {
        ((ClipboardManager) this.context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(text);
        ToastManager.show(text + " 已复制到剪贴板");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$AfterViews$0(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        handleItemClick((CommonGameInfoBean) baseQuickAdapter.getItem(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$AfterViews$1(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        handleItemClick((CommonGameInfoBean) baseQuickAdapter.getItem(i10));
    }

    private void loadLocalData() {
        String strD = this.prefDef_.wf_app_about().d();
        if (com.join.mgps.Util.t2.i(strD)) {
            try {
                updateUI((List) JsonMapper.getInstance().fromJson(strD, JsonMapper.getInstance().createCollectionType(List.class, CommonGameInfoBean.class)));
                this.loadLocalSuccess = true;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @AfterViews
    void AfterViews() {
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        this.context = this;
        com.join.mgps.Util.p2.t(this, R.color.activity_about);
        this.mSubMenuAdapter = new com.join.mgps.adapter.a();
        com.join.mgps.adapter.b bVar = new com.join.mgps.adapter.b();
        this.mTopMenuAdapter = bVar;
        bVar.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.mgps.activity.i7
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f57339a.lambda$AfterViews$0(baseQuickAdapter, view, i10);
            }
        });
        this.mSubMenuAdapter.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.mgps.activity.j7
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f57351a.lambda$AfterViews$1(baseQuickAdapter, view, i10);
            }
        });
        this.rv_menu_list.setLayoutManager(new a(this));
        this.rv_sub_menu_list.setLayoutManager(new b(this));
        this.rv_menu_list.setAdapter(this.mTopMenuAdapter);
        this.rv_sub_menu_list.setAdapter(this.mSubMenuAdapter);
        this.rv_menu_list.setLayoutManager(new LinearLayoutManager(this));
        this.rv_sub_menu_list.setLayoutManager(new LinearLayoutManager(this));
        showUI();
        this.rv_menu_list.addItemDecoration(new c());
        this.rv_sub_menu_list.addItemDecoration(new d());
        getAboutInfo();
        loadLocalData();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getAboutInfo() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                RequestCommonAdArgs requestCommonAdArgs = new RequestCommonAdArgs();
                requestCommonAdArgs.setPage(1);
                requestCommonAdArgs.setPositionMarkList(new ArrayList<String>() { // from class: com.join.mgps.activity.MGPapaAboutActivity.5
                    {
                        add("WF_APP_ABOUT");
                    }
                });
                RequestModel requestModel = new RequestModel(this.context);
                requestModel.setArgs(requestCommonAdArgs);
                ResponseModel<List<CommonAdBean>> responseModelK0 = com.join.mgps.rpc.impl.i.P0().K0(requestModel.makeSign());
                if (responseModelK0 == null || responseModelK0.getData() == null || responseModelK0.getData().size() <= 0) {
                    return;
                }
                for (CommonAdBean commonAdBean : responseModelK0.getData()) {
                    if (TextUtils.equals(commonAdBean.getPosition_mark(), "WF_APP_ABOUT") && commonAdBean.getAd_info_list() != null) {
                        this.prefDef_.wf_app_about().g(JsonMapper.toJsonString(commonAdBean.getAd_info_list()));
                        if (this.loadLocalSuccess) {
                            return;
                        }
                        updateUI(commonAdBean.getAd_info_list());
                        return;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void handleItemClick(CommonGameInfoBean item) {
        if (item.getJp_info() != null && "action_copy".equals(item.getJp_info().getLink_type_val())) {
            clipBoard(item.getDescription());
        } else if (item.getJp_info() != null) {
            IntentUtil.getInstance().intentActivity(this, item.getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showUI() {
        this.tv_version.setText("V 6.1.7.0");
        TextUtils.isEmpty("wufun");
        this.title_textview.setText("关于悟饭");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(List<CommonGameInfoBean> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (CommonGameInfoBean commonGameInfoBean : list) {
            if ("top_menu".equals(commonGameInfoBean.getSub_title())) {
                arrayList.add(commonGameInfoBean);
            } else if ("bottom".equals(commonGameInfoBean.getSub_title())) {
                arrayList2.add(commonGameInfoBean);
            }
        }
        this.mTopMenuAdapter.submitList(arrayList);
        this.mSubMenuAdapter.submitList(arrayList2);
    }
}
