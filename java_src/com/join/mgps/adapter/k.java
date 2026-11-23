package com.join.mgps.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse;
import com.wufan.user.service.protobuf.enumeration.ServerState;

/* JADX INFO: loaded from: classes3.dex */
public class k extends BaseQuickAdapter<MessageCloudGamingServerListResponse.LineList, v2.c> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f62518e = "";

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f62519a;

        static {
            int[] iArr = new int[ServerState.values().length];
            f62519a = iArr;
            try {
                iArr[ServerState.SERVER_LINE_FULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62519a[ServerState.SERVER_LINE_BUSY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62519a[ServerState.SERVER_LINE_STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62519a[ServerState.SERVER_LINE_IDLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62519a[ServerState.UNRECOGNIZED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public boolean k(MessageCloudGamingServerListResponse.LineList item) {
        return this.f62518e.equals(item.getServerLineNum());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull v2.c holder, int position, @Nullable MessageCloudGamingServerListResponse.LineList item) {
        HtmlTextView htmlTextView = (HtmlTextView) holder.getView(R.id.htv_1);
        if (this.f62518e.equals(item.getServerLineNum())) {
            htmlTextView.setHtml(item.getServerName() + "(当前选择)");
        } else {
            htmlTextView.setHtml(item.getServerName());
        }
        ((HtmlTextView) holder.getView(R.id.htv_2)).setHtml(item.getVideoCodeRateTitle());
        holder.h(R.id.iv_1, !item.getIsVip());
        holder.f(R.id.cl_root, item.getIsVip() ? R.drawable.shape_040000_r3 : R.drawable.shape_d8d8d8_a50_r3);
        int i10 = a.f62519a[item.getState().ordinal()];
        if (i10 == 1) {
            holder.n(R.id.tv_text_2, "已满");
            holder.f(R.id.tv_text_2, R.drawable.shape_ff0000_r6);
            return;
        }
        if (i10 == 2) {
            holder.n(R.id.tv_text_2, "繁忙");
            holder.f(R.id.tv_text_2, R.drawable.shape_ff8400_r6);
        } else if (i10 == 3) {
            holder.n(R.id.tv_text_2, "停用");
            holder.f(R.id.tv_text_2, R.drawable.shape_333333_r6);
        } else {
            if (i10 != 4) {
                return;
            }
            holder.n(R.id.tv_text_2, "空闲");
            holder.f(R.id.tv_text_2, R.drawable.shape_1e9b50_r6);
        }
    }

    public void m(String curServerId) {
        this.f62518e = curServerId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NonNull
    public v2.c onCreateViewHolder(@NonNull Context context, @NonNull ViewGroup parent, int viewType) {
        return new v2.c(R.layout.item_cloud_router_1, parent);
    }
}
