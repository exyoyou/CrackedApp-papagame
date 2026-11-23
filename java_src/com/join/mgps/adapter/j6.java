package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nRankingItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankingItemAdapter.kt\ncom/join/mgps/adapter/RankingItemAdapter\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,139:1\n470#2:140\n470#2:141\n*S KotlinDebug\n*F\n+ 1 RankingItemAdapter.kt\ncom/join/mgps/adapter/RankingItemAdapter\n*L\n70#1:140\n77#1:141\n*E\n"})
public final class j6 extends BaseQuickAdapter<CollectionBeanSub, v2.c> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62496e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private String f62497f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @JvmField
    public boolean f62498g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f62499h;

    public static final class a extends m6.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f62500a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ j6 f62501b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f62502c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(CollectionBeanSub collectionBeanSub, j6 j6Var, int i10, Context context) {
            super(context, collectionBeanSub);
            this.f62500a = collectionBeanSub;
            this.f62501b = j6Var;
            this.f62502c = i10;
        }

        @Override // m6.c
        public void onButtonClicked(DownloadNormalView downloadNormalView) {
            this.f62500a.setRecPosition((this.f62501b.f62499h ? "home" : "ranking") + "-ranking-" + (this.f62502c + 1));
            this.f62500a.setReMarks((this.f62502c + 1) + "");
            super.onButtonClicked(downloadNormalView);
        }
    }

    public j6(@Nullable String str) {
        super(null, 1, null);
        this.f62497f = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(CollectionBeanSub collectionBeanSub, j6 j6Var, int i10, View view) {
        if (collectionBeanSub.getCrc_sign_id() != null) {
            String str = j6Var.f62499h ? "home" : "ranking";
            IntentDateBean intentDataBean = collectionBeanSub.getIntentDataBean();
            collectionBeanSub.getExtBean().setRecPosition(str + "-ranking-" + (i10 + 1));
            collectionBeanSub.getExtBean().setReMarks(collectionBeanSub.getReMarks());
            IntentUtil.getInstance().intentActivity(j6Var.getContext(), intentDataBean);
        }
    }

    public final void n() {
        this.f62499h = true;
    }

    public final void o(int i10) {
        this.f62496e = i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull v2.c holder, final int i10, @Nullable final CollectionBeanSub collectionBeanSub) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        int i11 = i10 + 1;
        if (i11 != 1 && i11 != 2 && i11 != 3) {
            holder.h(R.id.ivNumber, true);
            holder.h(R.id.tvNumber, false);
            holder.n(R.id.tvNumber, i11 + "");
            holder.o(R.id.tvNumber, Color.parseColor("#333333"));
        } else if (this.f62496e > 0) {
            holder.h(R.id.ivNumber, true);
            holder.h(R.id.tvNumber, false);
            if (i11 == 1) {
                holder.k(R.id.ivNumber, R.drawable.ic_standalone_one);
            } else if (i11 == 2) {
                holder.k(R.id.ivNumber, R.drawable.ic_standalone_two);
            } else if (i11 == 3) {
                holder.k(R.id.ivNumber, R.drawable.ic_standalone_three);
            }
            Unit unit = Unit.INSTANCE;
        } else {
            holder.h(R.id.ivNumber, true);
            holder.h(R.id.tvNumber, false);
            holder.n(R.id.tvNumber, i11 + "");
            holder.o(R.id.tvNumber, Color.parseColor("#FF7300"));
        }
        holder.n(R.id.tv_text_1, collectionBeanSub != null ? collectionBeanSub.getGame_name() : null);
        holder.n(R.id.tv_text_5, collectionBeanSub != null ? collectionBeanSub.getInfo() : null);
        holder.n(R.id.tv_text_3, UtilsMy.R1(collectionBeanSub != null ? collectionBeanSub.getSp_tag_info() : null, collectionBeanSub != null ? collectionBeanSub.getTag_info() : null, " | "));
        holder.n(R.id.tv_text_2, collectionBeanSub != null ? collectionBeanSub.getScore() : null);
        if (collectionBeanSub != null && collectionBeanSub.getGift_package_switch() == 1) {
            holder.h(R.id.iv_1, false);
        } else {
            holder.h(R.id.iv_1, true);
        }
        com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.sdv_image), collectionBeanSub != null ? collectionBeanSub.getIco_remote() : null);
        Intrinsics.checkNotNull(collectionBeanSub);
        if (!TextUtils.isEmpty(collectionBeanSub.getSize())) {
            String size = collectionBeanSub.getSize();
            Intrinsics.checkNotNullExpressionValue(size, "getSize(...)");
            double d10 = 1024;
            holder.n(R.id.tv_text_4, UtilsMy.c((long) (Double.parseDouble(size) * d10 * d10)));
        }
        ((DownloadNormalView) holder.getView(R.id.dv_view)).f(new a(collectionBeanSub, this, i10, getContext()));
        holder.h(R.id.g_1, collectionBeanSub.isH5Game());
        holder.h(R.id.tv_text_3, collectionBeanSub.isH5Game());
        holder.h(R.id.tv_text_4, collectionBeanSub.isH5Game());
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.i6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j6.m(collectionBeanSub, this, i10, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new v2.c(R.layout.ranking_listview_item, parent);
    }
}
