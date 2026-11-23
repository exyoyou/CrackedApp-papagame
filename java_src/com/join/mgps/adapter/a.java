package com.join.mgps.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes3.dex */
public class a extends BaseQuickAdapter<CommonGameInfoBean, v2.c> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NonNull v2.c holder, int position, @Nullable CommonGameInfoBean item) {
        holder.n(R.id.tv_text, item.getTitle());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NonNull
    public v2.c onCreateViewHolder(@NonNull Context context, @NonNull ViewGroup parent, int viewType) {
        return new v2.c(R.layout.item_about_sub_menu, parent);
    }
}
