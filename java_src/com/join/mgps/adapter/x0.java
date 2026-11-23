package com.join.mgps.adapter;

import android.content.Context;
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
public class x0 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<FriendBean> f63368b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f63369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    a f63370d;

    public interface a {
        void f(FriendBean bean);
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f63371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f63372b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f63373c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f63374d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f63375e;

        b() {
        }
    }

    public x0(Context context) {
        this.f63369c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(FriendBean friendBean, View view) {
        a aVar = this.f63370d;
        if (aVar != null) {
            aVar.f(friendBean);
        }
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FriendBean getItem(int position) {
        return this.f63368b.get(position);
    }

    public List<FriendBean> c() {
        return this.f63368b;
    }

    public a d() {
        return this.f63370d;
    }

    public void f(List<FriendBean> list) {
        this.f63368b = list;
    }

    public void g(a onFriendLikeListener) {
        this.f63370d = onFriendLikeListener;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63368b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        View viewInflate;
        b bVar;
        if (convertView == null) {
            bVar = new b();
            viewInflate = LayoutInflater.from(this.f63369c).inflate(R.layout.item_friend_like_record, parent, false);
            bVar.f63371a = (SimpleDraweeView) viewInflate.findViewById(R.id.avatar);
            bVar.f63372b = (TextView) viewInflate.findViewById(R.id.name);
            bVar.f63373c = (TextView) viewInflate.findViewById(R.id.msg);
            bVar.f63374d = (TextView) viewInflate.findViewById(R.id.time);
            bVar.f63375e = viewInflate.findViewById(R.id.likeDot);
            viewInflate.setTag(bVar);
        } else {
            viewInflate = convertView;
            bVar = (b) convertView.getTag();
        }
        final FriendBean item = getItem(position);
        com.join.android.app.common.utils.l.y(bVar.f63371a, item.getAvatar());
        bVar.f63372b.setText(item.getNickName());
        bVar.f63373c.setText(item.getMessage());
        bVar.f63374d.setText(item.getTime());
        if (item.getReadFlag() == 1) {
            bVar.f63375e.setVisibility(8);
        } else {
            bVar.f63375e.setVisibility(0);
        }
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.w0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63334b.e(item, view);
            }
        });
        return viewInflate;
    }
}
