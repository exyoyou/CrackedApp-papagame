package com.join.mgps.activity.arena;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.a3;
import com.join.mgps.adapter.f2;
import com.join.mgps.dto.ArenaGameRoomListConfig;
import com.join.mgps.dto.GameConfig;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.rpc.impl.l;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.newarena_gameroom_selecter_activity)
public class GameRoomSelecterActivity extends BaseAppCompatActivity {
    g adapter;
    Context context;
    f2 gameAdapter;
    List<GameInfoBean> gameInfoBeanList;
    List<GameInfoBean> gameInfoListData = new ArrayList();

    @Extra
    GameInfoBean mGameInfo;

    @ViewById
    RecyclerView recyclerView;

    @ViewById
    RecyclerView recyclerViewGamelist;

    class a implements e {
        a() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomSelecterActivity.e
        public void onItemClick(int position) {
            GameRoomSelecterActivity gameRoomSelecterActivity = GameRoomSelecterActivity.this;
            gameRoomSelecterActivity.mGameInfo = gameRoomSelecterActivity.gameInfoListData.get(position);
            GameRoomSelecterActivity.this.getGameConfig();
        }
    }

    class b implements f2.e {
        b() {
        }

        @Override // com.join.mgps.adapter.f2.e
        public void a(int positon) {
            GameInfoBean gameInfoBean = GameRoomSelecterActivity.this.gameInfoBeanList.get(positon);
            Intent intent = new Intent();
            intent.putExtra("mGameInfo", gameInfoBean);
            GameRoomSelecterActivity.this.setResult(10001, intent);
            GameRoomSelecterActivity.this.finish();
        }
    }

    class c implements Callback<ResultMainBean<ArenaGameRoomListConfig>> {
        c() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Response<ResultMainBean<ArenaGameRoomListConfig>> response) {
            ResultMainBean<ArenaGameRoomListConfig> resultMainBeanBody = response.body();
            if (resultMainBeanBody == null || resultMainBeanBody.getMessages().getData() == null) {
                GameRoomSelecterActivity.this.showToast("获取游戏配置信息失败！");
                return;
            }
            if (resultMainBeanBody.getMessages().getData().getCurrent_collection_cfg() == null) {
                GameRoomSelecterActivity.this.finishActivityForGetConfigFailure();
                return;
            }
            String collection_id = resultMainBeanBody.getMessages().getData().getCurrent_collection_cfg().getCollection_id();
            if (TextUtils.isEmpty(collection_id) || Integer.parseInt(collection_id) <= 0) {
                GameRoomSelecterActivity.this.finishActivityForGetConfigFailure();
                return;
            }
            if (resultMainBeanBody.getMessages().getData().getGame_list() == null || resultMainBeanBody.getMessages().getData().getGame_list().size() <= 0) {
                GameRoomSelecterActivity.this.finishActivityForGetConfigFailure();
                return;
            }
            List<GameConfig> game_list = resultMainBeanBody.getMessages().getData().getGame_list();
            ArrayList arrayList = new ArrayList();
            for (GameConfig gameConfig : game_list) {
                GameInfoBean gameInfoBean = new GameInfoBean();
                gameInfoBean.setCollection_id(gameConfig.getCollection_id());
                gameInfoBean.setPic_remote(gameConfig.getGame_ico());
                gameInfoBean.setGame_ico(gameConfig.getGame_ico());
                gameInfoBean.setGame_id(gameConfig.getGame_id());
                gameInfoBean.setGame_name(gameConfig.getGame_name());
                gameInfoBean.setRoom_count(gameConfig.getRoom_count());
                gameInfoBean.setTitle(gameConfig.getTitle());
                arrayList.add(gameInfoBean);
            }
            GameRoomSelecterActivity.this.gameInfoBeanList.clear();
            GameRoomSelecterActivity.this.gameInfoBeanList.addAll(arrayList);
            GameRoomSelecterActivity.this.gameAdapter.notifyDataSetChanged();
        }
    }

    class d implements Callback<ResultResMainBean<GameListBannerBean>> {
        d() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultResMainBean<GameListBannerBean>> call, Throwable t10) {
            GameRoomSelecterActivity.this.finish();
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultResMainBean<GameListBannerBean>> call, Response<ResultResMainBean<GameListBannerBean>> response) {
            ResultResMainBean<GameListBannerBean> resultResMainBeanBody = response.body();
            if (resultResMainBeanBody != null) {
                try {
                    List<GameInfoBean> game_list = resultResMainBeanBody.getData().getGame_list();
                    if (game_list == null || game_list.size() <= 0) {
                        GameRoomSelecterActivity.this.finish();
                    } else {
                        GameRoomSelecterActivity.this.gameInfoListData.addAll(game_list);
                        GameRoomSelecterActivity.this.adapter.notifyDataSetChanged();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    GameRoomSelecterActivity.this.finish();
                }
            }
        }
    }

    public interface e {
        void onItemClick(int position);
    }

    class f extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f56656d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f56657e;

        public f(View itemView) {
            super(itemView);
            this.f56656d = itemView.findViewById(R.id.main);
            this.f56657e = (TextView) itemView.findViewById(R.id.name);
        }
    }

    class g extends RecyclerView.Adapter<f> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private e f56659e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f56660f = -1024;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f56662b;

            a(final int val$i) {
                this.f56662b = val$i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                g gVar = g.this;
                gVar.notifyItemChanged(gVar.f56660f);
                g.this.f56660f = this.f56662b;
                g gVar2 = g.this;
                gVar2.notifyItemChanged(gVar2.f56660f);
                g.this.f56659e.onItemClick(this.f56662b);
            }
        }

        g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(f roomSelcterVH, int i10) {
            GameInfoBean gameInfoBean = GameRoomSelecterActivity.this.gameInfoListData.get(i10);
            if (this.f56660f == -1024 && gameInfoBean.getCollection_id().equals(GameRoomSelecterActivity.this.mGameInfo.getCollection_id())) {
                roomSelcterVH.f56656d.setSelected(true);
            } else {
                roomSelcterVH.f56656d.setSelected(this.f56660f == i10);
            }
            roomSelcterVH.f56657e.setText(gameInfoBean.getTitle());
            roomSelcterVH.f56656d.setOnClickListener(new a(i10));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public f onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return GameRoomSelecterActivity.this.new f(LayoutInflater.from(GameRoomSelecterActivity.this.context).inflate(R.layout.newarena_roomselecter_item, viewGroup, false));
        }

        public void f(e itemClickListener) {
            this.f56659e = itemClickListener;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GameRoomSelecterActivity.this.gameInfoListData.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishActivityForGetConfigFailure() {
        a3.b(this.context).d("获取数据失败");
    }

    private void getGameTypeList() {
        l.n0().m0().L(AccountUtil_.getInstance_(this.context).getUid()).enqueue(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showToast(String message) {
    }

    @AfterViews
    void afterview() {
        this.recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g gVar = new g();
        this.adapter = gVar;
        gVar.f(new a());
        this.recyclerView.setAdapter(this.adapter);
        this.context = this;
        this.recyclerViewGamelist.setLayoutManager(new GridLayoutManager(this, 2));
        f2 f2Var = new f2(this.context, false);
        this.gameAdapter = f2Var;
        f2Var.f(new b());
        this.gameInfoBeanList = this.gameAdapter.b();
        this.recyclerViewGamelist.setAdapter(this.gameAdapter);
        getGameConfig();
        getGameTypeList();
    }

    void getGameConfig() {
        String collection_id;
        int i10;
        try {
            if (TextUtils.isEmpty(this.mGameInfo.getCollection_id())) {
                collection_id = this.mGameInfo.getGame_id();
                i10 = 1;
            } else {
                collection_id = this.mGameInfo.getCollection_id();
                i10 = 2;
            }
            com.join.mgps.rpc.impl.d.O1().N1().h(RequestBeanUtil.getInstance(this).getRequestArenaRoomListArgs(collection_id, i10)).enqueue(new c());
        } catch (Exception unused) {
            finishActivityForGetConfigFailure();
        }
    }
}
