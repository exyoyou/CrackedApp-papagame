package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.style.AbsoluteSizeSpan;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseActivity;
import com.czhj.sdk.common.Constants;
import com.dingmouren.layoutmanagergroup.viewpager.ViewPagerLayoutManager;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.GamelistExpandableTextView;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumResponseGame;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameListItemBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.ShareToBaseBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_game_detail)
public class GameDetailActivity extends BaseActivity implements AbsListView.OnScrollListener {
    int _from;
    UserInfo accountBean;
    j adapter;

    @ViewById
    TextView changeModle;
    String commayid;
    View contentView;
    Context context;
    ForumResponseGame data2;
    ForumResponseGame.Datadetails detailsBean;
    String device_id;
    EditText edit;

    @ViewById
    TextView failedMessage;
    InputFilter[] filter;
    int fromUid;
    String fromid;
    String gameid;
    List<String> gameidlist;
    int group_uid;

    @ViewById
    RelativeLayout iv_back;

    @ViewById
    LinearLayout iv_nome;

    @ViewById
    ImageView iv_share;

    @ViewById
    XListView2 listview;
    LinearLayout ll_gameform_title;

    @ViewById
    LinearLayout ll_gameform_title2;
    LinearLayout ll_sub;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    PopupWindow mPopWindow;

    @ViewById
    LinearLayout main;
    ViewPagerLayoutManager manager;

    @ViewById
    LinearLayout myswip;

    @Extra
    ExtBean parentExtBean;
    m recycleAdapter;

    @ViewById
    ImageView relodingimag;

    @ViewById
    RelativeLayout rl_back_title;
    View rootview;
    com.join.mgps.rpc.b rpcForumClient;

    @ViewById
    Button setNetwork;

    @ViewById
    SimpleDraweeView smv_icon;
    SimpleDraweeView smv_sub;

    @ViewById
    TextView textView2;
    List<String> textlist;

    @ViewById
    TextView title;

    @ViewById
    SimpleDraweeView topBack;

    @ViewById
    TextView tv_btn;
    TextView tv_game_title;

    @ViewById
    TextView tv_game_title2;
    TextView tv_modify;

    @ViewById
    TextView tv_modify2;

    @ViewById
    TextView tv_name;
    TextView tv_sub_sub;
    TextView tv_sub_title;

    @ViewById
    TextView tv_time;
    String version;
    View view;
    View view2;

    @ViewById
    XRecyclerView xrecycleview;
    int uiMode = 1;
    ExtBean pageExtBean = new ExtBean().setChatId(EventP.ChatId.immersiveGameList.name()).setTypeCode(EventP.TypeCode.page.name());
    int page = 1;
    private List<GameListItemBean> searchDataBeanList = new ArrayList();
    private List<GameListItemBean> allDownloadGameList = new ArrayList();
    String del_game_list = "";
    String modify_game_list = "";
    boolean isFinish = true;
    boolean isloding = false;
    private boolean isExposuring = false;
    boolean isLookState = false;
    String title_game = "";
    private boolean isnoMore = false;
    boolean islogin = true;
    String strss = "";
    boolean isc = false;
    boolean isShowPoPo = true;
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;
    private boolean SCROLLING = false;
    private int linesDefault = 0;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            com.join.mgps.Util.g1.d("gamelist  ", "loadmore 11111");
            GameDetailActivity gameDetailActivity = GameDetailActivity.this;
            if (!gameDetailActivity.isFinish || gameDetailActivity.isloding) {
                gameDetailActivity.listview.g();
                return;
            }
            gameDetailActivity.Refresh();
            com.join.mgps.Util.g1.d("gamelist  ", "loadmore 2222");
            GameDetailActivity.this.GetData();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity gameDetailActivity = GameDetailActivity.this;
            gameDetailActivity.showPopupWindow(null, gameDetailActivity.title.getText().toString().trim(), "", null, 1, 0);
        }
    }

    class c implements com.dingmouren.layoutmanagergroup.viewpager.a {
        c() {
        }

        @Override // com.dingmouren.layoutmanagergroup.viewpager.a
        public void a(boolean isNext, int position) {
        }

        @Override // com.dingmouren.layoutmanagergroup.viewpager.a
        public void b() {
        }

        @Override // com.dingmouren.layoutmanagergroup.viewpager.a
        public void c(int i10, boolean b10) {
            com.join.mgps.Util.g1.c(" onPageSelected  " + i10 + "  " + b10);
            GameDetailActivity.this.updateBackground(i10);
        }
    }

    class d implements XRecyclerView.f {
        d() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            GameDetailActivity gameDetailActivity = GameDetailActivity.this;
            if (gameDetailActivity.isFinish) {
                gameDetailActivity.Refresh();
                GameDetailActivity.this.GetData();
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            PopupWindow popupWindow = GameDetailActivity.this.mPopWindow;
            if (popupWindow != null) {
                if (!popupWindow.isShowing()) {
                    GameDetailActivity.this.showToastSystem("亲，请慢点");
                } else {
                    GameDetailActivity.this.mPopWindow.dismiss();
                    GameDetailActivity.this.isShowPoPo = true;
                }
            }
        }
    }

    class f implements PopupWindow.OnDismissListener {
        f() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            GameDetailActivity.this.isShowPoPo = true;
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52335b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52336c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f52337d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ k f52338e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ GameListItemBean f52339f;

        g(final int val$type, final String val$text_content, final String val$gameid, final k val$myHolder, final GameListItemBean val$searchDataBean) {
            this.f52335b = val$type;
            this.f52336c = val$text_content;
            this.f52337d = val$gameid;
            this.f52338e = val$myHolder;
            this.f52339f = val$searchDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.t.f(GameDetailActivity.this.edit.getText().toString().trim()) || GameDetailActivity.this.edit.getText().toString().trim().equals("")) {
                GameDetailActivity.this.showToastSystem("不能为空或者表情");
                return;
            }
            GameDetailActivity.this.mPopWindow.dismiss();
            if (this.f52335b == 2) {
                if (GameDetailActivity.this.edit.getText().toString().trim().equals(this.f52336c)) {
                    return;
                }
                GameDetailActivity.this.textlist.add(this.f52337d + "|" + GameDetailActivity.this.edit.getText().toString().trim());
                this.f52338e.f52382l.setText(GameDetailActivity.this.edit.getText().toString().trim());
                this.f52339f.setInfo(GameDetailActivity.this.edit.getText().toString().trim());
                this.f52339f.setCustomer_info(GameDetailActivity.this.edit.getText().toString().trim());
                return;
            }
            if (GameDetailActivity.this.edit.getText().toString().trim().equals(this.f52336c)) {
                return;
            }
            GameDetailActivity gameDetailActivity = GameDetailActivity.this;
            gameDetailActivity.title_game = gameDetailActivity.edit.getText().toString().trim();
            GameDetailActivity gameDetailActivity2 = GameDetailActivity.this;
            gameDetailActivity2.title.setText(gameDetailActivity2.title_game);
            GameDetailActivity gameDetailActivity3 = GameDetailActivity.this;
            TextView textView = gameDetailActivity3.title;
            if (textView != null) {
                textView.setText(gameDetailActivity3.title_game);
            }
        }
    }

    class h implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f52341b;

        h(final View val$decorView) {
            this.f52341b = val$decorView;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Rect rect = new Rect();
            this.f52341b.getWindowVisibleDisplayFrame(rect);
            if (rect.bottom - rect.top <= (this.f52341b.getHeight() / 3) * 2) {
                GameDetailActivity.this.isc = true;
                return;
            }
            GameDetailActivity gameDetailActivity = GameDetailActivity.this;
            if (gameDetailActivity.isc) {
                gameDetailActivity.mPopWindow.dismiss();
                GameDetailActivity.this.isc = false;
            }
        }
    }

    class i extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<CommentBaseBean> f52343b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f52344c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        GameListItemBean f52345d;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ CommentBaseBean f52347b;

            a(final CommentBaseBean val$bean) {
                this.f52347b = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Ext ext = new Ext();
                ext.setPosition("comments");
                ext.setGameId(i.this.f52345d.getCrc_sign_id());
                ext.setArticleId(GameDetailActivity.this.fromid);
                com.papa.sim.statistic.t.l(GameDetailActivity.this.context).R1(Event.clickFromUserGameList, ext);
                if (com.join.mgps.Util.t2.h(this.f52347b.getId())) {
                    IntentUtil intentUtil = IntentUtil.getInstance();
                    i iVar = i.this;
                    intentUtil.goGameDetialActivity(GameDetailActivity.this.context, iVar.f52345d.getCrc_sign_id(), i.this.f52345d.getGame_info_tpl_type(), i.this.f52345d.getSp_tpl_two_position(), GameDetailActivity.this._from);
                } else {
                    CommentAllListActivity_.intent(GameDetailActivity.this.context).f(this.f52347b.getGame_id()).i(i.this.f52345d.getPackageName()).h(i.this.f52345d.getPlugin_num()).g(1).j(i.this.f52345d.getGame_score() != null ? i.this.f52345d.getGame_score().getSgc_switch() : 0).a(0).d(i.this.f52345d.getComment_score_switch() + "").start();
                }
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ CommentBaseBean f52349b;

            b(final CommentBaseBean val$bean) {
                this.f52349b = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Ext ext = new Ext();
                ext.setPosition("comments");
                ext.setGameId(i.this.f52345d.getCrc_sign_id());
                ext.setArticleId(GameDetailActivity.this.fromid);
                com.papa.sim.statistic.t.l(GameDetailActivity.this.context).R1(Event.clickFromUserGameList, ext);
                if (com.join.mgps.Util.t2.h(this.f52349b.getId())) {
                    IntentUtil intentUtil = IntentUtil.getInstance();
                    i iVar = i.this;
                    intentUtil.goGameDetialActivity(GameDetailActivity.this.context, iVar.f52345d.getCrc_sign_id(), i.this.f52345d.getGame_info_tpl_type(), i.this.f52345d.getSp_tpl_two_position(), GameDetailActivity.this._from);
                } else {
                    CommentAllListActivity_.intent(GameDetailActivity.this.context).f(this.f52349b.getGame_id()).i(i.this.f52345d.getPackageName()).h(i.this.f52345d.getPlugin_num()).g(1).j(i.this.f52345d.getGame_score() != null ? i.this.f52345d.getGame_score().getSgc_switch() : 0).a(0).d(i.this.f52345d.getComment_score_switch() + "").start();
                }
            }
        }

        class c implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GamelistExpandableTextView f52351b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ CommentBaseBean f52352c;

            c(final GamelistExpandableTextView val$content, final CommentBaseBean val$bean) {
                this.f52351b = val$content;
                this.f52352c = val$bean;
            }

            @Override // java.lang.Runnable
            public void run() {
                int height = this.f52351b.getHeight() / GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp37);
                this.f52351b.setMaxLines(height);
                this.f52351b.setMaxLinesOnShrink(height);
                this.f52351b.y(this.f52352c.getContent(), this.f52351b.getWidth(), 0);
            }
        }

        public i(List<CommentBaseBean> commentBaseBeans, int color, GameListItemBean searchDataBean) {
            this.f52343b = commentBaseBeans;
            this.f52344c = color;
            this.f52345d = searchDataBean;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f52343b.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(GameDetailActivity.this.context).inflate(R.layout.gamelist_detial_comment_layout, (ViewGroup) null);
            }
            CommentBaseBean commentBaseBean = this.f52343b.get(i10);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp6));
            gradientDrawable.setStroke(GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp1), this.f52344c);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view.findViewById(R.id.userIcon);
            TextView textView = (TextView) view.findViewById(R.id.userName);
            MStarBar mStarBar = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            GamelistExpandableTextView gamelistExpandableTextView = (GamelistExpandableTextView) view.findViewById(R.id.content);
            View viewFindViewById = view.findViewById(R.id.main);
            View viewFindViewById2 = view.findViewById(R.id.usertag);
            viewFindViewById.setBackground(gradientDrawable);
            com.join.android.app.common.utils.l.y(simpleDraweeView, commentBaseBean.getHead_portrait());
            textView.setText(commentBaseBean.getUser_name());
            if (commentBaseBean.getIs_old() == 1 || Float.valueOf(commentBaseBean.getStars_score()).floatValue() == 0.0f) {
                mStarBar.setVisibility(8);
            } else {
                mStarBar.setVisibility(0);
                mStarBar.setStarMark(Double.parseDouble(commentBaseBean.getStars_score()));
            }
            if (com.join.mgps.Util.t2.h(commentBaseBean.getId())) {
                viewFindViewById2.setVisibility(0);
            } else {
                viewFindViewById2.setVisibility(8);
            }
            gamelistExpandableTextView.setText(commentBaseBean.getContent());
            gamelistExpandableTextView.y(commentBaseBean.getContent(), gamelistExpandableTextView.getWidth(), 0);
            viewFindViewById.setOnClickListener(new a(commentBaseBean));
            gamelistExpandableTextView.setOnClickListener(new b(commentBaseBean));
            gamelistExpandableTextView.post(new c(gamelistExpandableTextView, commentBaseBean));
            return view;
        }
    }

    class j extends BaseAdapter {

        class a implements AdapterView.d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f52355a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameListItemBean f52356b;

            a(final List val$strings, final GameListItemBean val$modleFourBean) {
                this.f52355a = val$strings;
                this.f52356b = val$modleFourBean;
            }

            @Override // it.sephiroth.android.library.widget.AdapterView.d
            public void a(AdapterView<?> parent, View view, int position, long id2) {
                try {
                    Intent intent = new Intent(GameDetailActivity.this.context, (Class<?>) ImagePagerActivity.class);
                    String[] strArr = new String[this.f52355a.size()];
                    for (int i10 = 0; i10 < this.f52355a.size(); i10++) {
                        strArr[i10] = (String) this.f52355a.get(i10);
                    }
                    if (com.join.mgps.Util.t2.i(this.f52356b.getVedio_url()) && position == 0) {
                        FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                        videoInfo.H(this.f52356b.getVedio_url());
                        videoInfo.C(strArr[0]);
                        FullScreenActivity_.intent(GameDetailActivity.this.context).a(videoInfo).start();
                    } else {
                        intent.putExtra("image_urls", strArr);
                        intent.putExtra("image_index", position);
                        GameDetailActivity.this.context.startActivity(intent);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameListItemBean f52358b;

            b(final GameListItemBean val$searchDataBean) {
                this.f52358b = val$searchDataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GameDetailActivity gameDetailActivity = GameDetailActivity.this;
                if (!gameDetailActivity.isFinish) {
                    gameDetailActivity.showToastSystem("请先点击完成");
                    return;
                }
                Ext ext = new Ext();
                ext.setPosition("brief");
                ext.setGameId(this.f52358b.getCrc_sign_id());
                ext.setArticleId(GameDetailActivity.this.fromid);
                com.papa.sim.statistic.t.l(GameDetailActivity.this.context).R1(Event.clickFromUserGameList, ext);
                IntentUtil.getInstance().goGameDetialActivity(GameDetailActivity.this.context, this.f52358b.getCrc_sign_id(), this.f52358b.getGame_info_tpl_type(), this.f52358b.getSp_tpl_two_position(), GameDetailActivity.this._from);
            }
        }

        class c implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameListItemBean f52360b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ k f52361c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ int f52362d;

            c(final GameListItemBean val$searchDataBean, final k val$myHolder, final int val$i) {
                this.f52360b = val$searchDataBean;
                this.f52361c = val$myHolder;
                this.f52362d = val$i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (GameDetailActivity.this.detailsBean.getIs_self().equals("1") && GameDetailActivity.this.detailsBean.getTv_btn() == 0) {
                    if (this.f52360b.getCustomer_info() == null || this.f52360b.getCustomer_info().equals("")) {
                        GameDetailActivity.this.strss = this.f52360b.getInfo();
                    } else {
                        GameDetailActivity.this.strss = this.f52360b.getCustomer_info();
                    }
                    GameDetailActivity gameDetailActivity = GameDetailActivity.this;
                    gameDetailActivity.showPopupWindow(this.f52361c, gameDetailActivity.strss, this.f52360b.getGame_id(), this.f52360b, 2, this.f52362d);
                }
            }
        }

        class d implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameListItemBean f52364b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f52365c;

            d(final GameListItemBean val$searchDataBean, final int val$i) {
                this.f52364b = val$searchDataBean;
                this.f52365c = val$i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GameDetailActivity.this.gameidlist.add(this.f52364b.getGame_id());
                GameDetailActivity.this.DelectLocaleGame(this.f52365c);
            }
        }

        class e extends m6.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ GameListItemBean f52367a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            e(Context ctx, Downloadable info, final GameListItemBean val$searchDataBeanSub) {
                super(ctx, info);
                this.f52367a = val$searchDataBeanSub;
            }

            @Override // m6.c
            public void onButtonClicked(DownloadNormalView downView) {
                int status = this.f52367a.getDownloadTask() != null ? this.f52367a.getDownloadTask().getStatus() : 0;
                if (status == 0 || status == 7 || status == 43) {
                    Ext ext = new Ext();
                    ext.setGameId(this.f52367a.getGame_id());
                    if (GameDetailActivity.this.uiMode == 1) {
                        ext.setPosition("listMode");
                    } else {
                        ext.setPosition("defaultMode");
                    }
                    ext.setArticleId(GameDetailActivity.this.fromid);
                    com.papa.sim.statistic.t.l(GameDetailActivity.this.context).R1(Event.downloadFromUserGameList, ext);
                }
                super.onButtonClicked(downView);
            }
        }

        class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            HListView f52369a;

            public f(View itemView) {
                this.f52369a = (HListView) itemView.findViewById(R.id.screenListView);
            }
        }

        j() {
        }

        public View a(final int i10, View convertView, ViewGroup viewGroup) {
            f fVar;
            boolean z10;
            if (convertView == null) {
                convertView = LayoutInflater.from(GameDetailActivity.this.context).inflate(R.layout.gamedetail_item_viewpage1, (ViewGroup) null);
                fVar = new f(convertView);
                convertView.setTag(fVar);
            } else {
                fVar = (f) convertView.getTag();
            }
            GameListItemBean gameListItemBean = (GameListItemBean) getItem(i10);
            ArrayList arrayList = new ArrayList();
            if (arrayList.size() == 0) {
                if (com.join.mgps.Util.t2.i(gameListItemBean.getVedio_cover_pic()) && com.join.mgps.Util.t2.i(gameListItemBean.getVedio_url())) {
                    arrayList.add(gameListItemBean.getVedio_cover_pic());
                    z10 = true;
                } else {
                    z10 = false;
                }
                List<DetialShowImageBean> pic_info = gameListItemBean.getPic_info();
                if (pic_info != null) {
                    for (int i11 = 0; i11 < pic_info.size(); i11++) {
                        arrayList.add(pic_info.get(i11).getRemote().getPath());
                    }
                }
                if (arrayList.size() == 0) {
                    fVar.f52369a.setVisibility(8);
                } else {
                    fVar.f52369a.setVisibility(0);
                    int pic_position = gameListItemBean.getPic_position();
                    fVar.f52369a.setAdapter((ListAdapter) new com.join.mgps.adapter.i1(GameDetailActivity.this.context, pic_position, arrayList, z10));
                    if (pic_position == 1) {
                        fVar.f52369a.setDividerWidth(GameDetailActivity.this.context.getResources().getDimensionPixelSize(R.dimen.wdp10));
                        fVar.f52369a.postInvalidate();
                    } else {
                        fVar.f52369a.setDividerWidth(GameDetailActivity.this.context.getResources().getDimensionPixelSize(R.dimen.wdp20));
                        fVar.f52369a.postInvalidate();
                    }
                    fVar.f52369a.setOnItemClickListener(new a(arrayList, gameListItemBean));
                }
            }
            return convertView;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:63:0x031e  */
        /* JADX WARN: Code duplicated, block: B:70:0x03b1  */
        View b(int i10, View view, ViewGroup viewGroup) {
            k kVar;
            GameListItemBean gameListItemBean = (GameListItemBean) GameDetailActivity.this.searchDataBeanList.get(i10);
            DownloadTask downloadTask = gameListItemBean.getDownloadTask();
            if (view == null) {
                view = LayoutInflater.from(GameDetailActivity.this.context).inflate(R.layout.gamede_item, (ViewGroup) null);
                kVar = GameDetailActivity.this.new k();
                kVar.f52371a = (SimpleDraweeView) view.findViewById(R.id.mgListviewItemIcon);
                kVar.f52372b = (TextView) view.findViewById(R.id.mgListviewItemAppname);
                kVar.f52373c = (ProgressBar) view.findViewById(R.id.progressBarZip);
                kVar.f52374d = (ProgressBar) view.findViewById(R.id.progressBar);
                kVar.f52376f = (LinearLayout) view.findViewById(R.id.tipsLayout);
                kVar.f52375e = (TextView) view.findViewById(R.id.privilege);
                kVar.f52377g = (RelativeLayout) view.findViewById(R.id.rLayoutRight2);
                kVar.f52378h = (DownloadNormalView) view.findViewById(R.id.dv_view);
                kVar.f52379i = (LinearLayout) view.findViewById(R.id.linearLayout2);
                kVar.f52381k = (TextView) view.findViewById(R.id.appSize);
                kVar.f52382l = (TextView) view.findViewById(R.id.tv_content);
                kVar.f52384n = (TextView) view.findViewById(R.id.loding_info);
                kVar.f52385o = (TextView) view.findViewById(R.id.tv_delect_game);
                kVar.f52380j = (LinearLayout) view.findViewById(R.id.rl_item);
                kVar.f52383m = (TextView) view.findViewById(R.id.mgListviewItemDescribe);
                view.setTag(kVar);
            } else {
                kVar = (k) view.getTag();
            }
            if (GameDetailActivity.this.detailsBean.getTv_btn() == 0) {
                kVar.f52378h.setVisibility(8);
                kVar.f52377g.setVisibility(0);
            } else {
                kVar.f52378h.setVisibility(0);
                kVar.f52377g.setVisibility(8);
            }
            if (gameListItemBean.getCustomer_info() != null && !gameListItemBean.getCustomer_info().equals("")) {
                kVar.f52382l.setText(gameListItemBean.getCustomer_info());
            } else if (gameListItemBean.getInfo() == null || gameListItemBean.getInfo().equals("")) {
                if (GameDetailActivity.this.detailsBean.getIs_self().equals("1")) {
                    kVar.f52382l.setText("在此输入推荐语");
                } else {
                    kVar.f52382l.setText("不知道该说啥了");
                }
            } else if (GameDetailActivity.this.detailsBean.getIs_self().equals("1") && GameDetailActivity.this.detailsBean.getTv_btn() == 0) {
                kVar.f52382l.setText("在此输入推荐语.");
            } else {
                kVar.f52382l.setText(gameListItemBean.getInfo());
            }
            kVar.f52380j.setOnClickListener(new b(gameListItemBean));
            kVar.f52382l.setOnClickListener(new c(gameListItemBean, kVar, i10));
            kVar.f52385o.setOnClickListener(new d(gameListItemBean, i10));
            kVar.f52372b.setText(gameListItemBean.getGame_name());
            kVar.f52383m.setText(gameListItemBean.getInfo());
            kVar.f52371a.setImageResource(R.drawable.main_normal_icon);
            com.join.android.app.common.utils.l.h(kVar.f52371a, gameListItemBean.getIco_remote());
            GameListItemBean gameListItemBean2 = (GameListItemBean) GameDetailActivity.this.searchDataBeanList.get(i10);
            long j10 = (long) (Double.parseDouble(gameListItemBean2.getSize()) * 1024.0d * 1024.0d);
            UtilsMy.K(gameListItemBean.getScore(), gameListItemBean.getDown_count(), gameListItemBean.getSize(), gameListItemBean.getSp_tag_info(), gameListItemBean.getTag_info(), kVar.f52376f, GameDetailActivity.this.context);
            kVar.f52378h.f(new e(GameDetailActivity.this.context, gameListItemBean2, gameListItemBean2));
            if (gameListItemBean2.isH5Game()) {
                kVar.f52376f.setVisibility(8);
            } else if (downloadTask == null) {
                GameDetailActivity.this.updateUi(kVar, Boolean.TRUE, Boolean.FALSE);
            } else {
                int status = downloadTask.getStatus();
                if (UtilsMy.x0(gameListItemBean2.getPay_tag_info(), gameListItemBean2.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status == 0 || status == 48) {
                    GameDetailActivity.this.updateUi(kVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 2) {
                    UtilsMy.U4(downloadTask);
                    GameDetailActivity gameDetailActivity = GameDetailActivity.this;
                    Boolean bool = Boolean.FALSE;
                    gameDetailActivity.updateUi(kVar, bool, bool);
                    kVar.f52381k.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    kVar.f52384n.setText(downloadTask.getSpeed() + "/S");
                    kVar.f52374d.setProgress((int) downloadTask.getProgress());
                } else if (status == 3) {
                    GameDetailActivity gameDetailActivity2 = GameDetailActivity.this;
                    Boolean bool2 = Boolean.FALSE;
                    gameDetailActivity2.updateUi(kVar, bool2, bool2);
                    try {
                        kVar.f52381k.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        kVar.f52374d.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    kVar.f52384n.setText("暂停中");
                } else if (status == 5) {
                    GameDetailActivity.this.updateUi(kVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 6) {
                    GameDetailActivity gameDetailActivity3 = GameDetailActivity.this;
                    Boolean bool3 = Boolean.FALSE;
                    gameDetailActivity3.updateUi(kVar, bool3, bool3);
                    kVar.f52381k.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    kVar.f52374d.setProgress((int) downloadTask.getProgress());
                    kVar.f52384n.setText("暂停中");
                } else if (status != 7 && status != 42 && status != 43) {
                    switch (status) {
                        case 9:
                        case 11:
                            GameDetailActivity.this.updateUi(kVar, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 10:
                            GameDetailActivity gameDetailActivity4 = GameDetailActivity.this;
                            Boolean bool4 = Boolean.FALSE;
                            gameDetailActivity4.updateUi(kVar, bool4, bool4);
                            try {
                                kVar.f52381k.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                kVar.f52374d.setProgress((int) downloadTask.getProgress());
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            kVar.f52384n.setText("等待中");
                            break;
                        case 12:
                            GameDetailActivity.this.updateUi(kVar, Boolean.FALSE, Boolean.TRUE);
                            kVar.f52381k.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            kVar.f52384n.setText("解压中..");
                            kVar.f52373c.setProgress((int) downloadTask.getProgress());
                            break;
                        case 13:
                            GameDetailActivity.this.updateUi(kVar, Boolean.FALSE, Boolean.TRUE);
                            kVar.f52381k.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            kVar.f52384n.setText("点击重新解压");
                            kVar.f52373c.setProgress((int) downloadTask.getProgress());
                            break;
                    }
                } else {
                    GameDetailActivity.this.updateUi(kVar, Boolean.TRUE, Boolean.FALSE);
                }
            }
            return view;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return GameDetailActivity.this.searchDataBeanList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return GameDetailActivity.this.searchDataBeanList.get(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return ((GameListItemBean) GameDetailActivity.this.searchDataBeanList.get(position)).getItemType();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View convertView, ViewGroup viewGroup) {
            return getItemViewType(i10) == 2 ? a(i10, convertView, viewGroup) : b(i10, convertView, viewGroup);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f52371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private TextView f52372b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ProgressBar f52373c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ProgressBar f52374d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f52375e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private LinearLayout f52376f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private RelativeLayout f52377g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private DownloadNormalView f52378h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private LinearLayout f52379i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private LinearLayout f52380j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f52381k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public TextView f52382l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public TextView f52383m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f52384n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        TextView f52385o;

        k() {
        }
    }

    class l extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f52387d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f52388e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f52389f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f52390g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f52391h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        LinearLayout f52392i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        LinearLayout f52393j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        MStarBar f52394k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        HListView f52395l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        HListView f52396m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        LinearLayout f52397n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        ImageView f52398o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        ImageView f52399p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        SimpleDraweeView f52400q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        TextView f52401r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        LinearLayout f52402s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        View f52403t;

        public l(View itemView) {
            super(itemView);
            this.f52387d = (SimpleDraweeView) itemView.findViewById(R.id.appIcon);
            this.f52388e = (TextView) itemView.findViewById(R.id.appName);
            this.f52389f = (TextView) itemView.findViewById(R.id.comment_head_point_tx);
            this.f52390g = (TextView) itemView.findViewById(R.id.describ);
            this.f52392i = (LinearLayout) itemView.findViewById(R.id.tips);
            this.f52393j = (LinearLayout) itemView.findViewById(R.id.scoreLayout);
            this.f52394k = (MStarBar) itemView.findViewById(R.id.comment_head_mstarBar);
            this.f52395l = (HListView) itemView.findViewById(R.id.screenListView);
            this.f52396m = (HListView) itemView.findViewById(R.id.comment);
            this.f52397n = (LinearLayout) itemView.findViewById(R.id.downloadButn);
            this.f52391h = (TextView) itemView.findViewById(R.id.downButnText);
            this.f52399p = (ImageView) itemView.findViewById(R.id.downIcon);
            this.f52400q = (SimpleDraweeView) itemView.findViewById(R.id.moveImg);
            this.f52401r = (TextView) itemView.findViewById(R.id.bottom);
            this.f52402s = (LinearLayout) itemView.findViewById(R.id.describLayout);
            this.f52403t = itemView.findViewById(R.id.appRecomLayout);
            this.f52398o = (ImageView) itemView.findViewById(R.id.iv_cloud_launch);
        }
    }

    class m extends RecyclerView.Adapter<l> {

        class a implements AdapterView.d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f52406a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameListItemBean f52407b;

            a(final List val$strings, final GameListItemBean val$searchDataBean) {
                this.f52406a = val$strings;
                this.f52407b = val$searchDataBean;
            }

            @Override // it.sephiroth.android.library.widget.AdapterView.d
            public void a(AdapterView<?> parent, View view, int position, long id2) {
                try {
                    Intent intent = new Intent(GameDetailActivity.this.context, (Class<?>) ImagePagerActivity.class);
                    String[] strArr = new String[this.f52406a.size()];
                    for (int i10 = 0; i10 < this.f52406a.size(); i10++) {
                        strArr[i10] = (String) this.f52406a.get(i10);
                    }
                    if (com.join.mgps.Util.t2.i(this.f52407b.getVedio_url()) && position == 0) {
                        FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                        videoInfo.H(this.f52407b.getVedio_url());
                        videoInfo.C(strArr[0]);
                        FullScreenActivity_.intent(GameDetailActivity.this.context).a(videoInfo).start();
                    } else {
                        intent.putExtra("image_urls", strArr);
                        intent.putExtra("image_index", position);
                        GameDetailActivity.this.context.startActivity(intent);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        m() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(GameListItemBean gameListItemBean, View view) {
            DlTaskManager.INSTANCE.performDownloadClick(GameDetailActivity.this.context, gameListItemBean);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(GameListItemBean gameListItemBean, View view) {
            DlTaskManager.INSTANCE.performDownloadClick(GameDetailActivity.this.context, gameListItemBean);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(GameListItemBean gameListItemBean, View view) {
            Ext ext = new Ext();
            ext.setPosition("brief");
            ext.setGameId(gameListItemBean.getCrc_sign_id());
            ext.setArticleId(GameDetailActivity.this.fromid);
            com.papa.sim.statistic.t.l(GameDetailActivity.this.context).R1(Event.clickFromUserGameList, ext);
            IntentUtil.getInstance().goGameDetialActivity(GameDetailActivity.this.context, gameListItemBean.getCrc_sign_id(), gameListItemBean.getGame_info_tpl_type(), gameListItemBean.getSp_tpl_two_position(), GameDetailActivity.this._from);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(GameListItemBean gameListItemBean, View view) {
            Ext ext = new Ext();
            ext.setPosition("introduction");
            ext.setGameId(gameListItemBean.getCrc_sign_id());
            ext.setArticleId(GameDetailActivity.this.fromid);
            com.papa.sim.statistic.t.l(GameDetailActivity.this.context).R1(Event.clickFromUserGameList, ext);
            IntentUtil.getInstance().goGameDetialActivity(GameDetailActivity.this.context, gameListItemBean.getCrc_sign_id(), gameListItemBean.getGame_info_tpl_type(), gameListItemBean.getSp_tpl_two_position(), GameDetailActivity.this._from);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(l lVar) {
            int height = lVar.f52390g.getHeight() / GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp36);
            if (height == 0) {
                height = GameDetailActivity.this.linesDefault;
            }
            com.join.mgps.Util.g1.c(height + "  可以显示行数行");
            if (height >= 1) {
                if (GameDetailActivity.this.linesDefault == 0) {
                    GameDetailActivity.this.linesDefault = height;
                }
                lVar.f52390g.setMaxLines(height);
                lVar.f52390g.invalidate();
                return;
            }
            if (height == 0) {
                lVar.f52390g.setMaxLines(2);
                lVar.f52390g.invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(GameListItemBean gameListItemBean, View view) {
            IntentUtil.getInstance().goGameDetialActivity(GameDetailActivity.this.context, gameListItemBean.getCrc_sign_id(), gameListItemBean.getGame_info_tpl_type(), gameListItemBean.getSp_tpl_two_position(), GameDetailActivity.this._from);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GameDetailActivity.this.searchDataBeanList.size() / 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull final l recyHolder, int i10) {
            int color;
            int i11;
            int i12 = i10 * 2;
            final GameListItemBean gameListItemBean = (GameListItemBean) GameDetailActivity.this.searchDataBeanList.get(i12);
            if (com.join.mgps.Util.w0.m(gameListItemBean.getTag_info()) || com.join.mgps.Util.w0.k(gameListItemBean.getTagInfo())) {
                recyHolder.f52398o.setVisibility(0);
                recyHolder.f52397n.setVisibility(8);
                recyHolder.f52398o.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.w1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f58190b.g(gameListItemBean, view);
                    }
                });
            } else {
                recyHolder.f52398o.setVisibility(8);
                recyHolder.f52397n.setVisibility(0);
            }
            if (GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp1280) >= GameDetailActivity.this.getResources().getDisplayMetrics().heightPixels - GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp50)) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) recyHolder.f52402s.getLayoutParams();
                layoutParams.weight = 1.0f;
                recyHolder.f52402s.setLayoutParams(layoutParams);
            } else {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) recyHolder.f52396m.getLayoutParams();
                layoutParams2.weight = 1.0f;
                recyHolder.f52396m.setLayoutParams(layoutParams2);
            }
            switch (gameListItemBean.getBg_color_tag_type()) {
                case 1:
                    recyHolder.f52397n.setBackgroundResource(R.drawable.gamelist_detialbutn_back_1);
                    color = Color.parseColor("#767676");
                    i11 = color;
                    break;
                case 2:
                    recyHolder.f52397n.setBackgroundResource(R.drawable.gamelist_detialbutn_back_8);
                    color = Color.parseColor("#776353");
                    i11 = color;
                    break;
                case 3:
                    recyHolder.f52397n.setBackgroundResource(R.drawable.gamelist_detialbutn_back_7);
                    color = Color.parseColor("#AB3B3A");
                    i11 = color;
                    break;
                case 4:
                    recyHolder.f52397n.setBackgroundResource(R.drawable.gamelist_detialbutn_back_2);
                    color = Color.parseColor("#5E4643");
                    i11 = color;
                    break;
                case 5:
                    recyHolder.f52397n.setBackgroundResource(R.drawable.gamelist_detialbutn_back_4);
                    color = Color.parseColor("#A4961B");
                    i11 = color;
                    break;
                case 6:
                    recyHolder.f52397n.setBackgroundResource(R.drawable.gamelist_detialbutn_back_3);
                    color = Color.parseColor("#84975C");
                    i11 = color;
                    break;
                case 7:
                    recyHolder.f52397n.setBackgroundResource(R.drawable.gamelist_detialbutn_back_5);
                    color = Color.parseColor("#3A8282");
                    i11 = color;
                    break;
                case 8:
                    recyHolder.f52397n.setBackgroundResource(R.drawable.gamelist_detialbutn_back_9);
                    color = Color.parseColor("#41578D");
                    i11 = color;
                    break;
                case 9:
                    recyHolder.f52397n.setBackgroundResource(R.drawable.gamelist_detialbutn_back_6);
                    color = Color.parseColor("#68465B");
                    i11 = color;
                    break;
                default:
                    i11 = 0;
                    break;
            }
            SimpleDraweeView simpleDraweeView = recyHolder.f52387d;
            String ico_remote = gameListItemBean.getIco_remote();
            GameDetailActivity gameDetailActivity = GameDetailActivity.this;
            com.join.android.app.common.utils.l.f(simpleDraweeView, R.drawable.main_normal_icon, ico_remote, com.join.android.app.common.utils.l.F(gameDetailActivity.context, gameDetailActivity.getResources().getDimensionPixelOffset(R.dimen.wdp24)));
            recyHolder.f52388e.setText(gameListItemBean.getGame_name());
            if (gameListItemBean.getComment_score_switch() == 1) {
                if ("0.0".equals(gameListItemBean.getScore())) {
                    recyHolder.f52389f.setText("暂未出分");
                    recyHolder.f52389f.setTextSize(12.0f);
                    recyHolder.f52389f.setTextColor(Color.parseColor("#8a8a8a"));
                } else {
                    recyHolder.f52389f.setText(gameListItemBean.getScore());
                }
                recyHolder.f52394k.setIntegerMark(false);
                recyHolder.f52394k.setEnabled(false);
                recyHolder.f52394k.setStarCount(5);
                recyHolder.f52394k.setStarMark((Double.parseDouble(gameListItemBean.getScore()) * 5.0d) / 10.0d);
                recyHolder.f52393j.setVisibility(0);
            } else {
                recyHolder.f52393j.setVisibility(8);
            }
            UtilsMy.H3(recyHolder.f52391h, recyHolder.f52397n, gameListItemBean);
            recyHolder.f52397n.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.x1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f58202b.h(gameListItemBean, view);
                }
            });
            recyHolder.f52390g.setText("简介：" + gameListItemBean.getGame_describe_second());
            if (com.join.mgps.Util.t2.h(gameListItemBean.getGame_describe_second())) {
                recyHolder.f52402s.setVisibility(4);
            } else {
                recyHolder.f52402s.setVisibility(0);
            }
            recyHolder.f52403t.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.y1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f58239b.i(gameListItemBean, view);
                }
            });
            recyHolder.f52390g.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.z1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f58274b.j(gameListItemBean, view);
                }
            });
            recyHolder.f52390g.post(new Runnable() { // from class: com.join.mgps.activity.a2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f56454b.k(recyHolder);
                }
            });
            recyHolder.f52402s.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.b2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f56751b.l(gameListItemBean, view);
                }
            });
            recyHolder.f52400q.setController((com.facebook.drawee.backends.pipeline.d) Fresco.newDraweeControllerBuilder().b(Uri.parse("res:///2131232323")).c(recyHolder.f52400q.getController()).F(true).build());
            if (GameDetailActivity.this.searchDataBeanList.size() > i12 + 2 || !GameDetailActivity.this.isnoMore) {
                recyHolder.f52401r.setVisibility(8);
                recyHolder.f52400q.setVisibility(0);
            } else {
                recyHolder.f52401r.setVisibility(0);
                recyHolder.f52400q.setVisibility(8);
            }
            UtilsMy.P(gameListItemBean.getScore(), gameListItemBean.getDown_count(), gameListItemBean.getAppSize(), gameListItemBean.getSp_tag_info(), recyHolder.f52392i, GameDetailActivity.this.context);
            List<DetialShowImageBean> pic_info = gameListItemBean.getPic_info();
            if (pic_info.size() == 0) {
                recyHolder.f52395l.setVisibility(8);
            } else {
                recyHolder.f52395l.setVisibility(0);
            }
            ArrayList arrayList = new ArrayList();
            for (int i13 = 0; i13 < pic_info.size(); i13++) {
                arrayList.add(pic_info.get(i13).getRemote().getPath());
            }
            com.join.mgps.adapter.h1 h1Var = new com.join.mgps.adapter.h1(GameDetailActivity.this.context, gameListItemBean.getPic_position(), arrayList, false);
            h1Var.b();
            recyHolder.f52395l.setAdapter((ListAdapter) h1Var);
            recyHolder.f52395l.setOnItemClickListener(new a(arrayList, gameListItemBean));
            List<CommentBaseBean> comment_list = gameListItemBean.getComment_list();
            String customer_info = gameListItemBean.getCustomer_info();
            try {
                if (com.join.mgps.Util.t2.i(customer_info) && comment_list != null && comment_list.size() > 0 && com.join.mgps.Util.t2.i(comment_list.get(0).getId())) {
                    CommentBaseBean commentBaseBean = new CommentBaseBean();
                    commentBaseBean.setHead_portrait(GameDetailActivity.this.detailsBean.getPortrait());
                    commentBaseBean.setUser_name(GameDetailActivity.this.detailsBean.getNick_name());
                    commentBaseBean.setContent(customer_info);
                    commentBaseBean.setId("");
                    commentBaseBean.setStars_score("0");
                    comment_list.add(0, commentBaseBean);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (comment_list == null || comment_list.size() == 0) {
                recyHolder.f52396m.setVisibility(8);
            } else {
                recyHolder.f52396m.setAdapter((ListAdapter) GameDetailActivity.this.new i(comment_list, i11, gameListItemBean));
                recyHolder.f52396m.setVisibility(0);
            }
            DownloadTask downloadTask = gameListItemBean.getDownloadTask();
            if (gameListItemBean.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                recyHolder.f52391h.setText("开始");
                return;
            }
            if (downloadTask == null) {
                recyHolder.f52399p.setImageResource(R.drawable.gamelist_ic_domn);
                recyHolder.f52399p.setVisibility(0);
                if (!UtilsMy.p0(gameListItemBean.getTag_info())) {
                    UtilsMy.x0(gameListItemBean.getPay_tag_info(), gameListItemBean.getCrc_sign_id());
                    UtilsMy.H3(recyHolder.f52391h, recyHolder.f52397n, gameListItemBean);
                    return;
                }
                if (!(UtilsMy.x0(gameListItemBean.getPay_tag_info(), gameListItemBean.getCrc_sign_id()) <= 0 ? com.join.android.app.common.utils.g.t0(GameDetailActivity.this.context).e(GameDetailActivity.this.context, gameListItemBean.getPackage_name()) : false)) {
                    UtilsMy.x0(gameListItemBean.getPay_tag_info(), gameListItemBean.getCrc_sign_id());
                    UtilsMy.H3(recyHolder.f52391h, recyHolder.f52397n, gameListItemBean);
                    return;
                }
                APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(GameDetailActivity.this.context).n(GameDetailActivity.this.context, gameListItemBean.getPackage_name());
                if (!com.join.mgps.Util.t2.i(gameListItemBean.getVer()) || aVarN.d() >= Integer.parseInt(gameListItemBean.getVer())) {
                    recyHolder.f52391h.setText(GameDetailActivity.this.context.getResources().getString(R.string.download_status_finished));
                    return;
                } else {
                    recyHolder.f52391h.setText("更新");
                    return;
                }
            }
            int status = downloadTask.getStatus();
            if (UtilsMy.x0(gameListItemBean.getPay_tag_info(), gameListItemBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            recyHolder.f52399p.setImageResource(R.drawable.gamelist_ic_domn);
            recyHolder.f52399p.setVisibility(0);
            if (status != 0) {
                if (status == 27) {
                    recyHolder.f52399p.setImageResource(R.drawable.detail_comment_download_continue);
                    recyHolder.f52391h.setText(downloadTask.getProgress() + "%");
                    return;
                }
                if (status == 48) {
                    recyHolder.f52391h.setText("安装中");
                    recyHolder.f52399p.setVisibility(8);
                    return;
                }
                if (status == 2) {
                    UtilsMy.U4(downloadTask);
                    recyHolder.f52399p.setImageResource(R.drawable.detail_comment_download_pause);
                    recyHolder.f52391h.setText(downloadTask.getProgress() + "%");
                    return;
                }
                if (status != 3) {
                    if (status != 5) {
                        if (status != 6) {
                            if (status != 7) {
                                if (status != 42) {
                                    if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                recyHolder.f52391h.setText("更新");
                                                break;
                                            case 10:
                                                recyHolder.f52391h.setText("等待");
                                                break;
                                            case 11:
                                                recyHolder.f52391h.setText("安装");
                                                recyHolder.f52399p.setVisibility(8);
                                                break;
                                            case 12:
                                                recyHolder.f52391h.setText("解压中");
                                                recyHolder.f52399p.setVisibility(8);
                                                break;
                                            case 13:
                                                recyHolder.f52391h.setText("解压");
                                                recyHolder.f52399p.setVisibility(8);
                                                break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    recyHolder.f52391h.setText(GameDetailActivity.this.context.getResources().getString(R.string.download_status_finished));
                    recyHolder.f52399p.setVisibility(8);
                    return;
                }
                recyHolder.f52399p.setImageResource(R.drawable.detail_comment_download_continue);
                recyHolder.f52391h.setText(downloadTask.getProgress() + "%");
                return;
            }
            UtilsMy.x0(gameListItemBean.getPay_tag_info(), gameListItemBean.getCrc_sign_id());
            UtilsMy.H3(recyHolder.f52391h, recyHolder.f52397n, gameListItemBean);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public l onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return GameDetailActivity.this.new l(LayoutInflater.from(GameDetailActivity.this.context).inflate(R.layout.gamelist_detial_item_layout, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expDiscountGame() {
        try {
            try {
                if (!this.isExposuring) {
                    this.isExposuring = true;
                    int lastVisiblePosition = this.listview.getLastVisiblePosition();
                    for (int i10 = 0; i10 <= lastVisiblePosition; i10++) {
                        GameListItemBean gameListItemBean = this.searchDataBeanList.get(i10);
                        if (!gameListItemBean.getExposure()) {
                            gameListItemBean.setExposure(true);
                            if (UtilsMy.o2(gameListItemBean)) {
                                try {
                                    Ext ext = new Ext();
                                    ext.setResultCode("discount_game");
                                    ext.setScenesCode(getClass().getSimpleName());
                                    Data data = new Data();
                                    data.setGameId(gameListItemBean.getGame_id());
                                    com.papa.sim.statistic.t.l(this.context).Y(Event.expGameAdPage, ext, data);
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                            com.papa.sim.statistic.t.l(this.context).R1(Event.expGameAdPage, gameListItemBean.getExtBean().buildScene().toExt());
                        }
                    }
                }
            } finally {
                this.isExposuring = false;
            }
        } catch (Exception unused) {
        }
    }

    private int getStateBar3() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownStateList(this.allDownloadGameList);
        this.adapter.notifyDataSetChanged();
        m mVar = this.recycleAdapter;
        if (mVar == null) {
            return null;
        }
        mVar.notifyDataSetChanged();
        return null;
    }

    private void showPopmenu(View rootview) {
        this.mPopWindow.showAtLocation(rootview, 81, 0, 0);
    }

    public static String toUtf8(String str) {
        try {
            return new String(str.getBytes("UTF-8"), "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackground(int i10) {
        if (this.searchDataBeanList.size() > 0) {
            GameListItemBean gameListItemBean = this.searchDataBeanList.get(i10 * 2);
            switch (gameListItemBean.getBg_color_tag_type()) {
                case 1:
                    this.main.setBackgroundResource(R.drawable.gamelist_detialback_1);
                    break;
                case 2:
                    this.main.setBackgroundResource(R.drawable.gamelist_detialback_8);
                    break;
                case 3:
                    this.main.setBackgroundResource(R.drawable.gamelist_detialback_7);
                    break;
                case 4:
                    this.main.setBackgroundResource(R.drawable.gamelist_detialback_2);
                    break;
                case 5:
                    this.main.setBackgroundResource(R.drawable.gamelist_detialback_4);
                    break;
                case 6:
                    this.main.setBackgroundResource(R.drawable.gamelist_detialback_3);
                    break;
                case 7:
                    this.main.setBackgroundResource(R.drawable.gamelist_detialback_5);
                    break;
                case 8:
                    this.main.setBackgroundResource(R.drawable.gamelist_detialback_9);
                    break;
                case 9:
                    this.main.setBackgroundResource(R.drawable.gamelist_detialback_6);
                    break;
            }
            if (gameListItemBean.getPic_info() == null || gameListItemBean.getPic_info().size() <= 0) {
                return;
            }
            this.topBack.getHierarchy().y(com.facebook.drawee.drawable.s.c.f27293j);
            this.topBack.getHierarchy().x(new PointF(0.5f, 0.0f));
            this.topBack.setImageURI(Uri.parse(gameListItemBean.getPic_info().get(0).getRemote().getPath()));
        }
    }

    private void updateDownStateList(List<GameListItemBean> SearchDataBeanList) {
        if (SearchDataBeanList == null || SearchDataBeanList.size() == 0) {
            return;
        }
        Iterator<GameListItemBean> it2 = SearchDataBeanList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    private void updateProgressPartly() {
        int iFindFirstVisibleItemPosition;
        DownloadTask downloadTask;
        View childAt;
        DownloadTask downloadTask2;
        try {
            if (this.firstVisiblePosition >= 0 && this.lastVisibleIndex < this.listview.getCount()) {
                for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
                    GameListItemBean gameListItemBean = (GameListItemBean) this.listview.getItemAtPosition(i10);
                    if (gameListItemBean != null && (downloadTask2 = gameListItemBean.getDownloadTask()) != null && (downloadTask2.getStatus() == 2 || downloadTask2.getStatus() == 12)) {
                        View childAt2 = this.listview.getChildAt(i10 - this.firstVisiblePosition);
                        if (childAt2.getTag() instanceof k) {
                            k kVar = (k) childAt2.getTag();
                            try {
                                DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask2.getCrc_link_type_val());
                                if (downloadTaskG == null) {
                                    return;
                                }
                                long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                                if (downloadTask2.getSize() == 0) {
                                    kVar.f52381k.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                } else {
                                    kVar.f52381k.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                }
                                if (downloadTask2.getStatus() == 12) {
                                    kVar.f52373c.setProgress((int) downloadTaskG.getProgress());
                                } else {
                                    kVar.f52374d.setProgress((int) downloadTaskG.getProgress());
                                }
                                if (downloadTask2.getStatus() == 2) {
                                    kVar.f52384n.setText(downloadTaskG.getSpeed() + "/S");
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        try {
            if (this.xrecycleview == null || (iFindFirstVisibleItemPosition = this.manager.findFirstVisibleItemPosition()) < 0 || (downloadTask = this.searchDataBeanList.get(iFindFirstVisibleItemPosition * 2).getDownloadTask()) == null) {
                return;
            }
            if ((downloadTask.getStatus() != 2 && downloadTask.getStatus() != 12) || (childAt = this.xrecycleview.getChildAt(0)) == null || this.xrecycleview.getChildViewHolder(childAt) == null) {
                return;
            }
            l lVar = (l) this.xrecycleview.getChildViewHolder(childAt);
            DownloadTask downloadTaskG2 = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
            lVar.f52391h.setText(downloadTaskG2.getProgress() + "%");
            lVar.f52399p.setImageResource(R.drawable.detail_comment_download_pause);
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    @AfterViews
    void AfterView() {
        getWindow().addFlags(67108864);
        this.main.setPadding(0, getStateBar3(), 0, 0);
        this.context = this;
        Intent intent = getIntent();
        this.fromid = intent.getStringExtra("fromid");
        this._from = intent.getIntExtra("_from", 0);
        this.group_uid = intent.getIntExtra("groupuid", 111);
        this.gameid = intent.getStringExtra("gameid");
        this.commayid = intent.getStringExtra("company_id");
        this.rpcForumClient = com.join.mgps.rpc.impl.a.c0();
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        com.join.mgps.Util.j0.a().d(this);
        this.textView2.setTextColor(-1);
        this.failedMessage.setTextColor(-1);
        j jVar = new j();
        this.adapter = jVar;
        this.listview.setAdapter((ListAdapter) jVar);
        this.listview.setOnScrollListener(this);
        this.listview.setPreLoadCount(6);
        GetData();
        this.listview.setPullLoadEnable(new a());
        this.textlist = new ArrayList();
        this.gameidlist = new ArrayList();
        this.tv_modify2.setOnClickListener(new b());
        ViewPagerLayoutManager viewPagerLayoutManager = new ViewPagerLayoutManager(this.context, 1);
        this.manager = viewPagerLayoutManager;
        viewPagerLayoutManager.f(new c());
        this.recycleAdapter = new m();
        this.xrecycleview.setLayoutManager(this.manager);
        this.xrecycleview.setAdapter(this.recycleAdapter);
        this.xrecycleview.setLoadingMoreEnabled(true);
        this.xrecycleview.setPullRefreshEnabled(false);
        this.xrecycleview.setPreLoadCount(10);
        this.xrecycleview.setLoadingListener(new d());
        this.main.setBackgroundResource(R.drawable.gamelist_detialback_1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void DelectLocaleGame(int i10) {
        if (this.searchDataBeanList.size() > 0) {
            this.searchDataBeanList.remove(i10);
            this.searchDataBeanList.remove(i10);
            j jVar = this.adapter;
            if (jVar != null) {
                jVar.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void GetCopyData(List<GameListItemBean> collectionBeanSubs) {
        if (this.page == 2 && this.searchDataBeanList.size() != 0) {
            this.searchDataBeanList.clear();
            this.allDownloadGameList.clear();
            j jVar = this.adapter;
            if (jVar != null) {
                jVar.notifyDataSetChanged();
            }
        }
        for (GameListItemBean gameListItemBean : collectionBeanSubs) {
            int i10 = this._from;
            if (i10 == 0) {
                gameListItemBean.set_from(102);
                gameListItemBean.set_from_type(111);
                this._from = 111;
            } else {
                gameListItemBean.set_from(i10);
                gameListItemBean.set_from_type(this._from);
            }
            gameListItemBean.getExtBean().itemWithParent(this.pageExtBean);
            this.searchDataBeanList.add(gameListItemBean);
            this.allDownloadGameList.add(gameListItemBean);
            GameListItemBean gameListItemBean2 = new GameListItemBean();
            gameListItemBean2.setPic_info(gameListItemBean.getPic_info());
            gameListItemBean2.setPic_position(gameListItemBean.getPic_position());
            gameListItemBean2.setItemType(2);
            this.searchDataBeanList.add(gameListItemBean2);
        }
        try {
            this.title.setText(this.detailsBean.getTitle());
            com.join.android.app.common.utils.l.i(this.topBack, this.searchDataBeanList.get(0).getPic_info().get(0).getRemote().getPath(), com.facebook.drawee.drawable.s.c.f27293j);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        j jVar2 = this.adapter;
        if (jVar2 != null) {
            jVar2.notifyDataSetChanged();
        }
        m mVar = this.recycleAdapter;
        if (mVar != null) {
            mVar.notifyDataSetChanged();
        }
        this.xrecycleview.loadMoreComplete();
        updateDownStateList(this.allDownloadGameList);
        if (this.page == 2) {
            updateBackground(0);
        }
        this.xrecycleview.postDelayed(new Runnable() { // from class: com.join.mgps.activity.u1
            @Override // java.lang.Runnable
            public final void run() {
                this.f58151b.expDiscountGame();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void GetData() {
        try {
            try {
                com.join.mgps.Util.g1.d("gamelist  ", "loadmore 3333");
                this.isloding = true;
                if (com.join.android.app.common.utils.m.j(this.context)) {
                    if (this.page == 1) {
                        showLoding();
                    }
                    ArrayList arrayList = new ArrayList();
                    if (com.join.android.app.common.utils.m.j(this.context)) {
                        this.device_id = "";
                        RequestBeanUtil.getInstance(this.context);
                        this.version = RequestBeanUtil.getVersionAndVersionName();
                        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                        linkedMultiValueMap.add("uid", Integer.valueOf(this.accountBean.getUid()));
                        linkedMultiValueMap.add(Constants.TOKEN, this.accountBean.getToken());
                        linkedMultiValueMap.add("group_id", this.fromid);
                        linkedMultiValueMap.add("group_uid", Integer.valueOf(this.group_uid));
                        linkedMultiValueMap.add("page", Integer.valueOf(this.page));
                        linkedMultiValueMap.add("device_id", this.device_id);
                        linkedMultiValueMap.add("version", this.version);
                        com.join.mgps.Util.g1.d("gamelist  ", "loadmore 44444  page=" + this.page + linkedMultiValueMap.toString());
                        ForumResponseGame forumResponseGameU = this.rpcForumClient.u(linkedMultiValueMap);
                        if (forumResponseGameU.getData() != null && forumResponseGameU.getData().getDetails() != null) {
                            this.detailsBean = forumResponseGameU.getData().getDetails();
                            if (!this.pageExtBean.hasExplore()) {
                                this.pageExtBean.setKeyword(this.detailsBean.getTitle()).setFrom("10011");
                                this.pageExtBean.setParent(this.parentExtBean);
                                com.papa.sim.statistic.t.l(this).R1(Event.commonExp, this.pageExtBean.copy().buildScene().toExt());
                            }
                        }
                        this.page++;
                        if (forumResponseGameU.getError() != 0 || forumResponseGameU.getData() == null || forumResponseGameU.getData() == null || forumResponseGameU.getData().getGame_list().size() <= 0) {
                            com.join.mgps.Util.g1.d("gamelist  ", "nomore 666666  json=" + JsonMapper.getInstance().toJson(forumResponseGameU));
                            if (this.page == 2) {
                                ShowNoData();
                            } else {
                                NoDataValue(forumResponseGameU);
                            }
                        } else {
                            if (this.page == 2) {
                                this.data2 = forumResponseGameU;
                                setHeadView();
                            }
                            hideLoadingView();
                            updateListHeadAndFoot();
                            setRlModify();
                            for (int i10 = 0; i10 < forumResponseGameU.getData().getGame_list().size(); i10++) {
                                arrayList.add(forumResponseGameU.getData().getGame_list().get(i10));
                            }
                            if (forumResponseGameU.getData().getGame_list().size() == 0) {
                                com.join.mgps.Util.g1.d("gamelist  ", "nomore 5555  page=" + this.page);
                                upNomore(forumResponseGameU);
                            }
                            GetCopyData(arrayList);
                        }
                    } else {
                        if (this.page == 2) {
                            showLodingFailed();
                        }
                        upNomore2();
                    }
                } else {
                    showLodingFailed();
                }
            } catch (Exception e10) {
                showLodingFailed();
                e10.printStackTrace();
            }
        } finally {
            this.isloding = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void NoDataValue(ForumResponseGame data) {
        try {
            this.isnoMore = true;
            if (data.getData().getDetails().getIs_self().equals("0")) {
                XListView2 xListView2 = this.listview;
                if (xListView2 != null) {
                    xListView2.g();
                }
                XListView2 xListView3 = this.listview;
                if (xListView3 != null) {
                    xListView3.setNoMore();
                }
            } else {
                this.tv_btn.setText("编辑");
                this.tv_btn.setBackgroundResource(R.drawable.game_detail_blue);
                this.detailsBean.setTv_btn(1);
                View view = this.view;
                if (view != null) {
                    this.listview.removeFooterView(view);
                }
                XListView2 xListView4 = this.listview;
                if (xListView4 != null) {
                    xListView4.setNoMore();
                }
            }
            this.recycleAdapter.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Refresh() {
        try {
            XListView2 xListView2 = this.listview;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void ShowNoData() {
        ForumResponseGame.Datadetails datadetails = this.detailsBean;
        if (datadetails == null) {
            return;
        }
        TextView textView = this.tv_name;
        if (textView != null) {
            textView.setText(datadetails.getNick_name());
        }
        TextView textView2 = this.tv_time;
        if (textView2 != null) {
            textView2.setText(this.detailsBean.getBook_count() + "订阅");
        }
        TextView textView3 = this.title;
        if (textView3 != null) {
            textView3.setVisibility(0);
            this.title.setText(this.detailsBean.getTitle());
        }
        LinearLayout linearLayout = this.ll_gameform_title2;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        SimpleDraweeView simpleDraweeView = this.smv_icon;
        if (simpleDraweeView != null) {
            com.join.android.app.common.utils.l.h(simpleDraweeView, this.detailsBean.getPortrait());
        }
        LinearLayout linearLayout2 = this.iv_nome;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        LinearLayout linearLayout3 = this.myswip;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.xrecycleview;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        hideLoadingView();
        this.tv_btn.setTextColor(-1);
        if (this.detailsBean.getIs_self().equals("1")) {
            this.tv_btn.setText("编辑");
            this.tv_btn.setBackgroundResource(R.drawable.game_detail_blue);
            this.detailsBean.setTv_btn(1);
        } else if (this.detailsBean.getBook_state().equals("1")) {
            this.tv_btn.setText("已订阅");
            this.tv_btn.setBackgroundResource(R.drawable.game_detail_gray);
        } else {
            this.tv_btn.setTextColor(-16777216);
            this.tv_btn.setText("+  订阅");
            this.tv_btn.setBackgroundResource(R.drawable.game_detail_o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Toast(String str) {
        showToastSystem(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void UpdateData() {
        String str = "";
        try {
            if (this.detailsBean != null && getStringContent()) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.accountBean.getUid()));
                linkedMultiValueMap.add(Constants.TOKEN, this.accountBean.getToken());
                linkedMultiValueMap.add("group_id", this.detailsBean.getId());
                linkedMultiValueMap.add("group_title", this.title_game.equals("") ? this.detailsBean.getTitle() : this.title_game);
                this.del_game_list = this.del_game_list.equals("") ? "" : this.del_game_list;
                if (!this.modify_game_list.equals("")) {
                    str = this.modify_game_list;
                }
                this.modify_game_list = str;
                this.del_game_list = toUtf8(this.del_game_list);
                this.modify_game_list = toUtf8(this.modify_game_list);
                linkedMultiValueMap.add("del_game_list", this.del_game_list);
                linkedMultiValueMap.add("modify_game_list", this.modify_game_list);
                linkedMultiValueMap.add("device_id", this.device_id);
                linkedMultiValueMap.add("version", this.version);
                GameFromBooleanBean gameFromBooleanBeanB0 = this.rpcForumClient.b0(linkedMultiValueMap);
                if (gameFromBooleanBeanB0.getError() == 0 && gameFromBooleanBeanB0.getData().isState()) {
                    setTv_btn();
                } else {
                    showToastSystem("修改失败");
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void changeModle() {
        ForumResponseGame.Datadetails datadetails = this.detailsBean;
        if (datadetails == null) {
            return;
        }
        if (datadetails.getIs_self().equals("1") && this.detailsBean.getTv_btn() == 0) {
            showPopupWindow(null, this.title.getText().toString().trim(), "", null, 1, 0);
            return;
        }
        List<GameListItemBean> list = this.searchDataBeanList;
        if (list == null || list.size() == 0) {
            return;
        }
        if (this.myswip.getVisibility() == 0) {
            this.myswip.setVisibility(8);
            this.xrecycleview.setVisibility(0);
            this.changeModle.setText("列表模式");
            this.uiMode = 1;
            return;
        }
        this.myswip.setVisibility(0);
        this.xrecycleview.setVisibility(8);
        this.changeModle.setText("大图模式");
        this.uiMode = 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void cleanData() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void delectUi(int i10) {
        if (this.searchDataBeanList.isEmpty()) {
            return;
        }
        this.searchDataBeanList.remove(i10);
        j jVar = this.adapter;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
    }

    boolean getStringContent() {
        for (int i10 = 0; i10 < this.textlist.size(); i10++) {
            this.modify_game_list += this.textlist.get(i10) + ",";
        }
        for (int i11 = 0; i11 < this.gameidlist.size(); i11++) {
            this.del_game_list += this.gameidlist.get(i11) + ",";
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoadingView() {
        LinearLayout linearLayout = this.loding_layout;
        if (linearLayout == null || this.loding_faile == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void iv_back() {
        if (this.isFinish) {
            finish();
        } else {
            showToastSystem("请先点击完成");
        }
    }

    @Click
    @RequiresApi(api = 26)
    void iv_share() {
        if (!this.isFinish) {
            showToastSystem("请先点击完成");
            return;
        }
        try {
            ShareToBaseBean shareToBaseBean = new ShareToBaseBean();
            shareToBaseBean.setUid(this.accountBean.getUid());
            shareToBaseBean.setToken("");
            shareToBaseBean.setDevice_id(this.device_id);
            int i10 = this.page;
            shareToBaseBean.setPage(i10 > 1 ? i10 - 1 : 1);
            shareToBaseBean.setVersion(this.version);
            shareToBaseBean.setGroup_id(Integer.valueOf(this.fromid).intValue());
            shareToBaseBean.setGroup_uid(this.group_uid);
            String str = "http://anv3cjapi.5fun.com/static/game_favorites/index.html?share_id=" + Base64.encodeToString(JsonMapper.getInstance().toJson(shareToBaseBean).toString().getBytes(), 2);
            ShareBean shareBean = new ShareBean();
            shareBean.setQqUrl(str);
            shareBean.setqZoneShareUrl(str);
            shareBean.setWeiboShareUrl(str);
            shareBean.setWechatFriendUrl(str);
            shareBean.setWechatShareUrl(str);
            shareBean.setText("这是我珍藏的好游戏，一起来玩啊~");
            ForumResponseGame.Datadetails datadetails = this.detailsBean;
            if (datadetails != null) {
                shareBean.setTitle(datadetails.getTitle());
            }
            if (this.searchDataBeanList.size() != 0) {
                shareBean.setImageUrl(this.searchDataBeanList.get(0).getIco_remote());
            } else {
                shareBean.setImageUrl("http://ctimg.mg3721.com/upload/images/wf_ico.png?ver=2.2");
            }
            com.join.mgps.Util.w.r(this.context, shareBean);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.v1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f58166b.lambda$onEventMainThread$0();
            }
        });
        if (downloadTaskEvent.c() != 8 || this.SCROLLING) {
            return;
        }
        updateProgressPartly();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (this.isFinish || keyCode != 4 || event.getAction() != 0) {
            return super.onKeyDown(keyCode, event);
        }
        showToastSystem("请先点击完成");
        return true;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.islogin) {
            return;
        }
        this.page = 1;
        this.isnoMore = false;
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        Refresh();
        GetData();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        this.lastVisibleIndex = (i11 + i10) - 1;
        this.firstVisiblePosition = i10;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int scrollState) {
        if (scrollState == 0) {
            expDiscountGame();
        }
        this.SCROLLING = scrollState != 0;
    }

    @Click
    void relodingimag() {
        this.page = 1;
        this.isnoMore = false;
        Refresh();
        GetData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setHeadView() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void setLookState() {
        try {
            try {
                if (this.detailsBean == null) {
                    return;
                }
                this.isLookState = true;
                if (com.join.android.app.common.utils.m.j(this.context)) {
                    LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                    if (com.join.mgps.Util.t2.h(this.gameid)) {
                        this.gameid = "";
                    }
                    if (com.join.mgps.Util.t2.h(this.commayid)) {
                        this.commayid = "";
                    }
                    linkedMultiValueMap.add("uid", Integer.valueOf(this.accountBean.getUid()));
                    linkedMultiValueMap.add(Constants.TOKEN, this.accountBean.getToken());
                    linkedMultiValueMap.add("game_id", this.gameid);
                    linkedMultiValueMap.add("company_id", this.commayid);
                    linkedMultiValueMap.add("be_book_group_id", this.detailsBean.getId());
                    linkedMultiValueMap.add("be_book_group_uid", Integer.valueOf(this.detailsBean.getUid()));
                    linkedMultiValueMap.add("device_id", this.device_id);
                    linkedMultiValueMap.add("version", this.version);
                    if (this.detailsBean.getBook_state().equals("0")) {
                        GameFromBooleanBean gameFromBooleanBeanZ = this.rpcForumClient.z(linkedMultiValueMap);
                        if (gameFromBooleanBeanZ.getError() == 0 && gameFromBooleanBeanZ.getData().isState()) {
                            setLookUi(1);
                        } else if (gameFromBooleanBeanZ.getError() == 701) {
                            this.islogin = false;
                            IntentUtil.getInstance().goMyAccountLoginActivity(this.context);
                            showToastSystem("Token已失效，请重新登录");
                            IntentUtil.getInstance().goLogin(this.context);
                        } else {
                            setLookUi(3);
                        }
                    } else if (this.detailsBean.getBook_state().equals("1")) {
                        GameFromBooleanBean gameFromBooleanBeanP = this.rpcForumClient.P(linkedMultiValueMap);
                        if (gameFromBooleanBeanP.getError() == 0 && gameFromBooleanBeanP.getData().isState()) {
                            setLookUi(2);
                        } else if (gameFromBooleanBeanP.getError() == 701) {
                            this.islogin = false;
                            IntentUtil.getInstance().goMyAccountLoginActivity(this.context);
                            showToastSystem("Token已失效，请重新登录");
                            IntentUtil.getInstance().goLogin(this.context);
                        } else {
                            setLookUi(4);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.isLookState = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setLookUi(int i10) {
        if (this.detailsBean == null) {
            return;
        }
        this.tv_btn.setTextColor(-1);
        if (i10 == 1) {
            this.tv_btn.setText("已订阅");
            this.tv_btn.setBackgroundResource(R.drawable.game_detail_gray);
            this.detailsBean.setBook_state("1");
            showToastSystem("订阅成功");
            TextView textView = this.tv_sub_sub;
            if (textView != null) {
                textView.setText("已订阅");
                this.tv_sub_sub.setBackgroundResource(R.drawable.game_detail_gray);
            }
            int iIntValue = Integer.valueOf(this.detailsBean.getBook_count()).intValue() + 1;
            this.detailsBean.setBook_count(iIntValue + "");
            TextView textView2 = this.tv_sub_title;
            if (textView2 != null) {
                textView2.setText(iIntValue + "人订阅，第一时间获取新动态");
            }
        } else if (i10 == 2) {
            this.tv_btn.setTextColor(-16777216);
            this.tv_btn.setText("+  订阅");
            this.tv_btn.setBackgroundResource(R.drawable.game_detail_o);
            this.detailsBean.setBook_state("0");
            showToastSystem("取消订阅成功");
            TextView textView3 = this.tv_sub_sub;
            if (textView3 != null) {
                textView3.setText("+  订阅");
                this.tv_sub_sub.setBackgroundResource(R.drawable.game_detail_o);
                this.tv_sub_sub.setTextColor(-16777216);
            }
            int iIntValue2 = Integer.valueOf(this.detailsBean.getBook_count()).intValue() - 1;
            this.detailsBean.setBook_count(iIntValue2 + "");
            TextView textView4 = this.tv_sub_title;
            if (textView4 != null) {
                textView4.setText(iIntValue2 + "人订阅，第一时间获取新动态");
            }
        } else if (i10 == 3) {
            showToastSystem("订阅失败");
        } else {
            showToastSystem("取消订阅失败");
        }
        this.adapter.notifyDataSetChanged();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setRlModify() {
        this.rl_back_title.setVisibility(0);
        this.ll_gameform_title2.setVisibility(8);
        if (this.xrecycleview.getVisibility() == 8 && this.myswip.getVisibility() == 8) {
            this.myswip.setVisibility(0);
        }
        com.join.android.app.common.utils.l.h(this.smv_icon, this.data2.getData().getDetails().getPortrait());
        this.tv_name.setText(this.detailsBean.getNick_name());
        this.title.setText(this.detailsBean.getTitle());
        Long.parseLong(this.detailsBean.getAdd_time());
        this.tv_time.setText(this.detailsBean.getBook_count() + "订阅");
        this.tv_btn.setTextColor(-1);
        if (this.detailsBean.getIs_self().equals("1")) {
            this.tv_btn.setText("编辑");
            this.tv_btn.setBackgroundResource(R.drawable.game_detail_blue);
            this.detailsBean.setTv_btn(1);
        } else if (this.detailsBean.getBook_state().equals("1")) {
            this.tv_btn.setText("已订阅");
            this.tv_btn.setBackgroundResource(R.drawable.game_detail_gray);
        } else {
            this.tv_btn.setTextColor(-16777216);
            this.tv_btn.setText("+  订阅");
            this.tv_btn.setBackgroundResource(R.drawable.game_detail_o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setTv_btn() {
        if (this.detailsBean == null) {
            return;
        }
        if (!(this.tv_game_title != null ? this.title.getText().toString().trim() : this.title.getText().toString().trim()).equals(this.detailsBean.getTitle()) || !this.title.getText().toString().trim().equals(this.detailsBean.getTitle()) || !this.del_game_list.equals("") || !this.modify_game_list.equals("")) {
            this.textlist.clear();
            this.gameidlist.clear();
            this.del_game_list = "";
            this.modify_game_list = "";
            showToastSystem("修改成功");
            this.page = 1;
            this.isnoMore = false;
            Refresh();
            GetData();
        }
        XListView2 xListView2 = this.listview;
        if (xListView2 != null) {
            xListView2.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.loding_layout;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.loding_faile;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.myswip;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.xrecycleview;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showPopupWindow(k myHolder, String text_content, String gameid, GameListItemBean searchDataBean, int type, int position) {
        this.isShowPoPo = false;
        if (this.contentView != null) {
            ((InputMethodManager) this.context.getSystemService("input_method")).toggleSoftInput(0, 2);
            SpannableString spannableString = new SpannableString(text_content);
            spannableString.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString.length(), 33);
            this.edit.setHint(new SpannedString("  " + ((Object) spannableString)));
            this.mPopWindow.showAtLocation(this.rootview, 81, 0, 0);
            return;
        }
        this.contentView = LayoutInflater.from(this.context).inflate(R.layout.appointment_pay_popwindow_page, (ViewGroup) null);
        this.mPopWindow = new PopupWindow(this.contentView, -1, -1, true);
        EditText editText = (EditText) this.contentView.findViewById(R.id.edit);
        this.edit = editText;
        editText.setInputType(1);
        this.edit.setFilters(new InputFilter[]{new InputFilter.LengthFilter(12)});
        ((LinearLayout) this.contentView.findViewById(R.id.ll_dismiss)).setOnClickListener(new e());
        this.mPopWindow.setOnDismissListener(new f());
        SpannableString spannableString2 = new SpannableString(text_content);
        spannableString2.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString2.length(), 33);
        this.edit.setHint(new SpannedString("  " + ((Object) spannableString2)));
        ((Button) this.contentView.findViewById(R.id.btn_confirm)).setOnClickListener(new g(type, text_content, gameid, myHolder, searchDataBean));
        this.edit.setFocusable(true);
        this.mPopWindow.setFocusable(true);
        this.edit.setFocusableInTouchMode(true);
        this.edit.setFocusable(true);
        this.edit.requestFocus();
        ((InputMethodManager) this.context.getSystemService("input_method")).toggleSoftInput(0, 2);
        View decorView = getWindow().getDecorView();
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(new h(decorView));
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.activity_game_detail, (ViewGroup) null);
        this.rootview = viewInflate;
        showPopmenu(viewInflate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToastSystem(String msg) {
        if (isDestroyed()) {
            return;
        }
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @Click
    void smv_icon() {
        if (this.detailsBean == null) {
            return;
        }
        if (!this.isFinish) {
            showToastSystem("请先点击完成");
            return;
        }
        Ext ext = new Ext();
        ext.setPosition("brief");
        ext.setGameId("0");
        ext.setArticleId(this.fromid);
        com.papa.sim.statistic.t.l(this.context).R1(Event.clickFromUserGameList, ext);
        CommentSelfListActivity_.intent(this.context).a(this.detailsBean.getUid()).start();
    }

    public String stampToDate(Long s10) {
        return new SimpleDateFormat("MM/dd").format(new Date(new Long(s10.longValue()).longValue()));
    }

    @Click
    void tv_btn() {
        if (!com.ta.utdid2.android.utils.f.f(this.context)) {
            showToastSystem("无网络连接");
            return;
        }
        if (this.detailsBean == null) {
            return;
        }
        if (IntentUtil.getInstance().goLogin(this.context)) {
            this.islogin = false;
            return;
        }
        if (!this.detailsBean.getIs_self().equals("1")) {
            this.tv_btn.setTextColor(-1);
            if (this.isLookState) {
                showToastSystem("上步操作尚未完成");
                return;
            }
            if (this.detailsBean.getBook_state().equals("1")) {
                this.tv_btn.setText("+  订阅");
                this.tv_btn.setBackgroundResource(R.drawable.game_detail_gray);
            } else {
                this.tv_btn.setText("已订阅");
                this.tv_btn.setTextColor(-16777216);
                this.tv_btn.setBackgroundResource(R.drawable.game_detail_o);
            }
            setLookState();
            return;
        }
        if (this.detailsBean.getTv_btn() == 1) {
            this.tv_btn.setText("完成");
            this.tv_btn.setBackgroundResource(R.drawable.game_detail_green);
            this.detailsBean.setTv_btn(0);
            this.listview.f();
            this.listview.g();
            TextView textView = this.tv_modify;
            if (textView != null) {
                textView.setVisibility(0);
            }
            this.tv_modify2.setVisibility(0);
            this.isFinish = false;
            this.changeModle.setText("修改");
            List<GameListItemBean> list = this.searchDataBeanList;
            if (list == null || list.size() == 0) {
                return;
            }
            this.xrecycleview.setVisibility(8);
            this.myswip.setVisibility(0);
        } else if (this.detailsBean.getTv_btn() == 0) {
            this.tv_btn.setText("编辑");
            this.tv_btn.setBackgroundResource(R.drawable.game_detail_blue);
            this.detailsBean.setTv_btn(1);
            TextView textView2 = this.tv_modify;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            this.tv_modify2.setVisibility(8);
            this.listview.q();
            UpdateData();
            Refresh();
            this.isFinish = true;
            this.changeModle.setText("列表模式");
            List<GameListItemBean> list2 = this.searchDataBeanList;
            if (list2 == null || list2.size() == 0) {
                return;
            }
            this.xrecycleview.setVisibility(0);
            this.myswip.setVisibility(8);
        }
        j jVar = this.adapter;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
    }

    @Click
    void tv_name() {
        if (this.detailsBean == null) {
            return;
        }
        if (!this.isFinish) {
            showToastSystem("请先点击完成");
            return;
        }
        Ext ext = new Ext();
        ext.setPosition("brief");
        ext.setGameId("0");
        ext.setArticleId(this.fromid);
        com.papa.sim.statistic.t.l(this.context).R1(Event.clickFromUserGameList, ext);
        CommentSelfListActivity_.intent(this.context).a(this.detailsBean.getUid()).start();
    }

    @Click
    void tv_time() {
        if (this.detailsBean == null) {
            return;
        }
        if (!this.isFinish) {
            showToastSystem("请先点击完成");
            return;
        }
        Ext ext = new Ext();
        ext.setPosition("brief");
        ext.setGameId("0");
        ext.setArticleId(this.fromid);
        com.papa.sim.statistic.t.l(this.context).R1(Event.clickFromUserGameList, ext);
        CommentSelfListActivity_.intent(this.context).a(this.detailsBean.getUid()).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void upNomore(ForumResponseGame data) {
        XListView2 xListView2 = this.listview;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.listview.v();
                this.isnoMore = true;
                this.listview.setNoMore();
                NoDataValue(data);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.recycleAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void upNomore2() {
        XListView2 xListView2 = this.listview;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.listview.v();
                this.listview.setNoMore();
                this.isnoMore = true;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.recycleAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateListHeadAndFoot() {
        XListView2 xListView2 = this.listview;
        if (xListView2 != null) {
            try {
                if (this.isFinish) {
                    xListView2.u();
                }
                this.listview.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void updateUi(k holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.f52379i.setVisibility(8);
            holder.f52374d.setVisibility(8);
            holder.f52373c.setVisibility(8);
            holder.f52376f.setVisibility(0);
            holder.f52383m.setVisibility(0);
            return;
        }
        holder.f52383m.setVisibility(8);
        holder.f52379i.setVisibility(0);
        if (isZip.booleanValue()) {
            holder.f52374d.setVisibility(8);
            holder.f52373c.setVisibility(0);
        } else {
            holder.f52373c.setVisibility(8);
            holder.f52374d.setVisibility(0);
        }
        holder.f52376f.setVisibility(8);
    }
}
