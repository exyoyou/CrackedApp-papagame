package com.join.mgps.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameLevelBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class k0 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f62520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<GameLevelBean> f62521c = new ArrayList();

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f62522a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f62523b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f62524c;

        a() {
        }
    }

    public k0(Context context) {
        this.f62520b = context;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GameLevelBean getItem(int position) {
        return this.f62521c.get(position);
    }

    public <E> List<GameLevelBean> b() {
        return this.f62521c;
    }

    public void c(List<GameLevelBean> list) {
        this.f62521c = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62521c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        View viewInflate;
        a aVar;
        int i10;
        if (convertView == null) {
            aVar = new a();
            viewInflate = LayoutInflater.from(this.f62520b).inflate(R.layout.item_game_level_card, parent, false);
            aVar.f62522a = (SimpleDraweeView) viewInflate.findViewById(R.id.f35464ic);
            aVar.f62523b = (TextView) viewInflate.findViewById(R.id.name);
            aVar.f62524c = (TextView) viewInflate.findViewById(R.id.level);
            viewInflate.setTag(aVar);
        } else {
            viewInflate = convertView;
            aVar = (a) convertView.getTag();
        }
        GameLevelBean item = getItem(position);
        if (TextUtils.isEmpty(item.getSrc())) {
            int level = item.getLevel();
            if (level == 5) {
                i10 = R.drawable.gameleve5;
            } else if (level == 4) {
                i10 = R.drawable.gameleve4;
            } else if (level == 3) {
                i10 = R.drawable.gameleve2;
            } else {
                i10 = level == 2 ? R.drawable.gameleve3 : R.drawable.gameleve1;
            }
            com.join.android.app.common.utils.l.d(aVar.f62522a, i10, "");
        } else {
            com.join.android.app.common.utils.l.h(aVar.f62522a, item.getSrc());
        }
        aVar.f62523b.setText(item.getGameName());
        aVar.f62524c.setText(item.getLevelName());
        return viewInflate;
    }
}
