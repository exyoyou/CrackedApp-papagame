package com.join.mgps.activity;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.BaseAppCompatActivity;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.gson.JsonObject;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.DiscoveryPaiweiGameIndexBean;
import com.join.mgps.dto.DiscoveryPaiweiGameListBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.util.SignUtils;
import com.uc.crashsdk.export.LogType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import okhttp3.Request;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_discovery_paiwei)
public class DiscoveryPaiweiActivity extends BaseAppCompatActivity {
    private AccountUtil_ accountUtil;
    private Context context;
    private f gameAdapter;

    @Extra
    String gameId;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @ViewById
    Group main;

    @ViewById
    RecyclerView rvGame;

    @ViewById
    View statubar;
    private g vpAdapater;

    @ViewById
    ViewPager2 vpRank;
    private List<String> vpList = new ArrayList();
    private List<DiscoveryPaiweiGameIndexBean> gameList = new ArrayList();
    private int page = 1;
    private final String discoveryPaiweiIndexUrl = com.join.mgps.rpc.h.f72361m + "/game/discover/index";
    private boolean hasMore = true;
    private boolean isLoading = false;

    class a extends com.join.android.app.common.http.d.p<String> {
        a() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            e10.printStackTrace();
            DiscoveryPaiweiActivity.this.showLodingFailed();
            DiscoveryPaiweiActivity.this.isLoading = false;
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String rs) {
            DiscoveryPaiweiActivity.this.updateGameList(rs);
        }
    }

    class b implements Comparator<DiscoveryPaiweiGameIndexBean> {
        b() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(DiscoveryPaiweiGameIndexBean o10, DiscoveryPaiweiGameIndexBean o11) {
            DownloadTask downloadTaskG = q5.f.M().G(o10.getGame_id());
            DownloadTask downloadTaskG2 = q5.f.M().G(o11.getGame_id());
            if (downloadTaskG == null && downloadTaskG2 == null) {
                return 0;
            }
            if (downloadTaskG == null) {
                return 1;
            }
            if (downloadTaskG2 == null) {
                return -1;
            }
            long openTime = downloadTaskG.getOpenTime();
            long openTime2 = downloadTaskG2.getOpenTime();
            if (openTime2 == openTime) {
                return 0;
            }
            return openTime2 - openTime > 0 ? 1 : -1;
        }
    }

    class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int position) {
            super.onPageSelected(position);
            RecyclerView recyclerView = DiscoveryPaiweiActivity.this.rvGame;
            if (recyclerView != null) {
                recyclerView.smoothScrollToPosition(position);
            }
            if (DiscoveryPaiweiActivity.this.gameAdapter != null) {
                DiscoveryPaiweiActivity.this.gameAdapter.t(position);
            }
        }
    }

    class d implements BaseQuickAdapter.j {
        d() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.j
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            DiscoveryPaiweiActivity.this.gameAdapter.t(position);
            DiscoveryPaiweiActivity.this.vpRank.setCurrentItem(position, true);
        }
    }

    class e extends RecyclerView.OnScrollListener {
        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState != 0 || !DiscoveryPaiweiActivity.this.hasMore || DiscoveryPaiweiActivity.this.isLoading || ((LinearLayoutManager) DiscoveryPaiweiActivity.this.rvGame.getLayoutManager()).findLastCompletelyVisibleItemPosition() < DiscoveryPaiweiActivity.this.gameList.size() - 3) {
                return;
            }
            DiscoveryPaiweiActivity.access$608(DiscoveryPaiweiActivity.this);
            DiscoveryPaiweiActivity.this.getPaiweiGameList();
        }
    }

    class f extends BaseQuickAdapter<DiscoveryPaiweiGameIndexBean, com.join.mgps.base.b> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f51214e;

        public f() {
            super(R.layout.item_discovery_paiwei_game, DiscoveryPaiweiActivity.this.gameList);
            this.f51214e = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(int position) {
            this.f51214e = position;
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, DiscoveryPaiweiGameIndexBean item) {
            com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.iconGameBig), item.getIcon());
            com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.iconGameSmall), item.getIcon());
            helper.setVisible(R.id.iconGameBig, helper.getLayoutPosition() == this.f51214e).setVisible(R.id.flIconGameSmall, helper.getLayoutPosition() != this.f51214e);
        }
    }

    class g extends FragmentStateAdapter {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<DiscoveryPaiweiGameIndexBean> f51216e;

        public g(FragmentActivity fragmentActivity, List<DiscoveryPaiweiGameIndexBean> datas) {
            super(fragmentActivity);
            this.f51216e = datas;
        }

        private com.join.mgps.fragment.w0 b(int position) {
            Fragment fragmentFindFragmentByTag = DiscoveryPaiweiActivity.this.getSupportFragmentManager().findFragmentByTag(com.xinzhu.overmind.server.os.f.TAG + getItemId(position));
            if (fragmentFindFragmentByTag == null || !(fragmentFindFragmentByTag instanceof com.join.mgps.fragment.w0)) {
                return null;
            }
            return (com.join.mgps.fragment.w0) fragmentFindFragmentByTag;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(List<DiscoveryPaiweiGameIndexBean> datas) {
            this.f51216e = datas;
            DiscoveryPaiweiActivity.this.vpRank.setOffscreenPageLimit(datas.size() - 1);
            notifyDataSetChanged();
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public boolean containsItem(long itemId) {
            return itemId >= 0 && itemId < ((long) getItemCount());
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        public Fragment createFragment(int position) {
            return com.join.mgps.fragment.w0.Y().b(this.f51216e.get(position).getGame_id()).c(this.f51216e.get(position).getMax_battle_count()).build();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f51216e.size();
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            return position;
        }
    }

    static /* synthetic */ int access$608(DiscoveryPaiweiActivity discoveryPaiweiActivity) {
        int i10 = discoveryPaiweiActivity.page;
        discoveryPaiweiActivity.page = i10 + 1;
        return i10;
    }

    private void initView() {
        g gVar = new g(this, this.gameList);
        this.vpAdapater = gVar;
        this.vpRank.setAdapter(gVar);
        this.vpRank.setOffscreenPageLimit(2);
        this.vpRank.registerOnPageChangeCallback(new c());
        f fVar = new f();
        this.gameAdapter = fVar;
        fVar.setOnItemClickListener(new d());
        this.rvGame.setAdapter(this.gameAdapter);
        this.rvGame.addOnScrollListener(new e());
    }

    private void setStatusBarLight(boolean isLight) {
        View decorView = getWindow().getDecorView();
        if (decorView != null) {
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(isLight ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    @AfterViews
    void afterviews() {
        this.context = this;
        this.accountUtil = AccountUtil_.getInstance_(this);
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.statubar.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).height = com.join.android.app.common.utils.q.v(this.context);
        this.statubar.setLayoutParams(layoutParams);
        setStatusBarLight(true);
        initView();
        getPaiweiGameList();
        com.papa.sim.statistic.t.l(this.context).R1(Event.clickVSZoneList, new Ext());
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getPaiweiGameList() {
        this.isLoading = true;
        if (this.page == 1) {
            showLoding();
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("downloadGameList", TextUtils.join(",", (Long[]) q5.f.M().C().toArray(new Long[0])));
        String str = this.gameId;
        if (str != null) {
            jsonObject.addProperty("gameId", str);
        }
        jsonObject.addProperty("page", Integer.valueOf(this.page));
        jsonObject.addProperty(Constants.TOKEN, this.accountUtil.getToken());
        jsonObject.addProperty("uid ", this.accountUtil.getUid());
        jsonObject.addProperty(Constant.MD5, SignUtils.buildRequestSign(jsonObject));
        com.join.android.app.common.http.d.G().H().v(this.discoveryPaiweiIndexUrl, jsonObject, new a(), null);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.accountUtil = AccountUtil_.getInstance_(this.context);
    }

    @Click
    void relodingimag() {
        if (this.gameList == null) {
            this.gameList = new ArrayList();
        }
        this.gameList.clear();
        this.isLoading = false;
        this.hasMore = true;
        getPaiweiGameList();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
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
        Group group = this.main;
        if (group != null) {
            group.setVisibility(8);
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
        Group group = this.main;
        if (group != null) {
            group.setVisibility(8);
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
        Group group = this.main;
        if (group != null) {
            group.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateGameList(String rs) {
        DiscoveryPaiweiGameIndexBean next;
        try {
            JSONObject jSONObject = new JSONObject(rs);
            if (jSONObject.optInt("code") == 200) {
                DiscoveryPaiweiGameListBean discoveryPaiweiGameListBean = (DiscoveryPaiweiGameListBean) JsonMapper.getInstance().fromJson(jSONObject.optString("data"), DiscoveryPaiweiGameListBean.class);
                if (discoveryPaiweiGameListBean == null || discoveryPaiweiGameListBean.getGame_list() == null || discoveryPaiweiGameListBean.getGame_list().size() <= 0) {
                    if (this.page == 1) {
                        showLodingFailed();
                    }
                    this.hasMore = false;
                } else {
                    if (this.page == 1) {
                        this.gameList.clear();
                    }
                    List<DiscoveryPaiweiGameIndexBean> game_list = discoveryPaiweiGameListBean.getGame_list();
                    Collections.sort(game_list, new b());
                    Iterator<DiscoveryPaiweiGameIndexBean> it2 = game_list.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                    } while (!next.getGame_id().equals(this.gameId));
                    if (next != null) {
                        game_list.remove(next);
                        game_list.add(0, next);
                    }
                    this.gameList.addAll(game_list);
                    this.gameAdapter.replaceData(this.gameList);
                    this.vpAdapater.c(this.gameList);
                    showMain();
                }
            } else {
                String strOptString = jSONObject.optString("message");
                if (!TextUtils.isEmpty(strOptString)) {
                    showMessage(strOptString);
                }
                showLodingFailed();
                this.hasMore = false;
            }
            this.isLoading = false;
        } catch (JSONException e10) {
            e10.printStackTrace();
            showLodingFailed();
            this.hasMore = false;
            this.isLoading = false;
        }
    }
}
