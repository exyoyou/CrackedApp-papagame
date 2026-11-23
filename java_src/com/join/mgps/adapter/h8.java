package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameMainV4DataBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h8 extends RecyclerView.Adapter<a> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f62325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<GameMainV4DataBean.UserInfoBean> f62326f;

    class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f62327d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SimpleDraweeView f62328e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f62329f;

        public a(View itemView) {
            super(itemView);
            this.f62327d = (TextView) itemView.findViewById(R.id.tvFunc);
            this.f62328e = (SimpleDraweeView) itemView.findViewById(R.id.ivAvatar);
            this.f62329f = (TextView) itemView.findViewById(R.id.tvDesc);
        }
    }

    public h8(Context context, List<GameMainV4DataBean.UserInfoBean> users) {
        this.f62325e = context;
        this.f62326f = users;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull a holder, int position) {
        List<GameMainV4DataBean.UserInfoBean> list = this.f62326f;
        GameMainV4DataBean.UserInfoBean userInfoBean = list.get(position % list.size());
        holder.f62327d.setVisibility(8);
        holder.f62328e.setVisibility(0);
        holder.f62329f.setVisibility(0);
        com.join.android.app.common.utils.l.h(holder.f62328e, userInfoBean.getAvatar());
        holder.f62329f.setText("已开通VIP");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return new a(LayoutInflater.from(this.f62325e).inflate(R.layout.item_gold_finger_func, parent, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }
}
