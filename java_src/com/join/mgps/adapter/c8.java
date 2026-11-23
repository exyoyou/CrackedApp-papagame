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
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c8 extends RecyclerView.Adapter<a> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f61386e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<String> f61387f;

    class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f61388d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SimpleDraweeView f61389e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f61390f;

        public a(View itemView) {
            super(itemView);
            this.f61388d = (TextView) itemView.findViewById(R.id.tvFunc);
            this.f61389e = (SimpleDraweeView) itemView.findViewById(R.id.ivAvatar);
            this.f61390f = (TextView) itemView.findViewById(R.id.tvDesc);
        }
    }

    public c8(Context context, List<String> contents) {
        this.f61386e = context;
        this.f61387f = contents;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull a holder, int position) {
        holder.f61388d.setVisibility(0);
        holder.f61389e.setVisibility(8);
        holder.f61390f.setVisibility(8);
        TextView textView = holder.f61388d;
        List<String> list = this.f61387f;
        textView.setText(list.get(position % list.size()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return new a(LayoutInflater.from(this.f61386e).inflate(R.layout.item_gold_finger_func, parent, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }
}
