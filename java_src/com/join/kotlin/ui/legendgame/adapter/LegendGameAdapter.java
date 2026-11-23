package com.join.kotlin.ui.legendgame.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.baidu.mobads.sdk.internal.bn;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.legendgame.data.LegendGameBespeakUiState;
import com.join.kotlin.ui.legendgame.data.LegendGameMultiItem;
import com.join.kotlin.ui.legendgame.data.LegendGameServerOpenData;
import com.join.kotlin.ui.legendgame.dialog.LegendGameBespeakDialog;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000s\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u001b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u0002J\u0015\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\nH\u0002¢\u0006\u0002\u0010\u001dJ \u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u0002H\u0002J \u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010 \u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010!\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\"H\u0002J*\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020%2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'2\b\b\u0002\u0010)\u001a\u00020\fH\u0002J \u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020(H\u0002Ra\u0010\u0005\u001aI\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u00061"}, d2 = {"Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;", "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;", "<init>", "()V", "onBespeakConfirm", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "item", "", "position", "", "book", "", "getOnBespeakConfirm", "()Lkotlin/jvm/functions/Function3;", "setOnBespeakConfirm", "(Lkotlin/jvm/functions/Function3;)V", "updateDownloadProgress", "holder", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "game", "Lcom/join/mgps/dto/CommonGameInfoBean;", "updateGameDownload", "updateBespeakBell", "createGameItemListener", "com/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1", "layoutId", "(I)Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1;", "bindGame", "bindBespeakBell", "bindGameDownload", "bindServerOpen", "Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;", "bindTags", "container", "Landroid/widget/LinearLayout;", bn.f7600l, "", "", "twoRows", "createTagView", "Landroid/widget/TextView;", "inflater", "Landroid/view/LayoutInflater;", "parent", "Landroid/view/ViewGroup;", TagGameListActivity_.TAG_EXTRA, "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLegendGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,238:1\n55#2:239\n55#2:240\n55#2:241\n1#3:242\n1869#4,2:243\n1878#4,2:245\n1869#4,2:247\n1880#4:249\n*S KotlinDebug\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter\n*L\n43#1:239\n46#1:240\n49#1:241\n203#1:243,2\n211#1:245,2\n222#1:247,2\n211#1:249\n*E\n"})
public final class LegendGameAdapter extends com.chad.library.adapter.base.c<LegendGameMultiItem> {

    @Nullable
    private Function3<? super LegendGameMultiItem, ? super Integer, ? super Boolean, Unit> onBespeakConfirm;

    /* JADX INFO: renamed from: com.join.kotlin.ui.legendgame.adapter.LegendGameAdapter$createGameItemListener$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0010"}, d2 = {"com/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "onCreate", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBind", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nLegendGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1\n+ 2 LegendGameMultiItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameMultiItem\n*L\n1#1,238:1\n19#2:239\n*S KotlinDebug\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1\n*L\n97#1:239\n*E\n"})
    public static final class C13611 implements com.chad.library.adapter.base.c.b<LegendGameMultiItem, v2.c> {
        final /* synthetic */ int $layoutId;
        final /* synthetic */ LegendGameAdapter this$0;

        C13611(int i10, LegendGameAdapter legendGameAdapter) {
            this.$layoutId = i10;
            this.this$0 = legendGameAdapter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$0(LegendGameAdapter legendGameAdapter, CommonGameInfoBean commonGameInfoBean, View view) {
            IntentUtil.getInstance().intentActivity(legendGameAdapter.getContext(), commonGameInfoBean.getIntentDataBean());
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean isFullSpanItem(int i10) {
            return com.chad.library.adapter.base.c.b.a.a(this, i10);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
            return com.chad.library.adapter.base.c.b.a.c(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.d(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.e(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.f(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, LegendGameMultiItem legendGameMultiItem, List list) {
            onBind((v2.c) viewHolder, i10, legendGameMultiItem, (List<? extends Object>) list);
        }

        @Override // com.chad.library.adapter.base.c.b
        public v2.c onCreate(Context context, ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new v2.c(this.$layoutId, parent);
        }

        public void onBind(v2.c cVar, int i10, LegendGameMultiItem legendGameMultiItem, List<? extends Object> list) {
            com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, legendGameMultiItem, list);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onBind(v2.c holder, int i10, LegendGameMultiItem legendGameMultiItem) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (legendGameMultiItem != null) {
                Object data = legendGameMultiItem.getData();
                if (!(data instanceof CommonGameInfoBean)) {
                    data = null;
                }
                final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) data;
                if (commonGameInfoBean == null) {
                    return;
                }
                this.this$0.bindGame(holder, commonGameInfoBean, legendGameMultiItem);
                this.this$0.bindBespeakBell(holder, legendGameMultiItem, i10);
                this.this$0.bindGameDownload(holder, commonGameInfoBean);
                View view = holder.itemView;
                final LegendGameAdapter legendGameAdapter = this.this$0;
                view.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.legendgame.adapter.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        LegendGameAdapter.C13611.onBind$lambda$0(legendGameAdapter, commonGameInfoBean, view2);
                    }
                });
            }
        }
    }

    public LegendGameAdapter() {
        super(null, 1, null);
        onItemViewType(new com.chad.library.adapter.base.c.a<LegendGameMultiItem>() { // from class: com.join.kotlin.ui.legendgame.adapter.LegendGameAdapter.1
            @Override // com.chad.library.adapter.base.c.a
            public int onItemViewType(int position, List<? extends LegendGameMultiItem> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                boolean z10 = false;
                if (position >= 0 && position < list.size()) {
                    z10 = true;
                }
                if (z10) {
                    return list.get(position).getViewType();
                }
                return 1;
            }
        }).addItemType(1, v2.c.class, createGameItemListener(R.layout.item_legend_game_latest)).addItemType(2, v2.c.class, createGameItemListener(R.layout.item_legend_game_brand)).addItemType(3, v2.c.class, new com.chad.library.adapter.base.c.b<LegendGameMultiItem, v2.c>() { // from class: com.join.kotlin.ui.legendgame.adapter.LegendGameAdapter.2
            @Override // com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int i10) {
                return com.chad.library.adapter.base.c.b.a.a(this, i10);
            }

            @Override // com.chad.library.adapter.base.c.b
            public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
                return com.chad.library.adapter.base.c.b.a.c(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                com.chad.library.adapter.base.c.b.a.d(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
                com.chad.library.adapter.base.c.b.a.e(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
                com.chad.library.adapter.base.c.b.a.f(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, LegendGameMultiItem legendGameMultiItem, List list) {
                onBind((v2.c) viewHolder, i10, legendGameMultiItem, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public v2.c onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new v2.c(R.layout.item_legend_game_server, parent);
            }

            public void onBind(v2.c cVar, int i10, LegendGameMultiItem legendGameMultiItem, List<? extends Object> list) {
                com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, legendGameMultiItem, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(v2.c holder, int i10, LegendGameMultiItem legendGameMultiItem) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                LegendGameAdapter legendGameAdapter = LegendGameAdapter.this;
                if (legendGameMultiItem != null) {
                    Object data = legendGameMultiItem.getData();
                    if (!(data instanceof LegendGameServerOpenData)) {
                        data = null;
                    }
                    LegendGameServerOpenData legendGameServerOpenData = (LegendGameServerOpenData) data;
                    if (legendGameServerOpenData == null) {
                        return;
                    }
                    legendGameAdapter.bindServerOpen(holder, legendGameServerOpenData);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bindBespeakBell(v2.c cVar, final LegendGameMultiItem legendGameMultiItem, final int i10) {
        LegendGameBespeakUiState bespeakUi = legendGameMultiItem.getBespeakUi();
        boolean z10 = false;
        if (bespeakUi != null && bespeakUi.getShowBespeakBell()) {
            z10 = true;
        }
        cVar.h(R.id.ivBespeakSwitch, !z10);
        if (!z10 || bespeakUi == null) {
            return;
        }
        final boolean zIs_reminded = bespeakUi.is_reminded();
        ((ImageView) cVar.getView(R.id.ivBespeakSwitch)).setImageResource(zIs_reminded ? R.drawable.ic_legend_game_bespeak_on : R.drawable.ic_legend_game_bespeak_off);
        cVar.getView(R.id.ivBespeakSwitch).setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.legendgame.adapter.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LegendGameAdapter.bindBespeakBell$lambda$3(zIs_reminded, this, legendGameMultiItem, i10, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bindBespeakBell$lambda$3(boolean z10, final LegendGameAdapter legendGameAdapter, final LegendGameMultiItem legendGameMultiItem, final int i10, View view) {
        if (z10) {
            LegendGameBespeakDialog.showCancelConfirm(new Function0() { // from class: com.join.kotlin.ui.legendgame.adapter.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return LegendGameAdapter.bindBespeakBell$lambda$3$lambda$2(this.f49250b, legendGameMultiItem, i10);
                }
            });
            return;
        }
        Function3<? super LegendGameMultiItem, ? super Integer, ? super Boolean, Unit> function3 = legendGameAdapter.onBespeakConfirm;
        if (function3 != null) {
            function3.invoke(legendGameMultiItem, Integer.valueOf(i10), Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit bindBespeakBell$lambda$3$lambda$2(LegendGameAdapter legendGameAdapter, LegendGameMultiItem legendGameMultiItem, int i10) {
        Function3<? super LegendGameMultiItem, ? super Integer, ? super Boolean, Unit> function3 = legendGameAdapter.onBespeakConfirm;
        if (function3 != null) {
            function3.invoke(legendGameMultiItem, Integer.valueOf(i10), Boolean.FALSE);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x0081  */
    /* JADX WARN: Code duplicated, block: B:41:0x0091  */
    /* JADX WARN: Code duplicated, block: B:42:0x0096  */
    public final void bindGame(v2.c cVar, CommonGameInfoBean commonGameInfoBean, LegendGameMultiItem legendGameMultiItem) {
        String icon;
        String coverPicUrl;
        GInfoBean g_info = commonGameInfoBean.getG_info();
        cVar.n(R.id.tv_text_1, commonGameInfoBean.getShowName());
        String serverInfoText = legendGameMultiItem.getServerInfoText();
        if (serverInfoText == null) {
            serverInfoText = "";
        }
        cVar.n(R.id.tvServerInfo, serverInfoText);
        cVar.h(R.id.tvServerInfo, StringsKt__StringsKt.isBlank(serverInfoText));
        String str = null;
        String info = g_info != null ? g_info.getInfo() : null;
        cVar.n(R.id.tv_text_5, info != null ? info : "");
        bindTags((LinearLayout) cVar.getView(R.id.layoutLegendGameTags), legendGameMultiItem.getCustomTags(), legendGameMultiItem.getViewType() == 2);
        if (g_info != null && g_info.getGift_package_switch() == 1) {
            cVar.h(R.id.iv_1, false);
        } else {
            cVar.h(R.id.iv_1, true);
        }
        if (legendGameMultiItem.getViewType() == 2) {
            icon = commonGameInfoBean.getBig_pic();
            if (icon == null) {
                coverPicUrl = commonGameInfoBean.getCoverPicUrl();
                if (coverPicUrl != null && (!StringsKt__StringsKt.isBlank(coverPicUrl))) {
                    str = coverPicUrl;
                }
                if (str == null) {
                    icon = commonGameInfoBean.getIcon();
                } else {
                    icon = str;
                }
            } else {
                if (!(!StringsKt__StringsKt.isBlank(icon))) {
                    icon = null;
                }
                if (icon == null) {
                    coverPicUrl = commonGameInfoBean.getCoverPicUrl();
                    if (coverPicUrl != null) {
                        str = coverPicUrl;
                    }
                    if (str == null) {
                        icon = commonGameInfoBean.getIcon();
                    } else {
                        icon = str;
                    }
                }
            }
        } else {
            icon = commonGameInfoBean.getIcon();
        }
        l.o((SimpleDraweeView) cVar.getView(R.id.sdv_image), icon);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bindGameDownload(v2.c cVar, CommonGameInfoBean commonGameInfoBean) {
        ((DownloadNormalView) cVar.getView(R.id.dv_view)).f(new m6.c(this, cVar.itemView.getContext()) { // from class: com.join.kotlin.ui.legendgame.adapter.LegendGameAdapter.bindGameDownload.1
            final /* synthetic */ LegendGameAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(context, this.$game);
                this.this$0 = this;
            }

            @Override // m6.c, com.join.mgps.callbacks.f
            public void onViewClicked(DownloadNormalView downView) {
                ExtBean extBean = this.$game.getExtBean();
                if (extBean != null) {
                    t.l(this.this$0.getContext()).R1(Event.commonClick, extBean.copy().setTypeCode("btnDown").buildScene().toExt());
                }
                super.onViewClicked(downView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bindServerOpen(v2.c cVar, LegendGameServerOpenData legendGameServerOpenData) {
        String label = legendGameServerOpenData.getLabel();
        if (label == null) {
            label = "";
        }
        cVar.n(R.id.tvServerOpenLabel, label);
        String time = legendGameServerOpenData.getTime();
        cVar.n(R.id.tvServerOpenTime, time != null ? time : "");
        cVar.itemView.setOnClickListener(null);
    }

    private final void bindTags(LinearLayout container, List<String> tags, boolean twoRows) {
        container.removeAllViews();
        List<String> list = tags;
        if (list == null || list.isEmpty()) {
            container.setVisibility(8);
            return;
        }
        container.setVisibility(0);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(container.getContext());
        List<String> listTake = CollectionsKt___CollectionsKt.take(tags, 4);
        if (!twoRows) {
            container.setOrientation(0);
            for (String str : listTake) {
                Intrinsics.checkNotNull(layoutInflaterFrom);
                container.addView(createTagView(layoutInflaterFrom, container, str));
            }
            return;
        }
        container.setOrientation(1);
        int dimensionPixelSize = container.getResources().getDimensionPixelSize(R.dimen.wdp6);
        int i10 = 0;
        for (Object obj : CollectionsKt___CollectionsKt.chunked(listTake, 2)) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            List<String> list2 = (List) obj;
            LinearLayout linearLayout = new LinearLayout(container.getContext());
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            if (i10 > 0) {
                layoutParams.topMargin = dimensionPixelSize;
            }
            linearLayout.setLayoutParams(layoutParams);
            for (String str2 : list2) {
                Intrinsics.checkNotNull(layoutInflaterFrom);
                linearLayout.addView(createTagView(layoutInflaterFrom, linearLayout, str2));
            }
            container.addView(linearLayout);
            i10 = i11;
        }
    }

    static /* synthetic */ void bindTags$default(LegendGameAdapter legendGameAdapter, LinearLayout linearLayout, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        legendGameAdapter.bindTags(linearLayout, list, z10);
    }

    private final C13611 createGameItemListener(int layoutId) {
        return new C13611(layoutId, this);
    }

    private final TextView createTagView(LayoutInflater inflater, ViewGroup parent, String tag) {
        View viewInflate = inflater.inflate(R.layout.layout_legend_game_tag_item, parent, false);
        Intrinsics.checkNotNull(viewInflate, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) viewInflate;
        textView.setText(tag);
        return textView;
    }

    @Nullable
    public final Function3<LegendGameMultiItem, Integer, Boolean, Unit> getOnBespeakConfirm() {
        return this.onBespeakConfirm;
    }

    public final void setOnBespeakConfirm(@Nullable Function3<? super LegendGameMultiItem, ? super Integer, ? super Boolean, Unit> function3) {
        this.onBespeakConfirm = function3;
    }

    public final void updateBespeakBell(@NotNull v2.c holder, @NotNull LegendGameMultiItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        bindBespeakBell(holder, item, holder.getBindingAdapterPosition());
    }

    public final void updateDownloadProgress(@NotNull v2.c holder, @NotNull CommonGameInfoBean game) {
        DownloadNormalView downloadNormalView;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(game, "game");
        DownloadTask task = DlTaskManager.INSTANCE.getTask(game);
        if (task == null || (downloadNormalView = (DownloadNormalView) holder.b(R.id.dv_view)) == null) {
            return;
        }
        downloadNormalView.d(task);
    }

    public final void updateGameDownload(@NotNull v2.c holder, @NotNull CommonGameInfoBean game) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(game, "game");
        ((DownloadNormalView) holder.getView(R.id.dv_view)).f(new m6.c(holder.itemView.getContext(), game));
    }
}
