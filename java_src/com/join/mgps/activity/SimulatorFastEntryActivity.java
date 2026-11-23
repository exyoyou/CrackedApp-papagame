package com.join.mgps.activity;

import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.data.FindChoiceResultData;
import com.join.kotlin.ui.findgame.data.GameTypeData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.customview.RecyclerviewViewpager;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestOnlineCouponArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SimulatorFastEntryBean;
import com.join.mgps.dto.SimulatorFastEntryListBean;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.uc.crashsdk.export.LogType;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_simulator_fast_entry)
class SimulatorFastEntryActivity extends BaseAppCompatActivity {

    @ViewById
    ImageView back_image;

    @Extra
    ExtBean extBean;

    @ViewById
    RelativeLayout headview;

    @ViewById
    ImageView ivSearchIcon;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private com.join.mgps.adapter.y7 mAdapter;

    @ViewById
    RecyclerView recyclerview;

    @ViewById
    ScrollTextViewLayout scroll_text_layout;

    @ViewById
    View statubar;

    @ViewById
    TextView title_textview;

    @ViewById
    TextView tvSearch;
    ExtBean pageExtBean = new ExtBean().setChatId(EventP.ChatId.emuZone.name());
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;
    private boolean SCROLLING = false;
    private boolean isExploring = false;

    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0) {
                SimulatorFastEntryActivity.this.expListPoint();
            }
            SimulatorFastEntryActivity.this.SCROLLING = newState != 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            int[] iArrM = com.join.android.app.component.video.h.m(recyclerView);
            SimulatorFastEntryActivity.this.firstVisiblePosition = iArrM[0];
            SimulatorFastEntryActivity.this.lastVisibleIndex = iArrM[1];
        }
    }

    SimulatorFastEntryActivity() {
    }

    @AfterViews
    void afterviews() {
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        showLoding();
        loadClassfyDatas();
        getData();
        this.pageExtBean.setParent(this.extBean);
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, this.pageExtBean.copy().buildScene().toExt());
        this.recyclerview.addOnScrollListener(new a());
    }

    @Click
    void back_image() {
        finish();
    }

    void expListPoint() {
        RecyclerView recyclerView;
        com.join.mgps.adapter.s7 s7Var;
        com.join.mgps.adapter.e8 e8Var;
        com.join.mgps.adapter.e8 e8Var2;
        View childAt;
        RecyclerView recyclerView2;
        try {
            if (!this.isExploring) {
                this.isExploring = true;
                int i10 = this.firstVisiblePosition;
                if (i10 >= 0) {
                    while (i10 <= this.lastVisibleIndex) {
                        View childAt2 = this.recyclerview.getChildAt(i10 - this.firstVisiblePosition);
                        int itemViewType = this.mAdapter.getItemViewType(i10);
                        if (childAt2 != null) {
                            if (1 == itemViewType) {
                                RecyclerviewViewpager recyclerviewViewpager = (RecyclerviewViewpager) childAt2.findViewById(R.id.viewpager);
                                if (recyclerviewViewpager != null && (childAt = recyclerviewViewpager.getChildAt(0)) != null && (recyclerView2 = (RecyclerView) childAt.findViewById(R.id.recyclerview)) != null && (recyclerView2.getAdapter() instanceof com.join.mgps.adapter.q7)) {
                                    for (SimulatorFastEntryBean.FastEntryBean fastEntryBean : ((com.join.mgps.adapter.q7) recyclerView2.getAdapter()).getData()) {
                                        if (fastEntryBean.getExtBean() != null && !fastEntryBean.getExtBean().hasExplore()) {
                                            com.papa.sim.statistic.t.l(this).R1(Event.commonExp, fastEntryBean.getExtBean().buildScene().toExt());
                                            fastEntryBean.getExtBean().setHasExplore(true);
                                        }
                                    }
                                }
                            } else if (2 == itemViewType) {
                                RecyclerView recyclerView3 = (RecyclerView) childAt2.findViewById(R.id.rvNewGame);
                                if (recyclerView3 != null && (e8Var2 = (com.join.mgps.adapter.e8) recyclerView3.getAdapter()) != null) {
                                    for (SimulatorFastEntryBean.GameInfo gameInfo : e8Var2.getData()) {
                                        if (!gameInfo.getExtBean().hasExplore()) {
                                            com.papa.sim.statistic.t.l(this).R1(Event.expGameAdPage, gameInfo.getExtBean().buildScene().toExt());
                                            gameInfo.getExtBean().setHasExplore(true);
                                        }
                                    }
                                }
                            } else if (3 == itemViewType) {
                                RecyclerView recyclerView4 = (RecyclerView) childAt2.findViewById(R.id.rvClassicGame);
                                if (recyclerView4 != null && (e8Var = (com.join.mgps.adapter.e8) recyclerView4.getAdapter()) != null) {
                                    for (SimulatorFastEntryBean.GameInfo gameInfo2 : e8Var.getData()) {
                                        if (!gameInfo2.getExtBean().hasExplore()) {
                                            com.papa.sim.statistic.t.l(this).R1(Event.expGameAdPage, gameInfo2.getExtBean().buildScene().toExt());
                                            gameInfo2.getExtBean().setHasExplore(true);
                                        }
                                    }
                                }
                            } else if (7 == itemViewType) {
                                RecyclerView recyclerView5 = (RecyclerView) childAt2.findViewById(R.id.rv_list);
                                if (recyclerView5 != null) {
                                    int[] iArrM = com.join.android.app.component.video.h.m(recyclerView5);
                                    com.join.mgps.adapter.g8 g8Var = (com.join.mgps.adapter.g8) recyclerView5.getAdapter();
                                    for (int i11 = iArrM[0]; i11 <= iArrM[1]; i11++) {
                                        if (g8Var != null) {
                                            SimulatorFastEntryBean.GameInfo item = g8Var.getItem(i11);
                                            if (item.getExtBean() != null && !item.getExtBean().hasExplore()) {
                                                com.papa.sim.statistic.t.l(this).R1(Event.expGameAdPage, item.getExtBean().buildScene().toExt());
                                                item.getExtBean().setHasExplore(true);
                                            }
                                        }
                                    }
                                }
                            } else if (4 == itemViewType) {
                                RecyclerView recyclerView6 = (RecyclerView) childAt2.findViewById(R.id.recyclerview);
                                if (recyclerView6 != null && (s7Var = (com.join.mgps.adapter.s7) recyclerView6.getAdapter()) != null) {
                                    for (SimulatorFastEntryBean.ChangeGame changeGame : s7Var.getData()) {
                                        if (!changeGame.getExtBean().hasExplore()) {
                                            com.papa.sim.statistic.t.l(this).R1(Event.commonExp, changeGame.getExtBean().buildScene().toExt());
                                            changeGame.getExtBean().setHasExplore(true);
                                        }
                                    }
                                }
                            } else if (5 == itemViewType && (recyclerView = (RecyclerView) childAt2.findViewById(R.id.recyclerview)) != null) {
                                int[] iArrM2 = com.join.android.app.component.video.h.m(recyclerView);
                                com.join.mgps.adapter.a8 a8Var = (com.join.mgps.adapter.a8) recyclerView.getAdapter();
                                for (int i12 = iArrM2[0]; i12 <= iArrM2[1]; i12++) {
                                    if (a8Var != null) {
                                        SimulatorFastEntryBean.GameInfo item2 = a8Var.getItem(i12);
                                        if (item2.getExtBean() != null && !item2.getExtBean().hasExplore()) {
                                            com.papa.sim.statistic.t.l(this).R1(Event.expGameAdPage, item2.getExtBean().buildScene().toExt());
                                            item2.getExtBean().setHasExplore(true);
                                        }
                                    }
                                }
                            }
                        }
                        i10++;
                    }
                }
            }
        } catch (Exception unused) {
        } finally {
            this.isExploring = false;
        }
    }

    @Click
    void flSearch() {
        IntentUtil.getInstance().goSearchHintActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        try {
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(new RequestOnlineCouponArgs());
            requestModel.setDefault(this);
            ResponseModel<SimulatorFastEntryBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().T0(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || responseModelBody.getData() == null) {
                showLodingFailed();
            } else {
                SimulatorFastEntryBean data = responseModelBody.getData();
                showMain();
                initRecyclerview(data);
            }
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initRecyclerview(SimulatorFastEntryBean data) {
        if (isFinishing() || this.mHandler == null) {
            return;
        }
        if (TextUtils.isEmpty(data.getSearch_bar_hint())) {
            this.tvSearch.setHint(data.getSearch_bar_hint());
        }
        ArrayList arrayList = new ArrayList();
        if (data.getFast_entry() != null && data.getFast_entry().size() > 0) {
            ArrayList arrayList2 = new ArrayList();
            List<SimulatorFastEntryBean.FastEntryBean> fast_entry = data.getFast_entry();
            for (SimulatorFastEntryBean.FastEntryBean fastEntryBean : fast_entry) {
                fastEntryBean.setExtBean(new ExtBean().itemWithParent(this.pageExtBean).setTypeCode(EventP.TypeCode.speedDail.name()).setSopName(fastEntryBean.getTitle()));
            }
            int size = fast_entry.size();
            int i10 = (size + 9) / 10;
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i11 * 10;
                i11++;
                arrayList2.add(fast_entry.subList(i12, Math.min(i11 * 10, size)));
            }
            SimulatorFastEntryListBean simulatorFastEntryListBean = new SimulatorFastEntryListBean(1, arrayList2);
            simulatorFastEntryListBean.setExtBean(new ExtBean().itemWithParent(this.pageExtBean).setTypeCode(EventP.TypeCode.speedDail.name()).setSopName("快速入口"));
            arrayList.add(simulatorFastEntryListBean);
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp20))));
        }
        if (data.getThe_new() != null && data.getThe_new().size() > 0) {
            for (SimulatorFastEntryBean.GameInfo gameInfo : data.getThe_new()) {
                gameInfo.setExtBean(new ExtBean().itemWithParent(this.pageExtBean).setGameId(gameInfo.getId()).setResourceId(gameInfo.getId()).setTypeCode(EventP.TypeCode.game.name()).setSopName("最新上架"));
            }
            SimulatorFastEntryListBean simulatorFastEntryListBean2 = new SimulatorFastEntryListBean(2, data.getThe_new());
            simulatorFastEntryListBean2.setExtBean(new ExtBean().itemWithParent(this.pageExtBean).setSopName("最新上架").setScenesCode("更多"));
            arrayList.add(simulatorFastEntryListBean2);
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp30))));
        }
        if (data.getNostalgia() != null && data.getNostalgia().size() > 0) {
            for (SimulatorFastEntryBean.GameInfo gameInfo2 : data.getNostalgia()) {
                gameInfo2.setExtBean(new ExtBean().itemWithParent(this.pageExtBean).setGameId(gameInfo2.getId()).setResourceId(gameInfo2.getId()).setTypeCode(EventP.TypeCode.game.name()).setSopName("怀旧经典"));
            }
            SimulatorFastEntryListBean simulatorFastEntryListBean3 = new SimulatorFastEntryListBean(7, data.getNostalgia());
            simulatorFastEntryListBean3.setExtBean(new ExtBean().itemWithParent(this.pageExtBean).setSopName("怀旧经典").setScenesCode("更多"));
            arrayList.add(simulatorFastEntryListBean3);
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp30))));
        }
        if (data.getWill_play() != null && data.getWill_play().getGames() != null && data.getWill_play().getGames().size() > 0) {
            for (SimulatorFastEntryBean.GameInfo gameInfo3 : data.getWill_play().getGames()) {
                gameInfo3.setExtBean(new ExtBean().itemWithParent(this.pageExtBean).setGameId(gameInfo3.getId()).setResourceId(gameInfo3.getId()).setTypeCode(EventP.TypeCode.game.name()).setSopName("经典必玩"));
            }
            SimulatorFastEntryListBean simulatorFastEntryListBean4 = new SimulatorFastEntryListBean(3, data.getWill_play());
            simulatorFastEntryListBean4.setExtBean(new ExtBean().itemWithParent(this.pageExtBean).setSopName("经典必玩").setScenesCode("更多"));
            arrayList.add(simulatorFastEntryListBean4);
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp30))));
        }
        if (data.getChange_game() != null && data.getChange_game().size() > 0) {
            arrayList.add(new SimulatorFastEntryListBean(0, "改版游戏"));
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp24))));
            for (SimulatorFastEntryBean.ChangeGame changeGame : data.getChange_game()) {
                changeGame.setExtBean(new ExtBean().itemWithParent(this.pageExtBean).setGameId(changeGame.getJp_info().getCrc_link_type_val()).setResourceId(changeGame.getJp_info().getCrc_link_type_val()).setTypeCode(EventP.TypeCode.banner.name()).setSopName("改版游戏").setScenesCode(changeGame.getTitle()));
            }
            SimulatorFastEntryListBean simulatorFastEntryListBean5 = new SimulatorFastEntryListBean(4, data.getChange_game());
            simulatorFastEntryListBean5.setExtBean(new ExtBean().setParent(this.pageExtBean).setSopName("改版游戏"));
            arrayList.add(simulatorFastEntryListBean5);
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp6))));
        }
        if (data.getTag_game() != null && data.getTag_game().size() > 0) {
            for (int i13 = 0; i13 < data.getTag_game().size(); i13++) {
                SimulatorFastEntryBean.TagGameBean tagGameBean = data.getTag_game().get(i13);
                SimulatorFastEntryListBean simulatorFastEntryListBean6 = new SimulatorFastEntryListBean(0, tagGameBean.getTitle(), tagGameBean.getId());
                simulatorFastEntryListBean6.setExtBean(new ExtBean().setParent(this.pageExtBean).setSopName(tagGameBean.getTitle()).setScenesCode(LocalGameActivity.ALL));
                arrayList.add(simulatorFastEntryListBean6);
                arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp24))));
                for (SimulatorFastEntryBean.GameInfo gameInfo4 : tagGameBean.getList()) {
                    gameInfo4.setExtBean(new ExtBean().itemWithParent(this.pageExtBean).setGameId(gameInfo4.getId()).setResourceId(gameInfo4.getId()).setTypeCode(EventP.TypeCode.game.name()).setSopName(tagGameBean.getTitle()));
                }
                SimulatorFastEntryListBean simulatorFastEntryListBean7 = new SimulatorFastEntryListBean(5, tagGameBean.getList());
                simulatorFastEntryListBean7.setExtBean(new ExtBean().setParent(this.pageExtBean).setSopName(tagGameBean.getTitle()));
                arrayList.add(simulatorFastEntryListBean7);
                arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp30))));
            }
        }
        this.recyclerview.setLayoutManager(new LinearLayoutManager(this));
        if (this.mAdapter == null) {
            this.mAdapter = new com.join.mgps.adapter.y7(this, arrayList);
        }
        this.recyclerview.setAdapter(this.mAdapter);
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.q9
            @Override // java.lang.Runnable
            public final void run() {
                this.f57943b.expListPoint();
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadClassfyDatas() {
        try {
            RequestModel requestModel = new RequestModel();
            LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
            luckHistoryrequest.setPage(1);
            luckHistoryrequest.setUid(AccountUtil_.getInstance_(this).getAccountData().getUid());
            requestModel.setArgs(luckHistoryrequest);
            requestModel.setDefault(this);
            ResponseModel<FindChoiceResultData> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().O1(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || responseModelBody.getData() == null) {
                return;
            }
            List<GameTypeData> game_type = responseModelBody.getData().getGame_type();
            game_type.add(0, new GameTypeData(0, "精选", 0, null, true));
            try {
                new PrefDef_(this).gameTypeList().g(JsonMapper.getInstance().toJson(game_type));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (Exception e11) {
            showLodingFailed();
            e11.printStackTrace();
        }
    }

    @Click
    void relodingimag() {
        showLoding();
        getData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        LinearLayout linearLayout = this.loding_layout;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_faile;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.recyclerview;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.recyclerview;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        RelativeLayout relativeLayout = this.headview;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.recyclerview;
        if (recyclerView != null) {
            recyclerView.setVisibility(0);
        }
        RelativeLayout relativeLayout = this.headview;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
    }
}
