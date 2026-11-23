package com.join.mgps.activity.arena;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseFragmentActivity;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.g1;
import com.join.mgps.adapter.e2;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.i;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBean;
import com.join.mgps.dto.GameTypeBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.rpc.l;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_arena_gamelist)
public class ArenaGameListActivity extends BaseFragmentActivity {
    private static final int MAX_COUNT = 10;
    private static final int ROOM_TYPE_FC = 35;
    private static final int ROOM_TYPE_JIEJI = 31;
    public static final int TYPE_FC = 2;
    public static final int TYPE_JIEJI = 3;
    public static final int TYPE_OTHERS = 4;
    public static final int TYPE_RECENT = 1;

    @Bean
    com.join.mgps.Util.b accountUtil;

    @ViewById(R.id.title_textview)
    TextView hearTitleTxt;

    @ViewById
    RelativeLayout layout_others_list;

    @ViewById
    XListView2 listview;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private e2 mAdapter;
    private com.join.mgps.fragment.c[] mFragments;
    l mReuqsetServer;

    @Extra
    int mType;
    TabPageIndicator pageIndicator;
    ViewPager viewPager;
    private boolean haveMore = false;
    private int mPn = 1;
    private List<GameInfoBean> mDatas = new ArrayList();
    private ArrayList<GameTypeBean> mGameTypes = new ArrayList<>();
    private ArrayList<GameInfoBean> mFirstTypeDatas = new ArrayList<>();

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            GameRoomListActivity_.intent(ArenaGameListActivity.this).c((GameInfoBean) ArenaGameListActivity.this.mDatas.get(position)).a(true).b(true).start();
        }
    }

    class b implements i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (ArenaGameListActivity.this.haveMore) {
                if (m.j(ArenaGameListActivity.this)) {
                    ArenaGameListActivity.this.requestRecentGameList();
                } else {
                    ArenaGameListActivity.this.listview.u();
                    a3.b(ArenaGameListActivity.this).d(ArenaGameListActivity.this.getString(R.string.net_connect_failed));
                }
            }
        }
    }

    private class c extends FragmentPagerAdapter {
        public c(FragmentManager fm2) {
            super(fm2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return ArenaGameListActivity.this.mGameTypes.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int position) {
            return ArenaGameListActivity.this.newInstance(position);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int position) {
            return ((GameTypeBean) ArenaGameListActivity.this.mGameTypes.get(position)).getTitle();
        }
    }

    private void getData() {
        if (!m.j(this)) {
            showFailed();
        } else {
            showLoading();
            requestDataByType();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment newInstance(int position) {
        com.join.mgps.fragment.c cVar = this.mFragments[position];
        if (cVar != null) {
            return cVar;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("game_type", this.mGameTypes.get(position).getId());
        int i10 = this.mType;
        if (i10 == 2) {
            bundle.putInt("room_type", 35);
        } else if (i10 == 3) {
            bundle.putInt("room_type", 31);
        }
        if (position == 0) {
            bundle.putInt("pn", 2);
            bundle.putSerializable("datas", this.mFirstTypeDatas);
        } else {
            bundle.putInt("pn", 1);
        }
        com.join.mgps.fragment.c cVar2 = new com.join.mgps.fragment.c();
        cVar2.setArguments(bundle);
        this.mFragments[position] = cVar2;
        return cVar2;
    }

    @AfterViews
    void afterViews() {
        this.mReuqsetServer = com.join.mgps.rpc.impl.l.n0();
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.title_bar_layout);
        relativeLayout.setBackgroundColor(getResources().getColor(R.color.color_1F4959));
        relativeLayout.findViewById(R.id.line).setVisibility(8);
        ((ImageView) relativeLayout.findViewById(R.id.back_image)).setImageDrawable(getResources().getDrawable(R.drawable.icon_back_2));
        this.hearTitleTxt.setTextColor(-1);
        this.loding_layout = (LinearLayout) findViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) findViewById(R.id.loding_faile);
        this.hearTitleTxt.setGravity(17);
        e2 e2Var = new e2(this, this.mDatas, false);
        this.mAdapter = e2Var;
        this.listview.setAdapter((ListAdapter) e2Var);
        int i10 = this.mType;
        if (i10 == 1) {
            this.hearTitleTxt.setText("最近");
            this.listview.setVisibility(0);
            this.listview.setOnItemClickListener(new a());
            this.listview.setPullLoadEnable(new b());
            this.layout_others_list.setVisibility(8);
            getData();
            return;
        }
        if (i10 == 2) {
            this.hearTitleTxt.setText("FC对战");
        } else if (i10 == 3) {
            this.hearTitleTxt.setText("街机对战");
        } else if (i10 == 4) {
            this.hearTitleTxt.setText("其他");
        }
        this.listview.setVisibility(8);
        this.layout_others_list.setVisibility(0);
        this.viewPager = (ViewPager) findViewById(R.id.viewPager);
        this.pageIndicator = (TabPageIndicator) findViewById(R.id.pageIndicator);
        getData();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initViewPager(ResultResMainBean<NewArenaGameListBean> data) {
        this.mGameTypes.addAll(data.getData().getGame_type());
        this.mFirstTypeDatas.addAll(data.getData().getGame_list());
        this.mFragments = new com.join.mgps.fragment.c[this.mGameTypes.size()];
        this.viewPager.setAdapter(new c(getSupportFragmentManager()));
        this.viewPager.setOffscreenPageLimit(this.mGameTypes.size());
        this.viewPager.setCurrentItem(0);
        this.pageIndicator.setNormalTextColor(getResources().getColor(R.color.color_2D6273));
        this.pageIndicator.setSelectedTextColor(getResources().getColor(R.color.white));
        this.pageIndicator.setSelectedBottomDrawableBounds(R.drawable.line_white);
        this.pageIndicator.setNormalBottomDrawableBound(R.drawable.trans);
        this.pageIndicator.setViewPager(this.viewPager);
    }

    @Click
    void relodingimag() {
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void requestDataByType() {
        if (this.mType == 1) {
            requestRecentGameList();
        } else {
            requestOthersGameList();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void requestOthersGameList() {
        ResultResMainBean<NewArenaGameListBean> resultResMainBeanM;
        try {
            int i10 = this.mType;
            if (i10 == 2) {
                resultResMainBeanM = this.mReuqsetServer.M(35, 1, 1);
            } else {
                resultResMainBeanM = i10 == 3 ? this.mReuqsetServer.M(31, 1, 1) : null;
            }
            if (!isFinishing() && !isDestroyed()) {
                if (resultResMainBeanM != null && resultResMainBeanM.getData() != null && resultResMainBeanM.getData().getGame_type() != null) {
                    initViewPager(resultResMainBeanM);
                    hideLoading();
                    return;
                }
                showFailed();
            }
        } catch (Exception unused) {
            showFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void requestRecentGameList() {
        try {
            ResultResMainBean<GameListBean> resultResMainBeanF = this.mReuqsetServer.F(this.accountUtil.getAccountData().getUid(), this.accountUtil.getAccountData().getToken(), this.mPn);
            if (!isFinishing() && !isDestroyed()) {
                if (resultResMainBeanF != null && resultResMainBeanF.getData() != null) {
                    List<GameInfoBean> game_list = resultResMainBeanF.getData().getGame_list();
                    if (game_list == null || game_list.size() <= 0) {
                        this.haveMore = false;
                    } else {
                        this.haveMore = game_list.size() >= 10;
                    }
                    updateUI(game_list);
                    if (this.mPn <= 1) {
                        hideLoading();
                    }
                    if (this.haveMore) {
                        this.mPn++;
                        return;
                    }
                    return;
                }
                if (this.mPn <= 1) {
                    showFailed();
                }
            }
        } catch (Exception e10) {
            g1.b("ArenaGameListActivity", "requestRecentGameList Exception :" + e10.getMessage());
            if (this.mPn <= 1) {
                showFailed();
            }
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showFailed() {
        this.listview.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading() {
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(List<GameInfoBean> datas) {
        if (this.listview.getVisibility() == 8) {
            this.listview.setVisibility(0);
        }
        if (datas != null && datas.size() > 0) {
            this.mDatas.addAll(datas);
        }
        if (this.haveMore) {
            this.listview.u();
        } else {
            this.listview.setNoMore();
            if (this.mDatas.size() <= 0) {
                this.listview.setVisibility(8);
                return;
            }
        }
        this.mAdapter.notifyDataSetChanged();
    }
}
