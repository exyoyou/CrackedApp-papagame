package com.join.mgps.adapter;

import android.content.Context;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class z2 extends BaseQuickAdapter<CommonGameInfoBean, v2.c> {
    public z2() {
        super(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull v2.c holder, int i10, @Nullable CommonGameInfoBean commonGameInfoBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (commonGameInfoBean != null) {
            try {
                holder.n(R.id.name, commonGameInfoBean.getTitle());
                com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.icon), commonGameInfoBean.getBig_pic());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new v2.c(R.layout.layout_papa_main_home_v4_fast_entry, parent);
    }
}
