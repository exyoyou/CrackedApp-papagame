package com.join.mgps.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.FriendBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class j0 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f62438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<FriendBean> f62439f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    a f62440g;

    public interface a {
        void I(FriendBean bean);
    }

    class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f62441d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f62442e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62443f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public SimpleDraweeView f62444g;

        public b(View itemView) {
            super(itemView);
            this.f62441d = (TextView) itemView.findViewById(R.id.name);
            this.f62442e = (TextView) itemView.findViewById(R.id.desc);
            this.f62443f = (TextView) itemView.findViewById(R.id.button);
            this.f62444g = (SimpleDraweeView) itemView.findViewById(R.id.avatar);
        }
    }

    public j0(Context context) {
        this.f62438e = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(FriendBean friendBean, View view) {
        a aVar = this.f62440g;
        if (aVar != null) {
            aVar.I(friendBean);
        }
    }

    public List<FriendBean> b() {
        return this.f62439f;
    }

    public a c() {
        return this.f62440g;
    }

    public void e(List<FriendBean> friendBeans) {
        this.f62439f = friendBeans;
    }

    public void f(a onAddFriendListener) {
        this.f62440g = onAddFriendListener;
    }

    public Context getContext() {
        return this.f62438e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f62439f.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        if (viewHolder instanceof b) {
            b bVar = (b) viewHolder;
            final FriendBean friendBean = this.f62439f.get(i10);
            bVar.f62441d.setText(friendBean.getNickName());
            bVar.f62442e.setText(friendBean.getAccount());
            com.join.android.app.common.utils.l.h(bVar.f62444g, friendBean.getAvatar());
            if (TextUtils.isEmpty(friendBean.getFriendRequestType())) {
                return;
            }
            if (friendBean.getFriendRequestType().equals("ACCEPT")) {
                bVar.f62443f.setText("已添加");
                bVar.f62443f.setSelected(true);
                bVar.f62443f.setOnClickListener(null);
            } else if (friendBean.getFriendRequestType().equals("REJECT") || friendBean.getFriendRequestType().equals("INIT")) {
                bVar.f62443f.setText("已发送");
                bVar.f62443f.setSelected(true);
                bVar.f62443f.setOnClickListener(null);
            } else {
                bVar.f62443f.setText("加好友");
                bVar.f62443f.setSelected(false);
                bVar.f62443f.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.i0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f62333b.d(friendBean, view);
                    }
                });
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return new b(LayoutInflater.from(this.f62438e).inflate(R.layout.item_friend_add, viewGroup, false));
    }

    public void setContext(Context context) {
        this.f62438e = context;
    }
}
