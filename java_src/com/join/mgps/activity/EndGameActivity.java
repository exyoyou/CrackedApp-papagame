package com.join.mgps.activity;

import android.app.Activity;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.gson.Gson;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.EndGameListBean;
import com.join.mgps.dto.EndGameNameBean;
import com.join.mgps.dto.EndGameNameListBean;
import com.join.mgps.dto.EndGameTypeBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.RequestEndGameAdArgs;
import com.join.mgps.dto.RequestEndGameListArgs;
import com.join.mgps.dto.RequestEndGameNameListArgs;
import com.join.mgps.dto.RequestEndGameTypeArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.interfaces.DialogListenerWrap;
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
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_end_game)
public class EndGameActivity extends BaseAppCompatActivity {

    @ViewById
    ConstraintLayout clGameSelect;
    GameMainV4DataBean.EndGameConfigBean configBean;

    @ViewById
    TextView createEndGame;
    private EndGameNameListBean currentSelectedGame;
    private CommonGameInfoBean endGameAd;

    @Extra
    String ext;

    @Extra
    String gameId;
    private h gameListViewpager2Adapter;
    private i gameSelectAdapter;
    private j gameSelectTagAdapter;
    private k gameSelectViewpager2Adapter;
    com.join.mgps.dialog.e0 guideDialog;
    private boolean isExpand;

    @ViewById
    ImageView ivExpand;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private Activity mActivity;

    @Pref
    PrefDef_ prefDef;
    private com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    RecyclerView rvGameSelect;

    @ViewById
    RecyclerView rvGameSelectTag;

    @ViewById
    View shadowMask;

    @ViewById
    View statubar;

    @ViewById
    ViewPager2 viewpager;

    @ViewById
    ViewPager2 vpGameList;
    private int gameNamePage = 1;
    private int gameTypePage = 1;
    private List<EndGameNameListBean> endGameNameList = new ArrayList();
    private List<EndGameTypeBean> endGameTypeList = new ArrayList();

    class a implements BaseQuickAdapter.l {
        a() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.l
        public void onLoadMoreRequested() {
            EndGameActivity.access$008(EndGameActivity.this);
            EndGameActivity endGameActivity = EndGameActivity.this;
            endGameActivity.getGameNameData(endGameActivity.gameNamePage);
        }
    }

    class b implements BaseQuickAdapter.j {
        b() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.j
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            if (EndGameActivity.this.isExpand) {
                EndGameActivity.this.ivExpand();
            }
            int i10 = 0;
            while (i10 < EndGameActivity.this.endGameNameList.size()) {
                ((EndGameNameListBean) EndGameActivity.this.endGameNameList.get(i10)).setSelected(i10 == position);
                i10++;
            }
            EndGameActivity.this.gameSelectAdapter.replaceData(EndGameActivity.this.endGameNameList);
            EndGameActivity endGameActivity = EndGameActivity.this;
            endGameActivity.currentSelectedGame = (EndGameNameListBean) endGameActivity.endGameNameList.get(position);
            ViewPager2 viewPager2 = EndGameActivity.this.viewpager;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(position, false);
            }
        }
    }

    class c extends com.join.mgps.base.decoration.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.decoration.b.a f51303e;

        c(final com.join.mgps.base.decoration.b.a val$decoration) {
            this.f51303e = val$decoration;
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            return this.f51303e;
        }
    }

    class d implements BaseQuickAdapter.l {
        d() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.l
        public void onLoadMoreRequested() {
            EndGameActivity.access$508(EndGameActivity.this);
            EndGameActivity endGameActivity = EndGameActivity.this;
            endGameActivity.getGameTypeData(endGameActivity.gameTypePage);
        }
    }

    class e extends com.join.mgps.base.decoration.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.decoration.b.a f51306e;

        e(final com.join.mgps.base.decoration.b.a val$decoration2) {
            this.f51306e = val$decoration2;
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            return this.f51306e;
        }
    }

    class f extends ViewPager2.OnPageChangeCallback {
        f() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int position) {
            com.join.mgps.fragment.j1 j1VarC;
            int i10 = 0;
            while (i10 < EndGameActivity.this.endGameTypeList.size()) {
                ((EndGameTypeBean) EndGameActivity.this.endGameTypeList.get(i10)).setSelected(i10 == position);
                i10++;
            }
            if (EndGameActivity.this.gameSelectTagAdapter != null) {
                EndGameActivity.this.gameSelectTagAdapter.replaceData(EndGameActivity.this.endGameTypeList);
            }
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) EndGameActivity.this.rvGameSelectTag.getLayoutManager();
            if (linearLayoutManager != null) {
                int iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
                if (position < linearLayoutManager.findFirstCompletelyVisibleItemPosition() || position > iFindLastCompletelyVisibleItemPosition) {
                    EndGameActivity.this.rvGameSelectTag.smoothScrollToPosition(position);
                }
            }
            if (EndGameActivity.this.gameSelectViewpager2Adapter == null || (j1VarC = EndGameActivity.this.gameSelectViewpager2Adapter.c(position)) == null || EndGameActivity.this.currentSelectedGame == null) {
                return;
            }
            j1VarC.S(EndGameActivity.this.currentSelectedGame.getGameId());
        }
    }

    class g extends DialogListenerWrap {
        g() {
        }

        @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
        public void onConfirm() {
            CreateEndGameActivity_.intent(EndGameActivity.this).a(EndGameActivity.this.configBean).start();
        }
    }

    class h extends FragmentStateAdapter {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<EndGameNameListBean> f51310e;

        public h(FragmentActivity fragmentActivity, List<EndGameNameListBean> datas) {
            super(fragmentActivity);
            this.f51310e = datas;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.join.mgps.fragment.o1 c(int position) {
            Fragment fragmentFindFragmentByTag = EndGameActivity.this.getSupportFragmentManager().findFragmentByTag(com.xinzhu.overmind.server.os.f.TAG + getItemId(position));
            if (fragmentFindFragmentByTag == null || !(fragmentFindFragmentByTag instanceof com.join.mgps.fragment.o1)) {
                return null;
            }
            return (com.join.mgps.fragment.o1) fragmentFindFragmentByTag;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(List<EndGameNameListBean> datas) {
            this.f51310e = datas;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        public Fragment createFragment(int position) {
            return com.join.mgps.fragment.o1.R().c(this.f51310e.get(position).getGameId()).b(EndGameActivity.this.ext).build();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f51310e.size();
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            return position + 1000;
        }
    }

    class i extends BaseQuickAdapter<EndGameNameListBean, com.join.mgps.base.b> {
        public i(List<EndGameNameListBean> data) {
            super(R.layout.item_end_game_icon, data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, EndGameNameListBean item) {
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivIcon), item.getGameIcon());
            helper.getView(R.id.selector).setSelected(item.isSelected());
            if (helper.getLayoutPosition() == 0) {
                ((SimpleDraweeView) helper.getView(R.id.ivIcon)).setImageURI(Uri.parse("res:///2131232958"));
            }
        }
    }

    class j extends BaseQuickAdapter<EndGameTypeBean, com.join.mgps.base.b> {
        public j(List<EndGameTypeBean> data) {
            super(R.layout.item_end_game_select_tag, data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, EndGameTypeBean item) {
            helper.setText(R.id.tvTag, item.getTypeName());
            helper.getView(R.id.tvTag).setSelected(item.isSelected());
        }
    }

    class k extends FragmentStateAdapter {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<EndGameTypeBean> f51314e;

        public k(FragmentActivity fragmentActivity, List<EndGameTypeBean> datas) {
            super(fragmentActivity);
            this.f51314e = datas;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.join.mgps.fragment.j1 c(int position) {
            Fragment fragmentFindFragmentByTag = EndGameActivity.this.getSupportFragmentManager().findFragmentByTag(com.xinzhu.overmind.server.os.f.TAG + getItemId(position));
            if (fragmentFindFragmentByTag == null || !(fragmentFindFragmentByTag instanceof com.join.mgps.fragment.j1)) {
                return null;
            }
            return (com.join.mgps.fragment.j1) fragmentFindFragmentByTag;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(List<EndGameTypeBean> datas) {
            this.f51314e = datas;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        public Fragment createFragment(int position) {
            com.join.mgps.fragment.i1 i1VarA = com.join.mgps.fragment.j1.b0().b(this.f51314e.get(position).getModelType()).build();
            if (EndGameActivity.this.currentSelectedGame != null) {
                i1VarA.S(EndGameActivity.this.currentSelectedGame.getGameId());
            }
            return i1VarA;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f51314e.size();
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            return position + 100;
        }
    }

    static /* synthetic */ int access$008(EndGameActivity endGameActivity) {
        int i10 = endGameActivity.gameNamePage;
        endGameActivity.gameNamePage = i10 + 1;
        return i10;
    }

    static /* synthetic */ int access$508(EndGameActivity endGameActivity) {
        int i10 = endGameActivity.gameTypePage;
        endGameActivity.gameTypePage = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$0(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        int i11 = 0;
        while (i11 < this.endGameTypeList.size()) {
            this.endGameTypeList.get(i11).setSelected(i11 == i10);
            i11++;
        }
        j jVar = this.gameSelectTagAdapter;
        if (jVar != null) {
            jVar.replaceData(this.endGameTypeList);
        }
        this.vpGameList.setCurrentItem(i10);
    }

    @AfterViews
    void afterviews() {
        this.mActivity = this;
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        String strD = this.prefDef.endGameConfig().d();
        if (com.join.mgps.Util.t2.i(strD)) {
            this.configBean = (GameMainV4DataBean.EndGameConfigBean) JsonMapper.getInstance().fromJson(strD, GameMainV4DataBean.EndGameConfigBean.class);
        } else {
            getEndGameConfig();
        }
        GameMainV4DataBean.EndGameConfigBean endGameConfigBean = this.configBean;
        if (endGameConfigBean != null && endGameConfigBean.getEndgame_challenge_level() != null) {
            new Gson();
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.statubar.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).height = com.join.android.app.common.utils.q.v(this.mActivity);
        this.statubar.setLayoutParams(layoutParams);
        this.ivExpand.setImageResource(this.isExpand ? R.drawable.ic_menu_endgame_expand : R.drawable.ic_menu_endgame_shrink);
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        GameMainV4DataBean.EndGameConfigBean endGameConfigBean2 = this.configBean;
        if (endGameConfigBean2 == null || !endGameConfigBean2.isEndgame_creation_switch()) {
            this.createEndGame.setVisibility(8);
        } else {
            this.createEndGame.setVisibility(0);
        }
        i iVar = new i(this.endGameNameList);
        this.gameSelectAdapter = iVar;
        iVar.setOnLoadMoreListener(new a(), this.rvGameSelect);
        this.gameSelectAdapter.setOnItemClickListener(new b());
        this.gameSelectAdapter.setLoadMoreView(new com.join.mgps.base.e());
        this.rvGameSelect.setLayoutManager(new LinearLayoutManager(this.mActivity, 0, false));
        this.rvGameSelect.setAdapter(this.gameSelectAdapter);
        com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
        aVar.f64116f = 0;
        aVar.f64118b = (int) getResources().getDimension(R.dimen.wdp16);
        this.rvGameSelect.addItemDecoration(new c(aVar));
        j jVar = new j(this.endGameTypeList);
        this.gameSelectTagAdapter = jVar;
        jVar.setOnLoadMoreListener(new d(), this.rvGameSelectTag);
        this.gameSelectTagAdapter.setLoadMoreView(new com.join.mgps.base.e());
        this.rvGameSelectTag.setLayoutManager(new LinearLayoutManager(this.mActivity, 0, false));
        this.rvGameSelectTag.setAdapter(this.gameSelectTagAdapter);
        com.join.mgps.base.decoration.b.a aVar2 = new com.join.mgps.base.decoration.b.a();
        aVar2.f64116f = 0;
        aVar2.f64118b = (int) getResources().getDimension(R.dimen.wdp31);
        this.rvGameSelectTag.addItemDecoration(new e(aVar2));
        this.gameSelectTagAdapter.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.mgps.activity.v0
            @Override // com.join.mgps.base.BaseQuickAdapter.j
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f58165a.lambda$afterviews$0(baseQuickAdapter, view, i10);
            }
        });
        k kVar = new k(this, this.endGameTypeList);
        this.gameSelectViewpager2Adapter = kVar;
        this.vpGameList.setAdapter(kVar);
        this.vpGameList.setOffscreenPageLimit(3);
        this.vpGameList.registerOnPageChangeCallback(new f());
        h hVar = new h(this, this.endGameNameList);
        this.gameListViewpager2Adapter = hVar;
        this.viewpager.setAdapter(hVar);
        this.viewpager.setUserInputEnabled(false);
        this.viewpager.setOffscreenPageLimit(-1);
        getAd();
        getGameNameData(this.gameNamePage);
        getGameTypeData(this.gameTypePage);
    }

    @Click
    void back_image() {
        finish();
    }

    public void chooseGame(String gameId) {
        int i10 = 0;
        while (i10 < this.endGameNameList.size()) {
            if (TextUtils.equals(gameId, this.endGameNameList.get(i10).getGameId())) {
                int i11 = 0;
                while (i11 < this.endGameNameList.size()) {
                    this.endGameNameList.get(i11).setSelected(i10 == i11);
                    i11++;
                }
                this.gameSelectAdapter.replaceData(this.endGameNameList);
                if (this.rvGameSelect.getLayoutManager() != null && (this.rvGameSelect.getLayoutManager() instanceof LinearLayoutManager)) {
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.rvGameSelect.getLayoutManager();
                    if (i10 < linearLayoutManager.findFirstCompletelyVisibleItemPosition() || i10 > linearLayoutManager.findLastCompletelyVisibleItemPosition()) {
                        this.rvGameSelect.smoothScrollToPosition(i10);
                    }
                }
                this.viewpager.setCurrentItem(i10, false);
                this.currentSelectedGame = this.endGameNameList.get(i10);
                if (this.isExpand) {
                    ivExpand();
                    return;
                }
                return;
            }
            i10++;
        }
    }

    @Click
    void createEndGame() {
        if (AccountUtil_.getInstance_(this.mActivity).isTourist()) {
            IntentUtil.getInstance().goLogin(this.mActivity);
            return;
        }
        boolean zBooleanValue = this.prefDef.showGuideCreateEndGame().d().booleanValue();
        if (this.configBean != null) {
            if (!zBooleanValue) {
                CreateEndGameActivity_.intent(this).a(this.configBean).start();
                return;
            }
            if (this.guideDialog == null) {
                this.guideDialog = new com.join.mgps.dialog.e0(this);
            }
            this.guideDialog.b(this.configBean.getCreate_endgame_hint());
            this.guideDialog.a(new g());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getAd() {
        if (com.join.android.app.common.utils.m.j(this.mActivity)) {
            RequestEndGameAdArgs requestEndGameAdArgs = new RequestEndGameAdArgs();
            requestEndGameAdArgs.setUid(AccountUtil_.getInstance_(this.mActivity).getUid());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestEndGameAdArgs);
            requestModel.setDefault(this.mActivity);
            ResponseModel<List<CommonGameInfoBean>> responseModelD0 = this.rpcGameClient.D0(requestModel.makeSign());
            if (responseModelD0 == null || responseModelD0.getCode() != 200 || responseModelD0.getData() == null || responseModelD0.getData().size() <= 0) {
                return;
            }
            this.endGameAd = responseModelD0.getData().get(0);
            resetFirstFragmentAd();
        }
    }

    public CommonGameInfoBean getEndGameAd() {
        return this.endGameAd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getEndGameConfig() {
        if (com.join.android.app.common.utils.m.j(this.mActivity)) {
            RequestEndGameListArgs requestEndGameListArgs = new RequestEndGameListArgs();
            requestEndGameListArgs.setUid(AccountUtil_.getInstance_(this.mActivity).getUid());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestEndGameListArgs);
            requestModel.setDefault(this.mActivity);
            ResponseModel<GameMainV4DataBean.EndGameConfigBean> responseModelO = com.join.mgps.rpc.impl.i.P0().o(requestModel.makeSign());
            if (responseModelO == null || responseModelO.getCode() != 200 || responseModelO.getData() == null) {
                return;
            }
            String jsonString = JsonMapper.toJsonString(responseModelO.getData());
            this.prefDef.endGameConfig().g(jsonString);
            if (com.join.mgps.Util.t2.i(jsonString)) {
                this.configBean = responseModelO.getData();
                updateCreateEndGameVisibility();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGameNameData(int page) {
        if (!com.join.android.app.common.utils.m.j(this.mActivity)) {
            showLodingFailed();
            showTost(getResources().getString(R.string.net_connect_failed));
            return;
        }
        RequestEndGameNameListArgs requestEndGameNameListArgs = new RequestEndGameNameListArgs();
        requestEndGameNameListArgs.setWithEndGame(false);
        requestEndGameNameListArgs.setUid(AccountUtil_.getInstance_(this.mActivity).getUid());
        requestEndGameNameListArgs.setPage(page);
        RequestModel requestModel = new RequestModel();
        requestModel.setArgs(requestEndGameNameListArgs);
        requestModel.setDefault(this.mActivity);
        ResponseModel<EndGameNameBean> responseModelS = this.rpcGameClient.S(requestModel.makeSign());
        if (responseModelS == null || responseModelS.getCode() != 200) {
            if (page == 1) {
                showLodingFailed();
            }
        } else if (responseModelS.getData() == null || responseModelS.getData().getGameList() == null || responseModelS.getData().getGameList().size() <= 0) {
            nomore();
        } else {
            updateUi(responseModelS.getData().getGameList(), page);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGameTypeData(int page) {
        if (com.join.android.app.common.utils.m.j(this.mActivity)) {
            RequestEndGameTypeArgs requestEndGameTypeArgs = new RequestEndGameTypeArgs();
            requestEndGameTypeArgs.setUid(AccountUtil_.getInstance_(this.mActivity).getUid());
            requestEndGameTypeArgs.setPage(page);
            requestEndGameTypeArgs.setModelType(0);
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestEndGameTypeArgs);
            requestModel.setDefault(this.mActivity);
            ResponseModel<EndGameListBean> responseModelL0 = this.rpcGameClient.l0(requestModel.makeSign());
            if (responseModelL0 == null || responseModelL0.getCode() != 200) {
                return;
            }
            if (responseModelL0.getData() == null || responseModelL0.getData().getGameList() == null || responseModelL0.getData().getGameList().size() <= 0) {
                nomoreType();
            } else {
                updateTypeUI(responseModelL0.getData(), page);
            }
        }
    }

    @Click
    void ivExpand() {
        ViewPager2 viewPager2;
        com.join.mgps.fragment.j1 j1VarC;
        EndGameNameListBean endGameNameListBean;
        this.ivExpand.setClickable(false);
        this.shadowMask.setVisibility(this.isExpand ? 8 : 0);
        this.ivExpand.setImageResource(this.isExpand ? R.drawable.ic_menu_endgame_shrink : R.drawable.ic_menu_endgame_expand);
        ViewGroup.LayoutParams layoutParams = this.clGameSelect.getLayoutParams();
        layoutParams.height = this.isExpand ? getResources().getDimensionPixelSize(R.dimen.wdp92) : -2;
        this.clGameSelect.setLayoutParams(layoutParams);
        this.isExpand = !this.isExpand;
        k kVar = this.gameSelectViewpager2Adapter;
        if (kVar != null && (viewPager2 = this.vpGameList) != null && (j1VarC = kVar.c(viewPager2.getCurrentItem())) != null && (endGameNameListBean = this.currentSelectedGame) != null) {
            j1VarC.S(endGameNameListBean.getGameId());
        }
        this.ivExpand.setClickable(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void nomore() {
        i iVar = this.gameSelectAdapter;
        if (iVar != null) {
            iVar.loadMoreComplete();
            this.gameSelectAdapter.loadMoreEnd(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void nomoreType() {
        j jVar = this.gameSelectTagAdapter;
        if (jVar != null) {
            jVar.loadMoreComplete();
            this.gameSelectTagAdapter.loadMoreEnd(true);
        }
    }

    @Click
    void relodingimag() {
        this.gameNamePage = 1;
        this.gameTypePage = 1;
        getGameNameData(1);
        getGameTypeData(this.gameTypePage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resetFirstFragmentAd() {
        ViewPager2 viewPager2;
        com.join.mgps.fragment.o1 o1VarC;
        h hVar = this.gameListViewpager2Adapter;
        if (hVar == null || (viewPager2 = this.viewpager) == null || (o1VarC = hVar.c(viewPager2.getCurrentItem())) == null) {
            return;
        }
        o1VarC.Q();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.mActivity);
    }

    @Click
    void shadowMask() {
        ivExpand();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        LinearLayout linearLayout = this.loding_layout;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_faile;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
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
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTost(String message) {
        com.join.mgps.Util.a3.b(this.mActivity).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateCreateEndGameVisibility() {
        if (this.createEndGame == null) {
            return;
        }
        GameMainV4DataBean.EndGameConfigBean endGameConfigBean = this.configBean;
        if (endGameConfigBean == null || !endGameConfigBean.isEndgame_creation_switch()) {
            this.createEndGame.setVisibility(8);
        } else {
            this.createEndGame.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTypeUI(EndGameListBean data, int page) {
        if (this.endGameTypeList == null) {
            this.endGameTypeList = new ArrayList();
        }
        this.endGameTypeList.clear();
        this.endGameTypeList.addAll(data.getTypeList());
        j jVar = this.gameSelectTagAdapter;
        if (jVar != null) {
            jVar.loadMoreComplete();
            this.gameSelectTagAdapter.replaceData(this.endGameTypeList);
        }
        k kVar = this.gameSelectViewpager2Adapter;
        if (kVar != null) {
            kVar.d(this.endGameTypeList);
            this.gameSelectViewpager2Adapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(List<EndGameNameListBean> data, int page) {
        showMain();
        if (this.endGameNameList == null) {
            this.endGameNameList = new ArrayList();
        }
        this.endGameNameList.addAll(data);
        if (page == 1 && TextUtils.isEmpty(this.gameId)) {
            this.endGameNameList.get(0).setSelected(true);
        }
        h hVar = this.gameListViewpager2Adapter;
        if (hVar != null) {
            hVar.d(this.endGameNameList);
            this.gameListViewpager2Adapter.notifyDataSetChanged();
        }
        if (page == 1) {
            for (int i10 = 0; i10 < this.endGameNameList.size(); i10++) {
                if (TextUtils.equals(this.endGameNameList.get(i10).getGameId(), this.gameId)) {
                    this.endGameNameList.get(i10).setSelected(true);
                    this.viewpager.setCurrentItem(i10, false);
                    break;
                }
            }
        }
        i iVar = this.gameSelectAdapter;
        if (iVar != null) {
            iVar.loadMoreComplete();
            this.gameSelectAdapter.replaceData(this.endGameNameList);
        }
    }
}
