package com.join.kotlin.ui.findgame;

import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ck;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w2;
import com.join.mgps.customview.e0;
import com.join.mgps.dto.FoundGameTabBean;
import com.join.mgps.dto.TabItemBean;
import com.join.mgps.fragment.a0;
import com.join.mgps.fragment.p1;
import com.join.mgps.fragment.r1;
import com.join.mgps.fragment.v4;
import com.psk.kotlin.ext.CommonExtKt;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u00100\u001a\u0004\u0018\u0001012\u0006\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u0001052\b\u00106\u001a\u0004\u0018\u000107H\u0016J\b\u00108\u001a\u000209H\u0002J\u0012\u0010:\u001a\u0002092\b\u0010;\u001a\u0004\u0018\u000107H\u0016J\u0012\u0010<\u001a\u0002092\b\b\u0002\u0010=\u001a\u00020\u001dH\u0002J\u000e\u0010>\u001a\u00020\u001d2\u0006\u0010?\u001a\u00020\u001dJ\u000e\u0010@\u001a\u00020\u001d2\u0006\u0010A\u001a\u00020\u001dJ\u0010\u0010B\u001a\u0002092\u0006\u0010C\u001a\u00020DH\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R*\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u00010#j\b\u0012\u0004\u0012\u00020\u0001`$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R#\u0010)\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b,\u0010-¨\u0006E"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameMainFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FindgameFragmentLayoutBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FindgameFragmentLayoutBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FindgameFragmentLayoutBinding;)V", "adapter", "Lcom/join/mgps/customview/NavigationAdapter;", "getAdapter", "()Lcom/join/mgps/customview/NavigationAdapter;", "setAdapter", "(Lcom/join/mgps/customview/NavigationAdapter;)V", "rankingFragment", "Lcom/join/mgps/fragment/RankingFragment_;", "getRankingFragment", "()Lcom/join/mgps/fragment/RankingFragment_;", "setRankingFragment", "(Lcom/join/mgps/fragment/RankingFragment_;)V", "commonWebviewFragment", "Lcom/join/mgps/fragment/CommonWebviewFragment_;", "getCommonWebviewFragment", "()Lcom/join/mgps/fragment/CommonWebviewFragment_;", "setCommonWebviewFragment", "(Lcom/join/mgps/fragment/CommonWebviewFragment_;)V", "selectedIndex", "", "getSelectedIndex", "()I", "setSelectedIndex", "(I)V", "fragments", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getFragments", "()Ljava/util/ArrayList;", "setFragments", "(Ljava/util/ArrayList;)V", "tabItems", "", "Lcom/join/mgps/dto/TabItemBean;", "getTabItems", "()Ljava/util/List;", "tabItems$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "initTabs", "", "setSelectedTab", "arguments", "selectedTab", "selIndex", "getIndex", "index", "getDisplayIndex", HmDataChannelManager.DISPLAY, "onHiddenChanged", "hidden", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFindGameMainFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FindGameMainFragment.kt\ncom/join/kotlin/ui/findgame/FindGameMainFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n1056#2:249\n1869#2:250\n1870#2:252\n1869#2,2:253\n1869#2,2:255\n1869#2,2:257\n1869#2,2:259\n1#3:251\n*S KotlinDebug\n*F\n+ 1 FindGameMainFragment.kt\ncom/join/kotlin/ui/findgame/FindGameMainFragment\n*L\n68#1:249\n69#1:250\n69#1:252\n149#1:253,2\n198#1:255,2\n216#1:257,2\n225#1:259,2\n*E\n"})
public class FindGameMainFragment extends Fragment {

    @Nullable
    private e0 adapter;

    @Nullable
    private ck binding;

    @Nullable
    private a0 commonWebviewFragment;

    @Nullable
    private v4 rankingFragment;
    private int selectedIndex = -1;

    @NotNull
    private ArrayList<Fragment> fragments = new ArrayList<>();

    /* JADX INFO: renamed from: tabItems$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy tabItems = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.findgame.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FindGameMainFragment.tabItems_delegate$lambda$1();
        }
    });

    private final void initTabs() {
        final ck ckVar = this.binding;
        if (ckVar != null) {
            List<TabItemBean> tabItems = getTabItems();
            if (tabItems != null) {
                for (TabItemBean tabItemBean : tabItems) {
                    TabLayout.g gVarU = ckVar.f36966e.I().u(R.layout.layout_custom_tab_find_game);
                    Intrinsics.checkNotNullExpressionValue(gVarU, "setCustomView(...)");
                    if (gVarU.g() != null) {
                        View viewG = gVarU.g();
                        Intrinsics.checkNotNull(viewG);
                        TextView textView = (TextView) viewG.findViewById(R.id.tabText);
                        View viewG2 = gVarU.g();
                        Intrinsics.checkNotNull(viewG2);
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewG2.findViewById(R.id.sdv_image);
                        textView.setText(tabItemBean.getTitle());
                        simpleDraweeView.setImageURI(tabItemBean.getIco());
                        ckVar.f36966e.i(gVarU);
                    }
                }
            }
            w2.a(ckVar.f36966e);
            ckVar.f36966e.h(new TabLayout.d() { // from class: com.join.kotlin.ui.findgame.FindGameMainFragment$initTabs$1$2
                @Override // com.google.android.material.tabs.TabLayout.c
                public void onTabReselected(TabLayout.g tab) {
                    Intrinsics.checkNotNullParameter(tab, "tab");
                }

                @Override // com.google.android.material.tabs.TabLayout.c
                public void onTabSelected(TabLayout.g tab) {
                    Intrinsics.checkNotNullParameter(tab, "tab");
                    ckVar.f36967f.setCurrentItem(tab.k());
                    View viewG3 = tab.g();
                    View viewFindViewById = viewG3 != null ? viewG3.findViewById(R.id.v_1) : null;
                    View viewG4 = tab.g();
                    TextView textView2 = viewG4 != null ? (TextView) viewG4.findViewById(R.id.tabText) : null;
                    if (viewFindViewById != null) {
                        viewFindViewById.setVisibility(0);
                    }
                    if (textView2 != null) {
                        textView2.setTextColor(Color.parseColor("#FFFFFF"));
                    }
                }

                @Override // com.google.android.material.tabs.TabLayout.c
                public void onTabUnselected(TabLayout.g gVar) {
                    View viewG3;
                    View viewG4;
                    TextView textView2 = null;
                    View viewFindViewById = (gVar == null || (viewG4 = gVar.g()) == null) ? null : viewG4.findViewById(R.id.v_1);
                    if (gVar != null && (viewG3 = gVar.g()) != null) {
                        textView2 = (TextView) viewG3.findViewById(R.id.tabText);
                    }
                    if (viewFindViewById != null) {
                        viewFindViewById.setVisibility(8);
                    }
                    if (textView2 != null) {
                        textView2.setTextColor(Color.parseColor("#3B3B3B"));
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$12$lambda$11(FindGameMainFragment findGameMainFragment) {
        IntentUtil.getInstance().goSearchHintActivity(findGameMainFragment.getContext());
        return Unit.INSTANCE;
    }

    private final void selectedTab(int selIndex) {
        if (selIndex != -1) {
            List<TabItemBean> tabItems = getTabItems();
            if (tabItems != null) {
                for (TabItemBean tabItemBean : tabItems) {
                    Integer index = tabItemBean.getIndex();
                    if (index != null && index.intValue() == selIndex) {
                        this.selectedIndex = tabItemBean.getDisplay_index().intValue();
                    }
                }
            }
        } else {
            this.selectedIndex = 2;
        }
        if (this.selectedIndex == -1) {
            this.selectedIndex = 0;
        }
        ck ckVar = this.binding;
        if (ckVar != null) {
            ckVar.f36967f.setCurrentItem(this.selectedIndex);
            TabLayout.g gVarD = ckVar.f36966e.D(this.selectedIndex);
            if (gVarD != null) {
                gVarD.r();
            }
        }
    }

    static /* synthetic */ void selectedTab$default(FindGameMainFragment findGameMainFragment, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: selectedTab");
        }
        if ((i11 & 1) != 0) {
            i10 = -1;
        }
        findGameMainFragment.selectedTab(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List tabItems_delegate$lambda$1() {
        FoundGameTabBean foundGameTabBean;
        try {
            String strD = MApplication.f3182z.p().found_game_tab().d();
            if (!t2.i(strD) || (foundGameTabBean = (FoundGameTabBean) JsonMapper.getInstance().fromJson(strD, FoundGameTabBean.class)) == null) {
                return null;
            }
            return foundGameTabBean.getTitle_info();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Nullable
    public final e0 getAdapter() {
        return this.adapter;
    }

    @Nullable
    public final ck getBinding() {
        return this.binding;
    }

    @Nullable
    public final a0 getCommonWebviewFragment() {
        return this.commonWebviewFragment;
    }

    public final int getDisplayIndex(int display) {
        List<TabItemBean> tabItems = getTabItems();
        if (tabItems == null) {
            return 0;
        }
        for (TabItemBean tabItemBean : tabItems) {
            Integer index = tabItemBean.getIndex();
            if (index != null && index.intValue() == display) {
                Integer display_index = tabItemBean.getDisplay_index();
                Intrinsics.checkNotNullExpressionValue(display_index, "getDisplay_index(...)");
                return display_index.intValue();
            }
        }
        return 0;
    }

    @NotNull
    public final ArrayList<Fragment> getFragments() {
        return this.fragments;
    }

    public final int getIndex(int index) {
        List<TabItemBean> tabItems = getTabItems();
        if (tabItems == null) {
            return 0;
        }
        for (TabItemBean tabItemBean : tabItems) {
            Integer display_index = tabItemBean.getDisplay_index();
            if (display_index != null && display_index.intValue() == index) {
                Integer index2 = tabItemBean.getIndex();
                Intrinsics.checkNotNullExpressionValue(index2, "getIndex(...)");
                return index2.intValue();
            }
        }
        return 0;
    }

    @Nullable
    public final v4 getRankingFragment() {
        return this.rankingFragment;
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Nullable
    public final List<TabItemBean> getTabItems() {
        return (List) this.tabItems.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        ConstraintLayout root;
        List<TabItemBean> listSortedWith;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        ck ckVarInflate = ck.inflate(inflater, container, false);
        this.binding = ckVarInflate;
        if (ckVarInflate != null) {
            ckVarInflate.f36965d.getLayoutParams().height = com.join.android.app.common.utils.q.v(getContext());
        }
        ArrayList arrayList = new ArrayList();
        List<TabItemBean> tabItems = getTabItems();
        if (tabItems != null && (listSortedWith = CollectionsKt___CollectionsKt.sortedWith(tabItems, new Comparator() { // from class: com.join.kotlin.ui.findgame.FindGameMainFragment$onCreateView$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                return ComparisonsKt__ComparisonsKt.compareValues(((TabItemBean) t10).getDisplay_index(), ((TabItemBean) t11).getDisplay_index());
            }
        })) != null) {
            for (TabItemBean tabItemBean : listSortedWith) {
                Integer index = tabItemBean.getIndex();
                if (index != null && index.intValue() == 0) {
                    this.fragments.add(new FindGameChoiceFragment());
                    arrayList.add(tabItemBean.getTitle());
                } else if (index != null && index.intValue() == 1) {
                    v4 v4Var = new v4();
                    this.rankingFragment = v4Var;
                    this.fragments.add(v4Var);
                    arrayList.add(tabItemBean.getTitle());
                } else if (index != null && index.intValue() == 2) {
                    this.fragments.add(new FindGameClassfyFragment());
                    arrayList.add(tabItemBean.getTitle());
                } else if (index != null && index.intValue() == 3) {
                    this.fragments.add(new FindGameGamelistRankMainFragment());
                    arrayList.add(tabItemBean.getTitle());
                } else if (index != null && index.intValue() == 4) {
                    r1 r1Var = new r1();
                    Bundle arguments = getArguments();
                    String string = arguments != null ? arguments.getString("currGameId") : null;
                    Bundle bundle = new Bundle();
                    bundle.putString("gameId", string);
                    r1Var.setArguments(bundle);
                    this.fragments.add(r1Var);
                    arrayList.add(tabItemBean.getTitle());
                } else if (index != null && index.intValue() == 5) {
                    a0 a0Var = new a0();
                    this.commonWebviewFragment = a0Var;
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("url", tabItemBean.getH5_url());
                    a0Var.setArguments(bundle2);
                    this.fragments.add(a0Var);
                    arrayList.add(tabItemBean.getTitle());
                }
            }
        }
        initTabs();
        e0 e0Var = new e0(getChildFragmentManager(), this.fragments, arrayList);
        this.adapter = e0Var;
        final ck ckVar = this.binding;
        if (ckVar != null) {
            ckVar.f36967f.setAdapter(e0Var);
            ckVar.f36967f.setOffscreenPageLimit(this.fragments.size());
            e0 e0Var2 = this.adapter;
            if (e0Var2 != null) {
                e0Var2.notifyDataSetChanged();
            }
            ImageView search = ckVar.f36964c;
            Intrinsics.checkNotNullExpressionValue(search, "search");
            CommonExtKt.onClick(search, new Function0() { // from class: com.join.kotlin.ui.findgame.q
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FindGameMainFragment.onCreateView$lambda$12$lambda$11(this.f49116b);
                }
            });
            ckVar.f36967f.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.findgame.FindGameMainFragment$onCreateView$4$2
                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrollStateChanged(int state) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageSelected(int position) {
                    TabLayout.g gVarD = ckVar.f36966e.D(position);
                    if (gVarD != null) {
                        gVarD.r();
                    }
                }
            });
            setSelectedTab(getArguments());
        }
        ck ckVar2 = this.binding;
        return (ckVar2 == null || (root = ckVar2.getRoot()) == null) ? new View(getContext()) : root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        int index = getIndex(this.selectedIndex);
        if (hidden) {
            Fragment fragment = this.fragments.get(index);
            Intrinsics.checkNotNullExpressionValue(fragment, "get(...)");
            Fragment fragment2 = fragment;
            if (fragment2 instanceof p1) {
                ((p1) fragment2).Y();
                return;
            }
            return;
        }
        Fragment fragment3 = this.fragments.get(index);
        Intrinsics.checkNotNullExpressionValue(fragment3, "get(...)");
        Fragment fragment4 = fragment3;
        if (fragment4 instanceof p1) {
            ((p1) fragment4).Z();
        }
    }

    public final void setAdapter(@Nullable e0 e0Var) {
        this.adapter = e0Var;
    }

    public final void setBinding(@Nullable ck ckVar) {
        this.binding = ckVar;
    }

    public final void setCommonWebviewFragment(@Nullable a0 a0Var) {
        this.commonWebviewFragment = a0Var;
    }

    public final void setFragments(@NotNull ArrayList<Fragment> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.fragments = arrayList;
    }

    public final void setRankingFragment(@Nullable v4 v4Var) {
        this.rankingFragment = v4Var;
    }

    public final void setSelectedIndex(int i10) {
        this.selectedIndex = i10;
    }

    public void setSelectedTab(@Nullable Bundle arguments) {
        if (arguments != null) {
            v4 v4Var = this.rankingFragment;
            if (v4Var != null) {
                v4Var.j0(arguments.getString("currTabTagId"));
            }
            selectedTab(arguments.getInt("currTabNumber"));
        }
    }
}
