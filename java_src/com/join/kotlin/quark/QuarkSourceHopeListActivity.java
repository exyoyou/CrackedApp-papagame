package com.join.kotlin.quark;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.h4;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.quark.callback.IChangeSortCallback;
import com.join.kotlin.quark.pop.SortPopWindow;
import com.join.kotlin.quark.proxy.SourceHopeClickProxy;
import com.join.kotlin.quark.viewmodel.SourceHopeViewModel;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J\b\u0010-\u001a\u00020*H\u0014J\b\u0010.\u001a\u00020*H\u0016J\b\u0010/\u001a\u00020*H\u0016J\b\u00100\u001a\u00020*H\u0016J\b\u00101\u001a\u00020*H\u0016J\u0010\u00102\u001a\u00020*2\u0006\u00103\u001a\u000204H\u0002J\u0015\u00105\u001a\u00020*2\b\u00106\u001a\u0004\u0018\u00010#¢\u0006\u0002\u0010'J \u00107\u001a\u00020*2\u0016\u00108\u001a\u0012\u0012\u0004\u0012\u0002090\u0015j\b\u0012\u0004\u0012\u000209`\u0017H\u0002J\u0010\u0010:\u001a\u00020*2\u0006\u0010;\u001a\u00020<H\u0002J\u000f\u0010=\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0002\u0010%J\b\u0010>\u001a\u00020*H\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R*\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\b\u0012\u0004\u0012\u00020\u0016`\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001e\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u0010\n\u0002\u0010(\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006?"}, d2 = {"Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityQuarkSourceHopeListBinding;", "Lcom/join/kotlin/quark/proxy/SourceHopeClickProxy;", "Lcom/join/kotlin/quark/callback/IChangeSortCallback;", "<init>", "()V", "extBean", "Lcom/join/mgps/dto/ExtBean;", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "adapter", "Lcom/join/mgps/adapter/FragmentPagerAdapter;", "getAdapter", "()Lcom/join/mgps/adapter/FragmentPagerAdapter;", "setAdapter", "(Lcom/join/mgps/adapter/FragmentPagerAdapter;)V", "fragments", "Ljava/util/ArrayList;", "Lcom/join/mgps/adapter/FragmentPagerAdapter$Item;", "Lkotlin/collections/ArrayList;", "getFragments", "()Ljava/util/ArrayList;", "setFragments", "(Ljava/util/ArrayList;)V", "sortPopWindow", "Lcom/join/kotlin/quark/pop/SortPopWindow;", "getSortPopWindow", "()Lcom/join/kotlin/quark/pop/SortPopWindow;", "setSortPopWindow", "(Lcom/join/kotlin/quark/pop/SortPopWindow;)V", "statusState1", "", "getStatusState1", "()Ljava/lang/Integer;", "setStatusState1", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "createObserver", "onBackClick", "onWishCreateClick", "onSortTypeClick", "showSortPop", "view", "Landroid/view/View;", "changeSort", "status", "getView", "items", "", "setStatus", "tab", "Lcom/google/android/material/tabs/TabLayout$Tab;", "getStatusState", "onStatusChanged", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nQuarkSourceHopeListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuarkSourceHopeListActivity.kt\ncom/join/kotlin/quark/QuarkSourceHopeListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n1869#2,2:246\n*S KotlinDebug\n*F\n+ 1 QuarkSourceHopeListActivity.kt\ncom/join/kotlin/quark/QuarkSourceHopeListActivity\n*L\n173#1:246,2\n*E\n"})
public final class QuarkSourceHopeListActivity extends BaseVmDbActivity<SourceHopeViewModel, h4> implements SourceHopeClickProxy, IChangeSortCallback {

    @Nullable
    private com.join.mgps.adapter.h0 adapter;

    @Nullable
    private ExtBean extBean;

    @NotNull
    private ArrayList<com.join.mgps.adapter.h0.a> fragments = new ArrayList<>();

    @Nullable
    private SortPopWindow sortPopWindow;

    @Nullable
    private Integer statusState1;

    private final void getView(ArrayList<String> items) {
        View viewFindViewById;
        View viewG;
        View viewFindViewById2;
        View viewG2;
        if (getMDatabind().f39150c.getTabCount() == 0) {
            return;
        }
        int tabCount = getMDatabind().f39150c.getTabCount();
        int i10 = 0;
        while (true) {
            viewFindViewById = null;
            if (i10 >= tabCount) {
                break;
            }
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.layout_source_share_tab_item, (ViewGroup) null);
            Intrinsics.checkNotNullExpressionValue(viewInflate, "inflate(...)");
            View viewFindViewById3 = viewInflate.findViewById(R.id.tv_name);
            Intrinsics.checkNotNull(viewFindViewById3, "null cannot be cast to non-null type android.widget.TextView");
            ((TextView) viewFindViewById3).setText(items.get(i10));
            TabLayout.g gVarD = getMDatabind().f39150c.D(i10);
            if (gVarD != null) {
                gVarD.v(viewInflate);
            }
            i10++;
        }
        TabLayout.g gVarD2 = getMDatabind().f39150c.D(0);
        if (gVarD2 != null && (viewG2 = gVarD2.g()) != null) {
            viewFindViewById = viewG2.findViewById(R.id.tv_name);
        }
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) viewFindViewById;
        textView.setTextColor(-16777216);
        textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
        textView.setTypeface(textView.getTypeface(), 1);
        TabLayout.g gVarD3 = getMDatabind().f39150c.D(0);
        if (gVarD3 == null || (viewG = gVarD3.g()) == null || (viewFindViewById2 = viewG.findViewById(R.id.iv_ind)) == null) {
            return;
        }
        viewFindViewById2.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setStatus(TabLayout.g gVar) {
        View viewG;
        if (getMDatabind().f39150c.getTabCount() == 0) {
            return;
        }
        int tabCount = getMDatabind().f39150c.getTabCount();
        for (int i10 = 0; i10 < tabCount; i10++) {
            TabLayout.g gVarD = getMDatabind().f39150c.D(i10);
            if (gVarD != null && (viewG = gVarD.g()) != null) {
                if (i10 == gVar.k()) {
                    viewG.findViewById(R.id.iv_ind).setVisibility(0);
                    View viewFindViewById = viewG.findViewById(R.id.tv_name);
                    Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
                    TextView textView = (TextView) viewFindViewById;
                    textView.setTextColor(-16777216);
                    textView.setTypeface(textView.getTypeface(), 1);
                    textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
                } else {
                    viewG.findViewById(R.id.iv_ind).setVisibility(4);
                    View viewFindViewById2 = viewG.findViewById(R.id.tv_name);
                    Intrinsics.checkNotNull(viewFindViewById2, "null cannot be cast to non-null type android.widget.TextView");
                    TextView textView2 = (TextView) viewFindViewById2;
                    textView2.setTextColor(Color.parseColor("#000000"));
                    textView2.setTypeface(textView2.getTypeface(), 0);
                    textView2.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp28));
                }
            }
        }
    }

    private final void showSortPop(View view) {
        SortPopWindow sortPopWindow = this.sortPopWindow;
        if (sortPopWindow != null) {
            Intrinsics.checkNotNull(sortPopWindow);
            if (sortPopWindow.isShowing()) {
                SortPopWindow sortPopWindow2 = this.sortPopWindow;
                Intrinsics.checkNotNull(sortPopWindow2);
                sortPopWindow2.dismiss();
            }
        }
        if (this.sortPopWindow == null) {
            this.sortPopWindow = new SortPopWindow(this, -2, -2);
        }
        SortPopWindow sortPopWindow3 = this.sortPopWindow;
        if (sortPopWindow3 != null) {
            Intrinsics.checkNotNull(sortPopWindow3);
            if (sortPopWindow3.getContentView() != null) {
                SortPopWindow sortPopWindow4 = this.sortPopWindow;
                Intrinsics.checkNotNull(sortPopWindow4);
                sortPopWindow4.getContentView().measure(0, 0);
                SortPopWindow sortPopWindow5 = this.sortPopWindow;
                Intrinsics.checkNotNull(sortPopWindow5);
                int measuredHeight = sortPopWindow5.getContentView().getMeasuredHeight();
                SortPopWindow sortPopWindow6 = this.sortPopWindow;
                Intrinsics.checkNotNull(sortPopWindow6);
                sortPopWindow6.setHeight(measuredHeight);
            }
        }
        SortPopWindow sortPopWindow7 = this.sortPopWindow;
        Intrinsics.checkNotNull(sortPopWindow7);
        sortPopWindow7.showAsDropDown(view, 0, -((int) getResources().getDimension(R.dimen.wdp6)));
        SortPopWindow sortPopWindow8 = this.sortPopWindow;
        Intrinsics.checkNotNull(sortPopWindow8);
        sortPopWindow8.getBtnSxz().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.quark.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                QuarkSourceHopeListActivity.showSortPop$lambda$5(this.f48909b, view2);
            }
        });
        SortPopWindow sortPopWindow9 = this.sortPopWindow;
        Intrinsics.checkNotNull(sortPopWindow9);
        sortPopWindow9.getBtnYsx().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.quark.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                QuarkSourceHopeListActivity.showSortPop$lambda$6(this.f48911b, view2);
            }
        });
        SortPopWindow sortPopWindow10 = this.sortPopWindow;
        Intrinsics.checkNotNull(sortPopWindow10);
        sortPopWindow10.getBtnAll().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.quark.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                QuarkSourceHopeListActivity.showSortPop$lambda$7(this.f48913b, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSortPop$lambda$5(QuarkSourceHopeListActivity quarkSourceHopeListActivity, View view) {
        quarkSourceHopeListActivity.changeSort(0);
        quarkSourceHopeListActivity.getMDatabind().f39152e.setText("实现中");
        SortPopWindow sortPopWindow = quarkSourceHopeListActivity.sortPopWindow;
        Intrinsics.checkNotNull(sortPopWindow);
        sortPopWindow.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSortPop$lambda$6(QuarkSourceHopeListActivity quarkSourceHopeListActivity, View view) {
        quarkSourceHopeListActivity.changeSort(1);
        quarkSourceHopeListActivity.getMDatabind().f39152e.setText("已实现");
        SortPopWindow sortPopWindow = quarkSourceHopeListActivity.sortPopWindow;
        Intrinsics.checkNotNull(sortPopWindow);
        sortPopWindow.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSortPop$lambda$7(QuarkSourceHopeListActivity quarkSourceHopeListActivity, View view) {
        quarkSourceHopeListActivity.changeSort(null);
        quarkSourceHopeListActivity.getMDatabind().f39152e.setText(LocalGameActivity.ALL);
        SortPopWindow sortPopWindow = quarkSourceHopeListActivity.sortPopWindow;
        Intrinsics.checkNotNull(sortPopWindow);
        sortPopWindow.dismiss();
    }

    public final void changeSort(@Nullable Integer status) {
        this.statusState1 = status;
        Iterator<T> it2 = this.fragments.iterator();
        while (it2.hasNext()) {
            ActivityResultCaller activityResultCaller = ((com.join.mgps.adapter.h0.a) it2.next()).f62228c;
            if (activityResultCaller instanceof IChangeSortCallback) {
                Intrinsics.checkNotNull(activityResultCaller, "null cannot be cast to non-null type com.join.kotlin.quark.callback.IChangeSortCallback");
                ((IChangeSortCallback) activityResultCaller).onStatusChanged();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
        SourceHopeFragment sourceHopeFragment = new SourceHopeFragment();
        Bundle bundle = new Bundle();
        bundle.putString("_keyword", ((SourceHopeViewModel) getMViewModel()).getKeyword());
        bundle.putInt("_sortType", 2);
        sourceHopeFragment.setArguments(bundle);
        this.fragments.add(new com.join.mgps.adapter.h0.a(((SourceHopeViewModel) getMViewModel()).getTabItems().get(0), sourceHopeFragment));
        SourceHopeFragment sourceHopeFragment2 = new SourceHopeFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putString("_keyword", ((SourceHopeViewModel) getMViewModel()).getKeyword());
        bundle2.putInt("_sortType", 1);
        sourceHopeFragment2.setArguments(bundle2);
        this.fragments.add(new com.join.mgps.adapter.h0.a(((SourceHopeViewModel) getMViewModel()).getTabItems().get(1), sourceHopeFragment2));
        SourceHopeFragment sourceHopeFragment3 = new SourceHopeFragment();
        Bundle bundle3 = new Bundle();
        bundle3.putString("_keyword", ((SourceHopeViewModel) getMViewModel()).getKeyword());
        bundle3.putInt("_sortType", 3);
        sourceHopeFragment3.setArguments(bundle3);
        this.fragments.add(new com.join.mgps.adapter.h0.a(((SourceHopeViewModel) getMViewModel()).getTabItems().get(2), sourceHopeFragment3));
        com.join.mgps.adapter.h0 h0Var = this.adapter;
        if (h0Var != null) {
            h0Var.e(this.fragments);
            h0Var.notifyDataSetChanged();
        }
        getView(((SourceHopeViewModel) getMViewModel()).getTabItems());
        getMDatabind().f39150c.h(new TabLayout.d() { // from class: com.join.kotlin.quark.QuarkSourceHopeListActivity.createObserver.2
            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabReselected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                QuarkSourceHopeListActivity.this.setStatus(tab);
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabSelected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                QuarkSourceHopeListActivity.this.setStatus(tab);
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabUnselected(TabLayout.g tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
            }
        });
    }

    @Nullable
    public final com.join.mgps.adapter.h0 getAdapter() {
        return this.adapter;
    }

    @Nullable
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @NotNull
    public final ArrayList<com.join.mgps.adapter.h0.a> getFragments() {
        return this.fragments;
    }

    @Nullable
    public final SortPopWindow getSortPopWindow() {
        return this.sortPopWindow;
    }

    @Override // com.join.kotlin.quark.callback.IChangeSortCallback
    @Nullable
    /* JADX INFO: renamed from: getStatusState, reason: from getter */
    public Integer getStatusState1() {
        return this.statusState1;
    }

    @Nullable
    public final Integer getStatusState1() {
        return this.statusState1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        Intent intent = getIntent();
        if (intent != null) {
            if (this.extBean != null) {
                com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(this);
                Event event = Event.visitPCPageZone;
                Ext ext = new Ext();
                ExtBean extBean = this.extBean;
                Intrinsics.checkNotNull(extBean);
                tVarL.R1(event, ext.setFrom(extBean.getFrom()));
            }
            ((SourceHopeViewModel) getMViewModel()).setKeyword(intent.getStringExtra("_keyword"));
        }
        getMDatabind().u((SourceHopeViewModel) getMViewModel());
        this.adapter = new com.join.mgps.adapter.h0(getSupportFragmentManager());
        getMDatabind().f39153f.setAdapter(this.adapter);
        getMDatabind().f39150c.setupWithViewPager(getMDatabind().f39153f);
        getMDatabind().u((SourceHopeViewModel) getMViewModel());
        getMDatabind().t(this);
    }

    @Override // com.join.kotlin.quark.proxy.SourceHopeClickProxy
    public void onBackClick() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    @Override // com.join.kotlin.quark.proxy.SourceHopeClickProxy
    public void onSortTypeClick() {
        TextView tvSort = getMDatabind().f39152e;
        Intrinsics.checkNotNullExpressionValue(tvSort, "tvSort");
        showSortPop(tvSort);
    }

    @Override // com.join.kotlin.quark.callback.IChangeSortCallback
    public void onStatusChanged() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.proxy.SourceHopeClickProxy
    public void onWishCreateClick() {
        Intent intent = new Intent(this, (Class<?>) CreateSourceHopeActivity.class);
        intent.putExtra("_keyword", ((SourceHopeViewModel) getMViewModel()).getKeyword());
        startActivity(intent);
    }

    public final void setAdapter(@Nullable com.join.mgps.adapter.h0 h0Var) {
        this.adapter = h0Var;
    }

    public final void setExtBean(@Nullable ExtBean extBean) {
        this.extBean = extBean;
    }

    public final void setFragments(@NotNull ArrayList<com.join.mgps.adapter.h0.a> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.fragments = arrayList;
    }

    public final void setSortPopWindow(@Nullable SortPopWindow sortPopWindow) {
        this.sortPopWindow = sortPopWindow;
    }

    public final void setStatusState1(@Nullable Integer num) {
        this.statusState1 = num;
    }
}
