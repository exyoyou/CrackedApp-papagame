package com.join.mgps.activity.recomend;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.gson.JsonObject;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.common.http.PointSendUtile;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.component.video.h;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.d0;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.QuarkInstallAppActivity_;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RecommendArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.impl.i;
import com.join.mgps.rpc.k;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import com.papa.sim.statistic.u;
import com.papa91.arc.bean.ButtonBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.recommend_activity_layout)
public class RecommendActivity extends BaseAppCompatActivity {
    CommentAdapter adapter;
    List<RecommendBean> allData;
    Context context;

    @ViewById
    TextView enterGame;

    @ViewById
    ImageView lodingImg;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    View protocol;

    @ViewById
    View protocolCheck;

    @ViewById
    RecyclerView recycleView;
    k rpcGameClient;

    @ViewById
    TextView userProtocolTxt;
    int loadDataType = 1;
    ExtBean pageBean = new ExtBean().setTypeCode("page").setChatId("oneKeyDown").setFrom("112");
    int selectedNumber = 0;
    private boolean isExposuring = false;

    private static class ClickSpan extends ClickableSpan {
        private String url;

        public ClickSpan(String url) {
            this.url = url;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            IntentUtil.getInstance().goShareWebActivity(widget.getContext(), this.url);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.setColor(ds.linkColor);
            ds.bgColor = Color.parseColor("#ffffff");
            ds.setUnderlineText(false);
            ds.clearShadowLayer();
        }
    }

    class CommentAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        public static final int ITEM_TYPE_GAME = 1;
        public static final int ITEM_TYPE_TITLE = 0;

        CommentAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return RecommendActivity.this.allData.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return RecommendActivity.this.allData.get(position).getViewType();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(final RecyclerView.ViewHolder vh, int position) {
            int itemViewType = getItemViewType(position);
            final RecommendBean recommendBean = RecommendActivity.this.allData.get(position);
            if (itemViewType == 0) {
                CommentTitleHolder commentTitleHolder = (CommentTitleHolder) vh;
                commentTitleHolder.tv_text_1.setText(recommendBean.getTag());
                if (position == 0) {
                    commentTitleHolder.tv_text_1.setTextSize(0, RecommendActivity.this.getResources().getDimension(R.dimen.wdp48));
                    return;
                } else {
                    commentTitleHolder.tv_text_1.setTextSize(0, RecommendActivity.this.getResources().getDimension(R.dimen.wdp32));
                    return;
                }
            }
            if (itemViewType == 1) {
                try {
                    final CommentHolder commentHolder = (CommentHolder) vh;
                    commentHolder.appName.setText(recommendBean.getGame_info().getGame_name());
                    l.p(commentHolder.appIcon, recommendBean.getGame_info().getIco_remote(), R.drawable.main_normal_icon);
                    if (recommendBean.getIs_select() == 1) {
                        commentHolder.selectbutn.setImageResource(R.drawable.checkbox_checked);
                    } else {
                        commentHolder.selectbutn.setImageResource(R.drawable.checkbox_normal);
                    }
                    commentHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.RecommendActivity.CommentAdapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v10) {
                            if (recommendBean.getIs_select() == 1) {
                                recommendBean.setIs_select(0);
                                commentHolder.selectbutn.setImageResource(R.drawable.checkbox_normal);
                                RecommendActivity.this.selectedNumber--;
                            } else {
                                recommendBean.setIs_select(1);
                                commentHolder.selectbutn.setImageResource(R.drawable.checkbox_checked);
                                RecommendActivity.this.selectedNumber++;
                            }
                            RecommendActivity.this.refreshEnterGame();
                        }
                    });
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            if (viewType == 0) {
                return RecommendActivity.this.new CommentTitleHolder(LayoutInflater.from(RecommendActivity.this.context).inflate(R.layout.item_recommend_title, parent, false));
            }
            return RecommendActivity.this.new CommentHolder(LayoutInflater.from(RecommendActivity.this.context).inflate(R.layout.item_recommend_game, parent, false));
        }
    }

    class CommentHolder extends RecyclerView.ViewHolder {
        SimpleDraweeView appIcon;
        TextView appName;
        ImageView selectbutn;

        public CommentHolder(View itemView) {
            super(itemView);
            this.appIcon = (SimpleDraweeView) itemView.findViewById(R.id.appIcon);
            this.appName = (TextView) itemView.findViewById(R.id.appName);
            this.selectbutn = (ImageView) itemView.findViewById(R.id.selectbutn);
        }
    }

    class CommentTitleHolder extends RecyclerView.ViewHolder {
        TextView tv_text_1;

        public CommentTitleHolder(View itemView) {
            super(itemView);
            this.tv_text_1 = (TextView) itemView.findViewById(R.id.tv_text_1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expGame() {
        try {
            if (!this.isExposuring) {
                this.isExposuring = true;
                int[] iArrM = h.m(this.recycleView);
                for (int i10 = iArrM[0]; i10 <= iArrM[1]; i10++) {
                    RecommendBean recommendBean = this.allData.get(i10);
                    if (recommendBean.getViewType() == 1 && recommendBean.getExtBean() != null && !recommendBean.getExtBean().hasExplore()) {
                        t.l(this.context).R1(Event.expGameAdPage, recommendBean.getExtBean().itemWithParent(this.pageBean).setResourceId(recommendBean.getGame_info().getGame_id()).buildScene().toExt());
                        recommendBean.getExtBean().setHasExplore(true);
                    }
                }
            }
        } catch (Exception unused) {
        } finally {
            this.isExposuring = false;
        }
    }

    public static void sortIntMethod(List list) {
        Collections.sort(list, new Comparator() { // from class: com.join.mgps.activity.recomend.RecommendActivity.5
            @Override // java.util.Comparator
            public int compare(Object o10, Object o11) {
                RecommendBean recommendBean = (RecommendBean) o10;
                RecommendBean recommendBean2 = (RecommendBean) o11;
                if (recommendBean.getIndex() > recommendBean2.getIndex()) {
                    return 1;
                }
                return recommendBean.getIndex() == recommendBean2.getIndex() ? 0 : -1;
            }
        });
    }

    private void updateGameUi(SimpleDraweeView imag, TextView appname, RecommendBean recommendBean) {
        l.d(imag, R.drawable.main_normal_icon, recommendBean.getGame_info().getIco_remote());
        appname.setText(recommendBean.getGame_info().getGame_name());
    }

    @AfterViews
    void afterView() {
        this.context = getApplicationContext();
        this.enterGame.setBackgroundResource(R.drawable.grey_btn_normal);
        this.rpcGameClient = i.P0();
        this.protocolCheck.setSelected(true);
        this.allData = new ArrayList();
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.context, 4);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.join.mgps.activity.recomend.RecommendActivity.1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int position) {
                return RecommendActivity.this.allData.get(position).getViewType() == 0 ? 4 : 1;
            }
        });
        this.recycleView.setLayoutManager(gridLayoutManager);
        CommentAdapter commentAdapter = new CommentAdapter();
        this.adapter = commentAdapter;
        this.recycleView.setAdapter(commentAdapter);
        this.enterGame.setVisibility(4);
        getData();
        if (ContextCompat.checkSelfPermission(this.context, com.kuaishou.weapon.p0.g.f74779c) != 0 && !e0.z(this.prefDef.lastApplyReadPhonePermissionOnRecom().d().longValue())) {
            this.prefDef.lastApplyReadPhonePermission().g(Long.valueOf(System.currentTimeMillis()));
            this.prefDef.lastApplyReadPhonePermissionOnRecom().g(Long.valueOf(System.currentTimeMillis()));
            UtilsMy.e3(this.context, com.kuaishou.weapon.p0.g.f74779c);
        }
        u.f(this).x(false);
        t.l(this).R1(Event.commonExp, this.pageBean.buildScene().toExt());
        this.recycleView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.mgps.activity.recomend.RecommendActivity.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    RecommendActivity.this.expGame();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
            }
        });
    }

    @UiThread(delay = BaseCloudFileManager.ACK_TIMEOUT)
    void delayRequest() {
        if (isDestroyed()) {
            return;
        }
        getData();
    }

    void down() {
        downv2(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Background(delay = 2000)
    void downv2(boolean onlyDownNet) {
        if (!this.protocolCheck.isSelected() || this.selectedNumber == 0) {
            return;
        }
        ArrayList<RecommendBean> arrayList = new ArrayList();
        for (RecommendBean recommendBean : this.allData) {
            if (recommendBean.getIs_select() == 1) {
                if (onlyDownNet) {
                    try {
                        if (recommendBean.getGame_info().getSp_tag_info().getModel().getId().equals("7")) {
                            arrayList.add(recommendBean);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    arrayList.add(recommendBean);
                }
            }
        }
        sortIntMethod(arrayList);
        try {
            Thread.sleep(1500L);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(QuarkInstallAppActivity_.COUNT_EXTRA, Integer.valueOf(this.selectedNumber));
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((RecommendBean) it2.next()).getGame_info().getGame_id());
        }
        jsonObject.addProperty("games", arrayList2.toString());
        t.l(this).R1(Event.commonClick, new ExtBean().setChatId("oneKeyDown").setFrom("112").setTypeCode("btnOneKey").setReMarks(jsonObject.toString()).buildScene().toExt());
        for (RecommendBean recommendBean2 : arrayList) {
            AppBean game_info = recommendBean2.getGame_info();
            game_info.set_from(112);
            try {
                Thread.sleep(1000L);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            game_info.setExt(JsonMapper.toJsonString(recommendBean2.getExtBean().setReMarks("oneKey").buildScene().toExt()));
            String game_id = game_info.getGame_id();
            if (game_info.getMod_info() != null) {
                game_id = game_info.getMod_info().getMod_game_id();
            }
            if (!com.join.android.app.common.utils.g.t0(this.context).e(this.context, game_info.getPackageName())) {
                PointSendUtile.sendPoint(this.context, game_id);
            }
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this.context).extra("gameDownloadDetail", game_id)).extra("_from", game_info.get_from())).extra("_from_type", game_info.get_from_type())).extra("ext", game_info.getExt())).a();
        }
    }

    @Click
    void enterGame() {
        String str;
        boolean zW2;
        com.papa.sim.statistic.pref.b.k(this.context).F(true);
        List<RecommendBean> list = this.allData;
        if (list == null || list.size() == 0) {
            return;
        }
        if (!this.protocolCheck.isSelected() || this.selectedNumber == 0) {
            t.l(this).R1(Event.commonClick, new ExtBean().setChatId("oneKeyDown").setFrom("112").setTypeCode("btnEnter").buildScene().toExt());
            finish();
            return;
        }
        try {
            boolean z10 = false;
            if (this.protocolCheck.isSelected()) {
                str = "";
                boolean z11 = false;
                for (RecommendBean recommendBean : this.allData) {
                    if (recommendBean.getIs_select() == 1) {
                        AppBean game_info = recommendBean.getGame_info();
                        if (game_info.getMod_info() != null) {
                            str = "VIRTUAL_SINGLE";
                        }
                        if ("7".equals(game_info.getSp_tag_info().getModel().getId())) {
                            zW2 = false;
                        } else {
                            str = "ANDROID_SINGLE";
                            zW2 = true;
                        }
                        if (!zW2) {
                            zW2 = t2.h(game_info.getPlugin_num()) ? false : UtilsMy.w2(Integer.parseInt(game_info.getPlugin_num()));
                            if (zW2) {
                                str = UtilsMy.f2(game_info.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
                            }
                        }
                        z11 = zW2;
                        if (z11) {
                            break;
                        }
                    }
                }
                z10 = z11;
            } else {
                str = "";
            }
            try {
                String strD = new PrefDef_(this.context).androidIdNullsKey().d();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(MApplication.K);
                sb2.append("   ");
                sb2.append(strD);
                sb2.append("   ");
                if (t2.i(strD)) {
                    List list2 = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                    if (t2.i(MApplication.K) && list2.contains(MApplication.K) && z10 && IntentUtil.getInstance().goLogin(this.context)) {
                        return;
                    }
                }
            } catch (Exception unused) {
            }
            boolean zBooleanValue = new PrefDef_(this.context).download_game_switch().d().booleanValue();
            if (z10 && zBooleanValue) {
                UtilsMy.A0(this.context, 2, "", str, new GameRoomActivity.x() { // from class: com.join.mgps.activity.recomend.RecommendActivity.4
                    @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                    public void onFail(int type) {
                    }

                    @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                    public void onSuccess(int type, int duration) {
                        org.androidannotations.api.sharedpreferences.d dVarIsFirstCommendVersion = RecommendActivity.this.prefDef.isFirstCommendVersion();
                        Boolean bool = Boolean.FALSE;
                        dVarIsFirstCommendVersion.g(bool);
                        RecommendActivity.this.down();
                        RecommendActivity.this.prefDef.isFirst35().g(bool);
                        RecommendActivity.this.setResult(34343);
                        RecommendActivity.this.finish();
                    }

                    @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                    public void onSuccess(int type, int duration, ButtonBean buttonBean) {
                        org.androidannotations.api.sharedpreferences.d dVarIsFirstCommendVersion = RecommendActivity.this.prefDef.isFirstCommendVersion();
                        Boolean bool = Boolean.FALSE;
                        dVarIsFirstCommendVersion.g(bool);
                        RecommendActivity.this.downv2(true);
                        RecommendActivity.this.prefDef.isFirst35().g(bool);
                        RecommendActivity.this.setResult(34343);
                        RecommendActivity.this.finish();
                    }
                });
                return;
            }
            org.androidannotations.api.sharedpreferences.d dVarIsFirstCommendVersion = this.prefDef.isFirstCommendVersion();
            Boolean bool = Boolean.FALSE;
            dVarIsFirstCommendVersion.g(bool);
            down();
            this.prefDef.isFirst35().g(bool);
            setResult(34343);
            finish();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void finishActivit() {
        this.prefDef.isFirst35().g(Boolean.FALSE);
        setResult(34343);
        finish();
    }

    @Background
    void getData() {
        try {
            if (m.j(this)) {
                RequestModel requestModel = new RequestModel(this);
                boolean z10 = true;
                requestModel.setArgs(new RecommendArgs(1, this.loadDataType));
                ResponseModel<RecommendDataBean> responseModelC = this.rpcGameClient.C(requestModel.makeSign());
                boolean z11 = responseModelC != null;
                if (responseModelC.getData() == null) {
                    z10 = false;
                }
                if (z11 && z10) {
                    RecommendDataBean data = responseModelC.getData();
                    UserProtocolBean user_protocol = data.getUser_protocol();
                    if (data.getGame_list() != null) {
                        updateUI(data, user_protocol);
                    } else {
                        delayRequest();
                    }
                } else if (responseModelC.getFlag() == 0) {
                    finishActivit();
                } else {
                    delayRequest();
                }
            } else {
                delayRequest();
                showToast("网络异常，请检查网络");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            delayRequest();
            showToast("获取数据失败请重试");
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.prefDef.isFirstCommendVersion().d().booleanValue()) {
            return;
        }
        this.prefDef.isFirst35().g(Boolean.FALSE);
        setResult(34343);
        finish();
    }

    @Click
    void protocolCheckPlaceholder() {
        this.protocolCheck.setSelected(!this.protocolCheck.isSelected());
        refreshEnterGame();
    }

    void refreshEnterGame() {
        if (this.selectedNumber == 0 || !this.protocolCheck.isSelected()) {
            this.enterGame.setBackgroundResource(R.drawable.grey_btn_normal);
            this.enterGame.setText("进入应用");
            return;
        }
        this.enterGame.setText("获取 （" + this.selectedNumber + "款游戏）");
        this.enterGame.setBackgroundResource(R.drawable.comment_installall_back);
    }

    @UiThread
    void showToast(String message) {
        a3.b(this).d(message);
    }

    @UiThread
    void updateUI(RecommendDataBean dataBean, UserProtocolBean protocol) {
        if (protocol != null) {
            this.protocol.setVisibility(0);
            try {
                SpannableString spannableString = new SpannableString(protocol.getTxt());
                spannableString.setSpan(new ClickSpan(protocol.getUrl()), spannableString.length() - protocol.getUrl_txt().length(), spannableString.length(), 17);
                this.userProtocolTxt.setText(spannableString);
                this.userProtocolTxt.setMovementMethod(new d0());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            this.protocol.setVisibility(8);
        }
        this.enterGame.setBackgroundResource(R.drawable.comment_installall_back);
        this.enterGame.setVisibility(0);
        this.allData.clear();
        if (dataBean.getGame_list() != null && !dataBean.getGame_list().isEmpty()) {
            this.allData.add(new RecommendBean(0, dataBean.getGame_list().get(0).getTag()));
            int i10 = 0;
            for (RecommendBean recommendBean : dataBean.getGame_list()) {
                recommendBean.setViewType(1);
                int i11 = i10 / 4;
                int i12 = i10 % 4;
                i10++;
                recommendBean.setExtBean(new ExtBean().setSopName(dataBean.getGame_list().get(0).getTag()).setPosition((i11 + 1) + "_" + (i12 + 1)));
                this.allData.add(recommendBean);
            }
        }
        if (dataBean.getTop_10_game() != null && dataBean.getTop_10_game().getGame_list() != null && !dataBean.getTop_10_game().getGame_list().isEmpty()) {
            this.allData.add(new RecommendBean(0, dataBean.getTop_10_game().getTitle()));
            int i13 = 0;
            for (AppBean appBean : dataBean.getTop_10_game().getGame_list()) {
                int i14 = i13 / 4;
                int i15 = i13 % 4;
                i13++;
                this.allData.add(new RecommendBean(1, appBean).setExtBean(new ExtBean().setSopName(dataBean.getTop_10_game().getTitle()).setPosition((i14 + 1) + "_" + (i15 + 1))));
            }
        }
        if (dataBean.getPocket_game() != null && dataBean.getPocket_game().getGame_list() != null && !dataBean.getPocket_game().getGame_list().isEmpty()) {
            this.allData.add(new RecommendBean(0, dataBean.getPocket_game().getTitle()));
            int i16 = 0;
            for (AppBean appBean2 : dataBean.getPocket_game().getGame_list()) {
                int i17 = i16 / 4;
                int i18 = i16 % 4;
                i16++;
                this.allData.add(new RecommendBean(1, appBean2).setExtBean(new ExtBean().setSopName(dataBean.getPocket_game().getTitle()).setPosition((i17 + 1) + "_" + (i18 + 1))));
            }
        }
        if (dataBean.getSteam_game() != null && dataBean.getSteam_game().getGame_list() != null && !dataBean.getSteam_game().getGame_list().isEmpty()) {
            this.allData.add(new RecommendBean(0, dataBean.getSteam_game().getTitle()));
            int i19 = 0;
            for (AppBean appBean3 : dataBean.getSteam_game().getGame_list()) {
                int i20 = i19 / 4;
                int i21 = i19 % 4;
                i19++;
                this.allData.add(new RecommendBean(1, appBean3).setExtBean(new ExtBean().setSopName(dataBean.getSteam_game().getTitle()).setPosition((i20 + 1) + "_" + (i21 + 1))));
            }
        }
        if (dataBean.getDoomsday_game() != null && dataBean.getDoomsday_game().getGame_list() != null && !dataBean.getDoomsday_game().getGame_list().isEmpty()) {
            this.allData.add(new RecommendBean(0, dataBean.getDoomsday_game().getTitle()));
            int i22 = 0;
            for (AppBean appBean4 : dataBean.getDoomsday_game().getGame_list()) {
                int i23 = i22 / 4;
                int i24 = i22 % 4;
                i22++;
                this.allData.add(new RecommendBean(1, appBean4).setExtBean(new ExtBean().setSopName(dataBean.getDoomsday_game().getTitle()).setPosition((i23 + 1) + "_" + (i24 + 1))));
            }
        }
        if (dataBean.getRoguelike_game() != null && dataBean.getDoomsday_game().getGame_list() != null && !dataBean.getRoguelike_game().getGame_list().isEmpty()) {
            this.allData.add(new RecommendBean(0, dataBean.getRoguelike_game().getTitle()));
            int i25 = 0;
            for (AppBean appBean5 : dataBean.getRoguelike_game().getGame_list()) {
                int i26 = i25 / 4;
                int i27 = i25 % 4;
                i25++;
                this.allData.add(new RecommendBean(1, appBean5).setExtBean(new ExtBean().setSopName(dataBean.getRoguelike_game().getTitle()).setPosition((i26 + 1) + "_" + (i27 + 1))));
            }
        }
        if (this.allData.isEmpty()) {
            delayRequest();
        } else {
            this.lodingImg.setVisibility(8);
            this.recycleView.setVisibility(0);
        }
        Iterator<RecommendBean> it2 = this.allData.iterator();
        while (it2.hasNext()) {
            if (it2.next().getIs_select() == 1) {
                this.selectedNumber++;
            }
        }
        refreshEnterGame();
        this.adapter.notifyDataSetChanged();
        this.recycleView.postDelayed(new Runnable() { // from class: com.join.mgps.activity.recomend.RecommendActivity.3
            @Override // java.lang.Runnable
            public void run() {
                RecommendActivity.this.expGame();
            }
        }, 500L);
    }
}
