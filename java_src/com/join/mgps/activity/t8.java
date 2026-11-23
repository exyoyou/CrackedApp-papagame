package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.GameFromPopoWinBeanV2;
import com.join.mgps.dto.HomeCloudActiveBean;
import com.join.mgps.dto.HomeDynamicListBean;
import com.join.mgps.dto.HomeRankingListBean;
import com.join.mgps.dto.HomeTopChannelBean;
import com.join.mgps.dto.PapaHomeBeanV9;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.ApiName;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.mgpapa_mainfragment_new_layout_v4_sub_home)
public class t8 extends Fragment implements com.join.mgps.adapter.f6.g {
    public static final int A = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    XQuickRecyclerView f58114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f58115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f58116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f58117f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Pref
    PrefDef_ f58118g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f58119h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f58120i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f58121j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f58125n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.join.mgps.adapter.f6 f58127p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f58128q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f58129r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f58130s;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private HomeCloudActiveBean f58134w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private com.join.mgps.callbacks.k f58136y;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f58122k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f58123l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f58124m = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<CommonMultiItemBean> f58126o = new ArrayList();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f58131t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private List<CommonGameInfoBean> f58132u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f58133v = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Handler f58135x = new Handler(new a());

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    Runnable f58137z = new g();

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message msg) {
            if (msg.what != 1 || t8.this.f58134w == null) {
                return false;
            }
            if (!t8.this.f58134w.endAll()) {
                t8.this.s0();
            }
            t8.this.f58134w.calcTime();
            t8.this.x0();
            return false;
        }
    }

    class b extends GridLayoutManager.SpanSizeLookup {
        b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int position) {
            return (t8.this.f58127p.getItem(position) == 0 || ((CommonMultiItemBean) t8.this.f58127p.getItem(position)).getItemType() != 11) ? 10 : 5;
        }
    }

    class c extends com.join.mgps.base.decoration.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f58140e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f58141f;

        c(final int val$recomGridDividerColor, final int val$recomGridDividerW) {
            this.f58140e = val$recomGridDividerColor;
            this.f58141f = val$recomGridDividerW;
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            int iM0 = com.join.mgps.adapter.f6.m0(t8.this.f58127p.getData(), position);
            if (iM0 < 0) {
                return null;
            }
            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = this.f58140e;
            if (iM0 % 2 == 0) {
                aVar.f64117a = this.f58141f;
            } else {
                aVar.f64118b = this.f58141f;
            }
            return aVar;
        }
    }

    class d implements XQuickRecyclerView.LoadingListener {
        d() {
        }

        @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
        public void onLoadMore() throws Throwable {
            t8 t8Var = t8.this;
            t8Var.l0(t8Var.f58124m);
        }

        @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
        public void onRefresh() throws Throwable {
            t8.this.f58124m = 1;
            t8.this.f58114c.reset();
            t8 t8Var = t8.this;
            t8Var.l0(t8Var.f58124m);
        }
    }

    class e extends RecyclerView.OnScrollListener {
        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            t8.this.f58131t = newState != 0;
            if (newState != 0) {
                t8.this.f58136y.y(false);
                return;
            }
            if (com.join.android.app.component.video.h.p(recyclerView) < t8.this.f58127p.getData().size() - 1 || t8.this.f58123l) {
                t8.this.f58136y.y(true);
            } else {
                t8.this.f58136y.y(false);
            }
            t8.this.j0();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView rv, int dx, int dy) {
            super.onScrolled(rv, dx, dy);
            t8 t8Var = t8.this;
            t8Var.f58129r = t8Var.f58114c.getLastVisiblePosition();
            t8 t8Var2 = t8.this;
            t8Var2.f58130s = t8Var2.f58114c.getFirstVisiblePosition();
        }
    }

    class f extends m6.d {
        f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEvent$0(String str) {
            Bundle bundle = new Bundle();
            if (com.join.mgps.Util.t2.i(str)) {
                bundle.putString("_sign_data", str);
            }
            FragmentPageActivity_.intent(t8.this.requireContext()).b(1).c("云玩").a(bundle).start();
        }

        @Override // m6.d, com.join.kotlin.base.dialog.callback.IDialogActivityCallback
        public void onActivityDismiss(@NonNull Activity activity) {
            super.onActivityDismiss(activity);
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.f(ApiName.advertCfg));
        }

        @Override // m6.d, com.join.mgps.callbacks.r
        public void onEvent(Activity activity, int event, final String jsonParams) {
            super.onEvent(activity, event, jsonParams);
            if (event != 1 && event == 2) {
                activity.finish();
                t8.this.f58135x.postDelayed(new Runnable() { // from class: com.join.mgps.activity.u8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f58161b.lambda$onEvent$0(jsonParams);
                    }
                }, 400L);
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // java.lang.Runnable
        public void run() {
            HomeRankingListBean homeRankingListBean;
            List list;
            LinearLayoutManager linearLayoutManager;
            if (t8.this.isAdded() && t8.this.getContext() != null && t8.this.f58125n) {
                if (t8.this.f58118g.isFirstCommendVersion().d().booleanValue() && t8.this.f58118g.isFirst35().d().booleanValue()) {
                    return;
                }
                t8 t8Var = t8.this;
                XQuickRecyclerView xQuickRecyclerView = t8Var.f58114c;
                if (xQuickRecyclerView != null) {
                    t8Var.f58129r = xQuickRecyclerView.getLastCompletelyVisiblePosition();
                }
                for (int i10 = 0; i10 < t8.this.f58126o.size(); i10++) {
                    if (i10 <= t8.this.f58129r) {
                        CommonMultiItemBean commonMultiItemBean = (CommonMultiItemBean) t8.this.f58126o.get(i10);
                        if (!commonMultiItemBean.getExposure()) {
                            switch (commonMultiItemBean.getItemType()) {
                                case 5:
                                case 7:
                                case 11:
                                    if (commonMultiItemBean.getData() instanceof CommonGameInfoBean) {
                                        t8.this.u0((CommonGameInfoBean) commonMultiItemBean.getData());
                                    }
                                    commonMultiItemBean.setExposure(true);
                                    break;
                                case 6:
                                    if (commonMultiItemBean.getData() instanceof HomeTopChannelBean) {
                                        HomeTopChannelBean homeTopChannelBean = (HomeTopChannelBean) commonMultiItemBean.getData();
                                        Context context = t8.this.getContext();
                                        if (context != null) {
                                            if (homeTopChannelBean.getTheNew() != null) {
                                                com.papa.sim.statistic.t.l(context).R1(Event.commonExp, homeTopChannelBean.getTheNew().getExtBean().buildScene().toExt());
                                            }
                                            if (homeTopChannelBean.getBroadcast() != null) {
                                                com.papa.sim.statistic.t.l(context).R1(Event.commonExp, homeTopChannelBean.getBroadcast().getExtBean().buildScene().toExt());
                                            }
                                            if (homeTopChannelBean.getAd_info() != null) {
                                                com.papa.sim.statistic.t.l(context).R1(Event.commonExp, homeTopChannelBean.getAd_info().getExtBean().buildScene().toExt());
                                            }
                                        }
                                    }
                                    commonMultiItemBean.setExposure(true);
                                    break;
                                case 8:
                                default:
                                    commonMultiItemBean.setExposure(true);
                                    break;
                                case 9:
                                    if ((commonMultiItemBean.getData() instanceof HomeRankingListBean) && (homeRankingListBean = (HomeRankingListBean) commonMultiItemBean.getData()) != null && homeRankingListBean.getList() != null) {
                                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = t8.this.f58114c.findViewHolderForAdapterPosition(i10);
                                        if (viewHolderFindViewHolderForAdapterPosition instanceof com.join.mgps.base.b) {
                                            Iterator<CommonGameInfoBean> it2 = homeRankingListBean.getList().get(((ViewPager2) ((com.join.mgps.base.b) viewHolderFindViewHolderForAdapterPosition).getView(R.id.viewpager)).getCurrentItem()).iterator();
                                            while (it2.hasNext()) {
                                                t8.this.u0(it2.next());
                                            }
                                        }
                                    }
                                    commonMultiItemBean.setExposure(true);
                                    break;
                                case 10:
                                    if ((commonMultiItemBean.getData() instanceof List) && (list = (List) commonMultiItemBean.getData()) != null && list.size() > 0) {
                                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = t8.this.f58114c.findViewHolderForAdapterPosition(i10);
                                        if ((viewHolderFindViewHolderForAdapterPosition2 instanceof com.join.mgps.base.b) && (linearLayoutManager = (LinearLayoutManager) ((RecyclerView) ((com.join.mgps.base.b) viewHolderFindViewHolderForAdapterPosition2).getView(R.id.recycleView)).getLayoutManager()) != null) {
                                            int iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
                                            for (int i11 = 0; i11 <= iFindLastCompletelyVisibleItemPosition; i11++) {
                                                t8.this.v0((GameFromPopoWinBeanV2.DataBean) list.get(i11), i11);
                                            }
                                        }
                                    }
                                    commonMultiItemBean.setExposure(true);
                                    break;
                            }
                        }
                        continue;
                    }
                }
            }
        }
    }

    private CommonGameInfoBean B0(CommonGameInfoBean bean) {
        if (bean != null && bean.getG_info() != null) {
            GInfoBean g_info = bean.getG_info();
            for (DownloadTask downloadTask : q5.f.M().d()) {
                if (TextUtils.equals(g_info.getMod_id(), downloadTask.getCrc_link_type_val())) {
                    bean.setDownloadTask(downloadTask);
                    break;
                }
                if (TextUtils.equals(g_info.getId(), downloadTask.getCrc_link_type_val())) {
                    bean.setDownloadTask(downloadTask);
                }
            }
        }
        return bean;
    }

    private HomeRankingListBean C0(HomeRankingListBean rankingListBean) {
        if (rankingListBean != null && rankingListBean.getList() != null && rankingListBean.getList().size() > 0) {
            for (DownloadTask downloadTask : q5.f.M().d()) {
                for (int i10 = 0; i10 < rankingListBean.getList().size(); i10++) {
                    List<CommonGameInfoBean> list = rankingListBean.getList().get(i10);
                    if (list != null) {
                        for (int i11 = 0; i11 < list.size(); i11++) {
                            CommonGameInfoBean commonGameInfoBean = list.get(i11);
                            commonGameInfoBean.getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name());
                            if (i10 == 0) {
                                commonGameInfoBean.set_from(20501);
                                commonGameInfoBean.set_from_type(20501);
                                commonGameInfoBean.setExp_position("22-15-" + (i11 + 1));
                                commonGameInfoBean.getExtBean().setFrom("10005").set_from_type(10005).setPosition(commonGameInfoBean.getExp_position());
                            } else if (i10 == 1) {
                                commonGameInfoBean.set_from(20502);
                                commonGameInfoBean.set_from_type(20502);
                                commonGameInfoBean.setExp_position("22-16-" + (i11 + 1));
                                commonGameInfoBean.getExtBean().setFrom("10005").set_from_type(10005).setPosition(commonGameInfoBean.getExp_position());
                            } else if (i10 == 2) {
                                commonGameInfoBean.set_from(20503);
                                commonGameInfoBean.set_from_type(20503);
                                commonGameInfoBean.setExp_position("22-17-" + (i11 + 1));
                                commonGameInfoBean.getExtBean().setFrom("10005").set_from_type(10005).setPosition(commonGameInfoBean.getExp_position());
                            }
                            if (commonGameInfoBean.getG_info() != null) {
                                GInfoBean g_info = commonGameInfoBean.getG_info();
                                if (TextUtils.equals(g_info.getMod_id(), downloadTask.getCrc_link_type_val())) {
                                    commonGameInfoBean.setDownloadTask(downloadTask);
                                    break;
                                }
                                if (TextUtils.equals(g_info.getId(), downloadTask.getCrc_link_type_val())) {
                                    commonGameInfoBean.setDownloadTask(downloadTask);
                                }
                            }
                        }
                    }
                }
            }
        }
        return rankingListBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public void j0() {
        this.f58135x.post(this.f58137z);
    }

    private String h0(CommonGameInfoBean bean) {
        if (bean == null || bean.getG_info() == null) {
            return null;
        }
        return (TextUtils.isEmpty(bean.getG_info().getId()) || TextUtils.equals(bean.getG_info().getId(), "0")) ? bean.getG_info().getMod_id() : bean.getG_info().getId();
    }

    private void n0() {
        updateBtnPartly();
    }

    private void o0() {
        updateBtnPartly();
    }

    private void p0() {
        updateBtnPartly();
    }

    private void q0() {
        updateBtnPartly();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        this.f58135x.sendEmptyMessageDelayed(1, 1000L);
    }

    private void t0(PapaHomeBeanV9 mainBean) {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof q8) {
            ((q8) parentFragment).h0(mainBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(CommonGameInfoBean bean) {
        String strH0 = h0(bean);
        Ext ext = new Ext();
        ext.setPage("home");
        ext.setFrom(bean.get_from() + "");
        ext.setPosition(bean.getExp_position());
        Data data = new Data();
        if (bean.getIntentDataBean() != null) {
            data.setWhere(bean.getIntentDataBean().getLink_type_val());
        }
        if (!TextUtils.isEmpty(strH0)) {
            try {
                data.setGameId(strH0);
            } catch (Exception unused) {
            }
        }
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(this.f58120i);
        Event event = Event.expGameAdPage;
        tVarL.W1(event, ext, data);
        if (UtilsMy.p2(bean)) {
            try {
                Ext ext2 = new Ext();
                ext2.setResultCode("discount_game");
                ext2.setScenesCode(getClass().getSimpleName());
                Data data2 = new Data();
                data2.setGameId(strH0);
                com.papa.sim.statistic.t.l(this.f58120i).Y(event, ext2, data2);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (bean.getExposure()) {
            return;
        }
        com.papa.sim.statistic.t.l(this.f58120i).R1(Event.expGameAdPage, bean.getExtBean().buildScene().toExt());
        bean.setExposure(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateBtnPartly() {
        View viewFindViewByPosition;
        ViewPager2 viewPager2;
        RecyclerView recyclerView;
        com.join.mgps.adapter.a5 a5Var;
        View viewFindViewByPosition2;
        RecyclerView recyclerView2;
        com.join.mgps.adapter.m6 m6Var;
        if (this.f58132u != null) {
            for (int i10 = 0; i10 < this.f58132u.size(); i10++) {
                CommonGameInfoBean commonGameInfoBean = this.f58132u.get(i10);
                if (commonGameInfoBean != null && commonGameInfoBean.getG_info() != null) {
                    try {
                        DlTaskManager.INSTANCE.updateDownloadTask(commonGameInfoBean);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
        int i11 = this.f58130s;
        if (i11 < 0) {
            return;
        }
        while (i11 <= Math.min(this.f58129r + 1, this.f58127p.getItemCount() - 1)) {
            CommonMultiItemBean commonMultiItemBean = (CommonMultiItemBean) this.f58127p.getItem(i11);
            if (commonMultiItemBean != null) {
                int itemType = commonMultiItemBean.getItemType();
                if (itemType == 5) {
                    try {
                        if ((commonMultiItemBean.getData() instanceof CommonGameInfoBean) && ((CommonGameInfoBean) commonMultiItemBean.getData()).getG_info() != null) {
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.f58114c.findViewHolderForAdapterPosition(i11);
                            if (viewHolderFindViewHolderForAdapterPosition instanceof com.join.mgps.base.b) {
                                this.f58127p.J0((com.join.mgps.base.b) viewHolderFindViewHolderForAdapterPosition, commonMultiItemBean);
                            }
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                } else if (itemType == 7) {
                    try {
                        if ((commonMultiItemBean.getData() instanceof CommonGameInfoBean) && ((CommonGameInfoBean) commonMultiItemBean.getData()).getG_info() != null) {
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.f58114c.findViewHolderForAdapterPosition(i11);
                            if (viewHolderFindViewHolderForAdapterPosition2 instanceof com.join.mgps.base.b) {
                                this.f58127p.M0((com.join.mgps.base.b) viewHolderFindViewHolderForAdapterPosition2, commonMultiItemBean);
                            }
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                } else if (itemType == 9) {
                    try {
                        HomeRankingListBean homeRankingListBean = (HomeRankingListBean) commonMultiItemBean.getData();
                        if (homeRankingListBean != null && homeRankingListBean.getList() != null && this.f58114c.getLayoutManager() != null && (viewFindViewByPosition = this.f58114c.getLayoutManager().findViewByPosition(i11)) != null && (viewPager2 = (ViewPager2) viewFindViewByPosition.findViewById(R.id.viewpager)) != null && (recyclerView = (RecyclerView) viewPager2.getChildAt(0)) != null && recyclerView.getLayoutManager() != null && (a5Var = (com.join.mgps.adapter.a5) recyclerView.getAdapter()) != null) {
                            int itemCount = a5Var.getItemCount();
                            for (int i12 = 0; i12 < homeRankingListBean.getList().size() && i12 < itemCount; i12++) {
                                List<CommonGameInfoBean> list = homeRankingListBean.getList().get(i12);
                                if (list != null && (viewFindViewByPosition2 = recyclerView.getLayoutManager().findViewByPosition(i12)) != null && (recyclerView2 = (RecyclerView) viewFindViewByPosition2.findViewById(R.id.recyclerView)) != null && recyclerView2.getLayoutManager() != null && (m6Var = (com.join.mgps.adapter.m6) recyclerView2.getAdapter()) != null) {
                                    int itemCount2 = m6Var.getItemCount();
                                    for (int i13 = 0; i13 < list.size() && i13 < itemCount2; i13++) {
                                        CommonGameInfoBean commonGameInfoBean2 = list.get(i13);
                                        if (commonGameInfoBean2.getG_info() != null) {
                                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition3 = recyclerView2.findViewHolderForAdapterPosition(i13);
                                            if (viewHolderFindViewHolderForAdapterPosition3 instanceof com.join.mgps.base.b) {
                                                m6Var.r((com.join.mgps.base.b) viewHolderFindViewHolderForAdapterPosition3, commonGameInfoBean2);
                                            } else {
                                                continue;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                } else if (itemType == 11) {
                    try {
                        if ((commonMultiItemBean.getData() instanceof CommonGameInfoBean) && ((CommonGameInfoBean) commonMultiItemBean.getData()).getG_info() != null) {
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition4 = this.f58114c.findViewHolderForAdapterPosition(i11);
                            if (viewHolderFindViewHolderForAdapterPosition4 instanceof com.join.mgps.base.b) {
                                this.f58127p.e0((com.join.mgps.base.b) viewHolderFindViewHolderForAdapterPosition4, commonMultiItemBean);
                            }
                        }
                    } catch (Exception e14) {
                        e14.printStackTrace();
                    }
                }
            }
            i11++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0114 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x011c  */
    /* JADX WARN: Code duplicated, block: B:80:0x011d A[Catch: Exception -> 0x015c, TryCatch #1 {Exception -> 0x015c, blocks: (B:77:0x0114, B:80:0x011d, B:83:0x012a, B:86:0x0133, B:94:0x0143, B:96:0x014d), top: B:104:0x0114 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x014d A[Catch: Exception -> 0x015c, TRY_LEAVE, TryCatch #1 {Exception -> 0x015c, blocks: (B:77:0x0114, B:80:0x011d, B:83:0x012a, B:86:0x0133, B:94:0x0143, B:96:0x014d), top: B:104:0x0114 }] */
    /* JADX WARN: Multi-variable type inference failed */
    private void updateProgressPartly() {
        CommonGameInfoBean commonGameInfoBean;
        DownloadTask task;
        int status;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        View viewFindViewByPosition;
        com.join.mgps.adapter.a5 a5Var;
        View viewFindViewByPosition2;
        RecyclerView recyclerView;
        com.join.mgps.adapter.m6 m6Var;
        DownloadTask task2;
        int status2;
        int i10 = this.f58130s;
        if (i10 < 0) {
            return;
        }
        int i11 = i10;
        while (true) {
            int i12 = 1;
            if (i11 > Math.min(this.f58129r + 1, this.f58127p.getItemCount() - 1)) {
                return;
            }
            CommonMultiItemBean commonMultiItemBean = (CommonMultiItemBean) this.f58127p.getItem(i11);
            if (commonMultiItemBean != null) {
                int itemType = commonMultiItemBean.getItemType();
                if (itemType == 5 || itemType == 7) {
                    try {
                        if (!(commonMultiItemBean.getData() instanceof CommonGameInfoBean)) {
                            commonGameInfoBean = (CommonGameInfoBean) commonMultiItemBean.getData();
                            if (commonGameInfoBean.getG_info() != null && (task = DlTaskManager.INSTANCE.getTask(commonGameInfoBean)) != null && ((status = task.getStatus()) == 2 || status == 12 || status == 10 || status == 1 || status == 3)) {
                                viewHolderFindViewHolderForAdapterPosition = this.f58114c.findViewHolderForAdapterPosition(i11);
                                if (viewHolderFindViewHolderForAdapterPosition instanceof com.join.mgps.base.b) {
                                    ((DownloadNormalView) ((com.join.mgps.base.b) viewHolderFindViewHolderForAdapterPosition).getView(R.id.dv_view)).d(task);
                                }
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else if (itemType == 9) {
                    try {
                        HomeRankingListBean homeRankingListBean = (HomeRankingListBean) commonMultiItemBean.getData();
                        RecyclerView.LayoutManager layoutManager = this.f58114c.getLayoutManager();
                        if (layoutManager != null && homeRankingListBean != null && homeRankingListBean.getList() != null && (viewFindViewByPosition = layoutManager.findViewByPosition(i11)) != null) {
                            int i13 = 0;
                            RecyclerView recyclerView2 = (RecyclerView) ((ViewPager2) viewFindViewByPosition.findViewById(R.id.viewpager)).getChildAt(0);
                            if (recyclerView2 != null && recyclerView2.getLayoutManager() != null && (a5Var = (com.join.mgps.adapter.a5) recyclerView2.getAdapter()) != null) {
                                int itemCount = a5Var.getItemCount();
                                int i14 = 0;
                                while (i14 < itemCount) {
                                    List<CommonGameInfoBean> list = homeRankingListBean.getList().get(i14);
                                    if (list != null && (viewFindViewByPosition2 = recyclerView2.getLayoutManager().findViewByPosition(i14)) != null && (recyclerView = (RecyclerView) viewFindViewByPosition2.findViewById(R.id.recyclerView)) != null && recyclerView.getLayoutManager() != null && (m6Var = (com.join.mgps.adapter.m6) recyclerView.getAdapter()) != null) {
                                        int itemCount2 = m6Var.getItemCount();
                                        while (i13 < itemCount2 && i13 < list.size()) {
                                            CommonGameInfoBean commonGameInfoBean2 = list.get(i13);
                                            if (commonGameInfoBean2.getG_info() != null && (task2 = DlTaskManager.INSTANCE.getTask(commonGameInfoBean2)) != null && ((status2 = task2.getStatus()) == 2 || status2 == 12 || status2 == 10 || status2 == i12 || status2 == 3)) {
                                                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = recyclerView.findViewHolderForAdapterPosition(i13);
                                                if (viewHolderFindViewHolderForAdapterPosition2 instanceof com.join.mgps.base.b) {
                                                    ((DownloadNormalView) ((com.join.mgps.base.b) viewHolderFindViewHolderForAdapterPosition2).getView(R.id.dv_view)).d(task2);
                                                } else {
                                                    continue;
                                                }
                                            }
                                            i13++;
                                            i12 = 1;
                                        }
                                    }
                                    i14++;
                                    i12 = 1;
                                    i13 = 0;
                                }
                            }
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                } else if (itemType == 11) {
                    if (!(commonMultiItemBean.getData() instanceof CommonGameInfoBean)) {
                        commonGameInfoBean = (CommonGameInfoBean) commonMultiItemBean.getData();
                        if (commonGameInfoBean.getG_info() != null) {
                            viewHolderFindViewHolderForAdapterPosition = this.f58114c.findViewHolderForAdapterPosition(i11);
                            if (viewHolderFindViewHolderForAdapterPosition instanceof com.join.mgps.base.b) {
                                ((DownloadNormalView) ((com.join.mgps.base.b) viewHolderFindViewHolderForAdapterPosition).getView(R.id.dv_view)).d(task);
                            }
                        }
                    }
                }
            }
            i11++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0(GameFromPopoWinBeanV2.DataBean dataBean, int position) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void x0() {
        int i10 = this.f58130s;
        if (i10 >= 0) {
            while (i10 <= Math.min(this.f58129r + 1, this.f58127p.getItemCount() - 1)) {
                CommonMultiItemBean commonMultiItemBean = (CommonMultiItemBean) this.f58127p.getItem(i10);
                if (commonMultiItemBean != null && commonMultiItemBean.getItemType() == 3) {
                    try {
                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.f58114c.findViewHolderForAdapterPosition(i10);
                        if (viewHolderFindViewHolderForAdapterPosition instanceof com.join.mgps.base.b) {
                            this.f58127p.Y((com.join.mgps.base.b) viewHolderFindViewHolderForAdapterPosition, this.f58134w);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                i10++;
            }
        }
    }

    void A0(int from) {
        switch (from) {
            case 1:
            case 2:
            case 7:
            case 8:
            case 9:
                p0();
                break;
            case 3:
                n0();
                break;
            case 5:
                q0();
                break;
            case 6:
                o0();
                break;
        }
    }

    @Receiver(actions = {p5.a.B})
    void N() throws Throwable {
        if (this.f58122k) {
            return;
        }
        this.f58124m = 1;
        this.f58123l = true;
        this.f58114c.reset();
        l0(this.f58124m);
    }

    @AfterViews
    void afterViews() throws Throwable {
        this.f58120i = getContext();
        com.join.mgps.Util.j0.a().d(this);
        com.join.mgps.adapter.f6 f6Var = new com.join.mgps.adapter.f6(this.f58120i, this);
        this.f58127p = f6Var;
        this.f58114c.setAdapter(f6Var);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.f58120i, 10);
        gridLayoutManager.setSpanSizeLookup(new b());
        this.f58114c.setLayoutManager(gridLayoutManager);
        int dimension = (int) getResources().getDimension(R.dimen.wdp20);
        this.f58114c.addItemDecoration(new c(ContextCompat.getColor(this.f58120i, R.color.white), dimension));
        this.f58114c.setPtrFrameLayout(this.f58115d);
        this.f58114c.setLoadingListener(new d());
        this.f58114c.setPreLoadCount(10);
        this.f58114c.addOnScrollListener(new e());
        this.f58132u = new ArrayList();
        k0();
    }

    @Override // com.join.mgps.adapter.f6.g
    public void h(List<CommonGameInfoBean> list, int lastVisiblePosition) {
    }

    String i0() {
        return this.f58128q;
    }

    @Background
    void k0() throws Throwable {
        String strD = this.f58118g.homeAllDataV4().d();
        PapaHomeBeanV9 papaHomeBeanV9 = com.join.mgps.Util.t2.i(strD) ? (PapaHomeBeanV9) JsonMapper.getInstance().fromJson(strD, PapaHomeBeanV9.class) : null;
        if (papaHomeBeanV9 != null) {
            y0(papaHomeBeanV9, 1, false);
            showMain();
            this.f58119h = false;
        } else {
            this.f58119h = true;
        }
        l0(this.f58124m);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0145  */
    /* JADX WARN: Code duplicated, block: B:60:0x0152  */
    @Background
    void l0(int pnx) throws Throwable {
        PapaHomeBeanV9 data;
        Throwable th;
        Exception e10;
        org.androidannotations.api.sharedpreferences.p pVarGame_section_id;
        String game_section_id;
        String uid = AccountUtil_.getInstance_(this.f58120i).getUid();
        if (!com.join.android.app.common.utils.m.j(this.f58120i)) {
            showLodingFailed();
            z0();
            return;
        }
        if (this.f58121j || this.f58122k || uid == null || TextUtils.equals(uid, "0")) {
            if (TextUtils.equals(uid, "0")) {
                showLoding();
            } else if (this.f58119h && pnx == 1 && !this.f58122k && !this.f58121j) {
                showLodingFailed();
            }
            z0();
            return;
        }
        this.f58122k = true;
        PapaHomeBeanV9 papaHomeBeanV9 = null;
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f58120i).getAccountData();
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f58120i);
            LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
            luckHistoryrequest.setPage(pnx);
            luckHistoryrequest.setUid(accountData.getUid());
            ArrayList arrayList = new ArrayList();
            arrayList.add("HOME_FAST_ENTRY_FOR_PC");
            luckHistoryrequest.setPositionMark(arrayList);
            requestModel.setArgs(luckHistoryrequest);
            ResponseModel<PapaHomeBeanV9> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().n1(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || responseModelBody.getData() == null) {
                this.f58123l = false;
                m0();
                if (this.f58119h && pnx == 1) {
                    showLodingFailed();
                } else {
                    showMain();
                }
            } else {
                data = responseModelBody.getData();
                try {
                    try {
                        if (data.isEmpty()) {
                            this.f58123l = false;
                            m0();
                        } else {
                            this.f58123l = true;
                            this.f58124m = pnx + 1;
                        }
                        if (pnx == 1) {
                            r0(data);
                        }
                        showMain();
                        papaHomeBeanV9 = data;
                    } catch (Exception e11) {
                        e10 = e11;
                        e10.printStackTrace();
                        this.f58123l = false;
                        m0();
                        if (this.f58119h && pnx == 1) {
                            showLodingFailed();
                        }
                        z0();
                        this.f58122k = false;
                        if (data == null) {
                            return;
                        }
                        y0(data, pnx, true);
                        if (!TextUtils.isEmpty(data.getGame_section_id())) {
                            this.f58128q = data.getGame_section_id();
                        }
                        this.f58118g.cloud_gaming_section_id().g(data.getCloud_gaming_section_id());
                        pVarGame_section_id = this.f58118g.game_section_id();
                        game_section_id = data.getGame_section_id();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z0();
                    this.f58122k = false;
                    if (data != null) {
                        y0(data, pnx, true);
                        if (!TextUtils.isEmpty(data.getGame_section_id())) {
                            this.f58128q = data.getGame_section_id();
                        }
                        this.f58118g.cloud_gaming_section_id().g(data.getCloud_gaming_section_id());
                        this.f58118g.game_section_id().g(data.getGame_section_id());
                    }
                    throw th;
                }
            }
            z0();
            this.f58122k = false;
            if (papaHomeBeanV9 != null) {
                y0(papaHomeBeanV9, pnx, true);
                if (!TextUtils.isEmpty(papaHomeBeanV9.getGame_section_id())) {
                    this.f58128q = papaHomeBeanV9.getGame_section_id();
                }
                this.f58118g.cloud_gaming_section_id().g(papaHomeBeanV9.getCloud_gaming_section_id());
                pVarGame_section_id = this.f58118g.game_section_id();
                game_section_id = papaHomeBeanV9.getGame_section_id();
                pVarGame_section_id.g(game_section_id);
            }
        } catch (Exception e12) {
            data = null;
            e10 = e12;
        } catch (Throwable th3) {
            data = null;
            th = th3;
            z0();
            this.f58122k = false;
            if (data != null) {
                y0(data, pnx, true);
                if (!TextUtils.isEmpty(data.getGame_section_id())) {
                    this.f58128q = data.getGame_section_id();
                }
                this.f58118g.cloud_gaming_section_id().g(data.getCloud_gaming_section_id());
                this.f58118g.game_section_id().g(data.getGame_section_id());
            }
            throw th;
        }
    }

    @UiThread
    void m0() {
        XQuickRecyclerView xQuickRecyclerView = this.f58114c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setNoMore();
        }
    }

    @Override // com.join.mgps.adapter.f6.g
    public void n(List<CommonGameInfoBean> list) {
        for (CommonGameInfoBean commonGameInfoBean : list) {
            if (!commonGameInfoBean.getExposure()) {
                u0(commonGameInfoBean);
                commonGameInfoBean.setExposure(true);
            }
        }
    }

    @Override // com.join.mgps.adapter.f6.g
    public void o(List<GameFromPopoWinBeanV2.DataBean> list, int lastVisiblePosition) {
        for (int i10 = 0; i10 <= lastVisiblePosition; i10++) {
            GameFromPopoWinBeanV2.DataBean dataBean = list.get(i10);
            if (!dataBean.isHasExposure()) {
                v0(dataBean, i10);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f58135x.removeCallbacksAndMessages(null);
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            A0(1);
            return;
        }
        if (iC == 3) {
            A0(2);
            return;
        }
        if (iC != 5) {
            if (iC == 6) {
                A0(6);
                return;
            }
            if (iC == 7) {
                A0(3);
                return;
            }
            if (iC == 8) {
                if (this.f58131t) {
                    return;
                }
                updateProgressPartly();
                return;
            } else if (iC != 48) {
                switch (iC) {
                    case 10:
                        A0(7);
                        break;
                    case 12:
                        A0(8);
                        break;
                    case 13:
                        A0(9);
                        break;
                }
                return;
            }
        }
        A0(5);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onHomeCloudActiveEvent(com.join.mgps.event.x event) {
        HomeCloudActiveBean homeCloudActiveBean = event.f68232a;
        this.f58134w = homeCloudActiveBean;
        this.f58127p.H0(homeCloudActiveBean);
        this.f58135x.removeMessages(1);
        HomeCloudActiveBean homeCloudActiveBean2 = this.f58134w;
        if (homeCloudActiveBean2 == null || homeCloudActiveBean2.getAdCfgInfo() == null || !this.f58134w.needShow()) {
            x0();
        } else {
            this.f58134w.start();
            s0();
        }
    }

    @Override // com.join.mgps.adapter.f6.g
    public void p(String webUrl) {
        Intent intent = new Intent();
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        if (com.join.mgps.Util.t2.i(webUrl)) {
            intentDateBean.setLink_type_val(webUrl);
            intent.putExtra("intentdate", intentDateBean);
            IntentUtil.getInstance().startActivityWithCallback(requireContext(), FullShareWebActivity_.class, intent, new f());
        }
    }

    @Background
    void r0(PapaHomeBeanV9 mainBean) {
        this.f58118g.homeAllDataV3().g(JsonMapper.toJsonString(mainBean));
        if (mainBean.isNew_user() || this.f58118g.fastEntryGuide().d().intValue() != 0) {
            return;
        }
        this.f58118g.fastEntryGuide().g(1);
    }

    @Click
    void relodingimag() throws Throwable {
        showLoding();
        this.f58124m = 1;
        this.f58123l = true;
        this.f58114c.reset();
        l0(this.f58124m);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getActivity());
    }

    @UiThread
    void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        LinearLayout linearLayout = this.f58116e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f58117f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XQuickRecyclerView xQuickRecyclerView = this.f58114c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(8);
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f58117f;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f58116e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XQuickRecyclerView xQuickRecyclerView = this.f58114c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(8);
        }
    }

    @UiThread
    void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        LinearLayout linearLayout = this.f58117f;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f58116e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XQuickRecyclerView xQuickRecyclerView = this.f58114c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(0);
        }
    }

    public void w0(com.join.mgps.callbacks.k homeBallChangedListener) {
        this.f58136y = homeBallChangedListener;
    }

    @UiThread
    void y0(PapaHomeBeanV9 mainBean, int pnx, boolean fromNet) {
        if (mainBean != null) {
            try {
                List<CommonMultiItemBean> arrayList = this.f58126o;
                int i10 = R.dimen.wdp20;
                if (pnx == 1) {
                    arrayList = new ArrayList<>();
                    this.f58125n = fromNet;
                    t0(mainBean);
                    if (mainBean.getBanner() != null && mainBean.getBanner().size() > 0) {
                        int i11 = 0;
                        while (i11 < mainBean.getBanner().size()) {
                            CommonGameInfoBean commonGameInfoBean = mainBean.getBanner().get(i11);
                            commonGameInfoBean.setPosition(i11);
                            commonGameInfoBean.set_from(10001);
                            commonGameInfoBean.set_from_type(10001);
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("22-19-");
                            int i12 = i11 + 1;
                            sb2.append(i12);
                            commonGameInfoBean.setExp_position(sb2.toString());
                            commonGameInfoBean.getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10001").set_from_type(10001).setSopName("banner" + i11);
                            i11 = i12;
                        }
                        arrayList.add(new CommonMultiItemBean(1, mainBean.getBanner()));
                    }
                    if (mainBean.getFast_entry() != null && mainBean.getFast_entry().size() > 0) {
                        ArrayList arrayList2 = new ArrayList();
                        for (int i13 = 0; i13 < mainBean.getFast_entry().size(); i13++) {
                            CommonGameInfoBean commonGameInfoBean2 = mainBean.getFast_entry().get(i13);
                            commonGameInfoBean2.setPosition(i13);
                            commonGameInfoBean2.getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10002").setResourceId(commonGameInfoBean2.getJp_info().getCrc_link_type_val()).setSopName(commonGameInfoBean2.getTitle());
                            arrayList2.add(commonGameInfoBean2);
                        }
                        arrayList.add(new CommonMultiItemBean(2, arrayList2));
                    }
                    if (mainBean.getTop_channel() != null && mainBean.getTop_channel().getDiscover() != null) {
                        mainBean.getTop_channel().getDiscover().getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10003");
                        arrayList.add(new CommonMultiItemBean(3, mainBean.getTop_channel().getDiscover()));
                    }
                    if (mainBean.getEo_playing() != null && mainBean.getEo_playing().size() > 0) {
                        arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp14))));
                        arrayList.add(new CommonMultiItemBean(4, "大家都在玩"));
                        arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp8))));
                        int i14 = 0;
                        while (i14 < mainBean.getEo_playing().size()) {
                            CommonGameInfoBean commonGameInfoBeanB0 = B0(mainBean.getEo_playing().get(i14));
                            commonGameInfoBeanB0.set_from(10004);
                            commonGameInfoBeanB0.set_from_type(10004);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("22-4-");
                            i14++;
                            sb3.append(i14);
                            commonGameInfoBeanB0.setExp_position(sb3.toString());
                            commonGameInfoBeanB0.getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10004").set_from_type(10004).setPosition(commonGameInfoBeanB0.getExp_position());
                            CommonMultiItemBean commonMultiItemBean = new CommonMultiItemBean(5, commonGameInfoBeanB0);
                            this.f58132u.add(commonGameInfoBeanB0);
                            arrayList.add(commonMultiItemBean);
                        }
                    }
                    if (mainBean.getTop_channel() != null) {
                        arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp12))));
                        arrayList.add(new CommonMultiItemBean(4, "悟饭专栏"));
                        arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp28))));
                        if (mainBean.getTop_channel().getTheNew() != null) {
                            mainBean.getTop_channel().getTheNew().setExtBean(new ExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10007"));
                        }
                        if (mainBean.getTop_channel().getBroadcast() != null) {
                            mainBean.getTop_channel().getBroadcast().getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10008");
                        }
                        if (mainBean.getTop_channel().getAd_info() != null) {
                            mainBean.getTop_channel().getAd_info().getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10009");
                        }
                        arrayList.add(new CommonMultiItemBean(6, mainBean.getTop_channel()));
                    }
                    if (mainBean.getNew_online_game() != null && mainBean.getNew_online_game().getMiddle() != null && mainBean.getNew_online_game().getMiddle().size() > 0) {
                        arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp28))));
                        if (mainBean.getNew_online_game().getMiddle() != null) {
                            List<CommonGameInfoBean> middle = mainBean.getNew_online_game().getMiddle();
                            int i15 = 0;
                            while (i15 < middle.size()) {
                                CommonGameInfoBean commonGameInfoBeanB1 = B0(middle.get(i15));
                                commonGameInfoBeanB1.set_from(20002);
                                commonGameInfoBeanB1.set_from_type(20002);
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("22-20-");
                                int i16 = i15 + 1;
                                sb4.append(i16);
                                commonGameInfoBeanB1.setExp_position(sb4.toString());
                                commonGameInfoBeanB1.getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("20002").set_from_type(20002).setPosition(commonGameInfoBeanB1.getExp_position());
                                if (i15 == 0) {
                                    arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp20))));
                                    CommonMultiItemBean commonMultiItemBean2 = new CommonMultiItemBean(7, commonGameInfoBeanB1);
                                    if (mainBean.getNew_online_game().getTop() == null || mainBean.getNew_online_game().getTop().isEmpty() || mainBean.getNew_online_game().getTop().get(0) == null) {
                                        commonMultiItemBean2.setExtraData("热门游戏推荐");
                                    } else {
                                        commonMultiItemBean2.setExtraData(mainBean.getNew_online_game().getTop().get(0));
                                    }
                                    arrayList.add(commonMultiItemBean2);
                                    this.f58132u.add(commonGameInfoBeanB1);
                                } else {
                                    arrayList.add(new CommonMultiItemBean(5, commonGameInfoBeanB1));
                                    this.f58132u.add(commonGameInfoBeanB1);
                                }
                                i15 = i16;
                            }
                        }
                    }
                    if (mainBean.getRanking_list() != null) {
                        HomeRankingListBean homeRankingListBeanC0 = C0(mainBean.getRanking_list());
                        arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp11))));
                        arrayList.add(new CommonMultiItemBean(9, homeRankingListBeanC0));
                        if (homeRankingListBeanC0.getList() != null) {
                            for (List<CommonGameInfoBean> list : mainBean.getRanking_list().getList()) {
                                if (list != null) {
                                    this.f58132u.addAll(list);
                                }
                            }
                        }
                    }
                    if (mainBean.getHot_game_fav() != null && mainBean.getHot_game_fav().size() > 0) {
                        arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp12))));
                        arrayList.add(new CommonMultiItemBean(4, "热门游戏单"));
                        arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp28))));
                        for (GameFromPopoWinBeanV2.DataBean dataBean : mainBean.getHot_game_fav()) {
                            dataBean.setExtBean(new ExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10011").setSopName(dataBean.getTitle()));
                        }
                        arrayList.add(new CommonMultiItemBean(10, mainBean.getHot_game_fav()));
                    }
                }
                int i17 = 10005;
                int i18 = 206;
                if (mainBean.getDynamic_module() != null && mainBean.getDynamic_module().size() > 0) {
                    for (HomeDynamicListBean homeDynamicListBean : mainBean.getDynamic_module()) {
                        String main_title = "";
                        if (homeDynamicListBean.getTop() != null && !homeDynamicListBean.getTop().isEmpty() && homeDynamicListBean.getTop().get(0) != null && !TextUtils.isEmpty(homeDynamicListBean.getTop().get(0).getMain_title())) {
                            main_title = homeDynamicListBean.getTop().get(0).getMain_title();
                        }
                        if (homeDynamicListBean.getMiddle() != null) {
                            List<CommonGameInfoBean> middle2 = homeDynamicListBean.getMiddle();
                            int dynamic_module_tpl_type = homeDynamicListBean.getDynamic_module_tpl_type();
                            if (dynamic_module_tpl_type == 1) {
                                int i19 = 0;
                                while (i19 < middle2.size()) {
                                    CommonGameInfoBean commonGameInfoBeanB2 = B0(middle2.get(i19));
                                    commonGameInfoBeanB2.set_from(i18);
                                    commonGameInfoBeanB2.set_from_type(i18);
                                    this.f58133v++;
                                    commonGameInfoBeanB2.setExp_position("22-18-" + this.f58133v);
                                    commonGameInfoBeanB2.getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10005").set_from_type(i17).setSopName(main_title).setPosition(commonGameInfoBeanB2.getExp_position());
                                    if (i19 == 0) {
                                        arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp26))));
                                        CommonMultiItemBean commonMultiItemBean3 = new CommonMultiItemBean(7, commonGameInfoBeanB2);
                                        arrayList.add(commonMultiItemBean3);
                                        this.f58132u.add(commonGameInfoBeanB2);
                                        if (homeDynamicListBean.getTop() != null && homeDynamicListBean.getTop().get(0) != null) {
                                            commonMultiItemBean3.setExtraData(homeDynamicListBean.getTop().get(0));
                                        }
                                    } else {
                                        arrayList.add(new CommonMultiItemBean(5, commonGameInfoBeanB2));
                                        this.f58132u.add(commonGameInfoBeanB2);
                                    }
                                    i19++;
                                    i17 = 10005;
                                    i18 = 206;
                                }
                            } else if (dynamic_module_tpl_type == 2) {
                                arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(i10))));
                                Iterator<CommonGameInfoBean> it2 = middle2.iterator();
                                while (it2.hasNext()) {
                                    CommonGameInfoBean commonGameInfoBeanB3 = B0(it2.next());
                                    commonGameInfoBeanB3.set_from(i18);
                                    commonGameInfoBeanB3.set_from_type(i18);
                                    this.f58133v++;
                                    commonGameInfoBeanB3.setExp_position("22-18-" + this.f58133v);
                                    commonGameInfoBeanB3.getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10005").set_from_type(i17).setSopName(main_title).setPosition(commonGameInfoBeanB3.getExp_position());
                                }
                                arrayList.add(new CommonMultiItemBean(8, middle2));
                            }
                        }
                        i10 = R.dimen.wdp20;
                        i17 = 10005;
                        i18 = 206;
                    }
                }
                if (mainBean.getGuess_you_like() != null && mainBean.getGuess_you_like().size() > 0) {
                    arrayList.add(new CommonMultiItemBean(12, Float.valueOf(getResources().getDimension(R.dimen.wdp28))));
                    Iterator<CommonGameInfoBean> it3 = mainBean.getGuess_you_like().iterator();
                    while (it3.hasNext()) {
                        CommonGameInfoBean commonGameInfoBeanB4 = B0(it3.next());
                        commonGameInfoBeanB4.set_from(206);
                        commonGameInfoBeanB4.set_from_type(206);
                        this.f58133v++;
                        commonGameInfoBeanB4.setExp_position("22-18-" + this.f58133v);
                        commonGameInfoBeanB4.getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10005").set_from_type(10005).setPosition(commonGameInfoBeanB4.getExp_position());
                        arrayList.add(new CommonMultiItemBean(11, commonGameInfoBeanB4));
                        this.f58132u.add(commonGameInfoBeanB4);
                    }
                }
                this.f58126o = arrayList;
                this.f58127p.setNewData(arrayList);
                this.f58135x.postDelayed(new Runnable() { // from class: com.join.mgps.activity.s8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f58098b.j0();
                    }
                }, 100L);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // com.join.mgps.adapter.f6.g
    public void z(CommonGameInfoBean bean) {
        if (bean.getExposure()) {
            return;
        }
        u0(bean);
        bean.setExposure(true);
    }

    @UiThread
    void z0() {
        XQuickRecyclerView xQuickRecyclerView = this.f58114c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.stopRefresh();
            this.f58114c.stopLoadMore();
        }
    }
}
