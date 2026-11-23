package com.join.kotlin.ui.search.adapter;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.video.h;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.b60;
import com.join.android.app.mgsim.wufun.databinding.t50;
import com.join.android.app.mgsim.wufun.databinding.x50;
import com.join.android.app.mgsim.wufun.databinding.z50;
import com.join.kotlin.base.impl.GInfo;
import com.join.kotlin.base.impl.OnMultiItemAdapterListenerImpl;
import com.join.kotlin.ui.search.model.SearchAdGridBean;
import com.join.kotlin.ui.search.model.SearchGameBean;
import com.join.kotlin.ui.search.model.SearchTitleBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001e\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;", "Lcom/join/mgps/dto/CommonMultiItemBean;", "<init>", "()V", "keyword", "", "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "updateGameUI", "", "holder", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/ItemSearchListGameBinding;", "item", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSearchListGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchListGameAdapter.kt\ncom/join/kotlin/ui/search/adapter/SearchListGameAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,201:1\n55#2:202\n55#2:203\n55#2:204\n55#2:205\n*S KotlinDebug\n*F\n+ 1 SearchListGameAdapter.kt\ncom/join/kotlin/ui/search/adapter/SearchListGameAdapter\n*L\n41#1:202\n55#1:203\n67#1:204\n81#1:205\n*E\n"})
public final class SearchListGameAdapter extends com.chad.library.adapter.base.c<CommonMultiItemBean> {
    public static final int ITEM_TYPE_AD_GRID = 2;
    public static final int ITEM_TYPE_GAME = 1;
    public static final int ITEM_TYPE_MORE = 3;
    public static final int ITEM_TYPE_TITLE = 0;

    @NotNull
    private String keyword;

    /* JADX INFO: renamed from: com.join.kotlin.ui.search.adapter.SearchListGameAdapter$5, reason: invalid class name */
    @Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J(\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u000b"}, d2 = {"com/join/kotlin/ui/search/adapter/SearchListGameAdapter$5", "Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl;", "Lcom/join/mgps/dto/CommonMultiItemBean;", "Lcom/join/android/app/mgsim/wufun/databinding/ItemSearchListAdGridBinding;", "onBind", "", "holder", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "position", "", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass5 extends OnMultiItemAdapterListenerImpl<CommonMultiItemBean, t50> {
        AnonymousClass5() {
            super(R.layout.item_search_list_ad_grid);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$exposureItem(Ref.BooleanRef booleanRef, Ref.IntRef intRef, SearchListAdGridAdapter searchListAdGridAdapter, SearchListGameAdapter searchListGameAdapter) {
            try {
                if (!booleanRef.element) {
                    booleanRef.element = true;
                    int i10 = intRef.element;
                    if (i10 >= 0) {
                        int i11 = 0;
                        while (true) {
                            CommonGameInfoBean item = searchListAdGridAdapter.getItem(i11);
                            if (item != null && !item.getExposure()) {
                                onBind$onExposureItem(searchListGameAdapter, item, i11);
                                item.setExposure(true);
                            }
                            if (i11 == i10) {
                                break;
                            } else {
                                i11++;
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            } finally {
                booleanRef.element = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$2(SearchListGameAdapter searchListGameAdapter, BaseQuickAdapter adapter, View view, int i10) {
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            Intrinsics.checkNotNullParameter(view, "view");
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) adapter.getItem(i10);
            int i11 = i10 / 2;
            int i12 = i10 % 2;
            if (commonGameInfoBean != null) {
                ExtBean resourceId = commonGameInfoBean.getExtBean().setChatId("searchResultGame").setFrom("10201").setKeyword(commonGameInfoBean.getKeyword()).setResourceId(commonGameInfoBean.getGameId());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i11 + 1);
                sb2.append('_');
                sb2.append(i12 + 1);
                t.l(searchListGameAdapter.getContext()).R1(Event.expGameAdPage, resourceId.setPosition(sb2.toString()).setReMarks(commonGameInfoBean.getKeyword()).buildScene().toExt());
            }
            IntentUtil.getInstance().intentActivity(searchListGameAdapter.getContext(), commonGameInfoBean != null ? commonGameInfoBean.getIntentDataBean() : null);
        }

        private static final void onBind$onExposureItem(SearchListGameAdapter searchListGameAdapter, CommonGameInfoBean commonGameInfoBean, int i10) {
            ExtBean resourceId = commonGameInfoBean.getExtBean().setChatId("searchResultGame").setFrom("10201").setKeyword(searchListGameAdapter.getKeyword()).setResourceId(commonGameInfoBean.getGameId());
            StringBuilder sb2 = new StringBuilder();
            sb2.append((i10 / 2) + 1);
            sb2.append('_');
            sb2.append((i10 % 2) + 1);
            t.l(searchListGameAdapter.getContext()).R1(Event.expGameAdPage, resourceId.setPosition(sb2.toString()).setReMarks(searchListGameAdapter.getKeyword()).buildScene().toExt());
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onBind(final v2.a<t50> holder, int i10, CommonMultiItemBean commonMultiItemBean) {
            RecyclerView recyclerView;
            RecyclerView recyclerView2;
            Intrinsics.checkNotNullParameter(holder, "holder");
            SearchAdGridBean searchAdGridBean = commonMultiItemBean != null ? (SearchAdGridBean) commonMultiItemBean.getData() : null;
            final SearchListAdGridAdapter searchListAdGridAdapter = new SearchListAdGridAdapter();
            final Ref.IntRef intRef = new Ref.IntRef();
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            t50 t50Var = (t50) holder.a();
            if (t50Var != null && (recyclerView2 = t50Var.f45138b) != null) {
                final SearchListGameAdapter searchListGameAdapter = SearchListGameAdapter.this;
                recyclerView2.setAdapter(searchListAdGridAdapter);
                recyclerView2.setLayoutManager(new GridLayoutManager(recyclerView2.getContext(), 2, 0, false));
                recyclerView2.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.search.adapter.SearchListGameAdapter$5$onBind$1$1
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public void onScrollStateChanged(RecyclerView recyclerView3, int newState) {
                        Intrinsics.checkNotNullParameter(recyclerView3, "recyclerView");
                        super.onScrollStateChanged(recyclerView3, newState);
                        if (newState == 0) {
                            SearchListGameAdapter.AnonymousClass5.onBind$exposureItem(booleanRef, intRef, searchListAdGridAdapter, searchListGameAdapter);
                        }
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public void onScrolled(RecyclerView recyclerView3, int dx, int dy) {
                        Intrinsics.checkNotNullParameter(recyclerView3, "recyclerView");
                        super.onScrolled(recyclerView3, dx, dy);
                        intRef.element = h.q(((t50) holder.a()).f45138b);
                    }
                });
            }
            searchListAdGridAdapter.submitList(searchAdGridBean != null ? searchAdGridBean.getGames() : null);
            final SearchListGameAdapter searchListGameAdapter2 = SearchListGameAdapter.this;
            searchListAdGridAdapter.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.ui.search.adapter.b
                @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
                public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    SearchListGameAdapter.AnonymousClass5.onBind$lambda$2(searchListGameAdapter2, baseQuickAdapter, view, i11);
                }
            });
            t50 t50Var2 = (t50) holder.a();
            if (t50Var2 == null || (recyclerView = t50Var2.f45138b) == null) {
                return;
            }
            final SearchListGameAdapter searchListGameAdapter3 = SearchListGameAdapter.this;
            recyclerView.postDelayed(new Runnable() { // from class: com.join.kotlin.ui.search.adapter.c
                @Override // java.lang.Runnable
                public final void run() {
                    SearchListGameAdapter.AnonymousClass5.onBind$exposureItem(booleanRef, intRef, searchListAdGridAdapter, searchListGameAdapter3);
                }
            }, 300L);
        }
    }

    public SearchListGameAdapter() {
        super(null, 1, null);
        this.keyword = "";
        onItemViewType(new com.chad.library.adapter.base.c.a() { // from class: com.join.kotlin.ui.search.adapter.a
            @Override // com.chad.library.adapter.base.c.a
            public final int onItemViewType(int i10, List list) {
                return SearchListGameAdapter._init_$lambda$0(i10, list);
            }
        }).addItemType(0, v2.a.class, new OnMultiItemAdapterListenerImpl<CommonMultiItemBean, b60>() { // from class: com.join.kotlin.ui.search.adapter.SearchListGameAdapter.2
            @Override // com.chad.library.adapter.base.c.b
            public void onBind(v2.a<b60> holder, int i10, CommonMultiItemBean commonMultiItemBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                SearchTitleBean searchTitleBean = commonMultiItemBean != null ? (SearchTitleBean) commonMultiItemBean.getData() : null;
                b60 b60Var = (b60) holder.a();
                if (b60Var != null) {
                    b60Var.n(searchTitleBean);
                }
            }
        }).addItemType(3, v2.a.class, new OnMultiItemAdapterListenerImpl<CommonMultiItemBean, z50>() { // from class: com.join.kotlin.ui.search.adapter.SearchListGameAdapter.3
            @Override // com.chad.library.adapter.base.c.b
            public void onBind(v2.a<z50> holder, int i10, CommonMultiItemBean commonMultiItemBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                SearchTitleBean searchTitleBean = commonMultiItemBean != null ? (SearchTitleBean) commonMultiItemBean.getData() : null;
                z50 z50Var = (z50) holder.a();
                if (z50Var != null) {
                    z50Var.n(searchTitleBean);
                }
            }
        }).addItemType(1, v2.a.class, new OnMultiItemAdapterListenerImpl<CommonMultiItemBean, x50>() { // from class: com.join.kotlin.ui.search.adapter.SearchListGameAdapter.4
            {
                super(R.layout.item_search_list_game);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(v2.a<x50> holder, int i10, CommonMultiItemBean commonMultiItemBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                SearchGameBean searchGameBean = commonMultiItemBean != null ? (SearchGameBean) commonMultiItemBean.getData() : null;
                x50 x50Var = (x50) holder.a();
                if (x50Var != null) {
                    x50Var.t(commonMultiItemBean != null ? commonMultiItemBean.getDownState() : null);
                }
                x50 x50Var2 = (x50) holder.a();
                if (x50Var2 != null) {
                    x50Var2.u(searchGameBean);
                }
                SearchListGameAdapter.this.updateGameUI(holder, commonMultiItemBean);
                x50 x50Var3 = (x50) holder.a();
                if (x50Var3 != null) {
                    x50Var3.executePendingBindings();
                }
            }
        }).addItemType(2, v2.a.class, new AnonymousClass5());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int _init_$lambda$0(int i10, List list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (i10 < 0 || i10 >= list.size()) {
            return -1;
        }
        return ((CommonMultiItemBean) list.get(i10)).getItemType();
    }

    @NotNull
    public final String getKeyword() {
        return this.keyword;
    }

    public final void setKeyword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.keyword = str;
    }

    public final void updateGameUI(@NotNull v2.a<x50> holder, @Nullable CommonMultiItemBean commonMultiItemBean) {
        DownloadNormalView downloadNormalView;
        Intrinsics.checkNotNullParameter(holder, "holder");
        x50 x50Var = (x50) holder.a();
        if (x50Var == null || (downloadNormalView = x50Var.f47099d) == null) {
            return;
        }
        downloadNormalView.f(new m6.c(this, getContext()) { // from class: com.join.kotlin.ui.search.adapter.SearchListGameAdapter.updateGameUI.1
            final /* synthetic */ SearchListGameAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(context, this.$item);
                this.this$0 = this;
            }

            @Override // m6.c, com.join.mgps.callbacks.f
            public void onViewClicked(DownloadNormalView downView) {
                CommonMultiItemBean commonMultiItemBean2 = this.$item;
                boolean z10 = false;
                if (commonMultiItemBean2 != null && commonMultiItemBean2.hasGInfo()) {
                    z10 = true;
                }
                if (z10) {
                    ExtBean chatId = new ExtBean().setChatId("searchResultGame");
                    ExtBean extBean = this.$item.getExtBean();
                    ExtBean keyword = chatId.setFrom(String.valueOf(extBean != null ? extBean.getFrom() : null)).setKeyword(this.this$0.getKeyword());
                    GInfo gInfo = this.$item.getGInfo();
                    ExtBean resourceId = keyword.setResourceId(gInfo != null ? gInfo.getGameId() : null);
                    ExtBean extBean2 = this.$item.getExtBean();
                    ExtBean typeCode = resourceId.setTypeCode(String.valueOf(extBean2 != null ? extBean2.getTypeCode() : null));
                    ExtBean extBean3 = this.$item.getExtBean();
                    ExtBean extBeanBuildScene = typeCode.setPosition(String.valueOf(extBean3 != null ? extBean3.getPosition() : null)).setReMarks(this.this$0.getKeyword()).buildScene();
                    GInfo gInfo2 = this.$item.getGInfo();
                    if (gInfo2 != null) {
                        gInfo2.setExt(JsonMapper.toJsonString(extBeanBuildScene.toExt()));
                    }
                }
                super.onViewClicked(downView);
            }
        });
    }
}
