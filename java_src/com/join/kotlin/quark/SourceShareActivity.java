package com.join.kotlin.quark;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.MutableLiveData;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.v4;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.quark.model.bean.SourceTabItemBean;
import com.join.kotlin.quark.model.bean.SourceTabListBean;
import com.join.kotlin.quark.proxy.SourceShareClickProxy;
import com.join.kotlin.quark.viewmodel.SourceShareViewModel;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;
import com.papa91.arc.view.GlideImageLoader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010\"\u001a\u00020\u001fH\u0014J\b\u0010#\u001a\u00020\u001fH\u0016J.\u0010$\u001a\u00020\u001f2\u001a\u0010%\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010&0\u0017j\n\u0012\u0006\u0012\u0004\u0018\u00010&`\u00192\b\b\u0002\u0010'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020+H\u0002J\b\u0010,\u001a\u00020\u001fH\u0016J\b\u0010-\u001a\u00020\u001fH\u0016J\b\u0010.\u001a\u00020\u001fH\u0016J\b\u0010/\u001a\u00020\u001fH\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082.¢\u0006\u0002\n\u0000R*\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u00060"}, d2 = {"Lcom/join/kotlin/quark/SourceShareActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivitySourceShareBinding;", "Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;", "<init>", "()V", "adapter", "Lcom/join/mgps/adapter/FragmentPagerAdapter;", "getAdapter", "()Lcom/join/mgps/adapter/FragmentPagerAdapter;", "setAdapter", "(Lcom/join/mgps/adapter/FragmentPagerAdapter;)V", "extBean", "Lcom/join/mgps/dto/ExtBean;", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "fragments", "Ljava/util/ArrayList;", "Lcom/join/mgps/adapter/FragmentPagerAdapter$Item;", "Lkotlin/collections/ArrayList;", "getFragments", "()Ljava/util/ArrayList;", "setFragments", "(Ljava/util/ArrayList;)V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "createObserver", "getView", "items", "Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;", "defIndex", "", "setStatus", "tab", "Lcom/google/android/material/tabs/TabLayout$Tab;", "onBackClick", "onShareClick", "onSearchClick", "onSaveClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSourceShareActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourceShareActivity.kt\ncom/join/kotlin/quark/SourceShareActivity\n+ 2 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n29#2,2:269\n32#2,3:273\n29#2,2:276\n32#2,3:281\n1869#3,2:271\n1878#3,3:278\n1#4:284\n*S KotlinDebug\n*F\n+ 1 SourceShareActivity.kt\ncom/join/kotlin/quark/SourceShareActivity\n*L\n104#1:269,2\n104#1:273,3\n126#1:276,2\n126#1:281,3\n108#1:271,2\n128#1:278,3\n*E\n"})
public final class SourceShareActivity extends BaseVmDbActivity<SourceShareViewModel, v4> implements SourceShareClickProxy {

    @Nullable
    private com.join.mgps.adapter.h0 adapter;

    @Nullable
    private ExtBean extBean;

    @NotNull
    private ArrayList<com.join.mgps.adapter.h0.a> fragments = new ArrayList<>();
    private com.kingja.loadsir.core.b<Object> loadSir;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$17$lambda$16(final SourceShareActivity sourceShareActivity, ResultState resultState) {
        if (resultState == null) {
            com.kingja.loadsir.core.b<Object> bVar = sourceShareActivity.loadSir;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                bVar = null;
            }
            CustomViewExtKt.showError$default(bVar, null, 1, null);
        } else {
            BaseViewModelExtKt.parseState$default(sourceShareActivity, resultState, new Function1() { // from class: com.join.kotlin.quark.m0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SourceShareActivity.createObserver$lambda$17$lambda$16$lambda$14(this.f48873b, (SourceTabListBean) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.quark.n0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SourceShareActivity.createObserver$lambda$17$lambda$16$lambda$15(this.f48876b, (AppException) obj);
                }
            }, (Function0) null, 8, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$17$lambda$16$lambda$14(final SourceShareActivity sourceShareActivity, SourceTabListBean sourceTabListBean) {
        Integer tab_id;
        ArrayList arrayList = new ArrayList();
        com.kingja.loadsir.core.b<Object> bVar = sourceShareActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        bVar.h();
        if (sourceTabListBean != null) {
            final List<CommonGameInfoBean> banner = sourceTabListBean.getBanner();
            if (banner != null) {
                ((SourceShareViewModel) sourceShareActivity.getMViewModel()).getShowBanner().setValue(Boolean.valueOf(!banner.isEmpty()));
                ArrayList arrayList2 = new ArrayList();
                Iterator<T> it2 = banner.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((CommonGameInfoBean) it2.next()).getCoverPicUrl());
                }
                sourceShareActivity.getMDatabind().f46032d.z(arrayList2).x(2000).y(new GlideImageLoader()).D(new ya.b() { // from class: com.join.kotlin.quark.o0
                    @Override // ya.b
                    public final void OnBannerClick(int i10) {
                        SourceShareActivity.createObserver$lambda$17$lambda$16$lambda$14$lambda$13$lambda$5$lambda$4(this.f48878b, banner, i10);
                    }
                }).I();
            } else {
                ((SourceShareViewModel) sourceShareActivity.getMViewModel()).getShowBanner().setValue(Boolean.FALSE);
            }
            sourceShareActivity.fragments.clear();
            ArrayList<SourceTabItemBean> tabs = sourceTabListBean.getTabs();
            int i10 = 0;
            if (tabs != null) {
                int i11 = 0;
                int i12 = 0;
                for (Object obj : tabs) {
                    int i13 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    SourceTabItemBean sourceTabItemBean = (SourceTabItemBean) obj;
                    SourceShareFragment sourceShareFragment = new SourceShareFragment();
                    Bundle bundle = new Bundle();
                    if (sourceTabItemBean != null && (tab_id = sourceTabItemBean.getTab_id()) != null) {
                        bundle.putInt("_tab_id", tab_id.intValue());
                        sourceShareFragment.setArguments(bundle);
                        sourceShareActivity.fragments.add(new com.join.mgps.adapter.h0.a(sourceTabItemBean.getName(), sourceShareFragment));
                    }
                    if (sourceTabItemBean != null ? Intrinsics.areEqual(sourceTabItemBean.getActive(), Boolean.TRUE) : false) {
                        i12 = i11;
                    }
                    i11 = i13;
                }
                i10 = i12;
            }
            com.join.mgps.adapter.h0 h0Var = sourceShareActivity.adapter;
            if (h0Var != null) {
                h0Var.e(sourceShareActivity.fragments);
                h0Var.notifyDataSetChanged();
            }
            sourceShareActivity.getMDatabind().f46044p.setCurrentItem(i10);
            ArrayList<SourceTabItemBean> tabs2 = sourceTabListBean.getTabs();
            if (tabs2 != null) {
                sourceShareActivity.getView(tabs2, i10);
            }
            sourceShareActivity.getMDatabind().f46041m.h(new TabLayout.d() { // from class: com.join.kotlin.quark.SourceShareActivity$createObserver$1$1$1$1$7
                @Override // com.google.android.material.tabs.TabLayout.c
                public void onTabReselected(TabLayout.g tab) {
                    Intrinsics.checkNotNullParameter(tab, "tab");
                }

                @Override // com.google.android.material.tabs.TabLayout.c
                public void onTabSelected(TabLayout.g tab) {
                    Intrinsics.checkNotNullParameter(tab, "tab");
                    this.this$0.setStatus(tab);
                }

                @Override // com.google.android.material.tabs.TabLayout.c
                public void onTabUnselected(TabLayout.g tab) {
                    Intrinsics.checkNotNullParameter(tab, "tab");
                    this.this$0.setStatus(tab);
                }
            });
            ((SourceShareViewModel) sourceShareActivity.getMViewModel()).setShowData(arrayList);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createObserver$lambda$17$lambda$16$lambda$14$lambda$13$lambda$5$lambda$4(SourceShareActivity sourceShareActivity, List list, int i10) {
        IntentUtil.getInstance().intentActivity(sourceShareActivity, ((CommonGameInfoBean) list.get(i10)).getIntentDataBean());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$17$lambda$16$lambda$15(SourceShareActivity sourceShareActivity, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastManager.show(it2.getErrorMsg());
        com.kingja.loadsir.core.b<Object> bVar = sourceShareActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showError$default(bVar, null, 1, null);
        return Unit.INSTANCE;
    }

    private final void getView(ArrayList<SourceTabItemBean> items, int defIndex) {
        View viewFindViewById;
        View viewG;
        View viewFindViewById2;
        View viewG2;
        if (getMDatabind().f46041m.getTabCount() == 0) {
            return;
        }
        int tabCount = getMDatabind().f46041m.getTabCount();
        int i10 = 0;
        while (true) {
            viewFindViewById = null;
            viewFindViewById = null;
            if (i10 >= tabCount) {
                break;
            }
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.layout_source_share_tab_item, (ViewGroup) null);
            Intrinsics.checkNotNullExpressionValue(viewInflate, "inflate(...)");
            View viewFindViewById3 = viewInflate.findViewById(R.id.tv_name);
            Intrinsics.checkNotNull(viewFindViewById3, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) viewFindViewById3;
            SourceTabItemBean sourceTabItemBean = items.get(i10);
            textView.setText(sourceTabItemBean != null ? sourceTabItemBean.getName() : null);
            TabLayout.g gVarD = getMDatabind().f46041m.D(i10);
            if (gVarD != null) {
                gVarD.v(viewInflate);
            }
            i10++;
        }
        TabLayout.g gVarD2 = getMDatabind().f46041m.D(defIndex);
        if (gVarD2 != null && (viewG2 = gVarD2.g()) != null) {
            viewFindViewById = viewG2.findViewById(R.id.tv_name);
        }
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView2 = (TextView) viewFindViewById;
        textView2.setTextColor(-16777216);
        textView2.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
        textView2.setTypeface(textView2.getTypeface(), 1);
        TabLayout.g gVarD3 = getMDatabind().f46041m.D(defIndex);
        if (gVarD3 == null || (viewG = gVarD3.g()) == null || (viewFindViewById2 = viewG.findViewById(R.id.iv_ind)) == null) {
            return;
        }
        viewFindViewById2.setVisibility(0);
    }

    static /* synthetic */ void getView$default(SourceShareActivity sourceShareActivity, ArrayList arrayList, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        sourceShareActivity.getView(arrayList, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initView$lambda$1(SourceShareActivity sourceShareActivity) {
        SourceShareViewModel sourceShareViewModel = (SourceShareViewModel) sourceShareActivity.getMViewModel();
        String uid = AccountUtil_.getInstance_(sourceShareActivity).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        sourceShareViewModel.getWebDiskHome(uid);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean initView$lambda$2(SourceShareActivity sourceShareActivity, View view, int i10, KeyEvent keyEvent) {
        Context context = view.getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        Activity activity = (Activity) context;
        if (i10 != 66) {
            return false;
        }
        Object systemService = sourceShareActivity.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        View currentFocus = activity.getCurrentFocus();
        Intrinsics.checkNotNull(currentFocus);
        ((InputMethodManager) systemService).hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
        sourceShareActivity.onSearchClick();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setStatus(TabLayout.g gVar) {
        View viewG;
        if (getMDatabind().f46041m.getTabCount() == 0) {
            return;
        }
        int tabCount = getMDatabind().f46041m.getTabCount();
        for (int i10 = 0; i10 < tabCount; i10++) {
            TabLayout.g gVarD = getMDatabind().f46041m.D(i10);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
        ((SourceShareViewModel) getMViewModel()).getHomeData().observe(this, new SourceShareActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.l0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SourceShareActivity.createObserver$lambda$17$lambda$16(this.f48872b, (ResultState) obj);
            }
        }));
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        if (getIntent() != null && this.extBean != null) {
            com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(this);
            Event event = Event.visitPCPageZone;
            Ext ext = new Ext();
            ExtBean extBean = this.extBean;
            Intrinsics.checkNotNull(extBean);
            tVarL.R1(event, ext.setFrom(extBean.getFrom()));
        }
        this.adapter = new com.join.mgps.adapter.h0(getSupportFragmentManager());
        getMDatabind().f46044p.setAdapter(this.adapter);
        getMDatabind().f46041m.setupWithViewPager(getMDatabind().f46044p);
        getMDatabind().u((SourceShareViewModel) getMViewModel());
        getMDatabind().t(this);
        SourceShareViewModel sourceShareViewModel = (SourceShareViewModel) getMViewModel();
        String uid = AccountUtil_.getInstance_(this).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        sourceShareViewModel.getWebDiskHome(uid);
        CoordinatorLayout mainContent = getMDatabind().f46038j;
        Intrinsics.checkNotNullExpressionValue(mainContent, "mainContent");
        this.loadSir = CustomViewExtKt.loadServiceInit(mainContent, new Function0() { // from class: com.join.kotlin.quark.j0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SourceShareActivity.initView$lambda$1(this.f48868b);
            }
        });
        com.papa.sim.statistic.t.l(this).R1(Event.clickSourceZone, new Ext());
        getMDatabind().f46040l.setOnKeyListener(new View.OnKeyListener() { // from class: com.join.kotlin.quark.k0
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
                return SourceShareActivity.initView$lambda$2(this.f48870b, view, i10, keyEvent);
            }
        });
    }

    @Override // com.join.kotlin.quark.proxy.SourceShareClickProxy
    public void onBackClick() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    @Override // com.join.kotlin.quark.proxy.SourceShareClickProxy
    public void onSaveClick() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.proxy.SourceShareClickProxy
    public void onSearchClick() {
        if (!t2.i(((SourceShareViewModel) getMViewModel()).getSearchKeyword().getValue())) {
            ToastManager.show(getMDatabind().f46040l.getHint());
            return;
        }
        Intent intent = new Intent(this, (Class<?>) QuarkSearchResultActivity.class);
        MutableLiveData<String> searchKeyword = ((SourceShareViewModel) getMViewModel()).getSearchKeyword();
        intent.putExtra("_keyword", searchKeyword != null ? searchKeyword.getValue() : null);
        MutableLiveData<String> searchKeyword2 = ((SourceShareViewModel) getMViewModel()).getSearchKeyword();
        intent.putExtra("_tab_id", searchKeyword2 != null ? searchKeyword2.getValue() : null);
        startActivity(intent);
        com.papa.sim.statistic.t.l(this).R1(Event.clickSearchBtn, new Ext());
    }

    @Override // com.join.kotlin.quark.proxy.SourceShareClickProxy
    public void onShareClick() {
        if (IntentUtil.getInstance().isNotLogin(this)) {
            IntentUtil.getInstance().goLogin(this);
        } else {
            startActivity(new Intent(this, (Class<?>) UploadSourceHopeActivity.class));
        }
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
}
