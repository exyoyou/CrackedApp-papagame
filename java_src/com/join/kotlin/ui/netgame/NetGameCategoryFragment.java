package com.join.kotlin.ui.netgame;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.go0;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmVbFragment;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.ui.netgame.data.NetGameTypeData;
import com.join.kotlin.ui.netgame.viewmodel.NetGameCategoryViewModel;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w2;
import com.join.mgps.activity.p0;
import com.join.mgps.callbacks.q;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0011H\u0016J\b\u0010\u0015\u001a\u00020\u0011H\u0016J\b\u0010\u0016\u001a\u00020\u0011H\u0002J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0018\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\rH\u0002R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;", "Lcom/join/kotlin/base/fragment/BaseVmVbFragment;", "Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/NetGameCategoryFragmentBinding;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "tabTypes", "", "Lcom/join/kotlin/ui/netgame/data/NetGameTypeData;", "tabChangeFromPager", "", "tabsInitialized", "popularPageExposed", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "lazyLoadData", "createObserver", "setupTabs", "notifyPageVisible", "position", "", "trackCategoryTabClick", "trackPopularPageExp", "categoryClickExtBean", "Lcom/join/mgps/dto/ExtBean;", "categoryName", "", "categoryPageExpExtBean", "applyTabStyle", "tab", "Lcom/google/android/material/tabs/TabLayout$Tab;", "selected", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNetGameCategoryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetGameCategoryFragment.kt\ncom/join/kotlin/ui/netgame/NetGameCategoryFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,206:1\n1869#2,2:207\n1869#2,2:209\n470#3:211\n470#3:212\n*S KotlinDebug\n*F\n+ 1 NetGameCategoryFragment.kt\ncom/join/kotlin/ui/netgame/NetGameCategoryFragment\n*L\n78#1:207,2\n149#1:209,2\n199#1:211\n202#1:212\n*E\n"})
public final class NetGameCategoryFragment extends BaseVmVbFragment<NetGameCategoryViewModel, go0> {
    private com.kingja.loadsir.core.b<Object> loadSir;
    private boolean popularPageExposed;
    private boolean tabChangeFromPager;

    @NotNull
    private List<NetGameTypeData> tabTypes = CollectionsKt__CollectionsKt.emptyList();
    private boolean tabsInitialized;

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyTabStyle(TabLayout.g gVar, boolean z10) {
        View viewG = gVar.g();
        View viewFindViewById = viewG != null ? viewG.findViewById(R.id.v_1) : null;
        View viewG2 = gVar.g();
        TextView textView = viewG2 != null ? (TextView) viewG2.findViewById(R.id.tabText) : null;
        if (z10) {
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            if (textView != null) {
                textView.setTextColor(Color.parseColor("#FFFFFF"));
                return;
            }
            return;
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        if (textView != null) {
            textView.setTextColor(Color.parseColor("#3B3B3B"));
        }
    }

    private final ExtBean categoryClickExtBean(String categoryName) {
        ExtBean sopName = new ExtBean().setFirstModule("home").setSecondModule("netGame").setChatId("categoryPage").setSopName(categoryName);
        Intrinsics.checkNotNullExpressionValue(sopName, "setSopName(...)");
        return sopName;
    }

    private final ExtBean categoryPageExpExtBean(String categoryName) {
        ExtBean from = categoryClickExtBean(categoryName).setTypeCode("page").setFrom("10020");
        Intrinsics.checkNotNullExpressionValue(from, "setFrom(...)");
        return from;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$1(NetGameCategoryFragment netGameCategoryFragment, ResultState resultState) {
        com.kingja.loadsir.core.b<Object> bVar = null;
        if (resultState instanceof ResultState.Loading) {
            com.kingja.loadsir.core.b<Object> bVar2 = netGameCategoryFragment.loadSir;
            if (bVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            } else {
                bVar = bVar2;
            }
            CustomViewExtKt.showLoading(bVar);
        } else if (resultState instanceof ResultState.Success) {
            List<NetGameTypeData> list = (List) ((ResultState.Success) resultState).getData();
            List<NetGameTypeData> list2 = list;
            if (list2 == null || list2.isEmpty()) {
                com.kingja.loadsir.core.b<Object> bVar3 = netGameCategoryFragment.loadSir;
                if (bVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                } else {
                    bVar = bVar3;
                }
                CustomViewExtKt.showError(bVar, "");
            } else {
                netGameCategoryFragment.tabTypes = list;
                netGameCategoryFragment.setupTabs();
                com.kingja.loadsir.core.b<Object> bVar4 = netGameCategoryFragment.loadSir;
                if (bVar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                } else {
                    bVar = bVar4;
                }
                bVar.h();
            }
        } else if (resultState instanceof ResultState.Error) {
            com.kingja.loadsir.core.b<Object> bVar5 = netGameCategoryFragment.loadSir;
            if (bVar5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            } else {
                bVar = bVar5;
            }
            CustomViewExtKt.showError(bVar, ((ResultState.Error) resultState).getError().getErrorMsg());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initView$lambda$0(NetGameCategoryFragment netGameCategoryFragment) {
        com.kingja.loadsir.core.b<Object> bVar = netGameCategoryFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        ((NetGameCategoryViewModel) netGameCategoryFragment.getMViewModel()).loadTabs();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyPageVisible(int position) {
        List<Fragment> fragments = getChildFragmentManager().getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
        for (ActivityResultCaller activityResultCaller : fragments) {
            if (activityResultCaller instanceof q) {
                ((q) activityResultCaller).onPageVisible(position);
            }
        }
        NetGameTypeData netGameTypeData = (NetGameTypeData) CollectionsKt___CollectionsKt.getOrNull(this.tabTypes, position);
        boolean z10 = false;
        if (netGameTypeData != null && netGameTypeData.getId() == 0) {
            z10 = true;
        }
        if (z10) {
            trackPopularPageExp(position);
        }
    }

    private final void setupTabs() {
        getMViewBind().f38935d.L();
        for (NetGameTypeData netGameTypeData : this.tabTypes) {
            TabLayout.g gVarU = getMViewBind().f38935d.I().u(R.layout.layout_custom_tab_net_game_category);
            Intrinsics.checkNotNullExpressionValue(gVarU, "setCustomView(...)");
            View viewG = gVarU.g();
            if (viewG != null) {
                TextView textView = (TextView) viewG.findViewById(R.id.tabText);
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewG.findViewById(R.id.sdv_image);
                String title = netGameTypeData.getTitle();
                if (title == null) {
                    title = "";
                }
                textView.setText(title);
                if (t2.i(netGameTypeData.getIcon())) {
                    simpleDraweeView.setVisibility(0);
                    simpleDraweeView.setImageURI(netGameTypeData.getIcon());
                } else {
                    simpleDraweeView.setVisibility(8);
                }
            }
            getMViewBind().f38935d.l(gVarU, false);
        }
        w2.a(getMViewBind().f38935d);
        getMViewBind().f38936e.setAdapter(new FragmentStateAdapter() { // from class: com.join.kotlin.ui.netgame.NetGameCategoryFragment.setupTabs.2
            {
                super(NetGameCategoryFragment.this);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int position) {
                int id2 = ((NetGameTypeData) NetGameCategoryFragment.this.tabTypes.get(position)).getId();
                if (id2 == 0) {
                    return new p0();
                }
                NetGameCategoryInnerFragment.Companion companion = NetGameCategoryInnerFragment.INSTANCE;
                String title2 = ((NetGameTypeData) NetGameCategoryFragment.this.tabTypes.get(position)).getTitle();
                if (title2 == null) {
                    title2 = "";
                }
                return companion.newInstance(id2, title2, position, true);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return NetGameCategoryFragment.this.tabTypes.size();
            }
        });
        getMViewBind().f38935d.h(new TabLayout.d() { // from class: com.join.kotlin.ui.netgame.NetGameCategoryFragment.setupTabs.3
            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabReselected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabSelected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                if (!NetGameCategoryFragment.this.tabChangeFromPager) {
                    NetGameCategoryFragment.this.trackCategoryTabClick(tab.k());
                }
                NetGameCategoryFragment.this.getMViewBind().f38936e.setCurrentItem(tab.k());
                NetGameCategoryFragment.this.applyTabStyle(tab, true);
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabUnselected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                NetGameCategoryFragment.this.applyTabStyle(tab, false);
            }
        });
        getMViewBind().f38936e.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.join.kotlin.ui.netgame.NetGameCategoryFragment.setupTabs.4
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                NetGameCategoryFragment.this.tabChangeFromPager = true;
                TabLayout.g gVarD = NetGameCategoryFragment.this.getMViewBind().f38935d.D(position);
                if (gVarD != null) {
                    gVarD.r();
                }
                NetGameCategoryFragment.this.tabChangeFromPager = false;
                NetGameCategoryFragment.this.notifyPageVisible(position);
            }
        });
        getMViewBind().f38936e.setOffscreenPageLimit(RangesKt___RangesKt.coerceAtMost(this.tabTypes.size(), 5));
        getMViewBind().f38936e.post(new Runnable() { // from class: com.join.kotlin.ui.netgame.c
            @Override // java.lang.Runnable
            public final void run() {
                NetGameCategoryFragment.setupTabs$lambda$4(this.f49303b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupTabs$lambda$4(NetGameCategoryFragment netGameCategoryFragment) {
        netGameCategoryFragment.getMViewBind().f38936e.setCurrentItem(0, false);
        TabLayout.g gVarD = netGameCategoryFragment.getMViewBind().f38935d.D(0);
        if (gVarD != null) {
            gVarD.r();
        }
        netGameCategoryFragment.notifyPageVisible(0);
        netGameCategoryFragment.tabsInitialized = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackCategoryTabClick(int position) {
        if (this.tabsInitialized) {
            NetGameTypeData netGameTypeData = (NetGameTypeData) CollectionsKt___CollectionsKt.getOrNull(this.tabTypes, position);
            String title = netGameTypeData != null ? netGameTypeData.getTitle() : null;
            if (title == null) {
                title = "";
            }
            if (title.length() == 0) {
                return;
            }
            t.l(requireContext()).R1(Event.commonClick, categoryClickExtBean(title).buildScene().toExt());
        }
    }

    private final void trackPopularPageExp(int position) {
        if (this.popularPageExposed) {
            return;
        }
        NetGameTypeData netGameTypeData = (NetGameTypeData) CollectionsKt___CollectionsKt.getOrNull(this.tabTypes, position);
        if (netGameTypeData != null && netGameTypeData.getId() == 0) {
            NetGameTypeData netGameTypeData2 = (NetGameTypeData) CollectionsKt___CollectionsKt.getOrNull(this.tabTypes, position);
            String title = netGameTypeData2 != null ? netGameTypeData2.getTitle() : null;
            if (title == null) {
                title = "";
            }
            if (title.length() == 0) {
                return;
            }
            this.popularPageExposed = true;
            t.l(requireContext()).R1(Event.commonExp, categoryPageExpExtBean(title).buildScene().toExt());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        ((NetGameCategoryViewModel) getMViewModel()).getTabData().observe(getViewLifecycleOwner(), new NetGameCategoryFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.netgame.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NetGameCategoryFragment.createObserver$lambda$1(this.f49299b, (ResultState) obj);
            }
        }));
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        FrameLayout loadContent = getMViewBind().f38934c;
        Intrinsics.checkNotNullExpressionValue(loadContent, "loadContent");
        this.loadSir = CustomViewExtKt.loadServiceInit(loadContent, new Function0() { // from class: com.join.kotlin.ui.netgame.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return NetGameCategoryFragment.initView$lambda$0(this.f49302b);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
        com.kingja.loadsir.core.b<Object> bVar = this.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        ((NetGameCategoryViewModel) getMViewModel()).loadTabs();
    }
}
