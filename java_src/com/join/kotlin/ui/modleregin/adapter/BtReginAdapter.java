package com.join.kotlin.ui.modleregin.adapter;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.dn0;
import com.join.android.app.mgsim.wufun.databinding.k7;
import com.join.android.app.mgsim.wufun.databinding.x7;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.ui.modleregin.GameListFragment;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.kotlin.ui.modleregin.modle.BtOnlineGame;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.TitleModle;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.j0;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0014J\"\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\"\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0011H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/psk/kotlin/util/CommonListMainData;", "Landroidx/databinding/ViewDataBinding;", "context", "Landroidx/appcompat/app/AppCompatActivity;", "videoHelper", "Lcom/join/android/app/component/video/MyListViewVideoHelper;", "<init>", "(Landroidx/appcompat/app/AppCompatActivity;Lcom/join/android/app/component/video/MyListViewVideoHelper;)V", "getContext", "()Landroidx/appcompat/app/AppCompatActivity;", "setContext", "(Landroidx/appcompat/app/AppCompatActivity;)V", "getVideoHelper", "()Lcom/join/android/app/component/video/MyListViewVideoHelper;", "getLayoutResId", "", "viewType", "onBindItem", "", "binding", "item", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onBindItemPayloads", "getItemViewType", "position", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBtReginAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginAdapter.kt\ncom/join/kotlin/ui/modleregin/adapter/BtReginAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,288:1\n1#2:289\n1869#3,2:290\n*S KotlinDebug\n*F\n+ 1 BtReginAdapter.kt\ncom/join/kotlin/ui/modleregin/adapter/BtReginAdapter\n*L\n171#1:290,2\n*E\n"})
public final class BtReginAdapter extends BaseDataBindingAdapter<CommonListMainData, ViewDataBinding> {

    @NotNull
    private AppCompatActivity context;

    @NotNull
    private final com.join.android.app.component.video.c videoHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BtReginAdapter(@NotNull AppCompatActivity context, @NotNull com.join.android.app.component.video.c videoHelper) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(videoHelper, "videoHelper");
        this.context = context;
        this.videoHelper = videoHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onBindItem$lambda$1(BtReginAdapter btReginAdapter, int i10, CollectionBeanSub item, int i11) {
        Intrinsics.checkNotNullParameter(item, "item");
        IntentUtil.getInstance().intentActivity(btReginAdapter.context, item.getIntentDataBean());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onBindItem$lambda$2(BtReginAdapter btReginAdapter, int i10, BannerBean item, int i11) {
        Intrinsics.checkNotNullParameter(item, "item");
        IntentUtil.getInstance().intentActivity(btReginAdapter.context, item.getIntentDataBean());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onBindItem$lambda$4(int i10, BtTagSelecterBean item, int i11) {
        Intrinsics.checkNotNullParameter(item, "item");
        j0.a().c(item);
        return Unit.INSTANCE;
    }

    @NotNull
    public final AppCompatActivity getContext() {
        return this.context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        List<CommonListMainData> listDatas = getListDatas();
        if (listDatas == null || listDatas.isEmpty()) {
            return 999;
        }
        List<CommonListMainData> listDatas2 = getListDatas();
        Intrinsics.checkNotNull(listDatas2);
        return listDatas2.get(position).getType();
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int viewType) {
        switch (viewType) {
            case 1:
                return R.layout.databinding_title_layout;
            case 2:
                return R.layout.bt_listitem;
            case 3:
            default:
                return R.layout.databinding_line_layout;
            case 4:
                return R.layout.bt_video_item_layout;
            case 5:
                return R.layout.bt_tag_recycview_layout;
            case 6:
                return R.layout.bt_viewpager_layout;
            case 7:
                return R.layout.bt_hrecyclerview_gamelist_layout;
            case 8:
                return R.layout.datab_bt_hviewlist;
        }
    }

    @NotNull
    public final com.join.android.app.component.video.c getVideoHelper() {
        return this.videoHelper;
    }

    public final void setContext(@NotNull AppCompatActivity appCompatActivity) {
        Intrinsics.checkNotNullParameter(appCompatActivity, "<set-?>");
        this.context = appCompatActivity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2, types: [T, com.join.kotlin.ui.modleregin.modle.TitleModle, java.lang.Object] */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull final ViewDataBinding binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder holder) {
        String strD;
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        switch (item.getType()) {
            case 1:
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Object any = item.getAny();
                Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.TitleModle");
                ?? r12 = (TitleModle) any;
                objectRef.element = r12;
                binding.setVariable(11, r12);
                binding.setVariable(8, new View.OnClickListener() { // from class: com.join.kotlin.ui.modleregin.adapter.BtReginAdapter.onBindItem.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        IntentUtil.getInstance().intentActivity(binding.getRoot().getContext(), objectRef.element.getIntentDateBean());
                    }
                });
                binding.setVariable(26, ((TitleModle) objectRef.element).getShowWhiteBack());
                break;
            case 2:
                Object any2 = item.getAny();
                Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
                BtGameListItem btGameListItem = (BtGameListItem) any2;
                binding.setVariable(3, btGameListItem);
                btGameListItem.getGameInfo().setReMarks(item.getReMarks());
                if (btGameListItem.getAppitemShow() == null) {
                    btGameListItem.setAppitemShow(new AppListItemShowBean(btGameListItem.getGameInfo(), false));
                    Unit unit = Unit.INSTANCE;
                }
                AppListItemShowBean appitemShow = btGameListItem.getAppitemShow();
                if (appitemShow != null) {
                    appitemShow.updateItemNormal(btGameListItem.getGameInfo());
                }
                binding.setVariable(28, btGameListItem.getAppitemShow());
                DownloadNormalView downloadNormalView = (DownloadNormalView) binding.getRoot().findViewById(R.id.dv_view);
                if (downloadNormalView != null) {
                    downloadNormalView.f(new m6.c(this.context, btGameListItem.getGameInfo()));
                }
                break;
            case 4:
                Object any3 = item.getAny();
                Intrinsics.checkNotNull(any3, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.MustplayItemBean");
                MustplayItemBean mustplayItemBean = (MustplayItemBean) any3;
                mustplayItemBean.getGameinfo().setReMarks(item.getReMarks());
                binding.setVariable(49, this.videoHelper);
                IntentDateBean intentDataBean = mustplayItemBean.getGameinfo().getIntentDataBean();
                ExtBean extBean = intentDataBean != null ? intentDataBean.getExtBean() : null;
                if (extBean != null) {
                    extBean.setReMarks(item.getReMarks());
                }
                if (intentDataBean != null) {
                    intentDataBean.setExtBean(extBean);
                }
                binding.setVariable(11, mustplayItemBean);
                binding.setVariable(48, new VideoModle(mustplayItemBean.getPosition(), mustplayItemBean.getGame_info_top_video_url(), intentDataBean, mustplayItemBean.getVideoCover()));
                binding.setVariable(26, mustplayItemBean.getShowWhiteBack());
                DownloadNormalView downloadNormalView2 = (DownloadNormalView) binding.getRoot().findViewById(R.id.dv_view);
                if (downloadNormalView2 != null) {
                    downloadNormalView2.f(new m6.c(this.context, mustplayItemBean.getGameinfo()));
                }
                break;
            case 5:
                Object any4 = item.getAny();
                Intrinsics.checkNotNull(any4, "null cannot be cast to non-null type kotlin.collections.List<com.join.mgps.dto.BannerBean>");
                binding.setVariable(39, (List) any4);
                HTagAdapter hTagAdapter = new HTagAdapter(this.context);
                hTagAdapter.setOnItemClickListener(new Function3() { // from class: com.join.kotlin.ui.modleregin.adapter.b
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return BtReginAdapter.onBindItem$lambda$2(this.f49286b, ((Integer) obj).intValue(), (BannerBean) obj2, ((Integer) obj3).intValue());
                    }
                });
                binding.setVariable(1, hTagAdapter);
                break;
            case 6:
                Object any5 = item.getAny();
                Intrinsics.checkNotNull(any5, "null cannot be cast to non-null type kotlin.collections.List<com.join.kotlin.ui.modleregin.modle.BtOnlineGame>");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (BtOnlineGame btOnlineGame : (List) any5) {
                    long onlineTime = btOnlineGame.getOnlineTime() * ((long) 1000);
                    List<CollectionBeanSub> gameEntityList = btOnlineGame.getGameEntityList();
                    if (!(gameEntityList == null || gameEntityList.isEmpty())) {
                        if (e0.z(onlineTime)) {
                            strD = "今天";
                        } else {
                            long j10 = 86400000;
                            strD = e0.z(onlineTime - j10) ? "明天" : e0.z(j10 + onlineTime) ? "昨天" : e0.D(onlineTime, "MM-dd");
                        }
                        Intrinsics.checkNotNull(strD);
                        arrayList.add(strD);
                        GameListFragment gameListFragment = new GameListFragment();
                        Bundle bundle = new Bundle();
                        bundle.putLong("time", btOnlineGame.getOnlineTime());
                        gameListFragment.setArguments(bundle);
                        arrayList2.add(gameListFragment);
                    }
                }
                binding.setVariable(16, this.context.getSupportFragmentManager());
                binding.setVariable(45, arrayList);
                binding.setVariable(17, arrayList2);
                x7 x7Var = (x7) binding;
                binding.setVariable(51, x7Var.f47120c);
                x7Var.f47120c.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.modleregin.adapter.BtReginAdapter.onBindItem.6
                    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                    public void onPageScrollStateChanged(int p10) {
                    }

                    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                    public void onPageScrolled(int p10, float p11, int p12) {
                    }

                    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                    public void onPageSelected(int p10) {
                    }
                });
                break;
            case 7:
                Object any6 = item.getAny();
                Intrinsics.checkNotNull(any6, "null cannot be cast to non-null type kotlin.collections.List<com.join.mgps.dto.CollectionBeanSub>");
                binding.setVariable(39, (List) any6);
                k7 k7Var = (k7) binding;
                if (k7Var.f40644b.getAdapter() == null) {
                    HGamelistAdapter hGamelistAdapter = new HGamelistAdapter(this.context);
                    hGamelistAdapter.setOnItemClickListener(new Function3() { // from class: com.join.kotlin.ui.modleregin.adapter.a
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                            return BtReginAdapter.onBindItem$lambda$1(this.f49285b, ((Integer) obj).intValue(), (CollectionBeanSub) obj2, ((Integer) obj3).intValue());
                        }
                    });
                    binding.setVariable(1, hGamelistAdapter);
                } else {
                    RecyclerView.Adapter adapter = k7Var.f40644b.getAdapter();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
                break;
            case 8:
                Object any7 = item.getAny();
                Intrinsics.checkNotNull(any7, "null cannot be cast to non-null type kotlin.collections.List<com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean>");
                BtTaglistAdapter btTaglistAdapter = new BtTaglistAdapter(this.context);
                binding.setVariable(1, btTaglistAdapter);
                binding.setVariable(39, (List) any7);
                btTaglistAdapter.setOnItemClickListener(new Function3() { // from class: com.join.kotlin.ui.modleregin.adapter.c
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return BtReginAdapter.onBindItem$lambda$4(((Integer) obj).intValue(), (BtTagSelecterBean) obj2, ((Integer) obj3).intValue());
                    }
                });
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull ViewDataBinding binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        int type = item.getType();
        if (type == 2) {
            Object any = item.getAny();
            Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
            BtGameListItem btGameListItem = (BtGameListItem) any;
            btGameListItem.getGameInfo().setReMarks(item.getReMarks());
            binding.setVariable(3, btGameListItem);
            if (btGameListItem.getAppitemShow() == null) {
                btGameListItem.setAppitemShow(new AppListItemShowBean(btGameListItem.getGameInfo(), true));
                Unit unit = Unit.INSTANCE;
            }
            AppListItemShowBean appitemShow = btGameListItem.getAppitemShow();
            if (appitemShow != null) {
                appitemShow.updateItemProgress(btGameListItem.getGameInfo().getDownloadTask());
            }
            binding.setVariable(28, btGameListItem.getAppitemShow());
            return;
        }
        if (type != 4) {
            return;
        }
        dn0 dn0Var = (dn0) binding;
        Object any2 = item.getAny();
        Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.MustplayItemBean");
        MustplayItemBean mustplayItemBean = (MustplayItemBean) any2;
        mustplayItemBean.getGameinfo().setReMarks(item.getReMarks());
        dn0Var.z(mustplayItemBean);
        IntentDateBean intentDataBean = mustplayItemBean.getGameinfo().getIntentDataBean();
        ExtBean extBean = intentDataBean != null ? intentDataBean.getExtBean() : null;
        if (extBean != null) {
            extBean.setReMarks(item.getReMarks());
        }
        if (intentDataBean != null) {
            intentDataBean.setExtBean(extBean);
        }
        dn0Var.A(new VideoModle(mustplayItemBean.getPosition(), mustplayItemBean.getVideoUrl(), intentDataBean, mustplayItemBean.getVideoCover()));
        dn0Var.B(this.videoHelper);
    }
}
