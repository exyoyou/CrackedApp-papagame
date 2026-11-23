package com.join.kotlin.ui.gameexpress.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.l;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.component.video.h;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.gameexpress.model.GameExpressMultiItem;
import com.join.kotlin.ui.gameexpress.model.GameExpressTitleItem;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.GprsNoticeDialogAlphActivity_;
import com.join.mgps.callbacks.w;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ(\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u0002H\u0002J*\u0010\u0015\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\r\u001a\u00020\u0002H\u0002J8\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\b0\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010!\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J \u0010\"\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u0002H\u0002J \u0010#\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\f2\u0006\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u000fH\u0002J\u0018\u0010&\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010'\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;", "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;", "videoHelper", "Lcom/join/android/app/component/video/RvListVideoHelper;", "<init>", "(Lcom/join/android/app/component/video/RvListVideoHelper;)V", "onViewRecycled", "", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "updateDownloadUi", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "item", "progressOnly", "", "bindVideoBanner", "context", "Landroid/content/Context;", "game", "Lcom/join/mgps/dto/CommonGameInfoBean;", "bindVideoBottomBar", "gInfo", "Lcom/join/mgps/dto/GInfoBean;", "bindVideoInContainer", "container", "Landroid/widget/FrameLayout;", "coverUrl", "", "onVideoClick", "Lkotlin/Function0;", "obtainVideoView", "Lcom/join/android/app/component/video/MultiStandVideo;", "releaseVideoInContainer", "bindGame", "bindGameTag", "isNew", GprsNoticeDialogAlphActivity_.IS_UPDATE_EXTRA, "bindGameDownload", "applyDownloadProgress", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameExpressAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 GameExpressMultiItem.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem\n*L\n1#1,384:1\n55#2:385\n55#2:386\n55#2:387\n1#3:388\n10#4:389\n*S KotlinDebug\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter\n*L\n50#1:385\n72#1:386\n92#1:387\n138#1:389\n*E\n"})
public final class GameExpressAdapter extends com.chad.library.adapter.base.c<GameExpressMultiItem> {
    public static final int TYPE_GAME = 3;
    public static final int TYPE_TITLE = 1;
    public static final int TYPE_VIDEO_GAME = 2;

    @Nullable
    private final h videoHelper;

    /* JADX INFO: renamed from: com.join.kotlin.ui.gameexpress.adapter.GameExpressAdapter$4, reason: invalid class name */
    @Metadata(d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0010"}, d2 = {"com/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "onCreate", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBind", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nGameExpressAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4\n+ 2 GameExpressMultiItem.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem\n*L\n1#1,384:1\n10#2:385\n*S KotlinDebug\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4\n*L\n108#1:385\n*E\n"})
    public static final class AnonymousClass4 implements com.chad.library.adapter.base.c.b<GameExpressMultiItem, v2.c> {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$0(GameExpressAdapter gameExpressAdapter, CommonGameInfoBean commonGameInfoBean, View view) {
            IntentUtil.getInstance().intentActivity(gameExpressAdapter.getContext(), commonGameInfoBean.getIntentDataBean());
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
        public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, GameExpressMultiItem gameExpressMultiItem, List list) {
            onBind((v2.c) viewHolder, i10, gameExpressMultiItem, (List<? extends Object>) list);
        }

        @Override // com.chad.library.adapter.base.c.b
        public v2.c onCreate(Context context, ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new v2.c(R.layout.item_game_express_game, parent);
        }

        public void onBind(v2.c cVar, int i10, GameExpressMultiItem gameExpressMultiItem, List<? extends Object> list) {
            com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, gameExpressMultiItem, list);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onBind(v2.c holder, int i10, GameExpressMultiItem gameExpressMultiItem) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (gameExpressMultiItem != null) {
                Object data = gameExpressMultiItem.getData();
                if (!(data instanceof CommonGameInfoBean)) {
                    data = null;
                }
                final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) data;
                if (commonGameInfoBean == null) {
                    return;
                }
                GameExpressAdapter.this.bindGame(holder, commonGameInfoBean, gameExpressMultiItem);
                GameExpressAdapter.this.bindGameDownload(holder, commonGameInfoBean);
                View view = holder.itemView;
                final GameExpressAdapter gameExpressAdapter = GameExpressAdapter.this;
                view.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.gameexpress.adapter.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        GameExpressAdapter.AnonymousClass4.onBind$lambda$0(gameExpressAdapter, commonGameInfoBean, view2);
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GameExpressAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final void applyDownloadProgress(v2.c cVar, CommonGameInfoBean commonGameInfoBean) {
        DownloadNormalView downloadNormalView;
        DownloadTask task = DlTaskManager.INSTANCE.getTask(commonGameInfoBean);
        if (task == null || (downloadNormalView = (DownloadNormalView) cVar.b(R.id.dv_view)) == null) {
            return;
        }
        downloadNormalView.d(task);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bindGame(v2.c cVar, CommonGameInfoBean commonGameInfoBean, GameExpressMultiItem gameExpressMultiItem) {
        GInfoBean g_info = commonGameInfoBean.getG_info();
        cVar.n(R.id.tv_text_1, commonGameInfoBean.getShowName());
        String info = g_info != null ? g_info.getInfo() : null;
        if (info == null) {
            info = "";
        }
        cVar.n(R.id.tv_text_5, info);
        cVar.n(R.id.tv_text_3, UtilsMy.R1(g_info != null ? g_info.getSp_tag_info() : null, g_info != null ? g_info.getTag_info() : null, " | "));
        cVar.n(R.id.tv_text_2, commonGameInfoBean.getShowScore());
        if (g_info != null && g_info.getGift_package_switch() == 1) {
            cVar.h(R.id.iv_1, false);
        } else {
            cVar.h(R.id.iv_1, true);
        }
        l.o((SimpleDraweeView) cVar.getView(R.id.sdv_image), commonGameInfoBean.getIcon());
        if (TextUtils.isEmpty(g_info != null ? g_info.getApp_size() : null)) {
            cVar.h(R.id.tv_text_4, true);
        } else {
            try {
                Intrinsics.checkNotNull(g_info);
                String app_size = g_info.getApp_size();
                Intrinsics.checkNotNullExpressionValue(app_size, "getApp_size(...)");
                double d10 = 1024;
                cVar.n(R.id.tv_text_4, UtilsMy.c((long) (Double.parseDouble(app_size) * d10 * d10)));
                cVar.h(R.id.tv_text_4, false);
            } catch (Exception unused) {
                cVar.h(R.id.tv_text_4, true);
            }
        }
        cVar.h(R.id.g_1, commonGameInfoBean.isH5Game());
        cVar.h(R.id.tv_text_3, commonGameInfoBean.isH5Game());
        cVar.h(R.id.tv_text_4, commonGameInfoBean.isH5Game());
        bindGameTag(cVar, gameExpressMultiItem.isNew(), gameExpressMultiItem.isUpdate());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bindGameDownload(v2.c cVar, CommonGameInfoBean commonGameInfoBean) {
        ((DownloadNormalView) cVar.getView(R.id.dv_view)).f(new m6.c(this, cVar.itemView.getContext()) { // from class: com.join.kotlin.ui.gameexpress.adapter.GameExpressAdapter.bindGameDownload.1
            final /* synthetic */ GameExpressAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(context, this.$game);
                this.this$0 = this;
            }

            @Override // m6.c, com.join.mgps.callbacks.f
            public void onViewClicked(DownloadNormalView downView) {
                t.l(this.this$0.getContext()).R1(Event.commonClick, this.$game.getExtBean().copy().setTypeCode("btnDown").buildScene().toExt());
                super.onViewClicked(downView);
            }
        });
    }

    private final void bindGameTag(v2.c cVar, boolean z10, boolean z11) {
        Integer numValueOf;
        ImageView imageView = (ImageView) cVar.b(R.id.ivGameTag);
        if (imageView == null) {
            return;
        }
        if (z10) {
            numValueOf = Integer.valueOf(R.drawable.ic_express_tag_new);
        } else {
            numValueOf = z11 ? Integer.valueOf(R.drawable.ic_express_tag_update) : null;
        }
        if (numValueOf == null) {
            imageView.setVisibility(8);
        } else {
            imageView.setImageResource(numValueOf.intValue());
            imageView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bindVideoBanner(final Context context, v2.c cVar, final CommonGameInfoBean commonGameInfoBean, GameExpressMultiItem gameExpressMultiItem) {
        GInfoBean g_info = commonGameInfoBean.getG_info();
        final Function0<Unit> function0 = new Function0() { // from class: com.join.kotlin.ui.gameexpress.adapter.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GameExpressAdapter.bindVideoBanner$lambda$2(context, commonGameInfoBean);
            }
        };
        cVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.gameexpress.adapter.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                function0.invoke();
            }
        });
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) cVar.getView(R.id.bannerView);
        FrameLayout frameLayout = (FrameLayout) cVar.getView(R.id.videoContner);
        String big_pic = t2.i(commonGameInfoBean.getBig_pic()) ? commonGameInfoBean.getBig_pic() : commonGameInfoBean.getCoverPicUrl();
        if (t2.i(commonGameInfoBean.getV_url())) {
            simpleDraweeView.setVisibility(8);
            frameLayout.setVisibility(0);
            bindVideoInContainer(context, frameLayout, commonGameInfoBean, big_pic, function0);
        } else {
            releaseVideoInContainer(frameLayout);
            frameLayout.setVisibility(8);
            simpleDraweeView.setVisibility(0);
            l.o(simpleDraweeView, big_pic);
        }
        if (g_info != null) {
            big_pic = TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico();
        }
        l.o((SimpleDraweeView) cVar.getView(R.id.sdv_image), big_pic);
        bindVideoBottomBar(cVar, commonGameInfoBean, g_info, gameExpressMultiItem);
        bindGameDownload(cVar, commonGameInfoBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit bindVideoBanner$lambda$2(Context context, CommonGameInfoBean commonGameInfoBean) {
        IntentUtil.getInstance().intentActivity(context, commonGameInfoBean.getIntentDataBean());
        return Unit.INSTANCE;
    }

    private final void bindVideoBottomBar(v2.c cVar, CommonGameInfoBean commonGameInfoBean, GInfoBean gInfoBean, GameExpressMultiItem gameExpressMultiItem) {
        Integer link_type;
        if (gInfoBean != null) {
            cVar.n(R.id.tv_text_1, gInfoBean.getName());
            cVar.n(R.id.tv_text_2, gInfoBean.getScore() == null ? "" : gInfoBean.getScore().toString());
            cVar.n(R.id.tv_text_3, UtilsMy.R1(gInfoBean.getSp_tag_info(), gInfoBean.getTag_info(), " | "));
            if (TextUtils.isEmpty(gInfoBean.getApp_size())) {
                cVar.h(R.id.tv_text_4, false);
            } else {
                try {
                    String app_size = gInfoBean.getApp_size();
                    Intrinsics.checkNotNullExpressionValue(app_size, "getApp_size(...)");
                    double d10 = 1024;
                    long j10 = (long) (Double.parseDouble(app_size) * d10 * d10);
                    if (j10 > 0) {
                        cVar.n(R.id.tv_text_4, UtilsMy.c(j10));
                        cVar.h(R.id.tv_text_4, false);
                    } else {
                        cVar.h(R.id.tv_text_4, true);
                    }
                } catch (Exception unused) {
                    cVar.h(R.id.tv_text_4, true);
                }
            }
            String info = gInfoBean.getInfo();
            cVar.n(R.id.tv_text_5, info != null ? info : "");
        } else {
            cVar.n(R.id.tv_text_1, commonGameInfoBean.getTitle());
            cVar.n(R.id.tv_text_2, "");
            cVar.n(R.id.tv_text_3, "");
            cVar.h(R.id.tv_text_4, true);
            cVar.n(R.id.tv_text_5, "");
        }
        if (commonGameInfoBean.giftSwitch()) {
            cVar.h(R.id.iv_1, true);
        } else {
            cVar.h(R.id.iv_1, false);
        }
        if ((commonGameInfoBean.getJp_info() == null || ((link_type = commonGameInfoBean.getJp_info().getLink_type()) != null && link_type.intValue() == 1)) && !commonGameInfoBean.isH5Game()) {
            boolean z10 = gInfoBean != null;
            cVar.h(R.id.g_1, !z10);
            cVar.h(R.id.tv_text_3, !z10);
        } else {
            cVar.n(R.id.tv_text_1, commonGameInfoBean.getTitle());
            cVar.h(R.id.g_1, true);
            cVar.h(R.id.tv_text_3, true);
        }
        bindGameTag(cVar, gameExpressMultiItem.isNew(), gameExpressMultiItem.isUpdate());
    }

    private final void bindVideoInContainer(Context context, FrameLayout container, CommonGameInfoBean game, String coverUrl, final Function0<Unit> onVideoClick) {
        Integer link_type;
        MultiStandVideo multiStandVideoObtainVideoView = obtainVideoView(container, context);
        if (!TextUtils.equals(game.getV_url(), multiStandVideoObtainVideoView.getUrl()) || (game.getJp_info() != null && ((link_type = game.getJp_info().getLink_type()) == null || link_type.intValue() != 1))) {
            multiStandVideoObtainVideoView.l(coverUrl);
            multiStandVideoObtainVideoView.setName(game.getShowName());
            h hVar = this.videoHelper;
            multiStandVideoObtainVideoView.setPlayTag(hVar != null ? hVar.s() : null);
            multiStandVideoObtainVideoView.setPlayPosition(game.hashCode());
            multiStandVideoObtainVideoView.setUpLazy(game.getV_url(), false, null, null, "");
            multiStandVideoObtainVideoView.setRotateViewAuto(false);
            multiStandVideoObtainVideoView.setLockLand(true);
            multiStandVideoObtainVideoView.setReleaseWhenLossAudio(false);
            multiStandVideoObtainVideoView.setShowFullAnimation(false);
            multiStandVideoObtainVideoView.setIsTouchWiget(false);
            multiStandVideoObtainVideoView.setNeedLockFull(false);
            multiStandVideoObtainVideoView.setBottomProgressBarDrawable(null);
            multiStandVideoObtainVideoView.setVideoAllCallBack(new w() { // from class: com.join.kotlin.ui.gameexpress.adapter.GameExpressAdapter.bindVideoInContainer.1
                @Override // com.join.mgps.callbacks.w, v7.h
                public void onClickBlank(String s10, Object... objects) {
                    Intrinsics.checkNotNullParameter(s10, "s");
                    Intrinsics.checkNotNullParameter(objects, "objects");
                    super.onClickBlank(s10, Arrays.copyOf(objects, objects.length));
                    onVideoClick.invoke();
                }

                @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
                public void onClickCover() {
                    super.onClickCover();
                    onVideoClick.invoke();
                }
            });
        }
        multiStandVideoObtainVideoView.setVisibility(0);
    }

    private final MultiStandVideo obtainVideoView(FrameLayout container, Context context) {
        MultiStandVideo multiStandVideo = (MultiStandVideo) container.findViewById(R.id.wf_video);
        if (multiStandVideo != null) {
            return multiStandVideo;
        }
        MultiStandVideo multiStandVideo2 = new MultiStandVideo(context);
        multiStandVideo2.setId(R.id.wf_video);
        container.addView(multiStandVideo2, new FrameLayout.LayoutParams(-1, -1));
        return multiStandVideo2;
    }

    private final void releaseVideoInContainer(FrameLayout container) {
        MultiStandVideo multiStandVideo = (MultiStandVideo) container.findViewById(R.id.wf_video);
        if (multiStandVideo != null) {
            multiStandVideo.onVideoPause();
            multiStandVideo.release();
            container.removeView(multiStandVideo);
        }
    }

    public static /* synthetic */ void updateDownloadUi$default(GameExpressAdapter gameExpressAdapter, v2.c cVar, GameExpressMultiItem gameExpressMultiItem, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        gameExpressAdapter.updateDownloadUi(cVar, gameExpressMultiItem, z10);
    }

    @Override // com.chad.library.adapter.base.c, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled(holder);
        if (holder instanceof v2.c) {
            v2.c cVar = (v2.c) holder;
            MultiStandVideo multiStandVideo = (MultiStandVideo) cVar.b(R.id.wf_video);
            if (multiStandVideo != null) {
                multiStandVideo.onVideoPause();
                multiStandVideo.release();
            }
            FrameLayout frameLayout = (FrameLayout) cVar.b(R.id.videoContner);
            if (frameLayout != null) {
                releaseVideoInContainer(frameLayout);
            }
        }
    }

    public final void updateDownloadUi(@NotNull v2.c holder, @NotNull GameExpressMultiItem item, boolean z10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int viewType = item.getViewType();
        if (viewType == 2 || viewType == 3) {
            Object data = item.getData();
            if (!(data instanceof CommonGameInfoBean)) {
                data = null;
            }
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) data;
            if (commonGameInfoBean == null) {
                return;
            }
            if (z10) {
                applyDownloadProgress(holder, commonGameInfoBean);
            } else {
                bindGameDownload(holder, commonGameInfoBean);
            }
        }
    }

    public /* synthetic */ GameExpressAdapter(h hVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : hVar);
    }

    public GameExpressAdapter(@Nullable h hVar) {
        super(null, 1, null);
        this.videoHelper = hVar;
        onItemViewType(new com.chad.library.adapter.base.c.a<GameExpressMultiItem>() { // from class: com.join.kotlin.ui.gameexpress.adapter.GameExpressAdapter.1
            @Override // com.chad.library.adapter.base.c.a
            public int onItemViewType(int position, List<? extends GameExpressMultiItem> list) {
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
        }).addItemType(1, v2.c.class, new com.chad.library.adapter.base.c.b<GameExpressMultiItem, v2.c>() { // from class: com.join.kotlin.ui.gameexpress.adapter.GameExpressAdapter.2
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
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, GameExpressMultiItem gameExpressMultiItem, List list) {
                onBind((v2.c) viewHolder, i10, gameExpressMultiItem, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public v2.c onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new v2.c(R.layout.item_game_express_title, parent);
            }

            public void onBind(v2.c cVar, int i10, GameExpressMultiItem gameExpressMultiItem, List<? extends Object> list) {
                com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, gameExpressMultiItem, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(v2.c holder, int i10, GameExpressMultiItem gameExpressMultiItem) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (gameExpressMultiItem != null) {
                    Object data = gameExpressMultiItem.getData();
                    if (!(data instanceof GameExpressTitleItem)) {
                        data = null;
                    }
                    GameExpressTitleItem gameExpressTitleItem = (GameExpressTitleItem) data;
                    if (gameExpressTitleItem == null) {
                        return;
                    }
                    holder.n(R.id.title, gameExpressTitleItem.getPrefix());
                    holder.n(R.id.tv_text_1, gameExpressTitleItem.getDateText());
                    holder.n(R.id.tv_text_2, gameExpressTitleItem.getWeekText());
                }
            }
        }).addItemType(2, v2.c.class, new com.chad.library.adapter.base.c.b<GameExpressMultiItem, v2.c>() { // from class: com.join.kotlin.ui.gameexpress.adapter.GameExpressAdapter.3
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
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, GameExpressMultiItem gameExpressMultiItem, List list) {
                onBind((v2.c) viewHolder, i10, gameExpressMultiItem, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public v2.c onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new v2.c(R.layout.item_game_express_game_video, parent);
            }

            public void onBind(v2.c cVar, int i10, GameExpressMultiItem gameExpressMultiItem, List<? extends Object> list) {
                com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, gameExpressMultiItem, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(v2.c holder, int i10, GameExpressMultiItem gameExpressMultiItem) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (gameExpressMultiItem != null) {
                    Object data = gameExpressMultiItem.getData();
                    if (!(data instanceof CommonGameInfoBean)) {
                        data = null;
                    }
                    CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) data;
                    if (commonGameInfoBean == null) {
                        return;
                    }
                    GameExpressAdapter gameExpressAdapter = GameExpressAdapter.this;
                    gameExpressAdapter.bindVideoBanner(gameExpressAdapter.getContext(), holder, commonGameInfoBean, gameExpressMultiItem);
                }
            }
        }).addItemType(3, v2.c.class, new AnonymousClass4());
    }
}
