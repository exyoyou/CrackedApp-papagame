package com.join.kotlin.ui.hmcloud.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ax;
import com.join.android.app.mgsim.wufun.databinding.cx;
import com.join.android.app.mgsim.wufun.databinding.ex;
import com.join.android.app.mgsim.wufun.databinding.ww;
import com.join.android.app.mgsim.wufun.databinding.yw;
import com.join.kotlin.ui.hmcloud.model.MultiCloudRecordBean;
import com.wufan.user.service.protobuf.MessageCloudGamingCoinResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPropResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import v2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00052\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;", "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCloudAssetRecordAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudAssetRecordAdapter.kt\ncom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,174:1\n55#2:175\n55#2:176\n55#2:177\n55#2:178\n55#2:179\n*S KotlinDebug\n*F\n+ 1 CloudAssetRecordAdapter.kt\ncom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter\n*L\n30#1:175\n54#1:176\n78#1:177\n102#1:178\n127#1:179\n*E\n"})
public final class CloudAssetRecordAdapter extends c<MultiCloudRecordBean> {
    public static final int TYPE_DAOJ = 5;
    public static final int TYPE_TIME = 2;
    public static final int TYPE_TIME_HEAD = 1;
    public static final int TYPE_YUNB = 4;
    public static final int TYPE_YUNZ = 3;

    public CloudAssetRecordAdapter() {
        super(null, 1, null);
        addItemType(1, a.class, new c.b<MultiCloudRecordBean, a<ax>>() { // from class: com.join.kotlin.ui.hmcloud.adapter.CloudAssetRecordAdapter.1
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
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, MultiCloudRecordBean multiCloudRecordBean, List list) {
                onBind((a<ax>) viewHolder, i10, multiCloudRecordBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<ax> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(R.layout.item_cloud_asset_time, parent);
            }

            public void onBind(a<ax> aVar, int i10, MultiCloudRecordBean multiCloudRecordBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, multiCloudRecordBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<ax> holder, int i10, MultiCloudRecordBean multiCloudRecordBean) {
                Object data;
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (multiCloudRecordBean == null || (data = multiCloudRecordBean.getData()) == null) {
                    return;
                }
                MessageCloudGamingPlaytimeResponse.PlaytimeSummary playtimeSummary = data instanceof MessageCloudGamingPlaytimeResponse.PlaytimeSummary ? (MessageCloudGamingPlaytimeResponse.PlaytimeSummary) data : null;
                ax axVar = (ax) holder.a();
                if (axVar != null) {
                    axVar.n(playtimeSummary);
                }
            }
        }).addItemType(2, a.class, new c.b<MultiCloudRecordBean, a<yw>>() { // from class: com.join.kotlin.ui.hmcloud.adapter.CloudAssetRecordAdapter.2
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
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, MultiCloudRecordBean multiCloudRecordBean, List list) {
                onBind((a<yw>) viewHolder, i10, multiCloudRecordBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<yw> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(R.layout.item_cloud_asset_time_1, parent);
            }

            public void onBind(a<yw> aVar, int i10, MultiCloudRecordBean multiCloudRecordBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, multiCloudRecordBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<yw> holder, int i10, MultiCloudRecordBean multiCloudRecordBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (multiCloudRecordBean == null || multiCloudRecordBean.getData() == null) {
                    return;
                }
                Object data = multiCloudRecordBean.getData();
                MessageCloudGamingPlaytimeResponse.PlaytimeLog playtimeLog = data instanceof MessageCloudGamingPlaytimeResponse.PlaytimeLog ? (MessageCloudGamingPlaytimeResponse.PlaytimeLog) data : null;
                yw ywVar = (yw) holder.a();
                if (ywVar != null) {
                    ywVar.n(playtimeLog);
                }
            }
        }).addItemType(3, a.class, new c.b<MultiCloudRecordBean, a<ex>>() { // from class: com.join.kotlin.ui.hmcloud.adapter.CloudAssetRecordAdapter.3
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
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, MultiCloudRecordBean multiCloudRecordBean, List list) {
                onBind((a<ex>) viewHolder, i10, multiCloudRecordBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<ex> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(R.layout.item_cloud_asset_yunz, parent);
            }

            public void onBind(a<ex> aVar, int i10, MultiCloudRecordBean multiCloudRecordBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, multiCloudRecordBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<ex> holder, int i10, MultiCloudRecordBean multiCloudRecordBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (multiCloudRecordBean == null || multiCloudRecordBean.getData() == null) {
                    return;
                }
                Object data = multiCloudRecordBean.getData();
                MessageCloudGamingCoinResponse.CoinLog coinLog = data instanceof MessageCloudGamingCoinResponse.CoinLog ? (MessageCloudGamingCoinResponse.CoinLog) data : null;
                ex exVar = (ex) holder.a();
                if (exVar != null) {
                    exVar.n(coinLog);
                }
            }
        }).addItemType(4, a.class, new c.b<MultiCloudRecordBean, a<cx>>() { // from class: com.join.kotlin.ui.hmcloud.adapter.CloudAssetRecordAdapter.4
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
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, MultiCloudRecordBean multiCloudRecordBean, List list) {
                onBind((a<cx>) viewHolder, i10, multiCloudRecordBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<cx> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(R.layout.item_cloud_asset_yunb, parent);
            }

            public void onBind(a<cx> aVar, int i10, MultiCloudRecordBean multiCloudRecordBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, multiCloudRecordBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<cx> holder, int i10, MultiCloudRecordBean multiCloudRecordBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (multiCloudRecordBean == null || multiCloudRecordBean.getData() == null) {
                    return;
                }
                Object data = multiCloudRecordBean.getData();
                MessageCloudGamingCoinResponse.CoinLog coinLog = data instanceof MessageCloudGamingCoinResponse.CoinLog ? (MessageCloudGamingCoinResponse.CoinLog) data : null;
                cx cxVar = (cx) holder.a();
                if (cxVar != null) {
                    cxVar.n(coinLog);
                }
            }
        }).addItemType(5, a.class, new c.b<MultiCloudRecordBean, a<ww>>() { // from class: com.join.kotlin.ui.hmcloud.adapter.CloudAssetRecordAdapter.5
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
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, MultiCloudRecordBean multiCloudRecordBean, List list) {
                onBind((a<ww>) viewHolder, i10, multiCloudRecordBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<ww> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(R.layout.item_cloud_asset_daoj, parent);
            }

            public void onBind(a<ww> aVar, int i10, MultiCloudRecordBean multiCloudRecordBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, multiCloudRecordBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<ww> holder, int i10, MultiCloudRecordBean multiCloudRecordBean) {
                ww wwVar;
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (multiCloudRecordBean == null || multiCloudRecordBean.getData() == null) {
                    return;
                }
                Object data = multiCloudRecordBean.getData();
                MessageCloudGamingPropResponse.PropLog propLog = data instanceof MessageCloudGamingPropResponse.PropLog ? (MessageCloudGamingPropResponse.PropLog) data : null;
                ww wwVar2 = (ww) holder.a();
                if (wwVar2 != null) {
                    wwVar2.D(propLog);
                }
                ww wwVar3 = (ww) holder.a();
                if (wwVar3 != null) {
                    wwVar3.B(Boolean.valueOf(multiCloudRecordBean.getCollapse()));
                }
                if (multiCloudRecordBean.getCollapse()) {
                    ww wwVar4 = (ww) holder.a();
                    if (wwVar4 != null) {
                        wwVar4.E(99);
                    }
                } else {
                    ww wwVar5 = (ww) holder.a();
                    if (wwVar5 != null) {
                        wwVar5.E(1);
                    }
                }
                if (Intrinsics.areEqual(propLog != null ? propLog.getCardId() : null, "BaoYe")) {
                    ww wwVar6 = (ww) holder.a();
                    if (wwVar6 != null) {
                        wwVar6.C(Integer.valueOf(R.drawable.ic_cloud_asset_by));
                        return;
                    }
                    return;
                }
                if (Intrinsics.areEqual(propLog != null ? propLog.getCardId() : null, "JiSu7D")) {
                    ww wwVar7 = (ww) holder.a();
                    if (wwVar7 != null) {
                        wwVar7.C(Integer.valueOf(R.drawable.ic_cloud_asset_7d));
                        return;
                    }
                    return;
                }
                if (!Intrinsics.areEqual(propLog != null ? propLog.getCardId() : null, "JiSu24H") || (wwVar = (ww) holder.a()) == null) {
                    return;
                }
                wwVar.C(Integer.valueOf(R.drawable.ic_cloud_asset_24h));
            }
        }).onItemViewType(new c.a<MultiCloudRecordBean>() { // from class: com.join.kotlin.ui.hmcloud.adapter.CloudAssetRecordAdapter.6
            @Override // com.chad.library.adapter.base.c.a
            public int onItemViewType(int position, List<? extends MultiCloudRecordBean> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                return (position < 0 || position >= list.size()) ? position : list.get(position).getViewType();
            }
        });
    }
}
