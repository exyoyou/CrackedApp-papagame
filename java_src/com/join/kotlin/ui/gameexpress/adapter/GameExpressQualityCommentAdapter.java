package com.join.kotlin.ui.gameexpress.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressHotCommentBean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000bH\u0014J\"\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\b\u0010!\u001a\u0004\u0018\u00010\u0002H\u0014J\u0016\u0010\"\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002Ra\u0010\u0006\u001aI\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012RL\u0010\u0013\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006#"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "<init>", "()V", "onLikeListener", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "comment", "", "position", "praiseType", "", "getOnLikeListener", "()Lkotlin/jvm/functions/Function3;", "setOnLikeListener", "(Lkotlin/jvm/functions/Function3;)V", "onGameIconClickListener", "Lkotlin/Function2;", "getOnGameIconClickListener", "()Lkotlin/jvm/functions/Function2;", "setOnGameIconClickListener", "(Lkotlin/jvm/functions/Function2;)V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", "item", "bindLikeUi", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameExpressQualityCommentAdapter extends BaseQuickAdapter<GameExpressHotCommentBean, v2.c> {

    @Nullable
    private Function2<? super GameExpressHotCommentBean, ? super Integer, Unit> onGameIconClickListener;

    @Nullable
    private Function3<? super GameExpressHotCommentBean, ? super Integer, ? super Integer, Unit> onLikeListener;

    public GameExpressQualityCommentAdapter() {
        super(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$1(GameExpressQualityCommentAdapter gameExpressQualityCommentAdapter, GameExpressHotCommentBean gameExpressHotCommentBean, v2.c cVar, View view) {
        Function2<? super GameExpressHotCommentBean, ? super Integer, Unit> function2 = gameExpressQualityCommentAdapter.onGameIconClickListener;
        if (function2 != null) {
            function2.invoke(gameExpressHotCommentBean, Integer.valueOf(cVar.getBindingAdapterPosition()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$3(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<unused var>");
        Intrinsics.checkNotNullParameter(view, "<unused var>");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$4(GameExpressHotCommentBean gameExpressHotCommentBean, GameExpressQualityCommentAdapter gameExpressQualityCommentAdapter, v2.c cVar, View view) {
        view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.scale_reset));
        int i10 = gameExpressHotCommentBean.getIs_praise() ? 2 : 1;
        Function3<? super GameExpressHotCommentBean, ? super Integer, ? super Integer, Unit> function3 = gameExpressQualityCommentAdapter.onLikeListener;
        if (function3 != null) {
            function3.invoke(gameExpressHotCommentBean, Integer.valueOf(cVar.getBindingAdapterPosition()), Integer.valueOf(i10));
        }
    }

    public final void bindLikeUi(@NotNull v2.c holder, @NotNull GameExpressHotCommentBean comment) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(comment, "comment");
        holder.n(R.id.tvLikeCount, String.valueOf(comment.getComment_praise()));
        ((ImageView) holder.getView(R.id.ivLike)).setImageResource(comment.getIs_praise() ? R.drawable.ic_express_comment_1_h : R.drawable.ic_express_comment_1_n);
    }

    @Nullable
    public final Function2<GameExpressHotCommentBean, Integer, Unit> getOnGameIconClickListener() {
        return this.onGameIconClickListener;
    }

    @Nullable
    public final Function3<GameExpressHotCommentBean, Integer, Integer, Unit> getOnLikeListener() {
        return this.onLikeListener;
    }

    public final void setOnGameIconClickListener(@Nullable Function2<? super GameExpressHotCommentBean, ? super Integer, Unit> function2) {
        this.onGameIconClickListener = function2;
    }

    public final void setOnLikeListener(@Nullable Function3<? super GameExpressHotCommentBean, ? super Integer, ? super Integer, Unit> function3) {
        this.onLikeListener = function3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull final v2.c holder, int i10, @Nullable final GameExpressHotCommentBean gameExpressHotCommentBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (gameExpressHotCommentBean == null) {
            return;
        }
        String game_name = gameExpressHotCommentBean.getGame_name();
        if (game_name == null) {
            game_name = "";
        }
        holder.n(R.id.tvGameName, game_name);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Typography.leftDoubleQuote);
        String comment_text = gameExpressHotCommentBean.getComment_text();
        if (comment_text == null) {
            comment_text = "";
        }
        sb2.append(comment_text);
        holder.n(R.id.tvCommentContent, sb2.toString());
        String nickname = gameExpressHotCommentBean.getNickname();
        holder.n(R.id.tvUserName, nickname != null ? nickname : "");
        holder.n(R.id.tvCommentCount, String.valueOf(gameExpressHotCommentBean.getComment_count()));
        l.d((SimpleDraweeView) holder.getView(R.id.ivGameIcon), R.drawable.main_normal_icon, gameExpressHotCommentBean.getGame_icon());
        l.d((SimpleDraweeView) holder.getView(R.id.ivUserAvatar), R.drawable.main_normal_icon, gameExpressHotCommentBean.getAvatar());
        l.e((SimpleDraweeView) holder.getView(R.id.sdv_blur), R.drawable.main_normal_icon, gameExpressHotCommentBean.getGame_icon(), s.c.f27292i);
        ((SimpleDraweeView) holder.getView(R.id.sdv_blur)).setColorFilter(Color.parseColor("#99FFFFFF"));
        bindLikeUi(holder, gameExpressHotCommentBean);
        holder.getView(R.id.ivGameIcon).setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.gameexpress.adapter.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GameExpressQualityCommentAdapter.onBindViewHolder$lambda$1(this.f49125b, gameExpressHotCommentBean, holder, view);
            }
        });
        RecyclerView recyclerView = (RecyclerView) holder.getView(R.id.rvAlsoLikeGames);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        GameExpressAlsoLikeAdapter gameExpressAlsoLikeAdapter = adapter instanceof GameExpressAlsoLikeAdapter ? (GameExpressAlsoLikeAdapter) adapter : null;
        if (gameExpressAlsoLikeAdapter == null) {
            gameExpressAlsoLikeAdapter = new GameExpressAlsoLikeAdapter();
            recyclerView.setLayoutManager(new LinearLayoutManager(holder.itemView.getContext(), 0, false));
            recyclerView.setAdapter(gameExpressAlsoLikeAdapter);
        }
        gameExpressAlsoLikeAdapter.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.ui.gameexpress.adapter.f
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                GameExpressQualityCommentAdapter.onBindViewHolder$lambda$3(baseQuickAdapter, view, i11);
            }
        });
        gameExpressAlsoLikeAdapter.submitList(gameExpressHotCommentBean.getRecommend_game_list());
        holder.getView(R.id.llLike).setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.gameexpress.adapter.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GameExpressQualityCommentAdapter.onBindViewHolder$lambda$4(gameExpressHotCommentBean, this, holder, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        v2.c cVar = new v2.c(R.layout.item_game_express_quality_comment, parent);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.wdp580);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.wdp16);
        View view = cVar.itemView;
        RecyclerView.LayoutParams layoutParams = new RecyclerView.LayoutParams(dimensionPixelSize, -1);
        layoutParams.setMarginEnd(dimensionPixelSize2);
        view.setLayoutParams(layoutParams);
        return cVar;
    }
}
