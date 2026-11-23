package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.GameMainV4DataBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class n3 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<GameMainV4DataBean.MemberFunBean> f62822b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f62824d;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f62825a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f62826b;

        public a() {
        }
    }

    public n3(Context context, String gameid) {
        this.f62824d = gameid;
        this.f62823c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(GameMainV4DataBean.MemberFunBean memberFunBean, View view) {
        String str;
        if (com.join.mgps.Util.t2.h(memberFunBean.getUrl())) {
            return;
        }
        String url = memberFunBean.getUrl();
        if (url.contains("?")) {
            str = url + "&game_id=" + this.f62824d;
        } else {
            str = url + "?game_id=" + this.f62824d;
        }
        IntentUtil.getInstance().goShareWebActivity(this.f62823c, str);
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public GameMainV4DataBean.MemberFunBean getItem(int position) {
        List<GameMainV4DataBean.MemberFunBean> list = this.f62822b;
        if (list != null) {
            return list.get(position);
        }
        return null;
    }

    public void d(List<GameMainV4DataBean.MemberFunBean> mDatas) {
        this.f62822b = mDatas;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<GameMainV4DataBean.MemberFunBean> list = this.f62822b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        View viewInflate;
        a aVar;
        if (convertView == null) {
            aVar = new a();
            viewInflate = LayoutInflater.from(this.f62823c).inflate(R.layout.item_vip_fun2, parent, false);
            aVar.f62825a = (TextView) viewInflate.findViewById(R.id.name);
            aVar.f62826b = (SimpleDraweeView) viewInflate.findViewById(R.id.f35464ic);
            viewInflate.setTag(aVar);
        } else {
            viewInflate = convertView;
            aVar = (a) convertView.getTag();
        }
        if (getItem(position) == null) {
            viewInflate.setOnClickListener(null);
            return viewInflate;
        }
        final GameMainV4DataBean.MemberFunBean item = getItem(position);
        aVar.f62825a.setText(item.getTitle());
        com.join.android.app.common.utils.l.h(aVar.f62826b, item.getPic());
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.m3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62773b.c(item, view);
            }
        });
        return viewInflate;
    }
}
