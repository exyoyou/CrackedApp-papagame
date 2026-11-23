package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.GoldFingerBean;
import com.join.mgps.dto.ModGameDetailBean;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.modgame_modtab_fragment_layout)
public class ModgameModTabFragment extends Fragment {
    Context context;
    private int defSelectPos = 0;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_layout;
    private CheatItemAdapter mCheatItemAdapter;
    private CheatTypeAdapter mCheatTypeAdapter;
    ModGameDetailBean modGameDetailBean;

    @ViewById(R.id.rv_cheat_list)
    RecyclerView rv_cheat_list;

    @ViewById(R.id.rv_cheat_type)
    RecyclerView rv_cheat_type;

    @ViewById
    View setNetwork;

    class CheatItemAdapter extends BaseQuickAdapter<GoldFingerBean.ContentBean, com.join.mgps.base.b> {
        public CheatItemAdapter() {
            super(R.layout.item_mod_chat_item);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        public void convert(com.join.mgps.base.b helper, GoldFingerBean.ContentBean item) {
            helper.setText(R.id.tv_name, item.getTitle());
        }
    }

    class CheatTypeAdapter extends BaseQuickAdapter<GoldFingerBean, com.join.mgps.base.b> {
        public CheatTypeAdapter() {
            super(R.layout.item_mod_chat_type);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        public void convert(com.join.mgps.base.b helper, GoldFingerBean item) {
            helper.setText(R.id.tv_name, item.getTitle());
            if (item.isSelected()) {
                helper.setTextColor(R.id.tv_name, -1);
                helper.setVisible(R.id.iv_line, true);
            } else {
                helper.setTextColor(R.id.tv_name, Color.parseColor("#C1D0DD"));
                helper.setVisible(R.id.iv_line, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$0(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        ModGameDetailBean modGameDetailBean = this.modGameDetailBean;
        if (modGameDetailBean != null) {
            List<GoldFingerBean> gold_finger = modGameDetailBean.getGold_finger();
            gold_finger.get(this.defSelectPos).setSelected(false);
            this.mCheatTypeAdapter.notifyItemChanged(this.defSelectPos);
            this.defSelectPos = i10;
            gold_finger.get(i10).setSelected(true);
            this.mCheatTypeAdapter.notifyItemChanged(this.defSelectPos);
            if (gold_finger.size() <= 0 || gold_finger.get(this.defSelectPos) == null) {
                return;
            }
            this.mCheatItemAdapter.setNewData(gold_finger.get(this.defSelectPos).getContent());
        }
    }

    @AfterViews
    void aftervidew() {
        this.context = getActivity();
        ModGameDetailBean modGameDetailBean = (ModGameDetailBean) getArguments().getSerializable("datas");
        initData();
        setData(modGameDetailBean);
    }

    void initData() {
        if (this.mCheatTypeAdapter == null) {
            this.mCheatTypeAdapter = new CheatTypeAdapter();
            final com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = 0;
            aVar.f64118b = (int) getResources().getDimension(R.dimen.wdp24);
            this.rv_cheat_type.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.ui.cloudarchive.ModgameModTabFragment.1
                @Override // com.join.mgps.base.decoration.b
                public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
                    return aVar;
                }
            });
        }
        this.rv_cheat_type.setAdapter(this.mCheatTypeAdapter);
        if (this.mCheatItemAdapter == null) {
            this.mCheatItemAdapter = new CheatItemAdapter();
        }
        final com.join.mgps.base.decoration.b.a aVar2 = new com.join.mgps.base.decoration.b.a();
        aVar2.f64116f = 0;
        aVar2.f64120d = (int) getResources().getDimension(R.dimen.wdp26);
        aVar2.f64117a = (int) getResources().getDimension(R.dimen.wdp24);
        this.rv_cheat_list.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.ui.cloudarchive.ModgameModTabFragment.2
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
                return aVar2;
            }
        });
        this.rv_cheat_list.setLayoutManager(new GridLayoutManager(this.context, 2));
        this.rv_cheat_list.setAdapter(this.mCheatItemAdapter);
        this.mCheatTypeAdapter.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.kotlin.ui.cloudarchive.y1
            @Override // com.join.mgps.base.BaseQuickAdapter.j
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f49062a.lambda$initData$0(baseQuickAdapter, view, i10);
            }
        });
        this.mCheatItemAdapter.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.kotlin.ui.cloudarchive.ModgameModTabFragment.3
            @Override // com.join.mgps.base.BaseQuickAdapter.j
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                a3.b(ModgameModTabFragment.this.context).d("增强模式启动游戏即可体验");
            }
        });
    }

    public void setData(ModGameDetailBean modGameDetailBean) {
        this.modGameDetailBean = modGameDetailBean;
        if (modGameDetailBean != null) {
            this.rv_cheat_type.setVisibility(0);
            this.rv_cheat_list.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
        }
        List<GoldFingerBean> gold_finger = modGameDetailBean.getGold_finger();
        if (gold_finger == null || gold_finger.size() <= 0) {
            return;
        }
        gold_finger.get(this.defSelectPos).setSelected(true);
        this.mCheatTypeAdapter.setNewData(gold_finger);
        if (gold_finger.get(this.defSelectPos) != null) {
            this.mCheatItemAdapter.setNewData(gold_finger.get(this.defSelectPos).getContent());
        }
    }

    public void showLodingFailed() {
        this.loding_layout.setVisibility(8);
        try {
            ModGameDetailBean modGameDetailBean = this.modGameDetailBean;
            if (modGameDetailBean == null || modGameDetailBean.getMod_game_info() == null) {
                this.loding_faile.setVisibility(0);
                if (com.join.android.app.common.utils.m.j(getActivity())) {
                    this.setNetwork.setVisibility(8);
                } else {
                    this.setNetwork.setVisibility(0);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
