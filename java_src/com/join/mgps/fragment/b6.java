package com.join.mgps.fragment;

import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.efs.sdk.base.core.util.PackageUtil;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSimulatorRecomGamesArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TipBean;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_simulator_recommend)
public class b6 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RecyclerView f69120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    TextView f69121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f69122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f69123f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    Group f69124g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f69125h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.mgps.rpc.k f69126i;

    class a extends BaseQuickAdapter<CommonGameInfoBean, com.join.mgps.base.b> {
        public a(List<CommonGameInfoBean> data) {
            super(R.layout.layout_simulator_recom_item, data);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(CommonGameInfoBean commonGameInfoBean, com.join.mgps.base.b bVar, View view) {
            IntentDateBean intentDataBean = commonGameInfoBean.getIntentDataBean();
            ExtBean extBean = intentDataBean.getExtBean();
            extBean.setFrom("151");
            extBean.setGameFlag(bVar.getLayoutPosition() + 1);
            intentDataBean.setExtBean(extBean);
            commonGameInfoBean.getIntentDataBean().setExtBean(extBean);
            IntentUtil.getInstance().intentActivity(this.mContext, intentDataBean);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull final com.join.mgps.base.b helper, final CommonGameInfoBean item) {
            if (item.getG_info() == null) {
                item.setG_info(new GInfoBean());
            }
            ((TextView) helper.getView(R.id.tvGameName)).setText(item.getG_info().getName());
            List<TipBean> tag_info = item.getG_info().getTag_info();
            String str = "";
            if (tag_info != null) {
                Iterator<TipBean> it2 = tag_info.iterator();
                while (it2.hasNext()) {
                    str = str + it2.next().getName() + " ";
                }
            }
            ((TextView) helper.getView(R.id.tvTags)).setText(str);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.ivIcon);
            if (simpleDraweeView.getTag() == null || !TextUtils.equals(simpleDraweeView.getTag().toString(), item.getG_info().getIco())) {
                com.join.android.app.common.utils.l.o(simpleDraweeView, item.getG_info().getIco());
                simpleDraweeView.setTag(item.getG_info().getIco());
            }
            if (item.getBig_pic() != null) {
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) helper.getView(R.id.ivPoster);
                if (simpleDraweeView2.getTag() == null || !TextUtils.equals(simpleDraweeView2.getTag().toString(), item.getBig_pic())) {
                    com.join.android.app.common.utils.l.o(simpleDraweeView2, item.getBig_pic());
                    simpleDraweeView2.getHierarchy().y(com.facebook.drawee.drawable.s.c.f27292i);
                    simpleDraweeView2.setTag(item.getBig_pic());
                }
            }
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.a6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f69049b.t(item, helper, view);
                }
            });
        }
    }

    @Background
    void M() {
        try {
            if (com.join.android.app.common.utils.m.j(getContext())) {
                RequestSimulatorRecomGamesArgs requestSimulatorRecomGamesArgs = new RequestSimulatorRecomGamesArgs();
                requestSimulatorRecomGamesArgs.setUid(AccountUtil_.getInstance_(getContext()).getUid());
                requestSimulatorRecomGamesArgs.setAppVersion(PackageUtil.getAppVersionCode(getContext()) + "_" + PackageUtil.getAppVersionName(getContext()));
                requestSimulatorRecomGamesArgs.setGameId(this.f69125h);
                RequestModel requestModel = new RequestModel();
                requestModel.setArgs(requestSimulatorRecomGamesArgs);
                requestModel.setDefault(getContext());
                ResponseModel<List<CommonGameInfoBean>> responseModelD = this.f69126i.d(requestModel.makeSign());
                if (responseModelD == null || responseModelD.getData() == null) {
                    showLodingFailed();
                } else {
                    showMain();
                    updateUi(responseModelD.getData());
                }
            } else {
                showLodingFailed();
                showTost(getResources().getString(R.string.net_connect_failed));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    @AfterViews
    void afterviews() {
        if (getArguments() != null) {
            this.f69125h = getArguments().getString("gameId");
        }
        this.f69126i = com.join.mgps.rpc.impl.i.P0();
        showLoding();
        M();
    }

    @Click
    void relodingimag() {
        showLoding();
        M();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getContext());
    }

    @UiThread
    void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        LinearLayout linearLayout = this.f69122e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69123f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        Group group = this.f69124g;
        if (group != null) {
            group.setVisibility(8);
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f69123f;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69122e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        Group group = this.f69124g;
        if (group != null) {
            group.setVisibility(8);
        }
    }

    @UiThread
    void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        LinearLayout linearLayout = this.f69123f;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f69122e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        Group group = this.f69124g;
        if (group != null) {
            group.setVisibility(0);
        }
    }

    @UiThread
    void showTost(String message) {
        com.join.mgps.Util.a3.b(getActivity()).d(message);
    }

    @UiThread
    void updateUi(List<CommonGameInfoBean> data) {
        RecyclerView recyclerView = this.f69120c;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            this.f69120c.setAdapter(new a(data));
        }
        TextView textView = this.f69121d;
        if (textView != null) {
            textView.setText(data.size() + "");
        }
    }
}
