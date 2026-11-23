package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ModGameArchiveTagBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h extends RecyclerView.Adapter<a> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<ModGameArchiveTagBean> f62217e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f62218f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f62219g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b f62220h;

    public class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f62221d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f62222e;

        public a(View itemView) {
            super(itemView);
            this.f62221d = (TextView) itemView.findViewById(R.id.tvType);
            this.f62222e = (TextView) itemView.findViewById(R.id.tvCountNew);
        }
    }

    public interface b {
        void onSelected(int position);
    }

    public h(Context context, List<ModGameArchiveTagBean> tags) {
        this(context, 0, tags);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i10, View view) {
        b bVar = this.f62220h;
        if (bVar != null) {
            bVar.onSelected(i10);
            this.f62217e.get(i10).setCount(0);
            int i11 = 0;
            while (i11 < this.f62217e.size()) {
                this.f62217e.get(i11).setSelected(i10 == i11);
                i11++;
            }
            notifyDataSetChanged();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull a holder, final int i10) {
        ModGameArchiveTagBean modGameArchiveTagBean = this.f62217e.get(i10);
        holder.f62221d.setText(modGameArchiveTagBean.getName());
        holder.f62221d.setSelected(modGameArchiveTagBean.isSelected());
        holder.f62222e.setVisibility(modGameArchiveTagBean.getCount() > 0 ? 0 : 8);
        holder.f62222e.setText(String.valueOf(modGameArchiveTagBean.getCount()));
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62152b.b(i10, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return this.f62219g == 1 ? new a(LayoutInflater.from(this.f62218f).inflate(R.layout.item_game_detail_cloud_archive_type, viewGroup, false)) : new a(LayoutInflater.from(this.f62218f).inflate(R.layout.item_cloud_archive_type, viewGroup, false));
    }

    public void f(b listener) {
        this.f62220h = listener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f62217e.size();
    }

    public h(Context context, int vtype, List<ModGameArchiveTagBean> tags) {
        this.f62220h = null;
        this.f62218f = context;
        this.f62217e = tags;
        this.f62219g = vtype;
    }
}
