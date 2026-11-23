package com.join.mgps.activity.search;

import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.SearchHintActivity;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GameInfoBean;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes9.dex */
@EFragment(R.layout.search_ranking_fragment_layout)
public class SearchRankingFragment extends Fragment {
    SearchHintActivity activity;
    SearchRankingAdapter adapter;
    SearchHotAdInfo hotAdInfo;
    List<Object> listDatas;

    @ViewById
    RecyclerView recyclerView;
    int hotAdPosition = 999;
    int type = 1;

    class SearchRankingAdapter extends RecyclerView.Adapter<SearchRankingHolder> {
        SearchRankingAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<Object> list = SearchRankingFragment.this.listDatas;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull SearchRankingHolder searchRankingHolder, int i10) {
            String str;
            int i11;
            if (!(SearchRankingFragment.this.listDatas.get(i10) instanceof GameInfoBean)) {
                if (SearchRankingFragment.this.listDatas.get(i10) instanceof CommonGameInfoBean) {
                    final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) SearchRankingFragment.this.listDatas.get(i10);
                    searchRankingHolder.rankingNumberBack.setBackgroundResource(R.drawable.ic_search_hot_game_ad);
                    if (i10 == SearchRankingFragment.this.listDatas.size() - 1) {
                        searchRankingHolder.line.setVisibility(8);
                    }
                    searchRankingHolder.appName.setText(commonGameInfoBean.getTitle());
                    searchRankingHolder.main.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.search.SearchRankingFragment.SearchRankingAdapter.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v10) {
                            IntentUtil.getInstance().intentActivity(SearchRankingFragment.this.activity, commonGameInfoBean.getIntentDataBean());
                            Ext ext = new Ext();
                            ext.setReMarks(SearchRankingFragment.this.hotAdInfo.getJump_ad_info().getTitle());
                            Data data = new Data();
                            data.setWhere(SearchRankingFragment.this.hotAdInfo.getJump_ad_info().getIntentDataBean().getLink_type_val());
                            t.l(SearchRankingFragment.this.activity).W1(Event.hotSearchWordClick, ext, data);
                        }
                    });
                    searchRankingHolder.tag.setVisibility(0);
                    searchRankingHolder.tag.setText("热");
                    searchRankingHolder.tag.setBackgroundResource(R.drawable.corner_red_strokebg_4);
                    searchRankingHolder.tag.setTextColor(Color.parseColor("#FF7039"));
                    return;
                }
                return;
            }
            final GameInfoBean gameInfoBean = (GameInfoBean) SearchRankingFragment.this.listDatas.get(i10);
            if (i10 == 0 || (i10 > (i11 = SearchRankingFragment.this.hotAdPosition) && i10 == 1)) {
                searchRankingHolder.rankingNumberBack.setBackgroundResource(R.drawable.search_rank_first_back);
            } else if (i10 == 1 || (i10 > i11 && i10 == 2)) {
                searchRankingHolder.rankingNumberBack.setBackgroundResource(R.drawable.search_rank_secend_back);
            } else if (i10 == 2 || (i10 > i11 && i10 == 3)) {
                searchRankingHolder.rankingNumberBack.setBackgroundResource(R.drawable.search_rank_thrid_back);
            } else {
                searchRankingHolder.rankingNumberBack.setBackgroundResource(R.drawable.search_rank_normal_back);
            }
            if (i10 == SearchRankingFragment.this.listDatas.size() - 1) {
                searchRankingHolder.line.setVisibility(8);
            }
            searchRankingHolder.appName.setText(gameInfoBean.getGame_name());
            l.d(searchRankingHolder.icon, R.drawable.main_normal_icon, gameInfoBean.getGame_ico());
            TextView textView = searchRankingHolder.rankingNumber;
            if (i10 > SearchRankingFragment.this.hotAdPosition) {
                str = i10 + "";
            } else {
                str = "" + (i10 + 1);
            }
            textView.setText(str);
            searchRankingHolder.main.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.search.SearchRankingFragment.SearchRankingAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    t tVarL = t.l(v10.getContext());
                    Event event = Event.clickSearchRankingGame;
                    Ext ext = new Ext();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("");
                    sb2.append(SearchRankingFragment.this.type - 1);
                    tVarL.R1(event, ext.setPosition(sb2.toString()).setGameId(gameInfoBean.getGame_id()).setFrom(SearchRankingFragment.this.type + ""));
                    SearchRankingFragment.this.activity.goSearch(gameInfoBean.getGame_name(), gameInfoBean.getGame_id());
                }
            });
            searchRankingHolder.tag.setVisibility(8);
            if (gameInfoBean.isThe_hot()) {
                searchRankingHolder.tag.setVisibility(0);
                searchRankingHolder.tag.setText("热");
                searchRankingHolder.tag.setBackgroundResource(R.drawable.corner_red_strokebg_4);
                searchRankingHolder.tag.setTextColor(Color.parseColor("#FF7039"));
                return;
            }
            if (gameInfoBean.isThe_new()) {
                searchRankingHolder.tag.setVisibility(0);
                searchRankingHolder.tag.setText("新");
                searchRankingHolder.tag.setBackgroundResource(R.drawable.corner_yellow_strokebg_4);
                searchRankingHolder.tag.setTextColor(Color.parseColor("#FF911A"));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public SearchRankingHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return SearchRankingFragment.this.new SearchRankingHolder(LayoutInflater.from(SearchRankingFragment.this.activity).inflate(R.layout.search_ranking_listitem, viewGroup, false));
        }
    }

    class SearchRankingHolder extends RecyclerView.ViewHolder {
        TextView appName;
        SimpleDraweeView icon;
        View line;
        View main;
        TextView rankingNumber;
        TextView rankingNumberBack;
        TextView tag;

        public SearchRankingHolder(View itemView) {
            super(itemView);
            this.rankingNumber = (TextView) itemView.findViewById(R.id.rankingNumber);
            this.rankingNumberBack = (TextView) itemView.findViewById(R.id.rankingNumberBack);
            this.icon = (SimpleDraweeView) itemView.findViewById(R.id.icon);
            this.appName = (TextView) itemView.findViewById(R.id.appName);
            this.tag = (TextView) itemView.findViewById(R.id.tag);
            this.line = itemView.findViewById(R.id.line);
            this.main = itemView.findViewById(R.id.main);
        }
    }

    public static SearchRankingFragment getInstance(int type) {
        SearchRankingFragment_ searchRankingFragment_ = new SearchRankingFragment_();
        Bundle bundle = new Bundle();
        bundle.putInt("type", type);
        searchRankingFragment_.setArguments(bundle);
        return searchRankingFragment_;
    }

    @AfterViews
    void afterVidew() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.type = arguments.getInt("type");
        }
        this.adapter = new SearchRankingAdapter();
        SearchHintActivity searchHintActivity = (SearchHintActivity) getActivity();
        this.activity = searchHintActivity;
        this.recyclerView.setLayoutManager(new LinearLayoutManager(searchHintActivity));
        ArrayList arrayList = new ArrayList();
        this.listDatas = arrayList;
        arrayList.addAll(this.activity.getItemData(this.type));
        SearchHotAdInfo hotAdInfo = this.activity.getHotAdInfo(this.type);
        this.hotAdInfo = hotAdInfo;
        if (hotAdInfo != null && hotAdInfo.getJump_ad_info() != null) {
            int position = this.hotAdInfo.getPosition();
            this.hotAdPosition = position;
            if (position >= this.listDatas.size()) {
                this.listDatas.add(this.hotAdInfo.getJump_ad_info());
            } else {
                this.listDatas.add(this.hotAdPosition, this.hotAdInfo.getJump_ad_info());
            }
            Ext ext = new Ext();
            ext.setReMarks(this.hotAdInfo.getJump_ad_info().getTitle());
            Data data = new Data();
            data.setWhere(this.hotAdInfo.getJump_ad_info().getIntentDataBean().getLink_type_val());
            t.l(this.activity).W1(Event.hotSearchWordExp, ext, data);
        }
        this.recyclerView.setAdapter(this.adapter);
    }
}
