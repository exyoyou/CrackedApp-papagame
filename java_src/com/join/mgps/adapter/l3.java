package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.GameMainV3DataBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l3 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<GameMainV3DataBean.MemberFunBean> f62684e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f62685f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LayoutInflater f62686g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f62687h;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameMainV3DataBean.MemberFunBean f62688b;

        a(final GameMainV3DataBean.MemberFunBean val$viewBean) {
            this.f62688b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String str;
            if (com.join.mgps.Util.t2.h(this.f62688b.getUrl())) {
                return;
            }
            String url = this.f62688b.getUrl();
            if (url.contains("?")) {
                str = url + "&game_id=" + l3.this.f62687h;
            } else {
                str = url + "?game_id=" + l3.this.f62687h;
            }
            IntentUtil.getInstance().goShareWebActivity(l3.this.f62685f, str);
        }
    }

    public class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f62690d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        SimpleDraweeView f62691e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f62692f;

        public b(View view) {
            super(view);
            this.f62690d = (LinearLayout) view.findViewById(R.id.itemMemberFunRootLl);
            this.f62691e = (SimpleDraweeView) view.findViewById(R.id.itemMemberFunIv);
            this.f62692f = (TextView) view.findViewById(R.id.itemMemberFunTx);
        }
    }

    public l3(Context context, String gameid) {
        this.f62687h = gameid;
        this.f62685f = context;
        this.f62686g = LayoutInflater.from(this.f62685f);
    }

    public void c(List<GameMainV3DataBean.MemberFunBean> mDatas) {
        this.f62684e = mDatas;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f62684e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        GameMainV3DataBean.MemberFunBean memberFunBean = this.f62684e.get(position);
        if (holder instanceof b) {
            b bVar = (b) holder;
            String pic = memberFunBean.getPic();
            if (!com.join.mgps.Util.t2.h(pic)) {
                bVar.f62691e.setImageURI(pic);
            }
            bVar.f62692f.setText(memberFunBean.getTitle());
            bVar.f62690d.setOnClickListener(new a(memberFunBean));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new b(this.f62686g.inflate(R.layout.item_member_fun_view, parent, false));
    }
}
