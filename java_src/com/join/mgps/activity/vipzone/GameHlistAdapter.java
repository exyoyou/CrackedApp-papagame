package com.join.mgps.activity.vipzone;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.vipzone.bean.IconGame;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
class GameHlistAdapter extends BaseAdapter {
    Context context;
    int from;
    List<IconGame> iconGames;

    class CollHolder {
        SimpleDraweeView cardImage;
        TextView gameName;
        View main;

        CollHolder() {
        }
    }

    public GameHlistAdapter(List<IconGame> iconGames, Context context, int from) {
        this.iconGames = iconGames;
        this.context = context;
        this.from = from;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.iconGames.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        CollHolder collHolder;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.context).inflate(R.layout.vip_center_icongame_layout, (ViewGroup) null);
            collHolder = new CollHolder();
            collHolder.cardImage = (SimpleDraweeView) convertView.findViewById(R.id.cardImage);
            collHolder.gameName = (TextView) convertView.findViewById(R.id.gameName);
            collHolder.main = convertView.findViewById(R.id.main);
            convertView.setTag(collHolder);
        } else {
            collHolder = (CollHolder) convertView.getTag();
        }
        final IconGame iconGame = this.iconGames.get(position);
        l.h(collHolder.cardImage, iconGame.getGame_ico());
        collHolder.gameName.setText(iconGame.getGame_name());
        collHolder.main.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.GameHlistAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                IntentUtil.getInstance().goGameDetialActivity(GameHlistAdapter.this.context, iconGame.getGame_id(), GameHlistAdapter.this.from);
            }
        });
        return convertView;
    }
}
