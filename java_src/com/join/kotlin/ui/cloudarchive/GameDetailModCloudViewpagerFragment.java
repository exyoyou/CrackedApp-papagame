package com.join.kotlin.ui.cloudarchive;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.baidu.mobads.sdk.internal.bn;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.customview.NoScrollViewPager;
import com.join.mgps.dto.ModGameArchiveTagBean;
import com.join.mgps.dto.StandaloneCloudArchive;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_game_detail_mod_cloud_viewpager)
public class GameDetailModCloudViewpagerFragment extends Fragment {
    private com.join.mgps.adapter.h cloudArchiveTagAdapter;
    private List<com.join.mgps.adapter.h0.a> fragments;
    private String gameId;
    private StandaloneCloudArchive modgameBean;

    @ViewById
    RecyclerView subTabList;
    private int type;

    @ViewById
    NoScrollViewPager viewpager;
    private ArrayList<ModGameArchiveTagBean> tags = new ArrayList<>();
    private int defaultSelectedIndex = 0;
    private int lastSelectedTagIndex = 0;

    private void addTagList() {
        ArrayList<ModGameArchiveTagBean> arrayList = this.tags;
        if (arrayList != null && arrayList.size() > 0) {
            this.tags.get(this.defaultSelectedIndex).setSelected(true);
        }
        this.subTabList.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        com.join.mgps.adapter.h hVar = new com.join.mgps.adapter.h(getActivity(), 1, this.tags);
        this.cloudArchiveTagAdapter = hVar;
        hVar.f(new com.join.mgps.adapter.h.b() { // from class: com.join.kotlin.ui.cloudarchive.c0
            @Override // com.join.mgps.adapter.h.b
            public final void onSelected(int i10) {
                this.f48940a.lambda$addTagList$0(i10);
            }
        });
        this.subTabList.setAdapter(this.cloudArchiveTagAdapter);
    }

    private void initDefaultSelectedIndex() {
        ArrayList<ModGameArchiveTagBean> arrayList;
        StandaloneCloudArchive standaloneCloudArchive = this.modgameBean;
        if (standaloneCloudArchive == null || standaloneCloudArchive.getTag_list() == null || (arrayList = this.tags) == null || arrayList.size() <= 0) {
            return;
        }
        if (this.modgameBean.getLocation_at().intValue() == 2) {
            for (ModGameArchiveTagBean modGameArchiveTagBean : this.tags) {
                if (TextUtils.equals(modGameArchiveTagBean.getTagId(), "5")) {
                    this.defaultSelectedIndex = this.tags.indexOf(modGameArchiveTagBean);
                    break;
                }
            }
        }
        this.lastSelectedTagIndex = this.defaultSelectedIndex;
    }

    private void initViewPager() {
        this.fragments = new ArrayList();
        for (ModGameArchiveTagBean modGameArchiveTagBean : this.tags) {
            Bundle bundle = new Bundle();
            GameDetailModCloudListFragment gameDetailModCloudListFragment = new GameDetailModCloudListFragment();
            bundle.putString("gameId", this.gameId);
            bundle.putInt("type", this.type);
            bundle.putSerializable("datas", this.modgameBean);
            bundle.putSerializable(TagGameListActivity_.TAG_EXTRA, modGameArchiveTagBean);
            gameDetailModCloudListFragment.setArguments(bundle);
            this.fragments.add(new com.join.mgps.adapter.h0.a(modGameArchiveTagBean.getName(), gameDetailModCloudListFragment));
        }
        com.join.mgps.adapter.h0 h0Var = new com.join.mgps.adapter.h0(getFragmentManager(), this.fragments);
        this.viewpager.setOffscreenPageLimit(this.tags.size() - 1);
        this.viewpager.setAdapter(h0Var);
        this.viewpager.setCurrentItem(this.defaultSelectedIndex);
        this.viewpager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudViewpagerFragment.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i10) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i10, float v10, int i11) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i10) {
                for (ModGameArchiveTagBean modGameArchiveTagBean2 : GameDetailModCloudViewpagerFragment.this.tags) {
                    boolean z10 = false;
                    if (GameDetailModCloudViewpagerFragment.this.tags.indexOf(modGameArchiveTagBean2) == i10) {
                        modGameArchiveTagBean2.setCount(0);
                    }
                    if (GameDetailModCloudViewpagerFragment.this.tags.indexOf(modGameArchiveTagBean2) == i10) {
                        z10 = true;
                    }
                    modGameArchiveTagBean2.setSelected(z10);
                }
                GameDetailModCloudViewpagerFragment.this.cloudArchiveTagAdapter.notifyDataSetChanged();
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) GameDetailModCloudViewpagerFragment.this.subTabList.getLayoutManager();
                if (linearLayoutManager != null && (linearLayoutManager.findLastCompletelyVisibleItemPosition() < i10 || linearLayoutManager.findFirstCompletelyVisibleItemPosition() > i10)) {
                    GameDetailModCloudViewpagerFragment.this.subTabList.smoothScrollToPosition(i10);
                }
                if (GameDetailModCloudViewpagerFragment.this.lastSelectedTagIndex != i10) {
                    com.papa.sim.statistic.t.l(GameDetailModCloudViewpagerFragment.this.getContext()).R1(Event.clickCloudLabelButton, new Ext().setFrom(String.valueOf(((ModGameArchiveTagBean) GameDetailModCloudViewpagerFragment.this.tags.get(i10)).getType())).setGameId(GameDetailModCloudViewpagerFragment.this.gameId).setPosition(((ModGameArchiveTagBean) GameDetailModCloudViewpagerFragment.this.tags.get(i10)).getTagId()));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addTagList$0(int i10) {
        this.viewpager.setCurrentItem(i10, true);
        if (i10 != this.lastSelectedTagIndex) {
            this.lastSelectedTagIndex = i10;
            return;
        }
        Fragment fragment = this.fragments.get(i10).f62228c;
        if (fragment != null && fragment.isAdded() && fragment.isVisible() && (fragment instanceof GameDetailModCloudListFragment)) {
            ((GameDetailModCloudListFragment) fragment).scrollToTop();
        }
    }

    @AfterViews
    void afterViews() {
        Bundle arguments = getArguments();
        this.modgameBean = (StandaloneCloudArchive) arguments.getSerializable("datas");
        this.type = arguments.getInt("type");
        this.gameId = arguments.getString("gameId");
        this.tags = arguments.getParcelableArrayList(bn.f7600l);
        initDefaultSelectedIndex();
        addTagList();
        initViewPager();
    }
}
