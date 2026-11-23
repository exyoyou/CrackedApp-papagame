package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DiscoveryMainDataBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a0 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f61216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<DiscoveryMainDataBean.ForumListBean> f61217c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RoundingParams f61218d;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f61219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private TextView f61220b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f61221c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f61222d;

        a() {
        }
    }

    public a0(Context context, List<DiscoveryMainDataBean.ForumListBean> mList) {
        this.f61216b = context;
        this.f61217c = mList;
        this.f61218d = com.join.android.app.common.utils.l.F(context, context.getResources().getDimension(R.dimen.recom_item_magintop));
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DiscoveryMainDataBean.ForumListBean getItem(int position) {
        return this.f61217c.get(position);
    }

    public void b(List<DiscoveryMainDataBean.ForumListBean> mList) {
        this.f61217c = mList;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f61217c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        View viewInflate;
        a aVar;
        DiscoveryMainDataBean.ForumListBean forumListBean = this.f61217c.get(position);
        if (convertView == null) {
            aVar = new a();
            viewInflate = LayoutInflater.from(this.f61216b).inflate(R.layout.item_discovery_bottom_view, (ViewGroup) null);
            aVar.f61219a = (SimpleDraweeView) viewInflate.findViewById(R.id.ItemIcon);
            aVar.f61220b = (TextView) viewInflate.findViewById(R.id.ItemName);
            aVar.f61221c = (TextView) viewInflate.findViewById(R.id.ItemNum);
            aVar.f61222d = (ImageView) viewInflate.findViewById(R.id.ItemMy);
            viewInflate.setTag(aVar);
        } else {
            viewInflate = convertView;
            aVar = (a) convertView.getTag();
        }
        com.join.android.app.common.utils.l.j(aVar.f61219a, forumListBean.getIcon_src(), this.f61218d);
        aVar.f61220b.setText(forumListBean.getName());
        aVar.f61221c.setText("今日:" + forumListBean.getToday_posts());
        if (forumListBean.isIs_follow()) {
            aVar.f61222d.setVisibility(0);
        } else {
            aVar.f61222d.setVisibility(8);
        }
        return viewInflate;
    }
}
