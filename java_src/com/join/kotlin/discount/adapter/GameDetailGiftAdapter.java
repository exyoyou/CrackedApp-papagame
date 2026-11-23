package com.join.kotlin.discount.adapter;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.c00;
import com.join.android.app.mgsim.wufun.databinding.dz;
import com.join.kotlin.discount.model.bean.GameDetailGiftEntityBean;
import com.join.kotlin.discount.model.bean.GiftItemBean;
import com.join.kotlin.discount.proxy.GameDetailGiftClickProxy;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;", "Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;", "<init>", "()V", "click", "Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;", "getClick", "()Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;", "setClick", "(Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;)V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailGiftAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailGiftAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailGiftAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,77:1\n55#2:78\n55#2:79\n*S KotlinDebug\n*F\n+ 1 GameDetailGiftAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailGiftAdapter\n*L\n22#1:78\n44#1:79\n*E\n"})
public final class GameDetailGiftAdapter extends c<GameDetailGiftEntityBean> {
    public static final int TYPE_GIFT_CONTENT = 2;
    public static final int TYPE_GIFT_TITLE = 1;

    @Nullable
    private GameDetailGiftClickProxy click;

    public GameDetailGiftAdapter() {
        super(null, 1, null);
        addItemType(1, a.class, new c.b<GameDetailGiftEntityBean, a<c00>>() { // from class: com.join.kotlin.discount.adapter.GameDetailGiftAdapter.1
            @Override // com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int i10) {
                return c.b.a.a(this, i10);
            }

            @Override // com.chad.library.adapter.base.c.b
            public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
                return c.b.a.c(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.d(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.e(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
                c.b.a.f(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, GameDetailGiftEntityBean gameDetailGiftEntityBean, List list) {
                onBind((a<c00>) viewHolder, i10, gameDetailGiftEntityBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<c00> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(R.layout.item_discount_gift_title, parent);
            }

            public void onBind(a<c00> aVar, int i10, GameDetailGiftEntityBean gameDetailGiftEntityBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, gameDetailGiftEntityBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<c00> holder, int i10, GameDetailGiftEntityBean gameDetailGiftEntityBean) {
                Object data;
                c00 c00Var;
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (gameDetailGiftEntityBean == null || (data = gameDetailGiftEntityBean.getData()) == null || (c00Var = (c00) holder.a()) == null) {
                    return;
                }
                c00Var.f((String) data);
            }
        });
        addItemType(2, a.class, new c.b<GameDetailGiftEntityBean, a<dz>>() { // from class: com.join.kotlin.discount.adapter.GameDetailGiftAdapter.2
            @Override // com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int i10) {
                return c.b.a.a(this, i10);
            }

            @Override // com.chad.library.adapter.base.c.b
            public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
                return c.b.a.c(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.d(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.e(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
                c.b.a.f(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, GameDetailGiftEntityBean gameDetailGiftEntityBean, List list) {
                onBind((a<dz>) viewHolder, i10, gameDetailGiftEntityBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<dz> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(R.layout.item_detail_gift, parent);
            }

            public void onBind(a<dz> aVar, int i10, GameDetailGiftEntityBean gameDetailGiftEntityBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, gameDetailGiftEntityBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<dz> holder, int i10, GameDetailGiftEntityBean gameDetailGiftEntityBean) {
                ProgressBar progressBar;
                String strReplace$default;
                Integer intOrNull;
                Intrinsics.checkNotNullParameter(holder, "holder");
                Object data = gameDetailGiftEntityBean != null ? gameDetailGiftEntityBean.getData() : null;
                GiftItemBean giftItemBean = data instanceof GiftItemBean ? (GiftItemBean) data : null;
                if (giftItemBean == null) {
                    return;
                }
                dz dzVar = (dz) holder.a();
                if (dzVar != null) {
                    dzVar.u(giftItemBean);
                }
                dz dzVar2 = (dz) holder.a();
                if (dzVar2 != null) {
                    dzVar2.t(GameDetailGiftAdapter.this.getClick());
                }
                dz dzVar3 = (dz) holder.a();
                if (dzVar3 == null || (progressBar = dzVar3.f37681b) == null) {
                    return;
                }
                String surplusPercent = giftItemBean.getSurplusPercent();
                progressBar.setProgress((surplusPercent == null || (strReplace$default = StringsKt__StringsJVMKt.replace$default(surplusPercent, "%", "", false, 4, (Object) null)) == null || (intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strReplace$default)) == null) ? 0 : intOrNull.intValue());
            }
        });
        onItemViewType(new c.a<GameDetailGiftEntityBean>() { // from class: com.join.kotlin.discount.adapter.GameDetailGiftAdapter.3
            @Override // com.chad.library.adapter.base.c.a
            public int onItemViewType(int position, List<? extends GameDetailGiftEntityBean> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                return (position < 0 || position >= list.size()) ? position : list.get(position).getViewType();
            }
        });
    }

    @Nullable
    public final GameDetailGiftClickProxy getClick() {
        return this.click;
    }

    public final void setClick(@Nullable GameDetailGiftClickProxy gameDetailGiftClickProxy) {
        this.click = gameDetailGiftClickProxy;
    }
}
