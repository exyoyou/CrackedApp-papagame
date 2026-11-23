package com.join.mgps.adapter;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.UserCenterBean;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class m8 extends BaseQuickAdapter<UserCenterBean.UserCenterItem, v2.c> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62780e;

    public m8(@Nullable List<UserCenterBean.UserCenterItem> data) {
        super(data == null ? Collections.emptyList() : data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull v2.c holder, int position, @Nullable UserCenterBean.UserCenterItem userCenterItem) {
        if (userCenterItem == null) {
            return;
        }
        try {
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) holder.getView(R.id.iv_module_icon);
            TextView textView = (TextView) holder.getView(R.id.tv_module_name);
            TextView textView2 = (TextView) holder.getView(R.id.tv_module_doings);
            LinearLayout linearLayout = (LinearLayout) holder.getView(R.id.ll_content);
            View view = holder.getView(R.id.emptyDivider);
            TextView textView3 = (TextView) holder.getView(R.id.messageBadge);
            Context context = holder.itemView.getContext();
            textView3.setVisibility(8);
            if (!AccountUtil_.getInstance_(context).isTourist()) {
                if (position != 0 || this.f62780e <= 0) {
                    textView3.setVisibility(8);
                } else {
                    textView3.setVisibility(0);
                    int i10 = this.f62780e;
                    if (i10 > 99) {
                        textView3.setText("+99");
                    } else {
                        textView3.setText(String.valueOf(i10));
                    }
                }
            }
            if (userCenterItem.isEmpty()) {
                view.setVisibility(8);
                linearLayout.setVisibility(8);
                return;
            }
            view.setVisibility(8);
            if (userCenterItem.isPlaceHolder()) {
                linearLayout.setVisibility(4);
            } else {
                linearLayout.setVisibility(0);
            }
            if (userCenterItem.getMain() != null) {
                String pic_remote = userCenterItem.getMain().getPic_remote();
                if (TextUtils.isEmpty(pic_remote)) {
                    com.join.android.app.common.utils.l.n(simpleDraweeView, Uri.parse("res:///2131233393"));
                } else {
                    com.join.android.app.common.utils.l.i(simpleDraweeView, pic_remote, com.facebook.drawee.drawable.s.c.f27288e);
                }
                textView.setText(userCenterItem.getMain().getSub_title());
                textView2.setText(userCenterItem.getMain().getLabel());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void l(int totalnum) {
        this.f62780e = totalnum;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NonNull
    public v2.c onCreateViewHolder(@NonNull Context context, @NonNull ViewGroup parent, int viewType) {
        return new v2.c(R.layout.item_usercenter, parent);
    }
}
