package com.join.kotlin.ui.nostalgia;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.g3;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.ui.nostalgia.model.NostalgiaGameGroup;
import com.join.kotlin.ui.nostalgia.model.NostalgiaGameListData;
import com.join.kotlin.ui.nostalgia.model.NostalgiaTitleTab;
import com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel;
import com.join.mgps.Util.p2;
import com.join.mgps.callbacks.q;
import com.join.mgps.customview.ViewPagerCompat;
import com.join.mgps.customview.e0;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0002\u0010\u0013\u0018\u0000 -2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001-B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0016H\u0002J\u0010\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u0016H\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0014J\u0010\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u001cH\u0002J2\u0010$\u001a\u0016\u0012\u0004\u0012\u00020%\u0018\u00010\nj\n\u0012\u0004\u0012\u00020%\u0018\u0001`\f2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'2\u0006\u0010)\u001a\u00020*H\u0002J\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020,0'2\u0006\u0010 \u001a\u00020!H\u0002R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082.¢\u0006\u0002\n\u0000R!\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014¨\u0006."}, d2 = {"Lcom/join/kotlin/ui/nostalgia/NostalgiaGameActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityNostalgiaGameBinding;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "fragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "getFragments", "()Ljava/util/ArrayList;", "pagerChangeListener", "com/join/kotlin/ui/nostalgia/NostalgiaGameActivity$pagerChangeListener$1", "Lcom/join/kotlin/ui/nostalgia/NostalgiaGameActivity$pagerChangeListener$1;", "tabSelectedListener", "com/join/kotlin/ui/nostalgia/NostalgiaGameActivity$tabSelectedListener$1", "Lcom/join/kotlin/ui/nostalgia/NostalgiaGameActivity$tabSelectedListener$1;", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "requestTabMeta", "notifyTabSelected", "position", "", "createObserver", "onDestroy", "bindTabData", "data", "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;", "updateNostalgiaTabDecor", "selectedPosition", "preloadGamesForTab", "Lcom/join/mgps/dto/CommonGameInfoBean;", "groups", "", "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameGroup;", "nostalgiaType", "", "resolveTabs", "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaTitleTab;", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNostalgiaGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NostalgiaGameActivity.kt\ncom/join/kotlin/ui/nostalgia/NostalgiaGameActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,252:1\n1878#2,2:253\n1880#2:256\n360#2,7:257\n1878#2,3:264\n295#2,2:270\n774#2:272\n865#2,2:273\n1563#2:275\n1634#2,3:276\n1#3:255\n13537#4,3:267\n*S KotlinDebug\n*F\n+ 1 NostalgiaGameActivity.kt\ncom/join/kotlin/ui/nostalgia/NostalgiaGameActivity\n*L\n136#1:253,2\n136#1:256\n152#1:257,7\n161#1:264,3\n217#1:270,2\n227#1:272\n227#1:273,2\n231#1:275\n231#1:276,3\n198#1:267,3\n*E\n"})
public final class NostalgiaGameActivity extends BaseVmDbActivity<NostalgiaGameViewModel, g3> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private com.kingja.loadsir.core.b<Object> loadSir;

    @NotNull
    private final ArrayList<Fragment> fragments = new ArrayList<>();

    @NotNull
    private final NostalgiaGameActivity$pagerChangeListener$1 pagerChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.nostalgia.NostalgiaGameActivity$pagerChangeListener$1
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            TabLayout.g gVarD = this.this$0.getMDatabind().f38691h.D(position);
            if (gVarD != null) {
                gVarD.r();
            }
            this.this$0.updateNostalgiaTabDecor(position);
            this.this$0.notifyTabSelected(position);
        }
    };

    @NotNull
    private final NostalgiaGameActivity$tabSelectedListener$1 tabSelectedListener = new TabLayout.d() { // from class: com.join.kotlin.ui.nostalgia.NostalgiaGameActivity$tabSelectedListener$1
        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g tab) {
            Intrinsics.checkNotNullParameter(tab, "tab");
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabSelected(TabLayout.g tab) {
            Intrinsics.checkNotNullParameter(tab, "tab");
            this.this$0.getMDatabind().f38693j.setCurrentItem(tab.k(), false);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g tab) {
            Intrinsics.checkNotNullParameter(tab, "tab");
        }
    };

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\f"}, d2 = {"Lcom/join/kotlin/ui/nostalgia/NostalgiaGameActivity$Companion;", "", "<init>", "()V", Constants.WS_MESSAGE_TYPE_INTENT, "Landroid/content/Intent;", "context", "Landroid/content/Context;", "start", "", "parentExt", "Lcom/join/mgps/dto/ExtBean;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Intent intent(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new Intent(context, (Class<?>) NostalgiaGameActivity.class);
        }

        @JvmStatic
        public final void start(@NotNull Context context, @NotNull ExtBean parentExt) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parentExt, "parentExt");
            Intent intent = intent(context);
            intent.putExtra("extBean", parentExt);
            context.startActivity(intent);
        }

        private Companion() {
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0052  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void bindTabData(NostalgiaGameListData data) {
        com.kingja.loadsir.core.b<Object> bVar;
        com.kingja.loadsir.core.b<Object> bVar2;
        List<NostalgiaTitleTab> listResolveTabs = resolveTabs(data);
        ArrayList arrayList = new ArrayList();
        List<NostalgiaGameGroup> game_list = data.getGame_list();
        if (game_list == null) {
            game_list = CollectionsKt__CollectionsKt.emptyList();
        }
        Iterator<T> it2 = listResolveTabs.iterator();
        int i10 = 0;
        while (true) {
            bVar = null;
            ExtBean extBean = null;
            bVar2 = null;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            NostalgiaTitleTab nostalgiaTitleTab = (NostalgiaTitleTab) next;
            String title = nostalgiaTitleTab.getTitle();
            if (title == null) {
                title = nostalgiaTitleTab.getNostalgia_type();
                if (title == null) {
                    title = "";
                }
            } else {
                if (!Boolean.valueOf(true ^ StringsKt__StringsKt.isBlank(title)).booleanValue()) {
                    title = null;
                }
                if (title == null) {
                    title = nostalgiaTitleTab.getNostalgia_type();
                    if (title == null) {
                        title = "";
                    }
                }
            }
            arrayList.add(title);
            String nostalgia_type = nostalgiaTitleTab.getNostalgia_type();
            if (nostalgia_type == null) {
                nostalgia_type = "";
            }
            ArrayList<CommonGameInfoBean> arrayListPreloadGamesForTab = preloadGamesForTab(game_list, nostalgia_type);
            ArrayList<Fragment> arrayList2 = this.fragments;
            NostalgiaGameListFragment.Companion companion = NostalgiaGameListFragment.INSTANCE;
            String nostalgia_type2 = nostalgiaTitleTab.getNostalgia_type();
            String str = nostalgia_type2 != null ? nostalgia_type2 : "";
            Serializable serializableExtra = getIntent().getSerializableExtra("extBean");
            if (serializableExtra instanceof ExtBean) {
                extBean = (ExtBean) serializableExtra;
            }
            arrayList2.add(companion.newInstance(str, arrayListPreloadGamesForTab, i10, extBean));
            i10 = i11;
        }
        if (arrayList.isEmpty()) {
            com.kingja.loadsir.core.b<Object> bVar3 = this.loadSir;
            if (bVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            } else {
                bVar2 = bVar3;
            }
            CustomViewExtKt.showEmpty(bVar2);
            return;
        }
        Iterator<NostalgiaTitleTab> it3 = listResolveTabs.iterator();
        int i12 = 0;
        while (true) {
            if (!it3.hasNext()) {
                i12 = -1;
                break;
            } else if (it3.next().getSelected()) {
                break;
            } else {
                i12++;
            }
        }
        Integer numValueOf = Integer.valueOf(i12);
        if (!(numValueOf.intValue() >= 0)) {
            numValueOf = null;
        }
        final int iCoerceIn = RangesKt___RangesKt.coerceIn(numValueOf != null ? numValueOf.intValue() : 0, 0, CollectionsKt__CollectionsKt.getLastIndex(arrayList));
        e0 e0Var = new e0(getSupportFragmentManager(), this.fragments, arrayList);
        ViewPagerCompat viewPagerCompat = getMDatabind().f38693j;
        viewPagerCompat.setAdapter(e0Var);
        viewPagerCompat.setOffscreenPageLimit(RangesKt___RangesKt.coerceAtMost(arrayList.size(), 4));
        TabLayout tabLayout = getMDatabind().f38691h;
        tabLayout.L();
        int i13 = 0;
        for (Object obj : arrayList) {
            int i14 = i13 + 1;
            if (i13 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String str2 = (String) obj;
            TabLayout.g gVarU = tabLayout.I().u(R.layout.layout_custom_tab_nostalgia_game);
            Intrinsics.checkNotNullExpressionValue(gVarU, "setCustomView(...)");
            View viewG = gVarU.g();
            TextView textView = viewG != null ? (TextView) viewG.findViewById(R.id.tabText) : null;
            View viewG2 = gVarU.g();
            ImageView imageView = viewG2 != null ? (ImageView) viewG2.findViewById(R.id.iv_1) : null;
            if (textView != null) {
                textView.setText(str2);
            }
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 == 3 && imageView != null) {
                            imageView.setImageResource(R.drawable.ic_nostalgia_4);
                        }
                    } else if (imageView != null) {
                        imageView.setImageResource(R.drawable.ic_nostalgia_3);
                    }
                } else if (imageView != null) {
                    imageView.setImageResource(R.drawable.ic_nostalgia_2);
                }
            } else if (imageView != null) {
                imageView.setImageResource(R.drawable.ic_nostalgia_1);
            }
            tabLayout.i(gVarU);
            i13 = i14;
        }
        getMDatabind().f38693j.setCurrentItem(iCoerceIn, false);
        TabLayout.g gVarD = getMDatabind().f38691h.D(iCoerceIn);
        if (gVarD != null) {
            gVarD.r();
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.kotlin.ui.nostalgia.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f49320b.notifyTabSelected(iCoerceIn);
            }
        }, 800L);
        updateNostalgiaTabDecor(iCoerceIn);
        com.kingja.loadsir.core.b<Object> bVar4 = this.loadSir;
        if (bVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
        } else {
            bVar = bVar4;
        }
        bVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$4(final NostalgiaGameActivity nostalgiaGameActivity, ResultState resultState) {
        if (resultState == null) {
            return Unit.INSTANCE;
        }
        BaseViewModelExtKt.parseState$default(nostalgiaGameActivity, resultState, new Function1() { // from class: com.join.kotlin.ui.nostalgia.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NostalgiaGameActivity.createObserver$lambda$4$lambda$2(this.f49323b, (NostalgiaGameListData) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.ui.nostalgia.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NostalgiaGameActivity.createObserver$lambda$4$lambda$3(this.f49324b, (AppException) obj);
            }
        }, (Function0) null, 8, (Object) null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$4$lambda$2(NostalgiaGameActivity nostalgiaGameActivity, NostalgiaGameListData nostalgiaGameListData) {
        if (nostalgiaGameListData == null) {
            com.kingja.loadsir.core.b<Object> bVar = nostalgiaGameActivity.loadSir;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                bVar = null;
            }
            String string = nostalgiaGameActivity.getString(R.string.net_connect_failed);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            CustomViewExtKt.showError(bVar, string);
        } else {
            nostalgiaGameActivity.bindTabData(nostalgiaGameListData);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$4$lambda$3(NostalgiaGameActivity nostalgiaGameActivity, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        com.kingja.loadsir.core.b<Object> bVar = nostalgiaGameActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showError(bVar, it2.getErrorMsg());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$1(NostalgiaGameActivity nostalgiaGameActivity) {
        nostalgiaGameActivity.requestTabMeta();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyTabSelected(int position) {
        Iterator<Fragment> it2 = this.fragments.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
        while (it2.hasNext()) {
            ActivityResultCaller next = it2.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            ActivityResultCaller activityResultCaller = (Fragment) next;
            if (activityResultCaller instanceof q) {
                ((q) activityResultCaller).onPageVisible(position);
            }
        }
    }

    private final ArrayList<CommonGameInfoBean> preloadGamesForTab(List<NostalgiaGameGroup> groups, String nostalgiaType) {
        Object next;
        String nostalgia_type;
        Iterator<T> it2 = groups.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            nostalgia_type = ((NostalgiaGameGroup) next).getNostalgia_type();
            if (nostalgia_type == null) {
                nostalgia_type = "";
            }
        } while (!Intrinsics.areEqual(nostalgia_type, nostalgiaType));
        NostalgiaGameGroup nostalgiaGameGroup = (NostalgiaGameGroup) next;
        if (nostalgiaGameGroup == null) {
            return null;
        }
        ArrayList<CommonGameInfoBean> game_list = nostalgiaGameGroup.getGame_list();
        List listFilterNotNull = game_list != null ? CollectionsKt___CollectionsKt.filterNotNull(game_list) : null;
        if (listFilterNotNull == null) {
            listFilterNotNull = CollectionsKt__CollectionsKt.emptyList();
        }
        if (listFilterNotNull.isEmpty()) {
            return null;
        }
        return new ArrayList<>(listFilterNotNull);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void requestTabMeta() {
        com.kingja.loadsir.core.b<Object> bVar = this.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        ((NostalgiaGameViewModel) getMViewModel()).fetchTabMeta();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0048  */
    private final List<NostalgiaTitleTab> resolveTabs(NostalgiaGameListData data) {
        boolean z10;
        List<NostalgiaTitleTab> title_list = data.getTitle_list();
        if (title_list == null) {
            title_list = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = title_list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            NostalgiaTitleTab nostalgiaTitleTab = (NostalgiaTitleTab) next;
            String title = nostalgiaTitleTab.getTitle();
            if (title == null || StringsKt__StringsKt.isBlank(title)) {
                String nostalgia_type = nostalgiaTitleTab.getNostalgia_type();
                z10 = nostalgia_type == null || StringsKt__StringsKt.isBlank(nostalgia_type) ? false : true;
            }
            if (z10) {
                arrayList.add(next);
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        Iterable game_list = data.getGame_list();
        if (game_list == null) {
            game_list = CollectionsKt__CollectionsKt.emptyList();
        }
        Iterable<NostalgiaGameGroup> iterable = game_list;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10));
        for (NostalgiaGameGroup nostalgiaGameGroup : iterable) {
            arrayList2.add(new NostalgiaTitleTab(nostalgiaGameGroup.getNostalgia_type(), false, nostalgiaGameGroup.getNostalgia_type()));
        }
        return arrayList2;
    }

    @JvmStatic
    public static final void start(@NotNull Context context, @NotNull ExtBean extBean) {
        INSTANCE.start(context, extBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateNostalgiaTabDecor(int selectedPosition) {
        ImageView[] imageViewArr = {getMDatabind().f38687d, getMDatabind().f38688e, getMDatabind().f38689f, getMDatabind().f38690g};
        int tabCount = getMDatabind().f38691h.getTabCount();
        int iCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(selectedPosition, 0);
        int i10 = 0;
        int i11 = 0;
        while (i10 < 4) {
            int i12 = i11 + 1;
            imageViewArr[i10].setVisibility(tabCount > 0 && iCoerceAtLeast < tabCount && i11 == iCoerceAtLeast && i11 < 4 ? 0 : 8);
            i10++;
            i11 = i12;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
        ((NostalgiaGameViewModel) getMViewModel()).getTabMetaState().observe(this, new NostalgiaGameActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.nostalgia.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NostalgiaGameActivity.createObserver$lambda$4(this.f49322b, (ResultState) obj);
            }
        }));
    }

    @NotNull
    public final ArrayList<Fragment> getFragments() {
        return this.fragments;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().n((NostalgiaGameViewModel) getMViewModel());
        p2.v(this);
        getMDatabind().f38686c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.nostalgia.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f49315b.finish();
            }
        });
        getMDatabind().f38693j.addOnPageChangeListener(this.pagerChangeListener);
        getMDatabind().f38691h.h(this.tabSelectedListener);
        ViewPagerCompat viewPager = getMDatabind().f38693j;
        Intrinsics.checkNotNullExpressionValue(viewPager, "viewPager");
        this.loadSir = CustomViewExtKt.loadServiceInit(viewPager, new Function0() { // from class: com.join.kotlin.ui.nostalgia.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return NostalgiaGameActivity.initView$lambda$1(this.f49319b);
            }
        });
        requestTabMeta();
    }

    @Override // com.join.kotlin.base.activity.BaseDownloadActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        getMDatabind().f38693j.removeOnPageChangeListener(this.pagerChangeListener);
        getMDatabind().f38691h.N(this.tabSelectedListener);
        super.onDestroy();
    }
}
