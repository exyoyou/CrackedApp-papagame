package com.join.mgps.activity.mygame.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.generic.a;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.TipBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class DetailRecyclerViewChileAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private List<CommonMultiItemBean> arrayList;
    private Context ctx;
    private String gameId;
    private int position;

    public class ViewHolder1 extends RecyclerView.ViewHolder {
        private TextView appName;
        private TextView comment;
        private TextView gameScore;
        private MStarBar gameStar;
        private SimpleDraweeView icon;
        private SimpleDraweeView img;
        private View main;
        private TextView scrolNew;
        private TextView tag;

        public ViewHolder1(View itemView) {
            super(itemView);
            this.appName = (TextView) itemView.findViewById(R.id.appName);
            this.gameStar = (MStarBar) itemView.findViewById(R.id.gameStar);
            this.tag = (TextView) itemView.findViewById(R.id.tag);
            this.gameScore = (TextView) itemView.findViewById(R.id.gameScore);
            this.main = itemView.findViewById(R.id.main);
            this.img = (SimpleDraweeView) itemView.findViewById(R.id.img);
            this.icon = (SimpleDraweeView) itemView.findViewById(R.id.icon);
            this.comment = (TextView) itemView.findViewById(R.id.comment);
            this.scrolNew = (TextView) itemView.findViewById(R.id.scrolNew);
        }

        /* JADX WARN: Code duplicated, block: B:33:0x00ea  */
        public void setData(int positionx) {
            String recommend_game_big_pic;
            if (DetailRecyclerViewChileAdapter.this.arrayList == null) {
                return;
            }
            final GamedownRecomendItemBean gamedownRecomendItemBean = (GamedownRecomendItemBean) ((CommonMultiItemBean) DetailRecyclerViewChileAdapter.this.arrayList.get(positionx)).getData();
            if (positionx != 4 && positionx != 5) {
                DetailRecyclerViewChileAdapter.this.sendPoint(gamedownRecomendItemBean);
            }
            if (positionx == 6 || DetailRecyclerViewChileAdapter.this.arrayList.size() <= 6) {
                if (DetailRecyclerViewChileAdapter.this.arrayList.size() >= 5) {
                    DetailRecyclerViewChileAdapter detailRecyclerViewChileAdapter = DetailRecyclerViewChileAdapter.this;
                    detailRecyclerViewChileAdapter.sendPoint((GamedownRecomendItemBean) ((CommonMultiItemBean) detailRecyclerViewChileAdapter.arrayList.get(4)).getData());
                }
                if (DetailRecyclerViewChileAdapter.this.arrayList.size() >= 6) {
                    DetailRecyclerViewChileAdapter detailRecyclerViewChileAdapter2 = DetailRecyclerViewChileAdapter.this;
                    detailRecyclerViewChileAdapter2.sendPoint((GamedownRecomendItemBean) ((CommonMultiItemBean) detailRecyclerViewChileAdapter2.arrayList.get(5)).getData());
                }
            }
            this.icon.setImageURI(gamedownRecomendItemBean.getIco_remote());
            this.comment.setText(gamedownRecomendItemBean.getFirst_hot_comment());
            if (gamedownRecomendItemBean.getPic_position() == 1) {
                this.img.setAspectRatio(0.752f);
            } else {
                this.img.setAspectRatio(1.0f);
            }
            if (positionx == 0) {
                this.img.setAspectRatio(0.85f);
            }
            a hierarchy = this.img.getHierarchy();
            s.c cVar = s.c.f27292i;
            hierarchy.y(cVar);
            List<DetialShowImageBean> pic_info = gamedownRecomendItemBean.getPic_info();
            if (positionx != 0) {
                recommend_game_big_pic = "";
            } else if (t2.i(gamedownRecomendItemBean.getRecommend_game_big_gif())) {
                recommend_game_big_pic = gamedownRecomendItemBean.getRecommend_game_big_gif();
                l.o(this.img, recommend_game_big_pic);
            } else if (t2.i(gamedownRecomendItemBean.getRecommend_game_big_pic())) {
                recommend_game_big_pic = gamedownRecomendItemBean.getRecommend_game_big_pic();
                l.e(this.img, R.drawable.main_normal_icon, recommend_game_big_pic, cVar);
            } else {
                recommend_game_big_pic = "";
            }
            if (t2.h(recommend_game_big_pic) && pic_info != null && pic_info.size() > 0) {
                l.e(this.img, R.drawable.main_normal_icon, pic_info.get(0).getRemote().getPath(), cVar);
            }
            Iterator<TipBean> it2 = gamedownRecomendItemBean.getTag_info().iterator();
            if (it2.hasNext()) {
                this.tag.setText(it2.next().getName());
            }
            this.appName.setText(gamedownRecomendItemBean.getGame_name());
            this.gameStar.setStarMark(t2.k(Double.parseDouble(gamedownRecomendItemBean.getScore())));
            this.gameStar.setIntegerMark(false);
            this.gameStar.setEnabled(false);
            if ("0.0".equals(gamedownRecomendItemBean.getScore())) {
                this.gameScore.setText("");
                this.gameStar.setVisibility(4);
                this.scrolNew.setText("");
            } else {
                this.gameStar.setVisibility(0);
                this.gameScore.setText(gamedownRecomendItemBean.getScore());
                this.scrolNew.setText(gamedownRecomendItemBean.getScore());
            }
            this.main.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.adapter.DetailRecyclerViewChileAdapter.ViewHolder1.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    if (29 == gamedownRecomendItemBean.getIntentDataBean().getLink_type()) {
                        IntentDateBean intentDataBean = gamedownRecomendItemBean.getIntentDataBean();
                        new ExtBean().setFrom("4");
                        IntentUtil.getInstance().intentActivity(DetailRecyclerViewChileAdapter.this.ctx, DetailRecyclerViewChileAdapter.this.fromSearch(intentDataBean));
                        return;
                    }
                    Ext ext = new Ext();
                    ext.setPosition(DetailRecyclerViewChileAdapter.this.position + "");
                    ext.setGameId(DetailRecyclerViewChileAdapter.this.gameId);
                    t.l(v10.getContext()).R1(Event.clikeGuessYouLike, ext);
                    GamedownRecomendItemBean.RecContext rec_context = gamedownRecomendItemBean.getRec_context();
                    if (rec_context != null) {
                        Ext ext2 = new Ext();
                        ext2.setRecTid(rec_context.getTid());
                        ext2.setRecScene(rec_context.getScene());
                        ext2.setRecPosition(rec_context.getPosition());
                        ext2.setRecVersion(rec_context.getVersion());
                        ext2.setGameId(gamedownRecomendItemBean.getGame_id());
                        t tVarL = t.l(v10.getContext());
                        Event event = Event.gameRecClick;
                        tVarL.R1(event, ext2);
                        g1.d("downrecom", event.name() + "  " + rec_context.getTid() + "  " + rec_context.getScene() + "   " + rec_context.getPosition() + "  " + rec_context.getVersion());
                    }
                    t.l(DetailRecyclerViewChileAdapter.this.ctx).R1(Event.commonClick, gamedownRecomendItemBean.getExtBean().buildScene().toExt());
                    IntentUtil.getInstance().intentActivity(DetailRecyclerViewChileAdapter.this.ctx, DetailRecyclerViewChileAdapter.this.fromSearch(gamedownRecomendItemBean.getIntentDataBean()));
                }
            });
        }
    }

    public class ViewHolder2 extends RecyclerView.ViewHolder {
        private LinearLayout main;
        private SimpleDraweeView sdv_image;

        public ViewHolder2(View itemView) {
            super(itemView);
            this.sdv_image = (SimpleDraweeView) itemView.findViewById(R.id.sdv_image);
            this.main = (LinearLayout) itemView.findViewById(R.id.main);
        }

        public void setData(int positionx) {
            if (DetailRecyclerViewChileAdapter.this.arrayList == null) {
                return;
            }
            final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) ((CommonMultiItemBean) DetailRecyclerViewChileAdapter.this.arrayList.get(positionx)).getData();
            l.o(this.sdv_image, commonGameInfoBean.getCoverPicUrl());
            this.main.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.adapter.DetailRecyclerViewChileAdapter.ViewHolder2.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    IntentDateBean intentDataBean = commonGameInfoBean.getIntentDataBean();
                    intentDataBean.getExtBean().setFrom("4");
                    IntentUtil.getInstance().intentActivity(DetailRecyclerViewChileAdapter.this.ctx, intentDataBean);
                    t.l(DetailRecyclerViewChileAdapter.this.ctx).R1(Event.commonClick, commonGameInfoBean.getExtBean().buildScene().toExt());
                }
            });
        }
    }

    public DetailRecyclerViewChileAdapter(Context ctx, List<CommonMultiItemBean> arrayList, int position) {
        this.ctx = ctx;
        this.arrayList = arrayList;
        this.position = position;
    }

    IntentDateBean fromSearch(IntentDateBean bean) {
        ExtBean extBean = new ExtBean();
        int i10 = this.position;
        if (i10 == 0) {
            extBean.setFrom("130");
        } else if (i10 == 2) {
            extBean.setFrom("128");
        } else if (i10 == 3) {
            extBean.setFrom("131");
        }
        bean.setExtBean(extBean);
        return bean;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.arrayList.size();
    }

    public CommonMultiItemBean getItemData(int position) {
        return this.arrayList.get(position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        List<CommonMultiItemBean> list = this.arrayList;
        if (list == null || list.get(position) == null) {
            return 0;
        }
        return this.arrayList.get(position).getItemType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        try {
            if (this.arrayList.get(position).getItemType() == 2) {
                ((ViewHolder2) holder).setData(position);
            } else {
                ((ViewHolder1) holder).setData(position);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return viewType == 2 ? new ViewHolder2(View.inflate(this.ctx, R.layout.item_down_recommend_ad_1, null)) : new ViewHolder1(View.inflate(this.ctx, R.layout.detail_guesslike_item, null));
    }

    public void sendPoint(GamedownRecomendItemBean sub) {
        GamedownRecomendItemBean.RecContext rec_context = sub.getRec_context();
        if (rec_context == null || sub.isHasSendData()) {
            return;
        }
        sub.setHasSendData(true);
        Ext ext = new Ext();
        ext.setRecTid(rec_context.getTid());
        ext.setRecScene(rec_context.getScene());
        ext.setRecPosition(rec_context.getPosition());
        ext.setRecVersion(rec_context.getVersion());
        ext.setGameId(sub.getGame_id());
        t tVarL = t.l(this.ctx);
        Event event = Event.gameRecShow;
        tVarL.R1(event, ext);
        g1.d("downrecom", event.name() + "  " + rec_context.getTid() + "  " + rec_context.getScene() + "   " + rec_context.getPosition() + "  " + rec_context.getVersion());
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }
}
