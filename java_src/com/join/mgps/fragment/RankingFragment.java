package com.join.mgps.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.customview.ViewPagerCompat;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RankingMainDataBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: renamed from: com.join.mgps.fragment.u4, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_rank)
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\f\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010-\u001a\u00020?2\b\u0010\"\u001a\u0004\u0018\u00010\u001dJ\b\u0010@\u001a\u00020?H\u0007J\u0016\u0010A\u001a\u00020?2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002000/H\u0017J \u0010C\u001a\u00020?2\u000e\u0010D\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0/2\u0006\u0010E\u001a\u00020&H\u0002J\u0010\u0010F\u001a\u00020?2\u0006\u0010G\u001a\u00020&H\u0002J\b\u0010H\u001a\u00020?H\u0017J\b\u0010I\u001a\u00020?H\u0002J\b\u0010J\u001a\u00020?H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001f\"\u0004\b$\u0010!R\u001a\u0010%\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001a\u0010+\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010(\"\u0004\b-\u0010*R\u0016\u0010.\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/X\u0082\u000e¢\u0006\u0002\n\u0000R.\u00101\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010302j\n\u0012\u0006\u0012\u0004\u0018\u000103`4X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>¨\u0006K"}, d2 = {"Lcom/join/mgps/fragment/RankingFragment;", "Lcom/join/mgps/fragment/BaseFragment;", "<init>", "()V", "prefDef", "Lcom/join/mgps/pref/PrefDef_;", "getPrefDef", "()Lcom/join/mgps/pref/PrefDef_;", "setPrefDef", "(Lcom/join/mgps/pref/PrefDef_;)V", "tablayout", "Lcom/google/android/material/tabs/TabLayout;", "getTablayout", "()Lcom/google/android/material/tabs/TabLayout;", "setTablayout", "(Lcom/google/android/material/tabs/TabLayout;)V", "viewPager", "Lcom/join/mgps/customview/ViewPagerCompat;", "getViewPager", "()Lcom/join/mgps/customview/ViewPagerCompat;", "setViewPager", "(Lcom/join/mgps/customview/ViewPagerCompat;)V", "mPagerAdapter", "Lcom/join/mgps/customview/NavigationAdapter;", "getMPagerAdapter", "()Lcom/join/mgps/customview/NavigationAdapter;", "setMPagerAdapter", "(Lcom/join/mgps/customview/NavigationAdapter;)V", com.kuaishou.weapon.p0.t.f74888m, "", "getM", "()Ljava/lang/String;", "setM", "(Ljava/lang/String;)V", "currTabTagId", "getCurrTabTagId", "setCurrTabTagId", "selectedtab", "", "getSelectedtab", "()I", "setSelectedtab", "(I)V", "tabTagId", "getTabTagId", "setTabTagId", "titleList", "", "Lcom/join/kotlin/ui/findgame/data/TagData;", "fragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "getFragments", "()Ljava/util/ArrayList;", "setFragments", "(Ljava/util/ArrayList;)V", "parentExtBean", "Lcom/join/mgps/dto/ExtBean;", "getParentExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setParentExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "", "afterViews", "updateViewpagerAndTab", "title", "initTabs", "tabItems", "selIdx", "notifyTabSelected", "position", "loadTitle", "loadDefaultData", "lazyLoad", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRankingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankingFragment.kt\ncom/join/mgps/fragment/RankingFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,274:1\n1878#2,2:275\n1880#2:281\n470#3:277\n470#3:278\n470#3:279\n470#3:280\n*S KotlinDebug\n*F\n+ 1 RankingFragment.kt\ncom/join/mgps/fragment/RankingFragment\n*L\n157#1:275,2\n157#1:281\n164#1:277\n165#1:278\n167#1:279\n168#1:280\n*E\n"})
public class RankingFragment extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PrefDef_ f71100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    public TabLayout f71101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    public ViewPagerCompat f71102e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private com.join.mgps.customview.e0 f71103f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private String f71104g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private String f71105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f71106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f71107j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private List<TagData> f71108k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NotNull
    private ArrayList<Fragment> f71109l = new ArrayList<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private ExtBean f71110m;

    /* JADX INFO: renamed from: com.join.mgps.fragment.u4$a */
    @SourceDebugExtension({"SMAP\nRankingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankingFragment.kt\ncom/join/mgps/fragment/RankingFragment$initTabs$1$2\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,274:1\n470#2:275\n470#2:276\n470#2:277\n470#2:278\n*S KotlinDebug\n*F\n+ 1 RankingFragment.kt\ncom/join/mgps/fragment/RankingFragment$initTabs$1$2\n*L\n179#1:275\n180#1:276\n185#1:277\n186#1:278\n*E\n"})
    public static final class a implements TabLayout.d {
        a() {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g tab) {
            Intrinsics.checkNotNullParameter(tab, "tab");
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabSelected(TabLayout.g tab) {
            Intrinsics.checkNotNullParameter(tab, "tab");
            RankingFragment.this.Y().setCurrentItem(tab.k());
            View viewG = tab.g();
            TextView textView = viewG != null ? (TextView) viewG.findViewById(R.id.tabText) : null;
            if (textView != null) {
                textView.setTextColor(Color.parseColor("#FF7300"));
            }
            if (textView != null) {
                textView.setBackgroundColor(Color.parseColor("#FFE6D2"));
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g gVar) {
            View viewG;
            TextView textView = (gVar == null || (viewG = gVar.g()) == null) ? null : (TextView) viewG.findViewById(R.id.tabText);
            if (textView != null) {
                textView.setTextColor(Color.parseColor("#999999"));
            }
            if (textView != null) {
                textView.setBackgroundColor(Color.parseColor("#F5F5F5"));
            }
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.fragment.u4$b */
    public static final class b implements Callback<ResponseModel<RankingMainDataBean>> {
        b() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<RankingMainDataBean>> call, Throwable t10) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(t10, "t");
            RankingFragment.this.a0();
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<RankingMainDataBean>> call, Response<ResponseModel<RankingMainDataBean>> response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            ResponseModel<RankingMainDataBean> responseModelBody = response.body();
            if (responseModelBody != null && responseModelBody.getData() != null) {
                RankingMainDataBean data = responseModelBody.getData();
                Intrinsics.checkNotNull(data);
                if (data.getRank_type() != null) {
                    RankingMainDataBean data2 = responseModelBody.getData();
                    Intrinsics.checkNotNull(data2);
                    List<TagData> rank_type = data2.getRank_type();
                    Intrinsics.checkNotNullExpressionValue(rank_type, "getRank_type(...)");
                    if (!rank_type.isEmpty()) {
                        RankingMainDataBean data3 = responseModelBody.getData();
                        Intrinsics.checkNotNull(data3);
                        String jsonString = JsonMapper.toJsonString(data3.getRank_type());
                        if (!Intrinsics.areEqual(RankingFragment.this.getF71104g(), jsonString) && RankingFragment.this.U() != null) {
                            PrefDef_ prefDef_U = RankingFragment.this.U();
                            Intrinsics.checkNotNull(prefDef_U);
                            prefDef_U.rankingMenu2().g(jsonString);
                        }
                        RankingFragment rankingFragment = RankingFragment.this;
                        RankingMainDataBean data4 = responseModelBody.getData();
                        Intrinsics.checkNotNull(data4);
                        List<TagData> rank_type2 = data4.getRank_type();
                        Intrinsics.checkNotNullExpressionValue(rank_type2, "getRank_type(...)");
                        rankingFragment.m0(rank_type2);
                        return;
                    }
                }
            }
            RankingFragment.this.a0();
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.fragment.u4$c */
    public static final class c implements ViewPager.OnPageChangeListener {
        c() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float f10, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            TabLayout.g gVarD = RankingFragment.this.X().D(i10);
            if (gVarD != null) {
                gVarD.r();
            }
        }
    }

    private final void Z(List<String> list, int i10) {
        TabLayout tabLayoutX = X();
        if (tabLayoutX != null) {
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                String str = (String) obj;
                TabLayout.g gVarU = tabLayoutX.I().u(R.layout.layout_custom_tab_find_rank);
                Intrinsics.checkNotNullExpressionValue(gVarU, "setCustomView(...)");
                if (gVarU.g() != null) {
                    View viewG = gVarU.g();
                    Intrinsics.checkNotNull(viewG);
                    TextView textView = (TextView) viewG.findViewById(R.id.tabText);
                    textView.setText(String.valueOf(str));
                    if (i10 == i11) {
                        textView.setTextColor(Color.parseColor("#FF7300"));
                        textView.setBackgroundColor(Color.parseColor("#FFE6D2"));
                    } else {
                        textView.setTextColor(Color.parseColor("#999999"));
                        textView.setBackgroundColor(Color.parseColor("#F5F5F5"));
                    }
                    tabLayoutX.i(gVarU);
                }
                i11 = i12;
            }
            com.join.mgps.Util.w2.a(tabLayoutX);
            tabLayoutX.h(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0() {
        if (TextUtils.isEmpty(this.f71104g)) {
            this.f71104g = "[{\"id\":1,\"title\":\"网游榜\"},{\"id\":2,\"title\":\"单机榜\"},{\"id\":3,\"title\":\"模拟器榜\"}]";
        }
        List<TagData> list = (List) JsonMapper.getInstance().fromJson(this.f71104g, JsonMapper.getInstance().createCollectionType(List.class, TagData.class));
        if (list.isEmpty()) {
            list = (List) JsonMapper.getInstance().fromJson("[{\"id\":1,\"title\":\"网游榜\"},{\"id\":2,\"title\":\"单机榜\"},{\"id\":3,\"title\":\"模拟器榜\"}]", JsonMapper.getInstance().createCollectionType(List.class, TagData.class));
        }
        Intrinsics.checkNotNull(list);
        m0(list);
    }

    private final void c0(int i10) {
        Iterator<Fragment> it2 = this.f71109l.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
        while (it2.hasNext()) {
            ActivityResultCaller activityResultCaller = (Fragment) it2.next();
            if (activityResultCaller instanceof com.join.mgps.callbacks.q) {
                ((com.join.mgps.callbacks.q) activityResultCaller).onPageVisible(i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(RankingFragment rankingFragment) {
        rankingFragment.c0(rankingFragment.f71106i);
    }

    @Nullable
    /* JADX INFO: renamed from: Q, reason: from getter */
    public final String getF71105h() {
        return this.f71105h;
    }

    @Nullable
    /* JADX INFO: renamed from: R, reason: from getter */
    public final String getF71104g() {
        return this.f71104g;
    }

    @Nullable
    /* JADX INFO: renamed from: S, reason: from getter */
    public final com.join.mgps.customview.e0 getF71103f() {
        return this.f71103f;
    }

    @NotNull
    public final PrefDef_ U() {
        PrefDef_ prefDef_ = this.f71100c;
        if (prefDef_ != null) {
            return prefDef_;
        }
        Intrinsics.throwUninitializedPropertyAccessException("prefDef");
        return null;
    }

    /* JADX INFO: renamed from: V, reason: from getter */
    public final int getF71106i() {
        return this.f71106i;
    }

    /* JADX INFO: renamed from: W, reason: from getter */
    public final int getF71107j() {
        return this.f71107j;
    }

    @NotNull
    public final TabLayout X() {
        TabLayout tabLayout = this.f71101d;
        if (tabLayout != null) {
            return tabLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tablayout");
        return null;
    }

    @NotNull
    public final ViewPagerCompat Y() {
        ViewPagerCompat viewPagerCompat = this.f71102e;
        if (viewPagerCompat != null) {
            return viewPagerCompat;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewPager");
        return null;
    }

    @AfterViews
    public final void afterViews() {
        g0(new PrefDef_(requireActivity()));
        this.f71104g = U().rankingMenu2().d();
        if (com.join.mgps.Util.t2.i(this.f71105h)) {
            try {
                String str = this.f71105h;
                Intrinsics.checkNotNull(str);
                this.f71107j = Integer.parseInt(str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f71110m = (ExtBean) arguments.getSerializable("parentExtBean");
        }
        b0();
    }

    @Background
    public void b0() {
        RequestModel requestModel = new RequestModel(getActivity());
        LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
        luckHistoryrequest.setType(0);
        luckHistoryrequest.setPage(1);
        luckHistoryrequest.setUid(AccountUtil_.getInstance_(getActivity()).getAccountData().getUid());
        requestModel.setArgs(luckHistoryrequest);
        com.join.mgps.rpc.impl.i.P0().N0().F1(requestModel.makeSign()).enqueue(new b());
    }

    public final void d0(@Nullable String str) {
        this.f71105h = str;
    }

    public final void e0(@Nullable String str) {
        this.f71104g = str;
    }

    public final void f0(@Nullable com.join.mgps.customview.e0 e0Var) {
        this.f71103f = e0Var;
    }

    public final void g0(@NotNull PrefDef_ prefDef_) {
        Intrinsics.checkNotNullParameter(prefDef_, "<set-?>");
        this.f71100c = prefDef_;
    }

    @NotNull
    public final ArrayList<Fragment> getFragments() {
        return this.f71109l;
    }

    @Nullable
    /* JADX INFO: renamed from: getParentExtBean, reason: from getter */
    public final ExtBean getF71110m() {
        return this.f71110m;
    }

    public final void h0(int i10) {
        this.f71106i = i10;
    }

    public final void i0(int i10) {
        this.f71107j = i10;
    }

    public final void j0(@Nullable String str) {
        this.f71105h = str;
        if (com.join.mgps.Util.t2.i(str)) {
            try {
                Intrinsics.checkNotNull(str);
                this.f71107j = Integer.parseInt(str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        List<TagData> list = this.f71108k;
        if (list != null) {
            Iterator<TagData> it2 = list.iterator();
            int i10 = 0;
            while (it2.hasNext()) {
                if (it2.next().getId() == this.f71107j) {
                    this.f71106i = i10;
                    break;
                }
                i10++;
            }
            Y().setCurrentItem(this.f71106i);
        }
    }

    public final void k0(@NotNull TabLayout tabLayout) {
        Intrinsics.checkNotNullParameter(tabLayout, "<set-?>");
        this.f71101d = tabLayout;
    }

    public final void l0(@NotNull ViewPagerCompat viewPagerCompat) {
        Intrinsics.checkNotNullParameter(viewPagerCompat, "<set-?>");
        this.f71102e = viewPagerCompat;
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
        if (this.f71103f == null || Y() == null || !isVisible()) {
            return;
        }
        com.join.mgps.customview.e0 e0Var = this.f71103f;
        Intrinsics.checkNotNull(e0Var);
        ViewPagerCompat viewPagerCompatY = Y();
        Intrinsics.checkNotNull(viewPagerCompatY);
        Fragment item = e0Var.getItem(viewPagerCompatY.getCurrentItem());
        Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
        if (item instanceof z4) {
            ((z4) item).lazyLoad();
        }
    }

    @UiThread
    public void m0(@NotNull List<TagData> title) {
        Intrinsics.checkNotNullParameter(title, "title");
        try {
            this.f71109l.clear();
            ArrayList arrayList = new ArrayList();
            this.f71108k = title;
            int i10 = 0;
            for (TagData tagData : title) {
                this.f71109l.add(z4.m0(tagData.getId() + "", tagData.getTitle(), i10, this.f71110m));
                arrayList.add(tagData.getTitle());
                if (tagData.getId() == this.f71107j) {
                    this.f71106i = i10;
                }
                i10++;
            }
            this.f71103f = new com.join.mgps.customview.e0(getChildFragmentManager(), this.f71109l, arrayList);
            Y().setAdapter(this.f71103f);
            Y().setOffscreenPageLimit(3);
            if (com.join.mgps.Util.t2.i(this.f71105h)) {
                Y().setCurrentItem(this.f71106i);
            } else {
                Bundle arguments = getArguments();
                if (arguments != null) {
                    this.f71106i = arguments.getInt("table", 0);
                    Y().setCurrentItem(this.f71106i);
                }
            }
            Z(arrayList, this.f71106i);
            Y().addOnPageChangeListener(new c());
            this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.t4
                @Override // java.lang.Runnable
                public final void run() {
                    RankingFragment.n0(this.f70986b);
                }
            }, 800L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void setFragments(@NotNull ArrayList<Fragment> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.f71109l = arrayList;
    }

    public final void setParentExtBean(@Nullable ExtBean extBean) {
        this.f71110m = extBean;
    }
}
