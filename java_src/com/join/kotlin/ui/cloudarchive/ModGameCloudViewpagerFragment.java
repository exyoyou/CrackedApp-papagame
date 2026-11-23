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
import com.join.mgps.dto.ModGameDetailBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_mod_game_cloud_viewpager)
public class ModGameCloudViewpagerFragment extends Fragment {
    private com.join.mgps.adapter.h cloudArchiveTagAdapter;
    private List<com.join.mgps.adapter.h0.a> fragments;
    private String gameId;
    private ModGameDetailBean modgameBean;

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
        com.join.mgps.adapter.h hVar = new com.join.mgps.adapter.h(getActivity(), this.tags);
        this.cloudArchiveTagAdapter = hVar;
        hVar.f(new com.join.mgps.adapter.h.b() { // from class: com.join.kotlin.ui.cloudarchive.k0
            @Override // com.join.mgps.adapter.h.b
            public final void onSelected(int i10) {
                this.f49006a.lambda$addTagList$0(i10);
            }
        });
        this.subTabList.setAdapter(this.cloudArchiveTagAdapter);
    }

    private void initDefaultSelectedIndex() {
        ArrayList<ModGameArchiveTagBean> arrayList;
        ModGameDetailBean modGameDetailBean = this.modgameBean;
        if (modGameDetailBean == null || modGameDetailBean.getCloud_archive_cfg() == null || (arrayList = this.tags) == null || arrayList.size() <= 0) {
            return;
        }
        if (this.modgameBean.getCloud_archive_cfg().getLocation_at() == 2) {
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
            ModgameCloudListFragment modgameCloudListFragment = new ModgameCloudListFragment();
            bundle.putString("gameId", this.gameId);
            bundle.putInt("type", this.type);
            bundle.putSerializable("datas", this.modgameBean);
            bundle.putSerializable(TagGameListActivity_.TAG_EXTRA, modGameArchiveTagBean);
            modgameCloudListFragment.setArguments(bundle);
            this.fragments.add(new com.join.mgps.adapter.h0.a(modGameArchiveTagBean.getName(), modgameCloudListFragment));
        }
        com.join.mgps.adapter.h0 h0Var = new com.join.mgps.adapter.h0(getFragmentManager(), this.fragments);
        this.viewpager.setOffscreenPageLimit(this.tags.size() - 1);
        this.viewpager.setAdapter(h0Var);
        this.viewpager.setCurrentItem(this.defaultSelectedIndex);
        this.viewpager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewpagerFragment.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i10) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i10, float v10, int i11) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i10) {
                for (ModGameArchiveTagBean modGameArchiveTagBean2 : ModGameCloudViewpagerFragment.this.tags) {
                    boolean z10 = false;
                    if (ModGameCloudViewpagerFragment.this.tags.indexOf(modGameArchiveTagBean2) == i10) {
                        modGameArchiveTagBean2.setCount(0);
                    }
                    if (ModGameCloudViewpagerFragment.this.tags.indexOf(modGameArchiveTagBean2) == i10) {
                        z10 = true;
                    }
                    modGameArchiveTagBean2.setSelected(z10);
                }
                ModGameCloudViewpagerFragment.this.cloudArchiveTagAdapter.notifyDataSetChanged();
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) ModGameCloudViewpagerFragment.this.subTabList.getLayoutManager();
                if (linearLayoutManager != null && (linearLayoutManager.findLastCompletelyVisibleItemPosition() < i10 || linearLayoutManager.findFirstCompletelyVisibleItemPosition() > i10)) {
                    ModGameCloudViewpagerFragment.this.subTabList.smoothScrollToPosition(i10);
                }
                if (ModGameCloudViewpagerFragment.this.lastSelectedTagIndex != i10) {
                    com.papa.sim.statistic.t.l(ModGameCloudViewpagerFragment.this.getContext()).R1(Event.clickCloudLabelButton, new Ext().setFrom(String.valueOf(((ModGameArchiveTagBean) ModGameCloudViewpagerFragment.this.tags.get(i10)).getType())).setGameId(ModGameCloudViewpagerFragment.this.gameId).setPosition(((ModGameArchiveTagBean) ModGameCloudViewpagerFragment.this.tags.get(i10)).getTagId()));
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
        if (fragment != null && fragment.isAdded() && fragment.isVisible() && (fragment instanceof ModgameCloudListFragment)) {
            ((ModgameCloudListFragment) fragment).scrollToTop();
        }
    }

    @AfterViews
    void afterViews() {
        Bundle arguments = getArguments();
        this.modgameBean = (ModGameDetailBean) arguments.getSerializable("datas");
        this.type = arguments.getInt("type");
        this.gameId = arguments.getString("gameId");
        this.tags = arguments.getParcelableArrayList(bn.f7600l);
        initDefaultSelectedIndex();
        addTagList();
        initViewPager();
    }
}
