package com.join.kotlin.ui.gameexpress.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.CommonGameInfoBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0014J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0014¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAlsoLikeAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/mgps/dto/CommonGameInfoBean;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "<init>", "()V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameExpressAlsoLikeAdapter extends BaseQuickAdapter<CommonGameInfoBean, v2.c> {
    public GameExpressAlsoLikeAdapter() {
        super(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$0(GameExpressAlsoLikeAdapter gameExpressAlsoLikeAdapter, CommonGameInfoBean commonGameInfoBean, View view) {
        IntentUtil.getInstance().intentActivity(gameExpressAlsoLikeAdapter.getContext(), commonGameInfoBean != null ? commonGameInfoBean.getIntentDataBean() : null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull v2.c holder, int i10, @Nullable final CommonGameInfoBean commonGameInfoBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        String showName = commonGameInfoBean != null ? commonGameInfoBean.getShowName() : null;
        if (showName == null) {
            showName = "";
        }
        holder.n(R.id.tvGameName, showName);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) holder.getView(R.id.ivGameIcon);
        if (t2.i(commonGameInfoBean != null ? commonGameInfoBean.getIcon() : null)) {
            l.d(simpleDraweeView, R.drawable.main_normal_icon, commonGameInfoBean != null ? commonGameInfoBean.getIcon() : null);
        } else {
            simpleDraweeView.setImageResource(R.drawable.main_normal_icon);
        }
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.gameexpress.adapter.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GameExpressAlsoLikeAdapter.onBindViewHolder$lambda$0(this.f49123b, commonGameInfoBean, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new v2.c(R.layout.item_game_express_quality_comment_sub, parent);
    }
}
