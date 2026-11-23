package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameInfoBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e2 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<GameInfoBean> f62051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f62052c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f62053d;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f62054a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private TextView f62055b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f62056c;

        private b() {
        }
    }

    public e2(Context context, List<GameInfoBean> datas, boolean isNewArenaMain) {
        new ArrayList();
        this.f62051b = datas;
        this.f62053d = context;
        this.f62052c = isNewArenaMain;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<GameInfoBean> list = this.f62051b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<GameInfoBean> list = this.f62051b;
        if (list != null) {
            return list.get(position);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        b bVar;
        if (convertView == null) {
            convertView = this.f62052c ? LayoutInflater.from(parent.getContext()).inflate(R.layout.item_gameinfo, (ViewGroup) null) : LayoutInflater.from(parent.getContext()).inflate(R.layout.item_gameinfo_1, (ViewGroup) null);
            bVar = new b();
            bVar.f62054a = (SimpleDraweeView) convertView.findViewById(R.id.iv_icon);
            bVar.f62055b = (TextView) convertView.findViewById(R.id.tv_gameName);
            bVar.f62056c = (TextView) convertView.findViewById(R.id.tv_roomCounts);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        GameInfoBean gameInfoBean = this.f62051b.get(position);
        if (this.f62052c) {
            bVar.f62055b.setText(gameInfoBean.getTitle());
            com.join.android.app.common.utils.l.d(bVar.f62054a, R.drawable.iv_default_newarena_item, gameInfoBean.getPic_remote());
        } else {
            bVar.f62055b.setText(gameInfoBean.getGame_name());
            SimpleDraweeView simpleDraweeView = bVar.f62054a;
            String game_ico = gameInfoBean.getGame_ico();
            Context context = this.f62053d;
            com.join.android.app.common.utils.l.f(simpleDraweeView, R.drawable.ic_default_list_arena, game_ico, com.join.android.app.common.utils.l.F(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp14)));
        }
        bVar.f62056c.setText(gameInfoBean.getRoom_count() + "");
        return convertView;
    }
}
