package com.join.kotlin.autocode.dailyfind.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.common.utils.l;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.EverdayNewGameActivity;
import com.join.kotlin.autocode.dailyfind.model.DailyDiscoveryGameBean;
import com.join.kotlin.autocode.dailyfind.model.DailyGuessGameBean;
import com.join.kotlin.autocode.dailyfind.model.DailyRankItemBean;
import com.join.kotlin.autocode.dailyfind.model.DailyRankListItemBean;
import com.join.kotlin.autocode.dailyfind.model.DailyTodayGameBean;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.ClassifyAndRankActivity_;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_;
import com.join.mgps.callbacks.w;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ImageInfo;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;", "Lcom/join/mgps/dto/CommonMultiItemBean;", "videoHelper", "Lcom/join/android/app/component/video/RvListVideoHelper;", "<init>", "(Lcom/join/android/app/component/video/RvListVideoHelper;)V", "getVideoHelper", "()Lcom/join/android/app/component/video/RvListVideoHelper;", "updateDailyGameUI", "", "holder", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "item", "Lcom/join/mgps/dto/GamedetialModleFourBean;", "updateDailyGameProgress", "initImageGallery", "itemData", "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;", "bindRank", "helper", "Companion", "BannerPagerAdapter", "BannerPagerItem", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDailyFindPageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,956:1\n55#2:957\n55#2:958\n55#2:959\n55#2:960\n55#2:961\n55#2:962\n1878#3,3:963\n*S KotlinDebug\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter\n*L\n127#1:957\n191#1:958\n267#1:959\n288#1:960\n370#1:961\n394#1:962\n598#1:963,3\n*E\n"})
public final class DailyFindPageAdapter extends com.chad.library.adapter.base.c<CommonMultiItemBean> {
    public static final int TYPE_DAY_GAME = 1;
    public static final int TYPE_DAY_GAME_GUESS = 4;
    public static final int TYPE_DAY_GAME_RANK = 3;
    public static final int TYPE_DAY_GAME_TIME_LINE = 5;
    public static final int TYPE_DAY_GAME_TODAY = 2;
    public static final int TYPE_DIVIDER_LINE_H = 6;

    @Nullable
    private final com.join.android.app.component.video.h videoHelper;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final RecyclerView.RecycledViewPool sharedGamePool = new RecyclerView.RecycledViewPool();

    @NotNull
    private static final RecyclerView.RecycledViewPool sharedGameGuessPool = new RecyclerView.RecycledViewPool();

    @NotNull
    private static final RecyclerView.RecycledViewPool sharedThumbPool = new RecyclerView.RecycledViewPool();

    /* JADX INFO: renamed from: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0010"}, d2 = {"com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$1", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/join/mgps/dto/CommonMultiItemBean;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "onCreate", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBind", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 implements com.chad.library.adapter.base.c.b<CommonMultiItemBean, v2.c> {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$2$lambda$1(v2.c cVar, DailyDiscoveryGameBean dailyDiscoveryGameBean, View view) {
            IntentUtil.getInstance().intentActivity(cVar.itemView.getContext(), dailyDiscoveryGameBean.getGame().getIntentDataBean());
            t.l(cVar.itemView.getContext()).R1(Event.commonClick, dailyDiscoveryGameBean.getGame().getExtBean().buildScene().toExt());
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
        public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, CommonMultiItemBean commonMultiItemBean, List list) {
            onBind((v2.c) viewHolder, i10, commonMultiItemBean, (List<? extends Object>) list);
        }

        @Override // com.chad.library.adapter.base.c.b
        public v2.c onCreate(Context context, ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new v2.c(R.layout.item_daily_find_day_game, parent);
        }

        public void onBind(v2.c cVar, int i10, CommonMultiItemBean commonMultiItemBean, List<? extends Object> list) {
            com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, commonMultiItemBean, list);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onBind(final v2.c holder, int i10, CommonMultiItemBean commonMultiItemBean) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            final DailyDiscoveryGameBean dailyDiscoveryGameBean = commonMultiItemBean != null ? (DailyDiscoveryGameBean) commonMultiItemBean.getData() : null;
            if (dailyDiscoveryGameBean != null) {
                DailyFindPageAdapter dailyFindPageAdapter = DailyFindPageAdapter.this;
                l.h((SimpleDraweeView) holder.getView(R.id.sdv_icon), dailyDiscoveryGameBean.getGame().getIco_remote());
                holder.n(R.id.tv_text_1, dailyDiscoveryGameBean.getGame().getGame_name());
                holder.n(R.id.tv_text_2, dailyDiscoveryGameBean.getGame().getScore());
                holder.n(R.id.tv_text_3, UtilsMy.Q1(dailyDiscoveryGameBean.getGame().getSp_tag_info(), dailyDiscoveryGameBean.getGame().getTag_info()));
                holder.n(R.id.tv_text_4, dailyDiscoveryGameBean.getGame().getInfo());
                HtmlTextView htmlTextView = (HtmlTextView) holder.getView(R.id.htv_text_1);
                ConstraintLayout constraintLayout = (ConstraintLayout) holder.getView(R.id.cl_root);
                if (dailyDiscoveryGameBean.getGame().getDiscover() != null) {
                    htmlTextView.setHtml(dailyDiscoveryGameBean.getGame().getDiscover().getIntro());
                    if (t2.i(dailyDiscoveryGameBean.getGame().getDiscover().getBg_color())) {
                        GradientDrawable gradientDrawable = new GradientDrawable();
                        gradientDrawable.setShape(0);
                        gradientDrawable.setColor(Color.parseColor(dailyDiscoveryGameBean.getGame().getDiscover().getBg_color()));
                        gradientDrawable.setCornerRadius(holder.itemView.getContext().getResources().getDimension(R.dimen.wdp10));
                        constraintLayout.setBackground(gradientDrawable);
                    }
                }
                dailyFindPageAdapter.updateDailyGameUI(holder, dailyDiscoveryGameBean.getGame());
                dailyFindPageAdapter.initImageGallery(holder, dailyDiscoveryGameBean);
                holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.autocode.dailyfind.adapter.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DailyFindPageAdapter.AnonymousClass1.onBind$lambda$2$lambda$1(holder, dailyDiscoveryGameBean, view);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0010"}, d2 = {"com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$2", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/join/mgps/dto/CommonMultiItemBean;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "onCreate", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBind", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass2 implements com.chad.library.adapter.base.c.b<CommonMultiItemBean, v2.c> {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$3$lambda$2(DailyTodayGameBean dailyTodayGameBean, View view) {
            Context context = view.getContext();
            Intent intent = new Intent(view.getContext(), (Class<?>) EverdayNewGameActivity.class);
            intent.putExtra("title", "今日首发");
            intent.putExtra("extBean", dailyTodayGameBean.getExtBean().buildScene());
            context.startActivity(intent);
            t.l(view.getContext()).R1(Event.commonClick, dailyTodayGameBean.getExtBean().setTypeCode("btnMore").buildScene().toExt());
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
        public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, CommonMultiItemBean commonMultiItemBean, List list) {
            onBind((v2.c) viewHolder, i10, commonMultiItemBean, (List<? extends Object>) list);
        }

        @Override // com.chad.library.adapter.base.c.b
        public v2.c onCreate(Context context, ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new v2.c(R.layout.item_daily_find_day_today, parent);
        }

        public void onBind(v2.c cVar, int i10, CommonMultiItemBean commonMultiItemBean, List<? extends Object> list) {
            com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, commonMultiItemBean, list);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onBind(v2.c holder, int i10, CommonMultiItemBean commonMultiItemBean) {
            DailyGameAdapter dailyGameAdapter;
            Intrinsics.checkNotNullParameter(holder, "holder");
            final DailyTodayGameBean dailyTodayGameBean = commonMultiItemBean != null ? (DailyTodayGameBean) commonMultiItemBean.getData() : null;
            if (holder.itemView.getTag() instanceof DailyGameAdapter) {
                Object tag = holder.itemView.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.adapter.DailyGameAdapter");
                dailyGameAdapter = (DailyGameAdapter) tag;
            } else {
                dailyGameAdapter = null;
            }
            holder.itemView.getLayoutParams().height = dailyTodayGameBean != null ? dailyTodayGameBean.getItemHeight() : 0;
            RecyclerView recyclerView = (RecyclerView) holder.getView(R.id.rv_list);
            TextView textView = (TextView) holder.getView(R.id.tv_text_2);
            if (dailyGameAdapter == null) {
                dailyGameAdapter = new DailyGameAdapter();
                recyclerView.setLayoutManager(new LinearLayoutManager(holder.itemView.getContext(), 1, false));
                holder.itemView.setTag(dailyGameAdapter);
                recyclerView.setAdapter(dailyGameAdapter);
                recyclerView.setRecycledViewPool(DailyFindPageAdapter.INSTANCE.getSharedGamePool());
                if (recyclerView.getItemDecorationCount() == 0) {
                    final DailyFindPageAdapter dailyFindPageAdapter = DailyFindPageAdapter.this;
                    recyclerView.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter$2$onBind$2
                        @Override // com.join.mgps.base.decoration.b
                        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i11) {
                            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                            aVar.f64116f = 0;
                            aVar.f64120d = (int) dailyFindPageAdapter.getContext().getResources().getDimension(R.dimen.wdp20);
                            return aVar;
                        }
                    });
                }
            }
            textView.setText(dailyTodayGameBean != null ? dailyTodayGameBean.getSpannableText() : null);
            if (dailyTodayGameBean != null) {
                dailyGameAdapter.submitList(dailyTodayGameBean.getItems());
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.autocode.dailyfind.adapter.e
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DailyFindPageAdapter.AnonymousClass2.onBind$lambda$3$lambda$2(dailyTodayGameBean, view);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter$4, reason: invalid class name */
    @Metadata(d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0010"}, d2 = {"com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/join/mgps/dto/CommonMultiItemBean;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "onCreate", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBind", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDailyFindPageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,956:1\n1869#2,2:957\n*S KotlinDebug\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4\n*L\n354#1:957,2\n*E\n"})
    public static final class AnonymousClass4 implements com.chad.library.adapter.base.c.b<CommonMultiItemBean, v2.c> {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final void onBind$lambda$3(DailyGuessGameBean dailyGuessGameBean, Ref.ObjectRef objectRef, View view) {
            if (dailyGuessGameBean != null) {
                dailyGuessGameBean.setCurItems(DailyGuessGameBean.nextBatch$default(dailyGuessGameBean, 0, 1, null));
                ((DailyGameHorizontalAdapter) objectRef.element).submitList(dailyGuessGameBean.getCurItems());
                t.l(view.getContext()).R1(Event.commonClick, dailyGuessGameBean.getExtBean().copy().setTypeCode("btnMore").buildScene().toExt());
                List<CollectionBeanSub> curItems = dailyGuessGameBean.getCurItems();
                if (curItems != null) {
                    for (CollectionBeanSub collectionBeanSub : curItems) {
                        if (!collectionBeanSub.getExposure()) {
                            t.l(view.getContext()).R1(Event.commonExp, collectionBeanSub.getExtBean().buildScene().toExt());
                            collectionBeanSub.setExposure(true);
                        }
                    }
                }
            }
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
        public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, CommonMultiItemBean commonMultiItemBean, List list) {
            onBind((v2.c) viewHolder, i10, commonMultiItemBean, (List<? extends Object>) list);
        }

        @Override // com.chad.library.adapter.base.c.b
        public v2.c onCreate(Context context, ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new v2.c(R.layout.item_daily_find_day_guess, parent);
        }

        public void onBind(v2.c cVar, int i10, CommonMultiItemBean commonMultiItemBean, List<? extends Object> list) {
            com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, commonMultiItemBean, list);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v15, types: [T, com.join.kotlin.autocode.dailyfind.adapter.DailyGameHorizontalAdapter] */
        /* JADX WARN: Type inference failed for: r2v4, types: [T, com.join.kotlin.autocode.dailyfind.adapter.DailyGameHorizontalAdapter, java.lang.Object] */
        @Override // com.chad.library.adapter.base.c.b
        public void onBind(final v2.c holder, int i10, CommonMultiItemBean commonMultiItemBean) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            final DailyGuessGameBean dailyGuessGameBean = commonMultiItemBean != null ? (DailyGuessGameBean) commonMultiItemBean.getData() : null;
            RecyclerView recyclerView = (RecyclerView) holder.getView(R.id.rv_list);
            TextView textView = (TextView) holder.getView(R.id.tv_btn_1);
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            if (holder.itemView.getTag() instanceof DailyGameHorizontalAdapter) {
                Object tag = holder.itemView.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.adapter.DailyGameHorizontalAdapter");
                objectRef.element = (DailyGameHorizontalAdapter) tag;
            }
            if (objectRef.element == 0) {
                ?? dailyGameHorizontalAdapter = new DailyGameHorizontalAdapter();
                objectRef.element = dailyGameHorizontalAdapter;
                holder.itemView.setTag(dailyGameHorizontalAdapter);
                recyclerView.setRecycledViewPool(DailyFindPageAdapter.INSTANCE.getSharedGameGuessPool());
                recyclerView.setHasFixedSize(true);
                recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
                recyclerView.setAdapter((RecyclerView.Adapter) objectRef.element);
                if (recyclerView.getItemDecorationCount() == 0) {
                    recyclerView.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter$4$onBind$1$1
                        @Override // com.join.mgps.base.decoration.b
                        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i11) {
                            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                            aVar.f64116f = 0;
                            aVar.f64118b = (int) holder.itemView.getResources().getDimension(R.dimen.wdp19);
                            return aVar;
                        }
                    });
                }
            }
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.autocode.dailyfind.adapter.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DailyFindPageAdapter.AnonymousClass4.onBind$lambda$3(dailyGuessGameBean, objectRef, view);
                }
            });
            if (dailyGuessGameBean != null) {
                ((DailyGameHorizontalAdapter) objectRef.element).submitList(dailyGuessGameBean.getCurItems());
            }
        }
    }

    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0016H\u0016J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\u0016H\u0016J \u0010#\u001a\u00020$2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001fH\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR$\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006%"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;", "Landroidx/viewpager/widget/PagerAdapter;", "videoHelper", "Lcom/join/android/app/component/video/RvListVideoHelper;", "viewPager1Views", "", "Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;", "modleFourBean", "Lcom/join/mgps/dto/GamedetialModleFourBean;", "<init>", "(Lcom/join/android/app/component/video/RvListVideoHelper;Ljava/util/List;Lcom/join/mgps/dto/GamedetialModleFourBean;)V", "getVideoHelper", "()Lcom/join/android/app/component/video/RvListVideoHelper;", "getViewPager1Views", "()Ljava/util/List;", "setViewPager1Views", "(Ljava/util/List;)V", "getModleFourBean", "()Lcom/join/mgps/dto/GamedetialModleFourBean;", "setModleFourBean", "(Lcom/join/mgps/dto/GamedetialModleFourBean;)V", "getCount", "", "getPageWidth", "", "position", "isViewFromObject", "", "view", "Landroid/view/View;", TypedValues.AttributesType.S_TARGET, "", "instantiateItem", "container", "Landroid/view/ViewGroup;", "destroyItem", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class BannerPagerAdapter extends PagerAdapter {

        @Nullable
        private GamedetialModleFourBean modleFourBean;

        @Nullable
        private final com.join.android.app.component.video.h videoHelper;

        @Nullable
        private List<BannerPagerItem> viewPager1Views;

        public BannerPagerAdapter(@Nullable com.join.android.app.component.video.h hVar, @Nullable List<BannerPagerItem> list, @Nullable GamedetialModleFourBean gamedetialModleFourBean) {
            this.videoHelper = hVar;
            this.viewPager1Views = list;
            this.modleFourBean = gamedetialModleFourBean;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(@NotNull ViewGroup container, int position, @NotNull Object target) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(target, "target");
            List<BannerPagerItem> list = this.viewPager1Views;
            BannerPagerItem bannerPagerItem = list != null ? list.get(position) : null;
            View view = (View) target;
            boolean z10 = false;
            if (bannerPagerItem != null && bannerPagerItem.getIsVideo()) {
                z10 = true;
            }
            if (z10) {
                bannerPagerItem.setCreate(true);
                MultiStandVideo multiStandVideo = (MultiStandVideo) view.findViewById(R.id.wf_video);
                if (multiStandVideo != null) {
                    multiStandVideo.onVideoPause();
                }
                if (multiStandVideo != null) {
                    multiStandVideo.release();
                }
            }
            container.removeView(view);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<BannerPagerItem> list = this.viewPager1Views;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Nullable
        public final GamedetialModleFourBean getModleFourBean() {
            return this.modleFourBean;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public float getPageWidth(int position) {
            BannerPagerItem bannerPagerItem;
            BannerPagerItem bannerPagerItem2;
            BannerPagerItem bannerPagerItem3;
            List<BannerPagerItem> list = this.viewPager1Views;
            if ((list == null || (bannerPagerItem3 = list.get(position)) == null || !bannerPagerItem3.getIsVideo()) ? false : true) {
                return 1.0f;
            }
            if (DailyFindPageAdapter.INSTANCE.isMiniGame(this.modleFourBean)) {
                List<BannerPagerItem> list2 = this.viewPager1Views;
                if ((list2 == null || (bannerPagerItem2 = list2.get(position)) == null || bannerPagerItem2.getPic_position() != 1) ? false : true) {
                    return 1.0f;
                }
            }
            List<BannerPagerItem> list3 = this.viewPager1Views;
            if ((list3 == null || (bannerPagerItem = list3.get(position)) == null || bannerPagerItem.getPic_position() != 1) ? false : true) {
                return 0.33f;
            }
            return super.getPageWidth(position);
        }

        @Nullable
        public final com.join.android.app.component.video.h getVideoHelper() {
            return this.videoHelper;
        }

        @Nullable
        public final List<BannerPagerItem> getViewPager1Views() {
            return this.viewPager1Views;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @NotNull
        public Object instantiateItem(@NotNull final ViewGroup container, final int position) {
            View viewInflate;
            Intrinsics.checkNotNullParameter(container, "container");
            List<BannerPagerItem> list = this.viewPager1Views;
            BannerPagerItem bannerPagerItem = list != null ? list.get(position) : null;
            if (bannerPagerItem != null && bannerPagerItem.getIsVideo()) {
                viewInflate = View.inflate(container.getContext(), R.layout.item_daily_game_video, null);
                MultiStandVideo multiStandVideo = (MultiStandVideo) viewInflate.findViewById(R.id.wf_video);
                if (multiStandVideo != null) {
                    GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBean;
                    if (!TextUtils.equals(gamedetialModleFourBean != null ? gamedetialModleFourBean.getGame_info_top_video_url() : null, multiStandVideo.getUrl())) {
                        GamedetialModleFourBean gamedetialModleFourBean2 = this.modleFourBean;
                        multiStandVideo.l(gamedetialModleFourBean2 != null ? gamedetialModleFourBean2.getGame_info_top_pic() : null);
                        GamedetialModleFourBean gamedetialModleFourBean3 = this.modleFourBean;
                        multiStandVideo.setName(gamedetialModleFourBean3 != null ? gamedetialModleFourBean3.getGame_name() : null);
                        com.join.android.app.component.video.h hVar = this.videoHelper;
                        multiStandVideo.setPlayTag(hVar != null ? hVar.s() : null);
                        GamedetialModleFourBean gamedetialModleFourBean4 = this.modleFourBean;
                        multiStandVideo.setPlayPosition(gamedetialModleFourBean4 != null ? gamedetialModleFourBean4.hashCode() : 0);
                        GamedetialModleFourBean gamedetialModleFourBean5 = this.modleFourBean;
                        multiStandVideo.setUpLazy(gamedetialModleFourBean5 != null ? gamedetialModleFourBean5.getGame_info_top_video_url() : null, false, null, null, "");
                        multiStandVideo.setRotateViewAuto(false);
                        multiStandVideo.setLockLand(true);
                        multiStandVideo.setReleaseWhenLossAudio(false);
                        multiStandVideo.setShowFullAnimation(false);
                        multiStandVideo.setIsTouchWiget(false);
                        multiStandVideo.setNeedLockFull(false);
                        multiStandVideo.setBottomProgressBarDrawable(null);
                        multiStandVideo.setVideoAllCallBack(new w() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$1
                            @Override // com.join.mgps.callbacks.w, v7.h
                            public void onClickBlank(String s10, Object... objects) {
                                Intrinsics.checkNotNullParameter(objects, "objects");
                                super.onClickBlank(s10, Arrays.copyOf(objects, objects.length));
                                GamedetialModleFourBean modleFourBean = this.this$0.getModleFourBean();
                                IntentUtil.getInstance().intentActivity(container.getContext(), modleFourBean != null ? modleFourBean.getIntentDataBean() : null);
                            }

                            @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
                            public void onClickCover() {
                                super.onClickCover();
                                GamedetialModleFourBean modleFourBean = this.this$0.getModleFourBean();
                                IntentUtil.getInstance().intentActivity(container.getContext(), modleFourBean != null ? modleFourBean.getIntentDataBean() : null);
                            }
                        });
                    }
                }
            } else {
                Object data = bannerPagerItem != null ? bannerPagerItem.getData() : null;
                String str = data instanceof String ? (String) data : null;
                View viewInflate2 = View.inflate(container.getContext(), bannerPagerItem != null && bannerPagerItem.getPic_position() == 1 ? R.layout.gamedetail_item_image_v_v1 : R.layout.gamedetail_item_image_v1, null);
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate2.findViewById(R.id.image);
                TextView textView = (TextView) viewInflate2.findViewById(R.id.count);
                if ((bannerPagerItem != null && bannerPagerItem.getPic_position() == 1) && !DailyFindPageAdapter.INSTANCE.isMiniGame(this.modleFourBean)) {
                    ViewGroup.LayoutParams layoutParams = simpleDraweeView.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
                    ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = (int) container.getContext().getResources().getDimension(R.dimen.wdp12);
                    viewInflate2.setLayoutParams(layoutParams2);
                }
                l.i(simpleDraweeView, String.valueOf(str), s.c.f27284a);
                textView.setVisibility(8);
                viewInflate = viewInflate2;
            }
            container.addView(viewInflate);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    List<ScreenshotGamedetialBean> game_screen_shot;
                    List<ScreenshotGamedetialBean> game_screen_shot2;
                    DailyFindPageAdapter.Companion companion = DailyFindPageAdapter.INSTANCE;
                    int i10 = 0;
                    if (companion.hasVideo(this.this$0.getModleFourBean())) {
                        if (position != 0) {
                            if (companion.hasGameScreenShot(this.this$0.getModleFourBean())) {
                                ScreenshotTrueListAcvity_.IntentBuilder_ intentBuilder_Intent = ScreenshotTrueListAcvity_.intent(container.getContext());
                                GamedetialModleFourBean modleFourBean = this.this$0.getModleFourBean();
                                ScreenshotTrueListAcvity_.IntentBuilder_ intentBuilder_FromData = intentBuilder_Intent.fromData((modleFourBean == null || (game_screen_shot2 = modleFourBean.getGame_screen_shot()) == null) ? null : game_screen_shot2.get(position - 1));
                                GamedetialModleFourBean modleFourBean2 = this.this$0.getModleFourBean();
                                intentBuilder_FromData.gameId(modleFourBean2 != null ? modleFourBean2.getGame_id() : null).start();
                                return;
                            }
                            GamedetialModleFourBean modleFourBean3 = this.this$0.getModleFourBean();
                            List<DetialShowImageBean> pic_info = modleFourBean3 != null ? modleFourBean3.getPic_info() : null;
                            ArrayList arrayList = new ArrayList();
                            if (pic_info != null) {
                                int size = pic_info.size();
                                for (int i11 = 0; i11 < size; i11++) {
                                    arrayList.add(pic_info.get(i11).getRemote().getPath());
                                }
                            }
                            try {
                                Intent intent = new Intent(container.getContext(), (Class<?>) ImagePagerActivity.class);
                                String[] strArr = new String[arrayList.size()];
                                int size2 = arrayList.size();
                                while (i10 < size2) {
                                    strArr[i10] = arrayList.get(i10);
                                    i10++;
                                }
                                intent.putExtra("image_urls", strArr);
                                intent.putExtra("image_index", position - 1);
                                container.getContext().startActivity(intent);
                                return;
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                return;
                            }
                        }
                        return;
                    }
                    if (companion.hasGameScreenShot(this.this$0.getModleFourBean())) {
                        ScreenshotTrueListAcvity_.IntentBuilder_ intentBuilder_Intent2 = ScreenshotTrueListAcvity_.intent(container.getContext());
                        GamedetialModleFourBean modleFourBean4 = this.this$0.getModleFourBean();
                        ScreenshotTrueListAcvity_.IntentBuilder_ intentBuilder_FromData2 = intentBuilder_Intent2.fromData((modleFourBean4 == null || (game_screen_shot = modleFourBean4.getGame_screen_shot()) == null) ? null : game_screen_shot.get(position));
                        GamedetialModleFourBean modleFourBean5 = this.this$0.getModleFourBean();
                        intentBuilder_FromData2.gameId(modleFourBean5 != null ? modleFourBean5.getGame_id() : null).start();
                        return;
                    }
                    GamedetialModleFourBean modleFourBean6 = this.this$0.getModleFourBean();
                    List<DetialShowImageBean> pic_info2 = modleFourBean6 != null ? modleFourBean6.getPic_info() : null;
                    ArrayList arrayList2 = new ArrayList();
                    GamedetialModleFourBean modleFourBean7 = this.this$0.getModleFourBean();
                    if (t2.i(modleFourBean7 != null ? modleFourBean7.getGame_info_top_pic() : null)) {
                        GamedetialModleFourBean modleFourBean8 = this.this$0.getModleFourBean();
                        if (t2.i(modleFourBean8 != null ? modleFourBean8.getGame_info_top_video_url() : null)) {
                            GamedetialModleFourBean modleFourBean9 = this.this$0.getModleFourBean();
                            arrayList2.add(modleFourBean9 != null ? modleFourBean9.getGame_info_top_pic() : null);
                        }
                    }
                    if (pic_info2 != null) {
                        int size3 = pic_info2.size();
                        for (int i12 = 0; i12 < size3; i12++) {
                            arrayList2.add(pic_info2.get(i12).getRemote().getPath());
                        }
                    }
                    try {
                        Intent intent2 = new Intent(container.getContext(), (Class<?>) ImagePagerActivity.class);
                        String[] strArr2 = new String[arrayList2.size()];
                        int size4 = arrayList2.size();
                        while (i10 < size4) {
                            strArr2[i10] = arrayList2.get(i10);
                            i10++;
                        }
                        intent2.putExtra("image_urls", strArr2);
                        intent2.putExtra("image_index", position);
                        container.getContext().startActivity(intent2);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            });
            Intrinsics.checkNotNull(viewInflate);
            return viewInflate;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(@NotNull View view, @NotNull Object target) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(target, "target");
            return view == target;
        }

        public final void setModleFourBean(@Nullable GamedetialModleFourBean gamedetialModleFourBean) {
            this.modleFourBean = gamedetialModleFourBean;
        }

        public final void setViewPager1Views(@Nullable List<BannerPagerItem> list) {
            this.viewPager1Views = list;
        }
    }

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0018\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u0018\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0018\u0010\"\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u0018\u0010#\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\b\u0010$\u001a\u0004\u0018\u00010\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0011\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000e¨\u0006%"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;", "", "<init>", "()V", "TYPE_DAY_GAME", "", "TYPE_DAY_GAME_TODAY", "TYPE_DAY_GAME_RANK", "TYPE_DAY_GAME_GUESS", "TYPE_DAY_GAME_TIME_LINE", "TYPE_DIVIDER_LINE_H", "sharedGamePool", "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;", "getSharedGamePool", "()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;", "sharedGameGuessPool", "getSharedGameGuessPool", "sharedThumbPool", "getSharedThumbPool", "hasVideo", "", "modleFourBean", "Lcom/join/mgps/dto/GamedetialModleFourBean;", "hasGameScreenShot", "isMiniGame", "resumePlayVideo", "", "videoPlayer", "Lcom/join/android/app/component/video/MultiStandVideo;", "itemData", "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;", "playVideo", "viewPager", "Landroidx/viewpager/widget/ViewPager;", "pauseVideo", "autoPlayVideo", "topvideo_view", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDailyFindPageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,956:1\n254#2:957\n*S KotlinDebug\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion\n*L\n119#1:957\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void autoPlayVideo(@NotNull ViewPager viewPager, @Nullable MultiStandVideo topvideo_view) {
            Intrinsics.checkNotNullParameter(viewPager, "viewPager");
            if (viewPager.getCurrentItem() != 0) {
                if (!(viewPager.getVisibility() == 0)) {
                    return;
                }
            }
            if (topvideo_view != null) {
                topvideo_view.startPlayLogic();
            }
        }

        @NotNull
        public final RecyclerView.RecycledViewPool getSharedGameGuessPool() {
            return DailyFindPageAdapter.sharedGameGuessPool;
        }

        @NotNull
        public final RecyclerView.RecycledViewPool getSharedGamePool() {
            return DailyFindPageAdapter.sharedGamePool;
        }

        @NotNull
        public final RecyclerView.RecycledViewPool getSharedThumbPool() {
            return DailyFindPageAdapter.sharedThumbPool;
        }

        public final boolean hasGameScreenShot(@Nullable GamedetialModleFourBean modleFourBean) {
            return (modleFourBean == null || modleFourBean.getGame_screen_shot() == null || modleFourBean.getGame_screen_shot().size() <= 0) ? false : true;
        }

        public final boolean hasVideo(@Nullable GamedetialModleFourBean modleFourBean) {
            if (modleFourBean == null) {
                return false;
            }
            return t2.i(modleFourBean.getGame_info_top_video_url()) || t2.i(modleFourBean.getGame_info_top_pic());
        }

        public final boolean isMiniGame(@Nullable GamedetialModleFourBean modleFourBean) {
            return (modleFourBean == null || modleFourBean.getSp_tag_info() == null || modleFourBean.getSp_tag_info().getMini_game() == null) ? false : true;
        }

        public final void pauseVideo(@Nullable MultiStandVideo videoPlayer, @NotNull DailyDiscoveryGameBean itemData) {
            Intrinsics.checkNotNullParameter(itemData, "itemData");
            itemData.setPause(true);
            if (videoPlayer != null) {
                videoPlayer.onVideoPause();
            }
        }

        public final void playVideo(@NotNull ViewPager viewPager, @Nullable MultiStandVideo videoPlayer) {
            Intrinsics.checkNotNullParameter(viewPager, "viewPager");
            if (videoPlayer != null) {
                autoPlayVideo(viewPager, videoPlayer);
            }
        }

        public final void resumePlayVideo(@Nullable MultiStandVideo videoPlayer, @NotNull DailyDiscoveryGameBean itemData) {
            Intrinsics.checkNotNullParameter(itemData, "itemData");
            if (videoPlayer != null) {
                itemData.setPause(false);
                videoPlayer.onVideoResume(false);
            }
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DailyFindPageAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bindRank(final v2.c cVar, CommonMultiItemBean commonMultiItemBean) {
        DailyRankAdapter dailyRankAdapter;
        DailyRankListItemBean dailyRankListItemBean;
        ExtBean extBean;
        ExtBean typeCode;
        ExtBean extBeanBuildScene;
        try {
            final DailyRankItemBean dailyRankItemBean = (DailyRankItemBean) commonMultiItemBean.getData();
            if (dailyRankItemBean == null) {
                return;
            }
            final TabLayout tabLayout = (TabLayout) cVar.getView(R.id.tablayout);
            final ViewPager2 viewPager2 = (ViewPager2) cVar.getView(R.id.viewpager);
            final TextView textView = (TextView) cVar.getView(R.id.tv_text_1);
            Ext ext = null;
            if (viewPager2.getTag() instanceof DailyRankAdapter) {
                Object tag = viewPager2.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.adapter.DailyRankAdapter");
                dailyRankAdapter = (DailyRankAdapter) tag;
            } else {
                dailyRankAdapter = null;
            }
            if (dailyRankAdapter == null) {
                dailyRankAdapter = new DailyRankAdapter(sharedGamePool);
                viewPager2.setTag(dailyRankAdapter);
                viewPager2.setAdapter(dailyRankAdapter);
            }
            tabLayout.t();
            tabLayout.L();
            ArrayList<DailyRankListItemBean> rankListData = dailyRankItemBean.getRankListData();
            if (rankListData != null) {
                dailyRankItemBean.setDataList(new ArrayList<>());
                int i10 = 0;
                for (Object obj : rankListData) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    DailyRankListItemBean dailyRankListItemBean2 = (DailyRankListItemBean) obj;
                    TabLayout.g gVarU = tabLayout.I().u(R.layout.layout_custom_daily_find_game);
                    Intrinsics.checkNotNullExpressionValue(gVarU, "setCustomView(...)");
                    if (gVarU.g() != null) {
                        View viewG = gVarU.g();
                        Intrinsics.checkNotNull(viewG);
                        TextView textView2 = (TextView) viewG.findViewById(R.id.tabText);
                        if (i10 == dailyRankItemBean.getSelectedIndex()) {
                            textView2.setTextSize(0, cVar.itemView.getContext().getResources().getDimension(R.dimen.wdp28));
                            textView2.setTextColor(Color.parseColor("#333333"));
                            textView2.setTypeface(null, 1);
                        } else {
                            textView2.setTextSize(0, cVar.itemView.getContext().getResources().getDimension(R.dimen.wdp24));
                            textView2.setTextColor(Color.parseColor("#999999"));
                            textView2.setTypeface(null, 0);
                        }
                        textView2.setText(String.valueOf(dailyRankListItemBean2.getTitle()));
                        tabLayout.i(gVarU);
                    }
                    ArrayList<List<CollectionBeanSub>> dataList = dailyRankItemBean.getDataList();
                    if (dataList != null) {
                        ArrayList<CollectionBeanSub> game_list = dailyRankListItemBean2.getGame_list();
                        if (game_list == null) {
                            game_list = new ArrayList<>();
                        }
                        dataList.add(game_list);
                    }
                    i10 = i11;
                }
            }
            dailyRankAdapter.submitList(dailyRankItemBean.getDataList());
            viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter$bindRank$1$2
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                    tabLayout.setScrollPosition(position, positionOffset, true, false);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageSelected(int position) {
                    List<CollectionBeanSub> list;
                    DailyRankListItemBean dailyRankListItemBean3;
                    String title;
                    super.onPageSelected(position);
                    dailyRankItemBean.setSelectedIndex(position);
                    if (tabLayout.D(position) != null) {
                        TabLayout.g gVarD = tabLayout.D(position);
                        Intrinsics.checkNotNull(gVarD);
                        gVarD.r();
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("查看更多");
                    ArrayList<DailyRankListItemBean> rankListData2 = dailyRankItemBean.getRankListData();
                    sb2.append((rankListData2 == null || (dailyRankListItemBean3 = rankListData2.get(position)) == null || (title = dailyRankListItemBean3.getTitle()) == null) ? null : StringsKt__StringsJVMKt.replace$default(title, "榜", "", false, 4, (Object) null));
                    sb2.append("游戏 > ");
                    String string = sb2.toString();
                    dailyRankItemBean.setSpannableText(new SpannableString(string));
                    SpannableString spannableText = dailyRankItemBean.getSpannableText();
                    if (spannableText != null) {
                        spannableText.setSpan(new com.join.mgps.widget.textview.a(Color.parseColor("#666666"), 3.0f, 0.0f, 4, null), 0, string.length() - 1, 33);
                    }
                    textView.setText(dailyRankItemBean.getSpannableText());
                    ArrayList<List<CollectionBeanSub>> dataList2 = dailyRankItemBean.getDataList();
                    if (dataList2 == null || (list = dataList2.get(position)) == null) {
                        return;
                    }
                    v2.c cVar2 = cVar;
                    for (CollectionBeanSub collectionBeanSub : list) {
                        if (!collectionBeanSub.getExposure()) {
                            t.l(cVar2.itemView.getContext()).R1(Event.expGameAdPage, collectionBeanSub.getExtBean().buildScene().toExt());
                            collectionBeanSub.setExposure(true);
                        }
                    }
                }
            });
            tabLayout.h(new TabLayout.d() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter$bindRank$1$3
                @Override // com.google.android.material.tabs.TabLayout.c
                public void onTabReselected(TabLayout.g tab) {
                    Intrinsics.checkNotNullParameter(tab, "tab");
                    viewPager2.setCurrentItem(tab.k());
                    if (tab.g() != null) {
                        View viewG2 = tab.g();
                        Intrinsics.checkNotNull(viewG2);
                        TextView textView3 = (TextView) viewG2.findViewById(R.id.tabText);
                        textView3.setTextSize(0, cVar.itemView.getContext().getResources().getDimension(tab.o() ? R.dimen.wdp28 : R.dimen.wdp24));
                        tabLayout.requestLayout();
                        textView3.setTextColor(Color.parseColor("#333333"));
                        textView3.setTypeface(null, tab.o() ? 1 : 0);
                    }
                }

                @Override // com.google.android.material.tabs.TabLayout.c
                public void onTabSelected(TabLayout.g tab) {
                    DailyRankListItemBean dailyRankListItemBean3;
                    ExtBean extBean2;
                    ExtBean typeCode2;
                    ExtBean extBeanBuildScene2;
                    Intrinsics.checkNotNullParameter(tab, "tab");
                    dailyRankItemBean.setSelectedIndex(tab.k());
                    viewPager2.setCurrentItem(tab.k());
                    Ext ext2 = null;
                    if (tab.g() != null) {
                        View viewG2 = tab.g();
                        Intrinsics.checkNotNull(viewG2);
                        TextView textView3 = (TextView) viewG2.findViewById(R.id.tabText);
                        textView3.setTextSize(0, cVar.itemView.getContext().getResources().getDimension(tab.o() ? R.dimen.wdp28 : R.dimen.wdp24));
                        tabLayout.requestLayout();
                        textView3.setTextColor(Color.parseColor("#333333"));
                        textView3.setTypeface(null, tab.o() ? 1 : 0);
                    }
                    t tVarL = t.l(cVar.itemView.getContext());
                    Event event = Event.commonExp;
                    ArrayList<DailyRankListItemBean> rankListData2 = dailyRankItemBean.getRankListData();
                    if (rankListData2 != null && (dailyRankListItemBean3 = rankListData2.get(tab.k())) != null && (extBean2 = dailyRankListItemBean3.getExtBean()) != null && (typeCode2 = extBean2.setTypeCode("page")) != null && (extBeanBuildScene2 = typeCode2.buildScene()) != null) {
                        ext2 = extBeanBuildScene2.toExt();
                    }
                    tVarL.R1(event, ext2);
                }

                @Override // com.google.android.material.tabs.TabLayout.c
                public void onTabUnselected(TabLayout.g gVar) {
                    if (gVar == null || gVar.g() == null) {
                        return;
                    }
                    View viewG2 = gVar.g();
                    Intrinsics.checkNotNull(viewG2);
                    TextView textView3 = (TextView) viewG2.findViewById(R.id.tabText);
                    textView3.setTextSize(0, cVar.itemView.getContext().getResources().getDimension(gVar.o() ? R.dimen.wdp28 : R.dimen.wdp24));
                    tabLayout.requestLayout();
                    textView3.setTextColor(Color.parseColor("#999999"));
                    textView3.setTypeface(null, gVar.o() ? 1 : 0);
                }
            });
            textView.setText(dailyRankItemBean.getSpannableText());
            viewPager2.setCurrentItem(dailyRankItemBean.getSelectedIndex());
            tabLayout.post(new Runnable() { // from class: com.join.kotlin.autocode.dailyfind.adapter.b
                @Override // java.lang.Runnable
                public final void run() {
                    DailyFindPageAdapter.bindRank$lambda$5$lambda$3(tabLayout, dailyRankItemBean);
                }
            });
            if (!dailyRankItemBean.getExtBean().hasExplore()) {
                t tVarL = t.l(cVar.itemView.getContext());
                Event event = Event.commonExp;
                ArrayList<DailyRankListItemBean> rankListData2 = dailyRankItemBean.getRankListData();
                if (rankListData2 != null && (dailyRankListItemBean = rankListData2.get(dailyRankItemBean.getSelectedIndex())) != null && (extBean = dailyRankListItemBean.getExtBean()) != null && (typeCode = extBean.setTypeCode("page")) != null && (extBeanBuildScene = typeCode.buildScene()) != null) {
                    ext = extBeanBuildScene.toExt();
                }
                tVarL.R1(event, ext);
                dailyRankItemBean.getExtBean().setHasExplore(true);
            }
            try {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.autocode.dailyfind.adapter.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DailyFindPageAdapter.bindRank$lambda$5$lambda$4(this.f48505b, viewPager2, dailyRankItemBean, dailyRankItemBean, view);
                    }
                });
                return;
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Exception e11) {
            e = e11;
        }
        e.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bindRank$lambda$5$lambda$3(TabLayout tabLayout, DailyRankItemBean dailyRankItemBean) {
        tabLayout.R(tabLayout.D(dailyRankItemBean.getSelectedIndex()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bindRank$lambda$5$lambda$4(DailyFindPageAdapter dailyFindPageAdapter, ViewPager2 viewPager2, DailyRankItemBean dailyRankItemBean, DailyRankItemBean dailyRankItemBean2, View view) {
        DailyRankListItemBean dailyRankListItemBean;
        ExtBean extBean;
        ExtBean typeCode;
        ExtBean typeCode2;
        ExtBean extBeanBuildScene;
        DailyRankListItemBean dailyRankListItemBean2;
        ExtBean extBean2;
        ClassifyAndRankActivity_.f fVarA = ClassifyAndRankActivity_.intent(dailyFindPageAdapter.getContext()).b(2).e("热门排行").a(viewPager2.getCurrentItem());
        ArrayList<DailyRankListItemBean> rankListData = dailyRankItemBean.getRankListData();
        Ext ext = null;
        fVarA.d((rankListData == null || (dailyRankListItemBean2 = rankListData.get(dailyRankItemBean2.getSelectedIndex())) == null || (extBean2 = dailyRankListItemBean2.getExtBean()) == null) ? null : extBean2.buildScene()).start();
        t tVarL = t.l(view != null ? view.getContext() : null);
        Event event = Event.commonClick;
        ArrayList<DailyRankListItemBean> rankListData2 = dailyRankItemBean.getRankListData();
        if (rankListData2 != null && (dailyRankListItemBean = rankListData2.get(dailyRankItemBean2.getSelectedIndex())) != null && (extBean = dailyRankListItemBean.getExtBean()) != null && (typeCode = extBean.setTypeCode("page")) != null && (typeCode2 = typeCode.setTypeCode("btnMore")) != null && (extBeanBuildScene = typeCode2.buildScene()) != null) {
            ext = extBeanBuildScene.toExt();
        }
        tVarL.R1(event, ext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initImageGallery$lambda$0(Ref.ObjectRef objectRef, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        ((ViewPager) objectRef.element).setCurrentItem(i10);
    }

    @Nullable
    public final com.join.android.app.component.video.h getVideoHelper() {
        return this.videoHelper;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0112  */
    /* JADX WARN: Code duplicated, block: B:14:0x0125 A[LOOP:1: B:13:0x0123->B:14:0x0125, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [T, android.view.View] */
    public final void initImageGallery(@NotNull final v2.c holder, @NotNull final DailyDiscoveryGameBean itemData) {
        String str;
        int size;
        int i10;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(itemData, "itemData");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = holder.getView(R.id.viewPager1);
        final RecyclerView recyclerView = (RecyclerView) holder.getView(R.id.rv_top_list);
        LinearLayout linearLayout = (LinearLayout) holder.getView(R.id.ll_top_images);
        ArrayList arrayList = new ArrayList();
        final DailyImagesAdapter dailyImagesAdapter = new DailyImagesAdapter();
        ArrayList arrayList2 = new ArrayList();
        ((ViewPager) objectRef.element).clearOnPageChangeListeners();
        int pic_position = itemData.getGame().getPic_position();
        if (INSTANCE.hasVideo(itemData.getGame())) {
            arrayList.add(new BannerPagerItem(true, itemData.getGame(), 0, false, 8, null));
            arrayList2.add(new ImageInfo(itemData.getGame().getGame_info_top_pic(), itemData.getGame().getGame_info_top_video_url(), true));
        }
        linearLayout.setVisibility(0);
        String str2 = "get(...)";
        if (itemData.getGame().getGame_screen_shot() != null) {
            List<ScreenshotGamedetialBean> game_screen_shot = itemData.getGame().getGame_screen_shot();
            Intrinsics.checkNotNullExpressionValue(game_screen_shot, "getGame_screen_shot(...)");
            if (!game_screen_shot.isEmpty()) {
                int size2 = itemData.getGame().getGame_screen_shot().size();
                int i11 = 0;
                while (i11 < size2) {
                    ScreenshotGamedetialBean screenshotGamedetialBean = itemData.getGame().getGame_screen_shot().get(i11);
                    Intrinsics.checkNotNullExpressionValue(screenshotGamedetialBean, str2);
                    ScreenshotGamedetialBean screenshotGamedetialBean2 = screenshotGamedetialBean;
                    arrayList.add(new BannerPagerItem(false, screenshotGamedetialBean2.getPic(), pic_position, false, 8, null));
                    arrayList2.add(new ImageInfo(screenshotGamedetialBean2.getPic()));
                    i11++;
                    size2 = size2;
                    str2 = str2;
                }
            } else {
                str = "get(...)";
                size = itemData.getGame().getPic_info().size();
                i10 = 0;
                while (i10 < size) {
                    DetialShowImageBean detialShowImageBean = itemData.getGame().getPic_info().get(i10);
                    String str3 = str;
                    Intrinsics.checkNotNullExpressionValue(detialShowImageBean, str3);
                    DetialShowImageBean detialShowImageBean2 = detialShowImageBean;
                    arrayList.add(new BannerPagerItem(false, detialShowImageBean2.getRemote().getPath(), pic_position, false, 8, null));
                    arrayList2.add(new ImageInfo(detialShowImageBean2.getRemote().getPath()));
                    i10++;
                    size = size;
                    str = str3;
                }
            }
        } else {
            str = "get(...)";
            size = itemData.getGame().getPic_info().size();
            i10 = 0;
            while (i10 < size) {
                DetialShowImageBean detialShowImageBean3 = itemData.getGame().getPic_info().get(i10);
                String str4 = str;
                Intrinsics.checkNotNullExpressionValue(detialShowImageBean3, str4);
                DetialShowImageBean detialShowImageBean4 = detialShowImageBean3;
                arrayList.add(new BannerPagerItem(false, detialShowImageBean4.getRemote().getPath(), pic_position, false, 8, null));
                arrayList2.add(new ImageInfo(detialShowImageBean4.getRemote().getPath()));
                i10++;
                size = size;
                str = str4;
            }
        }
        if (arrayList.size() == 1) {
            linearLayout.setVisibility(8);
            linearLayout.postInvalidate();
        }
        final BannerPagerAdapter bannerPagerAdapter = new BannerPagerAdapter(this.videoHelper, arrayList, itemData.getGame());
        ((ViewPager) objectRef.element).setAdapter(bannerPagerAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter.initImageGallery.1
                @Override // com.join.mgps.base.decoration.b
                public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i12) {
                    com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                    aVar.f64116f = 0;
                    aVar.f64118b = (int) DailyFindPageAdapter.this.getContext().getResources().getDimension(R.dimen.wdp10);
                    return aVar;
                }
            });
        }
        recyclerView.setHasFixedSize(true);
        recyclerView.setRecycledViewPool(sharedThumbPool);
        recyclerView.setAdapter(dailyImagesAdapter);
        dailyImagesAdapter.setVertical(pic_position);
        dailyImagesAdapter.submitList(arrayList2);
        if (MViewpagerV4.class.isInstance(objectRef.element)) {
            T t10 = objectRef.element;
            Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type com.join.mgps.customview.MViewpagerV4");
            ((MViewpagerV4) t10).setIntercept(false);
        }
        ((ViewPager) objectRef.element).addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter.initImageGallery.2
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            }

            /* JADX WARN: Code duplicated, block: B:13:0x003d  */
            /* JADX WARN: Code duplicated, block: B:21:0x0059  */
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                boolean z10;
                MultiStandVideo multiStandVideo = (MultiStandVideo) holder.itemView.findViewById(R.id.wf_video);
                ViewPager viewPager = (ViewPager) holder.itemView.findViewById(R.id.viewPager1);
                List<BannerPagerItem> viewPager1Views = bannerPagerAdapter.getViewPager1Views();
                BannerPagerItem bannerPagerItem = viewPager1Views != null ? viewPager1Views.get(position) : null;
                if (position >= bannerPagerAdapter.getCount()) {
                    DailyFindPageAdapter.INSTANCE.pauseVideo(multiStandVideo, itemData);
                } else {
                    if (bannerPagerItem != null) {
                        z10 = bannerPagerItem.getIsVideo();
                    }
                    if (!z10) {
                        DailyFindPageAdapter.INSTANCE.pauseVideo(multiStandVideo, itemData);
                    } else if (bannerPagerItem.getCreate()) {
                        if (viewPager != null) {
                            DailyFindPageAdapter.INSTANCE.playVideo(viewPager, multiStandVideo);
                        }
                        bannerPagerItem.setCreate(false);
                    } else {
                        DailyFindPageAdapter.INSTANCE.resumePlayVideo(multiStandVideo, itemData);
                    }
                }
                recyclerView.smoothScrollToPosition(position);
                dailyImagesAdapter.updateCurrentSelected(position);
            }
        });
        dailyImagesAdapter.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.autocode.dailyfind.adapter.a
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                DailyFindPageAdapter.initImageGallery$lambda$0(objectRef, baseQuickAdapter, view, i12);
            }
        });
        dailyImagesAdapter.updateCurrentSelected(0);
    }

    public final void updateDailyGameProgress(@NotNull v2.c holder, @NotNull GamedetialModleFourBean item) {
        DownloadNormalView downloadNormalView;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        DownloadTask task = DlTaskManager.INSTANCE.getTask(item);
        if (task == null || (downloadNormalView = (DownloadNormalView) holder.b(R.id.dv_view)) == null) {
            return;
        }
        downloadNormalView.d(task);
    }

    public final void updateDailyGameUI(@NotNull v2.c holder, @NotNull GamedetialModleFourBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        ((DownloadNormalView) holder.getView(R.id.dv_view)).f(new m6.c(item, holder.itemView.getContext()) { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter.updateDailyGameUI.1
            @Override // m6.c, com.join.mgps.callbacks.f
            public void onViewUpdate(DownloadNormalView downView) {
                super.onViewUpdate(downView);
                if (downView != null) {
                    downView.setTextColor(-1);
                }
                if (downView != null) {
                    downView.setBoldStyle();
                }
            }
        });
    }

    public /* synthetic */ DailyFindPageAdapter(com.join.android.app.component.video.h hVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : hVar);
    }

    public DailyFindPageAdapter(@Nullable com.join.android.app.component.video.h hVar) {
        super(null, 1, null);
        this.videoHelper = hVar;
        addItemType(1, v2.c.class, new AnonymousClass1());
        addItemType(2, v2.c.class, new AnonymousClass2());
        addItemType(3, v2.c.class, new com.chad.library.adapter.base.c.b<CommonMultiItemBean, v2.c>() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter.3
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
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, CommonMultiItemBean commonMultiItemBean, List list) {
                onBind((v2.c) viewHolder, i10, commonMultiItemBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public v2.c onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new v2.c(R.layout.item_daily_find_day_rank, parent);
            }

            public void onBind(v2.c cVar, int i10, CommonMultiItemBean commonMultiItemBean, List<? extends Object> list) {
                com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, commonMultiItemBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(v2.c holder, int i10, CommonMultiItemBean commonMultiItemBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (commonMultiItemBean != null) {
                    DailyFindPageAdapter.this.bindRank(holder, commonMultiItemBean);
                }
            }
        });
        addItemType(4, v2.c.class, new AnonymousClass4());
        addItemType(5, v2.c.class, new com.chad.library.adapter.base.c.b<CommonMultiItemBean, v2.c>() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter.5
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
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, CommonMultiItemBean commonMultiItemBean, List list) {
                onBind((v2.c) viewHolder, i10, commonMultiItemBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public v2.c onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new v2.c(R.layout.item_daily_find_day_time_line, parent);
            }

            public void onBind(v2.c cVar, int i10, CommonMultiItemBean commonMultiItemBean, List<? extends Object> list) {
                com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, commonMultiItemBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(v2.c holder, int i10, CommonMultiItemBean commonMultiItemBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Long l10 = commonMultiItemBean != null ? (Long) commonMultiItemBean.getData() : null;
                if (l10 != null) {
                    holder.n(R.id.tv_text_1, e0.D(l10.longValue() * ((long) 1000), "MM.dd"));
                }
            }
        });
        addItemType(6, v2.c.class, new com.chad.library.adapter.base.c.b<CommonMultiItemBean, v2.c>() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter.6
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
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, CommonMultiItemBean commonMultiItemBean, List list) {
                onBind((v2.c) viewHolder, i10, commonMultiItemBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public v2.c onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new v2.c(R.layout.item_divider_h, parent);
            }

            public void onBind(v2.c cVar, int i10, CommonMultiItemBean commonMultiItemBean, List<? extends Object> list) {
                com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, commonMultiItemBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(v2.c holder, int i10, CommonMultiItemBean commonMultiItemBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Float f10 = commonMultiItemBean != null ? (Float) commonMultiItemBean.getData() : null;
                if (f10 != null) {
                    holder.getView(R.id.v_line).setLayoutParams(new FrameLayout.LayoutParams(-1, (int) f10.floatValue()));
                }
            }
        });
        onItemViewType(new com.chad.library.adapter.base.c.a<CommonMultiItemBean>() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyFindPageAdapter.7
            @Override // com.chad.library.adapter.base.c.a
            public int onItemViewType(int position, List<? extends CommonMultiItemBean> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                return (position < 0 || position >= list.size()) ? position : list.get(position).getItemType();
            }
        });
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\n\"\u0004\b\u0016\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;", "", "isVideo", "", "data", "pic_position", "", "create", "<init>", "(ZLjava/lang/Object;IZ)V", "()Z", "setVideo", "(Z)V", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", "getPic_position", "()I", "setPic_position", "(I)V", "getCreate", "setCreate", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class BannerPagerItem {
        private boolean create;

        @Nullable
        private Object data;
        private boolean isVideo;
        private int pic_position;

        public BannerPagerItem(boolean z10, @Nullable Object obj, int i10, boolean z11) {
            this.isVideo = z10;
            this.data = obj;
            this.pic_position = i10;
            this.create = z11;
        }

        public final boolean getCreate() {
            return this.create;
        }

        @Nullable
        public final Object getData() {
            return this.data;
        }

        public final int getPic_position() {
            return this.pic_position;
        }

        /* JADX INFO: renamed from: isVideo, reason: from getter */
        public final boolean getIsVideo() {
            return this.isVideo;
        }

        public final void setCreate(boolean z10) {
            this.create = z10;
        }

        public final void setData(@Nullable Object obj) {
            this.data = obj;
        }

        public final void setPic_position(int i10) {
            this.pic_position = i10;
        }

        public final void setVideo(boolean z10) {
            this.isVideo = z10;
        }

        public /* synthetic */ BannerPagerItem(boolean z10, Object obj, int i10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(z10, obj, i10, (i11 & 8) != 0 ? false : z11);
        }
    }
}
