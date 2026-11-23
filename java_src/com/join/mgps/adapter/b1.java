package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.FriendBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<FriendBean> f61248b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f61249c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    a f61250d;

    public interface a {
        void A(FriendBean bean);

        void f(FriendBean bean);

        void s(FriendBean bean);
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f61251a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f61252b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61253c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f61254d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61255e;

        b() {
        }
    }

    public b1(Context context) {
        this.f61249c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(FriendBean friendBean, View view) {
        a aVar = this.f61250d;
        if (aVar != null) {
            aVar.f(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(FriendBean friendBean, View view) {
        a aVar = this.f61250d;
        if (aVar != null) {
            aVar.A(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(FriendBean friendBean, View view) {
        a aVar = this.f61250d;
        if (aVar != null) {
            aVar.s(friendBean);
        }
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public FriendBean getItem(int position) {
        return this.f61248b.get(position);
    }

    public List<FriendBean> e() {
        return this.f61248b;
    }

    public a f() {
        return this.f61250d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f61248b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        View viewInflate;
        b bVar;
        String str;
        if (convertView == null) {
            bVar = new b();
            viewInflate = LayoutInflater.from(this.f61249c).inflate(R.layout.item_friend_add_req, parent, false);
            bVar.f61251a = (SimpleDraweeView) viewInflate.findViewById(R.id.avatar);
            bVar.f61252b = (TextView) viewInflate.findViewById(R.id.name);
            bVar.f61253c = (TextView) viewInflate.findViewById(R.id.msg);
            bVar.f61254d = (TextView) viewInflate.findViewById(R.id.decline);
            bVar.f61255e = (TextView) viewInflate.findViewById(R.id.accept);
            viewInflate.setTag(bVar);
        } else {
            viewInflate = convertView;
            bVar = (b) convertView.getTag();
        }
        final FriendBean item = getItem(position);
        com.join.android.app.common.utils.l.y(bVar.f61251a, item.getAvatar());
        bVar.f61252b.setText(item.getNickName());
        bVar.f61253c.setText(item.getRequestIfo());
        if (item.getStatus() == 0) {
            viewInflate.setBackgroundResource(R.drawable.shape_friend_req_bg);
            bVar.f61254d.setVisibility(0);
            bVar.f61255e.setBackgroundResource(R.drawable.shape_friend_accept);
            bVar.f61255e.setTextColor(Color.parseColor("#ffffff"));
        } else {
            viewInflate.setBackgroundColor(Color.parseColor("#FF1E2025"));
            bVar.f61254d.setVisibility(4);
            bVar.f61255e.setBackgroundColor(this.f61249c.getResources().getColor(R.color.transparent));
            bVar.f61255e.setTextColor(Color.parseColor("#FFB5CBD5"));
        }
        if (item.getStatus() == 0) {
            str = "接受";
        } else if (item.getStatus() == 1) {
            str = "已接受";
        } else if (item.getStatus() == 2) {
            str = "已拒绝";
        } else {
            str = item.getStatus() == 3 ? "已过期" : "";
        }
        bVar.f61255e.setText(str);
        bVar.f61251a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63968b.g(item, view);
            }
        });
        bVar.f61254d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f64036b.h(item, view);
            }
        });
        if (item.getStatus() == 0) {
            bVar.f61255e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.a1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f61224b.i(item, view);
                }
            });
        } else {
            bVar.f61255e.setOnClickListener(null);
        }
        return viewInflate;
    }

    public void j(List<FriendBean> list) {
        this.f61248b = list;
    }

    public void k(a onFriendRequestListener) {
        this.f61250d = onFriendRequestListener;
    }
}
