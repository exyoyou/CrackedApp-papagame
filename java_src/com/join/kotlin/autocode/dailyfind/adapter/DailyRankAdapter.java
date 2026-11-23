package com.join.kotlin.autocode.dailyfind.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u0016\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00040\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ \u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0014J(\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00112\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "pool", "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;", "<init>", "(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V", "getPool", "()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DailyRankAdapter extends BaseQuickAdapter<List<? extends CollectionBeanSub>, v2.c> {

    @NotNull
    private final RecyclerView.RecycledViewPool pool;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DailyRankAdapter(@NotNull RecyclerView.RecycledViewPool pool) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(pool, "pool");
        this.pool = pool;
    }

    @NotNull
    public final RecyclerView.RecycledViewPool getPool() {
        return this.pool;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull v2.c holder, int i10, @Nullable List<? extends CollectionBeanSub> list) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        RecyclerView recyclerView = (RecyclerView) holder.getView(R.id.rv_list);
        List<? extends CollectionBeanSub> listSubList = list != null ? list.subList(0, Math.min(3, list.size())) : null;
        DailyRankGameAdapter dailyRankGameAdapter = holder.itemView.getTag() instanceof DailyRankGameAdapter ? (DailyRankGameAdapter) holder.itemView.getTag() : null;
        if (dailyRankGameAdapter == null) {
            dailyRankGameAdapter = new DailyRankGameAdapter();
            recyclerView.setLayoutManager(new LinearLayoutManager(holder.itemView.getContext()));
            recyclerView.setRecycledViewPool(this.pool);
            recyclerView.setHasFixedSize(true);
            holder.itemView.setTag(dailyRankGameAdapter);
            recyclerView.setAdapter(dailyRankGameAdapter);
            if (recyclerView.getItemDecorationCount() == 0) {
                recyclerView.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.autocode.dailyfind.adapter.DailyRankAdapter.onBindViewHolder.1
                    @Override // com.join.mgps.base.decoration.b
                    public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i11) {
                        com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                        aVar.f64116f = 0;
                        aVar.f64120d = (int) DailyRankAdapter.this.getContext().getResources().getDimension(R.dimen.wdp20);
                        return aVar;
                    }
                });
            }
        }
        dailyRankGameAdapter.submitList(listSubList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new v2.c(R.layout.item_daily_rank_rv, parent);
    }
}
