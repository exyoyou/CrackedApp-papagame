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
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.RecommendAd;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class f7 extends RecyclerView.Adapter<a> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f62144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<RecommendAd> f62145f;

    class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private SimpleDraweeView f62146d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f62147e;

        public a(View itemView) {
            super(itemView);
            this.f62146d = (SimpleDraweeView) itemView.findViewById(R.id.ivAd);
            this.f62147e = (TextView) itemView.findViewById(R.id.tvAd);
        }
    }

    public f7(Context context, List<RecommendAd> contents) {
        this.f62144e = context;
        this.f62145f = contents;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(RecommendAd recommendAd, View view) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(recommendAd.getLink_type());
        intentDateBean.setJump_type(recommendAd.getJump_type());
        intentDateBean.setLink_type_val(recommendAd.getLink_type_val());
        intentDateBean.setCrc_link_type_val(recommendAd.getCrc_link_type_val());
        intentDateBean.setTpl_type(recommendAd.getTpl_type() + "");
        IntentUtil.getInstance().intentActivity(view.getContext(), intentDateBean);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull a holder, int position) {
        List<RecommendAd> list = this.f62145f;
        final RecommendAd recommendAd = list.get(position % list.size());
        holder.f62147e.setText(recommendAd.getSub_title());
        com.join.android.app.common.utils.l.h(holder.f62146d, recommendAd.getPic_remote());
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.e7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f7.b(recommendAd, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return new a(LayoutInflater.from(this.f62144e).inflate(R.layout.item_simulator_recom_ad, parent, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }
}
