package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.http.SslError;
import android.os.Handler;
import android.text.Html;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.adapter.GameCommentAdapterV2;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.VipView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameInformationBean;
import com.join.mgps.dto.GameInformationCommentPraiseArgs;
import com.join.mgps.dto.GameInformationCommentRequestV2;
import com.join.mgps.dto.InformationCommentBackV2;
import com.join.mgps.dto.InformationCommentBeanV2;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Where;
import com.wufan.user.service.protobuf.UserInfo;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.game_information_layoutv2)
public class GameInformationActivityV2 extends BaseActivity {
    private UserInfo accountBean;

    @ViewById
    SimpleDraweeView appIcon;

    @ViewById
    RelativeLayout applayout;

    @ViewById
    TextView appname;

    @ViewById
    TextView appsize;

    @ViewById
    LinearLayout bottom_lay;
    Button cardDownButn;

    @ViewById
    ImageView comment;
    private int comment_count;
    private List<InformationCommentBeanV2> commitDataBeanList;
    private Context context;
    private List<GameCommentAdapterV2.l> dataSet;

    @Extra
    boolean defaultDown;
    private DetailResultBean detailResultBean;

    @ViewById
    Button downloadImage;
    private DownloadTask downloadTask;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;

    @Extra
    ExtBean extBean;
    private GameInformationBean gameInformationBean;
    private n gameInformationdapter;

    @Extra
    String info_id;
    private boolean isPraise;
    private long lastClick;

    @ViewById
    LinearLayout layout_share;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    Context mContext;

    @ViewById
    TextView moneyText;

    @ViewById
    TextView moneyText2;

    @ViewById
    TextView more;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    RecyclerView recyclerView;

    @ViewById
    RelativeLayout relativeLayout;

    @ViewById
    TextView roundMessage;
    com.join.mgps.rpc.e rpcClient;

    @ViewById
    ImageView shareImg;

    @Extra
    String title;

    @ViewById
    TextView titleText;

    @ViewById
    SimpleDraweeView usericonMe;
    WebView webView;
    private String gameId = "";
    private Handler mHandler = new Handler();
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    ExtBean pageExtBean = new ExtBean();
    private String lastJson = "";
    com.join.mgps.customview.t mDialog = null;
    List<o> showDatas = new ArrayList();
    p mListenr = null;

    enum GType {
        webview(1),
        card(2),
        comment(3),
        commentTitle(4),
        TITLE(5),
        COMMENT(6),
        webtitle(8),
        REPLY(7),
        sendcomment(9);


        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f52719i;

        GType(int type) {
            this.f52719i = type;
        }

        public int vaule() {
            return this.f52719i;
        }
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ l f52720b;

        a(final l val$finalCommentViewHolder) {
            this.f52720b = val$finalCommentViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f52720b.f52765m.getText().toString().equals("查看全部")) {
                this.f52720b.f52761i.setMaxLines(Integer.MAX_VALUE);
                this.f52720b.f52765m.setText("收起");
            } else {
                this.f52720b.f52761i.setMaxLines(5);
                this.f52720b.f52765m.setText("查看全部");
            }
            this.f52720b.f52765m.postInvalidate();
        }
    }

    class b implements p {
        b() {
        }

        @Override // com.join.mgps.activity.GameInformationActivityV2.p
        public void a(InformationCommentBeanV2 sub) {
            InformationCommentBeanV2 informationCommentBeanV2 = new InformationCommentBeanV2();
            informationCommentBeanV2.setCommentId(sub.getCommentId());
            informationCommentBeanV2.setUid(sub.getUid());
            informationCommentBeanV2.setNickname(sub.getNickname());
            GameInformationCommentActivity_.intent(GameInformationActivityV2.this.context).b(GameInformationActivityV2.this.info_id).a(informationCommentBeanV2).start();
        }

        @Override // com.join.mgps.activity.GameInformationActivityV2.p
        public void b(InformationCommentBeanV2 bean) {
            if (bean.getPraise().booleanValue()) {
                com.join.mgps.Util.a3.b(GameInformationActivityV2.this.context).d("你已赞过");
            } else {
                GameInformationActivityV2.this.sendParesed(bean, null, null);
            }
        }

        @Override // com.join.mgps.activity.GameInformationActivityV2.p
        public void c(InformationCommentBeanV2 commitDataBean) {
            GameInformationCommentActivity_.intent(GameInformationActivityV2.this.context).b(GameInformationActivityV2.this.info_id).a(commitDataBean).start();
        }

        @Override // com.join.mgps.activity.GameInformationActivityV2.p
        public void d() {
            GameInformationActivityV2.this.updateHight();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            GameInformationActivityV2 gameInformationActivityV2 = GameInformationActivityV2.this;
            intentUtil.goGameDetialActivity(gameInformationActivityV2, gameInformationActivityV2.detailResultBean.getCrc_sign_id(), GameInformationActivityV2.this.pageExtBean);
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f52724b;

        d(final InformationCommentBeanV2 val$commitDataBean) {
            this.f52724b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f52724b.getPraise().booleanValue()) {
                com.join.mgps.Util.a3.b(GameInformationActivityV2.this.mContext).d("你已赞过");
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(GameInformationActivityV2.this.mContext)) {
                return;
            }
            ((ImageView) v10).setImageResource(R.drawable.like);
            v10.startAnimation(AnimationUtils.loadAnimation(GameInformationActivityV2.this.mContext, R.anim.scale_reset));
            p pVar = GameInformationActivityV2.this.mListenr;
            if (pVar != null) {
                pVar.b(this.f52724b);
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f52726b;

        e(final InformationCommentBeanV2 val$sub) {
            this.f52726b = val$sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            p pVar = GameInformationActivityV2.this.mListenr;
            if (pVar != null) {
                pVar.a(this.f52726b);
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f52728b;

        f(final InformationCommentBeanV2 val$commitDataBean) {
            this.f52728b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            p pVar = GameInformationActivityV2.this.mListenr;
            if (pVar != null) {
                pVar.c(this.f52728b);
            }
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52731c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f52732d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ GameCommentAdapterV2.l.b f52733e;

        g(final int val$itemIndex, final int val$position, final String val$cid, final GameCommentAdapterV2.l.b val$commentMessageReply) {
            this.f52730b = val$itemIndex;
            this.f52731c = val$position;
            this.f52732d = val$cid;
            this.f52733e = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f52730b == 0) {
                return;
            }
            InformationCommentBeanV2 informationCommentBeanV2 = new InformationCommentBeanV2();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f52730b; i10 >= 0; i10--) {
                o oVar = GameInformationActivityV2.this.showDatas.get(this.f52731c - i10);
                GameCommentAdapterV2.l.b bVar = oVar.f52786b.vaule() == GType.REPLY.vaule() ? (GameCommentAdapterV2.l.b) oVar.f52785a : null;
                if (bVar != null && this.f52732d == bVar.f60624a) {
                    arrayList.addAll(bVar.f60625b.getReplyList());
                }
            }
            for (int i11 = 0; i11 <= this.f52730b; i11++) {
                GameInformationActivityV2.this.showDatas.remove(this.f52731c - i11);
            }
            informationCommentBeanV2.setReplyList(arrayList);
            GameInformationActivityV2.this.showDatas.add(this.f52731c - this.f52730b, GameInformationActivityV2.this.createCommentMessageReplyViewBean(this.f52732d, informationCommentBeanV2, this.f52733e.f60626c, true));
            GameInformationActivityV2.this.gameInformationdapter.notifyDataSetChanged();
            GameInformationActivityV2.this.mListenr.d();
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52735b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f52736c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f52737d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ GameCommentAdapterV2.l.b f52738e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f52739f;

        h(final int val$size, final InformationCommentBeanV2 val$forumCommentBean, final String val$cid, final GameCommentAdapterV2.l.b val$commentMessageReply, final int val$position) {
            this.f52735b = val$size;
            this.f52736c = val$forumCommentBean;
            this.f52737d = val$cid;
            this.f52738e = val$commentMessageReply;
            this.f52739f = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f52735b) {
                InformationCommentBeanV2 informationCommentBeanV2 = new InformationCommentBeanV2(this.f52736c);
                List<InformationCommentBeanV2> replyList = informationCommentBeanV2.getReplyList();
                ArrayList arrayList = new ArrayList();
                int i12 = i10 + 3;
                if (i12 < replyList.size()) {
                    arrayList.addAll(replyList.subList(i10, i12));
                } else {
                    arrayList.addAll(replyList.subList(i10, replyList.size()));
                    z10 = true;
                }
                informationCommentBeanV2.setReplyList(arrayList);
                o oVarCreateCommentMessageReplyViewBean = GameInformationActivityV2.this.createCommentMessageReplyViewBean(this.f52737d, informationCommentBeanV2, this.f52738e.f60626c, i11 == 0);
                GameCommentAdapterV2.l.b bVar = (GameCommentAdapterV2.l.b) oVarCreateCommentMessageReplyViewBean.f52785a;
                bVar.f60628e = i11;
                bVar.f60629f = z10;
                bVar.f60627d = i11 == 0;
                GameInformationActivityV2.this.setCommentMessageReplyBottomVisibility(oVarCreateCommentMessageReplyViewBean, !z10);
                GameInformationActivityV2.this.showDatas.add(this.f52739f + i11 + 1, oVarCreateCommentMessageReplyViewBean);
                i11++;
                i10 = i12;
            }
            GameInformationActivityV2.this.showDatas.remove(this.f52739f);
            GameInformationActivityV2.this.gameInformationdapter.notifyDataSetChanged();
            GameInformationActivityV2.this.mListenr.d();
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f52741b;

        i(final InformationCommentBeanV2 val$commitDataBean) {
            this.f52741b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f52741b.getUid())).start();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ l f52743b;

        j(final l val$finalCommentViewHolder1) {
            this.f52743b = val$finalCommentViewHolder1;
        }

        @Override // java.lang.Runnable
        public void run() {
            Layout layout = this.f52743b.f52761i.getLayout();
            if (layout == null) {
                this.f52743b.f52765m.setVisibility(8);
                return;
            }
            int lineCount = layout.getLineCount();
            if (lineCount > 0) {
                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                    this.f52743b.f52765m.setVisibility(0);
                } else {
                    this.f52743b.f52765m.setVisibility(8);
                }
            }
        }
    }

    class k extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f52745d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        SimpleDraweeView f52746e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f52747f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f52748g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f52749h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f52750i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        TextView f52751j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        TextView f52752k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        TextView f52753l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        Button f52754m;

        public k(View itemView) {
            super(itemView);
            this.f52745d = itemView.findViewById(R.id.gameCardLayout);
            this.f52746e = (SimpleDraweeView) itemView.findViewById(R.id.cardIcon);
            this.f52747f = (TextView) itemView.findViewById(R.id.cardAppname);
            this.f52748g = itemView.findViewById(R.id.cardDownNumber);
            this.f52749h = (TextView) itemView.findViewById(R.id.cardAppSize);
            this.f52750i = (TextView) itemView.findViewById(R.id.cardDownNumberText);
            this.f52751j = (TextView) itemView.findViewById(R.id.cardInfo);
            this.f52752k = (TextView) itemView.findViewById(R.id.moneyText);
            this.f52754m = (Button) itemView.findViewById(R.id.cardDownButn);
            this.f52753l = (TextView) itemView.findViewById(R.id.textView69);
        }
    }

    public class l extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private RelativeLayout f52756d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SimpleDraweeView f52757e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ImageView f52758f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f52759g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f52760h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f52761i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TextView f52762j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private TextView f52763k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public View f52764l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public TextView f52765m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public VipView f52766n;

        public l(View view) {
            super(view);
            this.f52756d = (RelativeLayout) view.findViewById(R.id.main);
            this.f52757e = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f52758f = (ImageView) view.findViewById(R.id.parise);
            this.f52759g = (TextView) view.findViewById(R.id.username);
            this.f52760h = (TextView) view.findViewById(R.id.time);
            this.f52761i = (TextView) view.findViewById(R.id.content);
            this.f52762j = (TextView) view.findViewById(R.id.pariseNumber);
            this.f52763k = (TextView) view.findViewById(R.id.levelTv);
            this.f52766n = (VipView) view.findViewById(R.id.levelVip);
            this.f52764l = view.findViewById(R.id.line);
            this.f52765m = (TextView) view.findViewById(R.id.more);
        }
    }

    class m extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f52768d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f52769e;

        public m(View itemView) {
            super(itemView);
            this.f52768d = (TextView) itemView.findViewById(R.id.comment_number);
            this.f52769e = (TextView) itemView.findViewById(R.id.more);
        }
    }

    public class n extends RecyclerView.Adapter {

        class a {

            /* JADX INFO: renamed from: com.join.mgps.activity.GameInformationActivityV2$n$a$a, reason: collision with other inner class name */
            class RunnableC0668a implements Runnable {
                RunnableC0668a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    GameInformationCommentActivity_.intent(GameInformationActivityV2.this.context).b(GameInformationActivityV2.this.info_id).start();
                }
            }

            class b implements Runnable {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ String f52774b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ String f52775c;

                b(final String val$videoUrl, final String val$imageUrl) {
                    this.f52774b = val$videoUrl;
                    this.f52775c = val$imageUrl;
                }

                @Override // java.lang.Runnable
                public void run() {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.H(this.f52774b);
                    videoInfo.C(this.f52775c);
                    FullScreenActivity_.intent(GameInformationActivityV2.this.context).a(videoInfo).start();
                }
            }

            class c implements Runnable {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ String f52777b;

                c(final String val$json) {
                    this.f52777b = val$json;
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IntentUtil.getInstance().intentActivity(GameInformationActivityV2.this, (IntentDateBean) JsonMapper.getInstance().fromJson(this.f52777b, IntentDateBean.class));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            a() {
            }

            @JavascriptInterface
            public void intentCommentList() {
                GameInformationActivityV2.this.mHandler.post(new RunnableC0668a());
            }

            @JavascriptInterface
            public void playVideo(final String videoUrl, final String imageUrl) {
                GameInformationActivityV2.this.mHandler.post(new b(videoUrl, imageUrl));
            }

            @JavascriptInterface
            public void startIntent(final String json) {
                GameInformationActivityV2.this.mHandler.post(new c(json));
            }
        }

        class b extends WebViewClient {
            b() {
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                int primaryError = error.getPrimaryError();
                if (primaryError == 3 || primaryError == 5) {
                    handler.proceed();
                }
                handler.cancel();
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                return false;
            }
        }

        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                GameInformationCommentActivity_.intent(GameInformationActivityV2.this.context).b(GameInformationActivityV2.this.info_id).start();
            }
        }

        class d implements View.OnClickListener {
            d() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                new IntentDateBean();
                IntentUtil intentUtil = IntentUtil.getInstance();
                GameInformationActivityV2 gameInformationActivityV2 = GameInformationActivityV2.this;
                intentUtil.goGameDetialActivity(gameInformationActivityV2, gameInformationActivityV2.detailResultBean.getCrc_sign_id(), GameInformationActivityV2.this.pageExtBean);
            }
        }

        class e implements View.OnClickListener {
            e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                IntentUtil intentUtil = IntentUtil.getInstance();
                GameInformationActivityV2 gameInformationActivityV2 = GameInformationActivityV2.this;
                intentUtil.goGameDetialActivity(gameInformationActivityV2, gameInformationActivityV2.detailResultBean.getCrc_sign_id(), GameInformationActivityV2.this.pageExtBean);
            }
        }

        class f implements View.OnClickListener {
            f() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                GameInformationActivityV2.this.cardDownButn();
            }
        }

        class g implements View.OnClickListener {
            g() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (IntentUtil.getInstance().goLoginInteractive(GameInformationActivityV2.this.context)) {
                    return;
                }
                GameInformationCommentActivity_.intent(GameInformationActivityV2.this.context).b(GameInformationActivityV2.this.info_id).start();
            }
        }

        public n() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GameInformationActivityV2.this.showDatas.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return GameInformationActivityV2.this.showDatas.get(position).f52786b.vaule();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int position) {
            int itemViewType = getItemViewType(position);
            if (itemViewType == GType.webview.vaule()) {
                GameInformationActivityV2 gameInformationActivityV2 = GameInformationActivityV2.this;
                WebView webView = gameInformationActivityV2.webView;
                if (webView != null) {
                    webView.getHeight();
                    return;
                }
                WebView webView2 = ((t) viewHolder).f52800d;
                gameInformationActivityV2.webView = webView2;
                webView2.getLayoutParams();
                GameInformationActivityV2.this.webView.setBackgroundColor(-1);
                GameInformationActivityV2.this.webView.getSettings().setJavaScriptEnabled(true);
                GameInformationActivityV2.this.webView.setWebChromeClient(new WebChromeClient());
                GameInformationActivityV2.this.webView.addJavascriptInterface(new a(), "papa");
                GameInformationActivityV2 gameInformationActivityV3 = GameInformationActivityV2.this;
                gameInformationActivityV3.webView.loadDataWithBaseURL("about:blank", gameInformationActivityV3.gameInformationBean.getContent(), ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
                UtilsMy.T3(GameInformationActivityV2.this.webView);
                GameInformationActivityV2.this.webView.setWebViewClient(new b());
                GameInformationActivityV2.this.webView.setBackgroundColor(-1);
                return;
            }
            if (itemViewType == GType.TITLE.vaule()) {
                GameInformationActivityV2.this.getCommentTitle(position, (s) viewHolder);
                return;
            }
            if (itemViewType == GType.commentTitle.vaule()) {
                m mVar = (m) viewHolder;
                mVar.f52768d.setText(GameInformationActivityV2.this.comment_count + "条");
                mVar.f52769e.setOnClickListener(new c());
                return;
            }
            if (itemViewType == GType.card.vaule()) {
                k kVar = (k) viewHolder;
                GameInformationActivityV2 gameInformationActivityV4 = GameInformationActivityV2.this;
                gameInformationActivityV4.cardDownButn = kVar.f52754m;
                gameInformationActivityV4.updateButnCard();
                kVar.f52747f.setText(GameInformationActivityV2.this.detailResultBean.getGame_name());
                com.join.android.app.common.utils.l.h(kVar.f52746e, GameInformationActivityV2.this.detailResultBean.getIco_remote());
                UtilsMy.B3(GameInformationActivityV2.this.detailResultBean.getSp_tag_info(), kVar.f52752k);
                kVar.f52746e.setOnClickListener(new d());
                kVar.f52753l.setOnClickListener(new e());
                GameInformationActivityV2.this.cardDownButn.setOnClickListener(new f());
                kVar.f52750i.setText(com.join.mgps.Util.t2.b(GameInformationActivityV2.this.detailResultBean.getDown_count()) + "热度");
                kVar.f52749h.setText(net.lingala.zip4j.util.e.F0 + GameInformationActivityV2.this.detailResultBean.getSize() + "M");
                kVar.f52751j.setText(GameInformationActivityV2.this.detailResultBean.getInfo());
                return;
            }
            if (itemViewType == GType.COMMENT.vaule()) {
                GameInformationActivityV2.this.getCommentView(position, (l) viewHolder);
                return;
            }
            if (itemViewType == GType.REPLY.vaule()) {
                GameInformationActivityV2.this.getReplyView(position, (q) viewHolder);
                return;
            }
            if (itemViewType == GType.webtitle.vaule()) {
                u uVar = (u) viewHolder;
                uVar.f52804f.setText(GameInformationActivityV2.this.gameInformationBean.getTitle());
                uVar.f52803e.setText("作者:" + GameInformationActivityV2.this.gameInformationBean.getAuthor());
                uVar.f52802d.setText(GameInformationActivityV2.this.gameInformationBean.getRelease_time());
                return;
            }
            if (itemViewType == GType.sendcomment.vaule()) {
                r rVar = (r) viewHolder;
                GameInformationActivityV2.this.usericonMe = rVar.f52795d;
                rVar.f52795d.setImageResource(R.drawable.unloginstatus);
                if (GameInformationActivityV2.this.accountBean != null) {
                    UtilsMy.J3(GameInformationActivityV2.this.context, GameInformationActivityV2.this.accountBean.getAvatarSrc(), rVar.f52795d);
                }
                rVar.f52796e.setOnClickListener(new g());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            if (i10 == GType.webview.vaule()) {
                WebView webView = new WebView(viewGroup.getContext());
                webView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                return GameInformationActivityV2.this.new t(webView);
            }
            if (i10 == GType.TITLE.vaule()) {
                return GameInformationActivityV2.this.new s(LayoutInflater.from(GameInformationActivityV2.this.mContext).inflate(R.layout.gameinformation_comment_item_title, viewGroup, false));
            }
            if (i10 == GType.commentTitle.vaule()) {
                return GameInformationActivityV2.this.new m(LayoutInflater.from(GameInformationActivityV2.this.context).inflate(R.layout.game_information_comment_top, viewGroup, false));
            }
            if (i10 == GType.card.vaule()) {
                return GameInformationActivityV2.this.new k(LayoutInflater.from(GameInformationActivityV2.this.context).inflate(R.layout.gameinformation_cardlayout, viewGroup, false));
            }
            if (i10 == GType.COMMENT.vaule()) {
                return GameInformationActivityV2.this.new l(LayoutInflater.from(GameInformationActivityV2.this.mContext).inflate(R.layout.gameinformation_commit_item_layout, viewGroup, false));
            }
            if (i10 == GType.REPLY.vaule()) {
                return GameInformationActivityV2.this.new q(LayoutInflater.from(GameInformationActivityV2.this.mContext).inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, viewGroup, false));
            }
            if (i10 == GType.webtitle.vaule()) {
                return GameInformationActivityV2.this.new u(LayoutInflater.from(GameInformationActivityV2.this.mContext).inflate(R.layout.gameinformation_webtitle, viewGroup, false));
            }
            if (i10 != GType.sendcomment.vaule()) {
                return null;
            }
            return GameInformationActivityV2.this.new r(LayoutInflater.from(GameInformationActivityV2.this.mContext).inflate(R.layout.game_information_edit_message, viewGroup, false));
        }
    }

    public interface p {
        void a(InformationCommentBeanV2 sub);

        void b(InformationCommentBeanV2 bean);

        void c(InformationCommentBeanV2 bean);

        void d();
    }

    public class q extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public LinearLayout f52788d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f52789e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f52790f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f52791g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public View f52792h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public View f52793i;

        public q(View convertView) {
            super(convertView);
            this.f52788d = (LinearLayout) convertView.findViewById(R.id.comment_reply_container);
            this.f52789e = convertView.findViewById(R.id.comment_reply_divider);
            this.f52790f = (TextView) convertView.findViewById(R.id.comment_reply_content);
            this.f52791g = (TextView) convertView.findViewById(R.id.comment_reply_more);
            this.f52792h = convertView.findViewById(R.id.line);
            this.f52793i = convertView.findViewById(R.id.bottom);
        }
    }

    public class r extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private SimpleDraweeView f52795d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f52796e;

        public r(View itemView) {
            super(itemView);
            this.f52795d = (SimpleDraweeView) itemView.findViewById(R.id.usericonMe);
            this.f52796e = (TextView) itemView.findViewById(R.id.message);
        }
    }

    public class s extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f52798d;

        public s(View itemView) {
            super(itemView);
            this.f52798d = (TextView) itemView.findViewById(R.id.title);
        }
    }

    class t extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        WebView f52800d;

        public t(View itemView) {
            super(itemView);
            this.f52800d = (WebView) itemView;
        }
    }

    public class u extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f52802d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f52803e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f52804f;

        public u(View itemView) {
            super(itemView);
            this.f52802d = (TextView) itemView.findViewById(R.id.contentTime);
            this.f52803e = (TextView) itemView.findViewById(R.id.contentName);
            this.f52804f = (TextView) itemView.findViewById(R.id.content_title);
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void dialogDismiss() {
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    private void finishM() {
        Activity splashActivity = IntentUtil.getInstance().getSplashActivity();
        if (splashActivity != null) {
            splashActivity.finish();
            IntentUtil.getInstance().setSplashActivity(null);
            Intent intent = new Intent();
            intent.setClass(splashActivity, MGMainActivity_.class);
            intent.setFlags(67108864);
            intent.addFlags(C.ENCODING_PCM_A_LAW);
            startActivity(intent);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getReplyView(int position, q holder) {
        try {
            GameCommentAdapterV2.l.b bVar = (GameCommentAdapterV2.l.b) this.showDatas.get(position).f52785a;
            if (bVar == null || bVar.f60625b == null) {
                return;
            }
            if (bVar.f60627d) {
                holder.f52789e.setVisibility(0);
            } else {
                holder.f52789e.setVisibility(8);
            }
            if (bVar.f60630g) {
                holder.f52792h.setVisibility(8);
                holder.f52793i.setVisibility(8);
            } else {
                holder.f52792h.setVisibility(0);
                holder.f52793i.setVisibility(0);
            }
            List<InformationCommentBeanV2> replyList = bVar.f60625b.getReplyList();
            if (replyList == null || replyList.size() == 0) {
                holder.f52788d.removeAllViews();
            } else {
                processCommentReply(holder.f52788d, bVar, true, position);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    private void processCommentReply(final View parent, final GameCommentAdapterV2.l.b commentMessageReply, boolean hideMore, final int position) {
        View view;
        int i10;
        boolean z10;
        int i11;
        String str = commentMessageReply.f60624a;
        int i12 = commentMessageReply.f60628e;
        boolean z11 = commentMessageReply.f60629f;
        InformationCommentBeanV2 informationCommentBeanV2 = commentMessageReply.f60625b;
        List<InformationCommentBeanV2> replyList = informationCommentBeanV2.getReplyList();
        LinearLayout linearLayout = (LinearLayout) parent;
        linearLayout.removeAllViews();
        int size = replyList.size();
        int i13 = 0;
        while (i13 < size + 1) {
            if (i13 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) viewInflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.comment_reply_more);
                TextView textView3 = (TextView) viewInflate.findViewById(R.id.tvReplyName);
                if ((i13 != size || size <= 3) && !(i12 > 0 && z11 && i13 == size)) {
                    view = viewInflate;
                    i10 = i12;
                    z10 = z11;
                    i11 = i13;
                    if (i11 == 3 && hideMore && size > 3) {
                        textView.setVisibility(8);
                        textView3.setVisibility(8);
                        textView2.setVisibility(0);
                        textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - 3)));
                        view.setOnClickListener(new h(size, informationCommentBeanV2, str, commentMessageReply, position));
                    } else {
                        size = size;
                        if (i11 < size && (i11 < 3 || !hideMore)) {
                            textView.setVisibility(0);
                            textView3.setVisibility(0);
                            textView2.setVisibility(8);
                            InformationCommentBeanV2 informationCommentBeanV3 = replyList.get(i11);
                            String msg = informationCommentBeanV3.getMsg();
                            informationCommentBeanV3.getCommentId();
                            try {
                                textView.setText(Html.fromHtml(msg));
                                textView3.setText(informationCommentBeanV3.getNickname() + ":");
                                setOnCommentReplyReply(view, informationCommentBeanV3);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            linearLayout.addView(view);
                        }
                    }
                } else {
                    textView.setVisibility(8);
                    textView3.setVisibility(8);
                    textView2.setVisibility(0);
                    textView2.setText("收起");
                    int i14 = i12;
                    view = viewInflate;
                    i10 = i12;
                    i11 = i13;
                    z10 = z11;
                    view.setOnClickListener(new g(i14, position, str, commentMessageReply));
                }
                linearLayout.addView(view);
            } else {
                i10 = i12;
                z10 = z11;
                i11 = i13;
                size = size;
            }
            i13 = i11 + 1;
            size = size;
            i12 = i10;
            z11 = z10;
        }
    }

    private void setOnCommentReplyReply(View view, final InformationCommentBeanV2 sub) {
        view.setOnClickListener(new e(sub));
    }

    private void setOnPraiseListener(View view, final InformationCommentBeanV2 commitDataBean) {
        view.setOnClickListener(new d(commitDataBean));
    }

    private void setOnReplyListener(View view, final InformationCommentBeanV2 commitDataBean) {
        view.setOnClickListener(new f(commitDataBean));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0047  */
    /* JADX WARN: Code duplicated, block: B:16:0x0059  */
    private void updateButn() {
        if (this.detailResultBean == null) {
            return;
        }
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        DownloadTask downloadTask2 = this.downloadTask;
        if (downloadTask2 != null) {
            if (downloadTask2.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                this.downloadImage.setBackgroundResource(R.drawable.download_blue_butn);
                this.downloadImage.setText("打开");
            } else if (UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
        } else if (UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0 && status != 43) {
            if (status == 48) {
                this.downloadImage.setBackgroundResource(R.drawable.download_blue_butn);
                this.downloadImage.setText("安装中");
                return;
            }
            if (status == 2) {
                this.downloadImage.setBackgroundResource(R.drawable.download_blue_butn);
                this.downloadImage.setText("暂停");
                return;
            }
            if (status != 3) {
                if (status == 5) {
                    this.downloadImage.setBackgroundResource(R.drawable.download_maincolor_butn);
                    Button button = this.downloadImage;
                    button.setText(button.getResources().getString(R.string.download_status_finished));
                    return;
                }
                if (status != 6) {
                    if (status != 7) {
                        switch (status) {
                            case 9:
                                this.downloadImage.setBackgroundResource(R.drawable.download_green_butn);
                                this.downloadImage.setText("更新");
                                break;
                            case 10:
                                this.downloadImage.setBackgroundResource(R.drawable.download_blue_butn);
                                this.downloadImage.setText("等待");
                                break;
                            case 11:
                                this.downloadImage.setBackgroundResource(R.drawable.download_green_butn);
                                this.downloadImage.setText("安装");
                                break;
                            case 12:
                                this.downloadImage.setBackgroundResource(R.drawable.download_grey_butn);
                                this.downloadImage.setText("解压中");
                                break;
                            case 13:
                                this.downloadImage.setBackgroundResource(R.drawable.download_blue_butn);
                                this.downloadImage.setText("解压");
                                break;
                        }
                        return;
                    }
                }
            }
            this.downloadImage.setBackgroundResource(R.drawable.download_blue_butn);
            this.downloadImage.setText("继续");
            return;
        }
        this.downloadImage.setBackgroundResource(R.drawable.download_blue_butn);
        DetailResultBean detailResultBean = this.detailResultBean;
        if (detailResultBean != null) {
            if (UtilsMy.x0(detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
                this.downloadImage.setText(this.context.getResources().getString(R.string.pay_game_amount, this.detailResultBean.getPay_tag_info().getPayGameAmount()));
            } else {
                this.downloadImage.setText(this.context.getResources().getString(R.string.download_status_download));
            }
            UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
            UtilsMy.K3(this.downloadImage, this.detailResultBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:14:0x0047  */
    public void updateButnCard() {
        DetailResultBean detailResultBean;
        if (this.cardDownButn == null) {
            return;
        }
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        DownloadTask downloadTask2 = this.downloadTask;
        if (downloadTask2 != null) {
            if (downloadTask2.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                this.downloadImage.setBackgroundResource(R.drawable.download_blue_butn);
                this.downloadImage.setText("打开");
            } else {
                detailResultBean = this.detailResultBean;
                if (detailResultBean != null && UtilsMy.x0(detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
                    status = 43;
                }
            }
        } else {
            detailResultBean = this.detailResultBean;
            if (detailResultBean != null) {
                status = 43;
            }
        }
        if (status != 0 && status != 43) {
            if (status == 48) {
                this.cardDownButn.setBackgroundResource(R.drawable.download_blue_butn);
                this.cardDownButn.setText("安装中");
                return;
            }
            if (status == 2) {
                this.cardDownButn.setBackgroundResource(R.drawable.download_blue_butn);
                this.cardDownButn.setText("暂停");
                return;
            }
            if (status != 3) {
                if (status == 5) {
                    this.cardDownButn.setBackgroundResource(R.drawable.download_maincolor_butn);
                    this.cardDownButn.setText(getResources().getString(R.string.download_status_finished));
                    return;
                }
                if (status != 6) {
                    if (status != 7) {
                        switch (status) {
                            case 9:
                                this.cardDownButn.setBackgroundResource(R.drawable.download_green_butn);
                                this.cardDownButn.setText("更新");
                                break;
                            case 10:
                                this.cardDownButn.setBackgroundResource(R.drawable.download_blue_butn);
                                this.cardDownButn.setText("等待");
                                break;
                            case 11:
                                this.cardDownButn.setBackgroundResource(R.drawable.download_green_butn);
                                this.cardDownButn.setText("安装");
                                break;
                            case 12:
                                this.cardDownButn.setBackgroundResource(R.drawable.download_grey_butn);
                                this.cardDownButn.setText("解压中");
                                break;
                            case 13:
                                this.cardDownButn.setBackgroundResource(R.drawable.download_blue_butn);
                                this.cardDownButn.setText("解压");
                                break;
                        }
                        return;
                    }
                }
            }
            this.cardDownButn.setBackgroundResource(R.drawable.download_blue_butn);
            this.cardDownButn.setText("继续");
            return;
        }
        this.cardDownButn.setBackgroundResource(R.drawable.download_blue_butn);
        DetailResultBean detailResultBean2 = this.detailResultBean;
        if (detailResultBean2 != null) {
            if (!needPayGame(detailResultBean2) || t6.e0.o().p(this.detailResultBean.getCrc_sign_id())) {
                this.cardDownButn.setText(this.context.getResources().getString(R.string.download_status_download));
            } else {
                this.cardDownButn.setText(this.context.getResources().getString(R.string.pay_game_amount, this.detailResultBean.getPay_tag_info().getPayGameAmount()));
            }
            UtilsMy.K3(this.cardDownButn, this.detailResultBean);
        }
    }

    private void updatePraise(InformationCommentBeanV2 bean) {
        GameInformationBean gameInformationBean = this.gameInformationBean;
        if (gameInformationBean != null && gameInformationBean.getComment_switch() == 1) {
            getCommentInfo(this.info_id);
        }
        if (this.commitDataBeanList == null || bean == null) {
            return;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < this.commitDataBeanList.size(); i10++) {
            InformationCommentBeanV2 informationCommentBeanV2 = this.commitDataBeanList.get(i10);
            if (bean.getId().equals(informationCommentBeanV2.getId())) {
                if (bean.getPraise() != informationCommentBeanV2.getPraise()) {
                    informationCommentBeanV2.setPraise(bean.getPraise());
                    z10 |= true;
                }
                if (bean.getLike() != informationCommentBeanV2.getLike()) {
                    informationCommentBeanV2.setLike(bean.getLike());
                    z10 |= true;
                }
                if (z10) {
                    break;
                }
            }
        }
        if (z10) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.commitDataBeanList);
            showCommentList(arrayList);
        }
    }

    void addViewItem(List<InformationCommentBeanV2> list) {
        Iterator<o> it2 = this.showDatas.iterator();
        while (it2.hasNext()) {
            GType gType = it2.next().f52786b;
            if (gType == GType.COMMENT || gType == GType.REPLY || gType == GType.TITLE) {
                it2.remove();
            }
        }
        for (int i10 = 0; list != null && i10 < list.size(); i10++) {
            InformationCommentBeanV2 informationCommentBeanV2 = list.get(i10);
            this.showDatas.add(new o(GType.COMMENT, new GameCommentAdapterV2.l.a(informationCommentBeanV2)));
            List<InformationCommentBeanV2> replyList = informationCommentBeanV2.getReplyList();
            if (replyList != null && replyList.size() > 0) {
                this.showDatas.add(new o(GType.REPLY, new GameCommentAdapterV2.l.b(informationCommentBeanV2.getCommentId(), informationCommentBeanV2, 0, true)));
            }
        }
    }

    @AfterViews
    void afterview() {
        this.pageExtBean.setParent(this.extBean);
        this.pageExtBean.buildScene();
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.gameInformationdapter = new n();
        com.join.mgps.Util.j0.a().d(this);
        this.context = this;
        this.mContext = this;
        this.titleText.setText("详情");
        getDownloadTaskInfo();
        this.downloadView.setVisibility(0);
        showLoding();
        this.recyclerView.setLayoutManager(new LinearLayoutManager(this.context));
        this.recyclerView.setAdapter(this.gameInformationdapter);
        this.mListenr = new b();
        getGameInfo();
    }

    @Click
    void applayout() {
        if (this.detailResultBean == null) {
            return;
        }
        IntentUtil.getInstance().goGameDetialActivity(this, this.detailResultBean.getCrc_sign_id(), this.pageExtBean);
    }

    @Click
    void backImage() {
        finishM();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void cardDownButn() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            if (this.detailResultBean.getMod_info() != null) {
                ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this.context).extra("gameDownloadDetail", this.detailResultBean.getMod_info().getMod_game_id())).extra("_from", this.detailResultBean.get_from())).extra("_from_type", this.detailResultBean.get_from_type())).a();
                return;
            } else {
                ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this.context).extra("gameDownloadDetail", this.detailResultBean.getCrc_sign_id())).extra("_from", this.detailResultBean.get_from())).extra("_from_type", this.detailResultBean.get_from_type())).a();
                return;
            }
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        DetailResultBean detailResultBean = this.detailResultBean;
        if (detailResultBean != null && UtilsMy.x0(detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 13) {
                com.php25.PDownload.d.l(this, this.downloadTask);
                return;
            }
            if (status != 43) {
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.k4(this.context, this.downloadTask);
                            return;
                        }
                        if (status != 6) {
                            if (status != 7) {
                                switch (status) {
                                    case 9:
                                        if (!com.join.android.app.common.utils.m.j(this.context)) {
                                            com.join.mgps.Util.a3.b(this.context).d("无网络连接");
                                            break;
                                        } else {
                                            int downloadType = this.downloadTask.getDownloadType();
                                            if (downloadType != 0 && downloadType != 1) {
                                                if (downloadType == 2) {
                                                    UtilsMy.R4(this.downloadTask);
                                                    break;
                                                }
                                            } else if (this.downloadTask.getCrc_link_type_val() != null && !this.downloadTask.getCrc_link_type_val().equals("")) {
                                                this.downloadTask.setExt1(this.info_id);
                                                UtilsMy.X2(this.context, this.downloadTask);
                                                break;
                                            }
                                        }
                                        break;
                                    case 11:
                                        UtilsMy.w4(this.downloadTask, this.context);
                                        break;
                                }
                                return;
                            }
                        }
                    }
                    com.php25.PDownload.d.c(this.downloadTask, this.context);
                    return;
                }
                com.php25.PDownload.d.i(this.downloadTask);
                return;
            }
        }
        this.downloadTask.setKeyword(Where.article.name());
        this.downloadTask.setExt1(this.info_id);
        DetailResultBean detailResultBean2 = this.detailResultBean;
        if (detailResultBean2 == null || UtilsMy.z0(detailResultBean2.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) <= 0) {
            UtilsMy.A1(this.downloadTask, this.detailResultBean);
            if (!UtilsMy.o1(this.context, this.downloadTask)) {
                if (this.detailResultBean.getDown_status() == 5) {
                    UtilsMy.l1(this.context, this.downloadTask);
                } else {
                    UtilsMy.U0(this.context, this.downloadTask, this.detailResultBean.getTp_down_url(), this.detailResultBean.getOther_down_switch(), this.detailResultBean.getCdn_down_switch());
                }
            }
        } else {
            UtilsMy.z4(this.context, this.detailResultBean.getCrc_sign_id());
        }
        com.papa.sim.statistic.t.l(this.context).B(this.info_id, AccountUtil_.getInstance_(this.context).getUid());
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.put(crc_link_type_val, task);
            }
            if (!this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.put(crc_link_type_val, task);
            }
        } else if (from != 3) {
            if (from != 5) {
                if (from != 6) {
                    if (from == 7) {
                        if (this.downloadedMap.containsKey(crc_link_type_val)) {
                            this.downloadedMap.remove(crc_link_type_val);
                        }
                        if (this.downloadingMap.containsKey(crc_link_type_val)) {
                            this.downloadingMap.remove(crc_link_type_val);
                        }
                    } else if (from == 10) {
                        if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                            this.downloadedMap.put(crc_link_type_val, task);
                        }
                        if (!this.downloadingMap.containsKey(crc_link_type_val)) {
                            this.downloadingMap.put(crc_link_type_val, task);
                        }
                    } else if (from == 11) {
                    }
                } else if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                }
            } else if (this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.remove(crc_link_type_val);
            }
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.remove(crc_link_type_val);
            }
        } else if (this.downloadingMap.containsKey(crc_link_type_val)) {
            this.downloadingMap.remove(crc_link_type_val);
        }
        updateDownloadView();
    }

    @Click
    void comment() {
        GameInformationCommentActivity_.intent(this.context).b(this.info_id).start();
    }

    o createCommentMessageReplyViewBean(String pid, InformationCommentBeanV2 bean, int myAuth, boolean showDivider) {
        return new o(GType.REPLY, new GameCommentAdapterV2.l.b(pid, bean, myAuth, showDivider));
    }

    @Click
    void downloadImage() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null || downloadTask.getStatus() == 0) {
            UtilsMy.c1(this.context, this.detailResultBean);
            return;
        }
        DownloadTask downloadTask2 = this.downloadTask;
        int status = downloadTask2 != null ? downloadTask2.getStatus() : 0;
        DetailResultBean detailResultBean = this.detailResultBean;
        if (detailResultBean != null && UtilsMy.x0(detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 13) {
                com.php25.PDownload.d.l(this, this.downloadTask);
                return;
            }
            if (status != 43) {
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.k4(this.context, this.downloadTask);
                            return;
                        }
                        if (status != 6) {
                            if (status != 7) {
                                switch (status) {
                                    case 9:
                                        if (!com.join.android.app.common.utils.m.j(this.context)) {
                                            com.join.mgps.Util.a3.b(this.context).d("无网络连接");
                                            break;
                                        } else {
                                            int downloadType = this.downloadTask.getDownloadType();
                                            if (downloadType != 0 && downloadType != 1) {
                                                if (downloadType == 2) {
                                                    UtilsMy.R4(this.downloadTask);
                                                    break;
                                                }
                                            } else if (this.downloadTask.getCrc_link_type_val() != null && !this.downloadTask.getCrc_link_type_val().equals("")) {
                                                this.downloadTask.setExt1(this.info_id);
                                                UtilsMy.X2(this.context, this.downloadTask);
                                                break;
                                            }
                                        }
                                        break;
                                    case 11:
                                        UtilsMy.w4(this.downloadTask, this.context);
                                        break;
                                }
                                return;
                            }
                        }
                    }
                    com.php25.PDownload.d.c(this.downloadTask, this.context);
                    return;
                }
                com.php25.PDownload.d.i(this.downloadTask);
                return;
            }
        }
        this.downloadTask.setKeyword(Where.article.name());
        this.downloadTask.setExt1(this.info_id);
        DetailResultBean detailResultBean2 = this.detailResultBean;
        if (detailResultBean2 == null || UtilsMy.z0(detailResultBean2.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) <= 0) {
            UtilsMy.A1(this.downloadTask, this.detailResultBean);
            if (!UtilsMy.o1(this.context, this.downloadTask)) {
                if (this.detailResultBean.getDown_status() == 5) {
                    UtilsMy.l1(this.context, this.downloadTask);
                } else {
                    UtilsMy.U0(this.context, this.downloadTask, this.detailResultBean.getTp_down_url(), this.detailResultBean.getOther_down_switch(), this.detailResultBean.getCdn_down_switch());
                }
            }
        } else {
            UtilsMy.z4(this.context, this.detailResultBean.getCrc_sign_id());
        }
        com.papa.sim.statistic.t.l(this.context).B(this.info_id, AccountUtil_.getInstance_(this.context).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getCommentInfo(String informationId) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            noCoumment();
            return;
        }
        try {
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.context);
            GameInformationCommentRequestV2 gameInformationCommentRequestV2 = new GameInformationCommentRequestV2();
            gameInformationCommentRequestV2.setInformation_id(this.info_id);
            gameInformationCommentRequestV2.setUid(AccountUtil_.getInstance_(this.context).getUid());
            gameInformationCommentRequestV2.setToken(AccountUtil_.getInstance_(this.context).getToken());
            gameInformationCommentRequestV2.setPage(1);
            requestModel.setArgs(gameInformationCommentRequestV2);
            ResponseModel<InformationCommentBackV2> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().C0(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200) {
                noCoumment();
                return;
            }
            InformationCommentBackV2 data = responseModelBody.getData();
            if (data == null) {
                noCoumment();
                return;
            }
            List<InformationCommentBeanV2> comments = data.getComments();
            if (comments == null) {
                noCoumment();
            } else if (comments.size() > 0) {
                showCommentList(comments);
            } else {
                noCoumment();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            noCoumment();
        }
    }

    public void getCommentTitle(int position, s holder) {
        InformationCommentBeanV2 informationCommentBeanV2 = ((GameCommentAdapterV2.l.a) this.showDatas.get(position).f52785a).f60623a;
        holder.f52798d.setText("最新评论");
    }

    public void getCommentView(int position, l holder) {
        long j10;
        GameCommentAdapterV2.l.a aVar = (GameCommentAdapterV2.l.a) this.showDatas.get(position).f52785a;
        if (aVar == null) {
            return;
        }
        InformationCommentBeanV2 informationCommentBeanV2 = aVar.f60623a;
        if (informationCommentBeanV2.getReplyList() == null || informationCommentBeanV2.getReplyList().size() <= 0) {
            holder.f52764l.setVisibility(0);
        } else {
            holder.f52764l.setVisibility(8);
        }
        try {
            j10 = Long.parseLong(informationCommentBeanV2.getCreateTime());
        } catch (Exception unused) {
            j10 = 0;
        }
        holder.f52760h.setText(com.join.android.app.common.utils.i.a(j10));
        holder.f52761i.setText(informationCommentBeanV2.getMsg());
        holder.f52762j.setText(informationCommentBeanV2.getLike() + "");
        if (informationCommentBeanV2.getPraise().booleanValue()) {
            holder.f52758f.setImageResource(R.drawable.like);
        } else {
            holder.f52758f.setImageResource(R.drawable.unlike);
        }
        if (com.join.mgps.Util.t2.i(informationCommentBeanV2.getAvatar())) {
            UtilsMy.J3(this.mContext, informationCommentBeanV2.getAvatar(), holder.f52757e);
        }
        holder.f52759g.setText(Html.fromHtml(informationCommentBeanV2.getNickname()));
        setOnPraiseListener(holder.f52758f, informationCommentBeanV2);
        setOnReplyListener(holder.f52756d, informationCommentBeanV2);
        holder.f52757e.setOnClickListener(new i(informationCommentBeanV2));
        holder.f52761i.post(new j(holder));
        holder.f52765m.setOnClickListener(new a(holder));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.downloadedMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.downloadingMap.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGameInfo() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            return;
        }
        try {
            ResultMainBean<List<GameInformationBean>> resultMainBeanW = this.rpcClient.w(RequestBeanUtil.getInstance(this).getgameInformation(this.info_id, this.pageExtBean));
            if (resultMainBeanW == null || resultMainBeanW.getFlag() != 1) {
                showLodingFailed();
            } else {
                List<GameInformationBean> data = resultMainBeanW.getMessages().getData();
                if (data.size() > 0) {
                    showMain(data.get(0));
                } else {
                    showLodingFailed();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    public p getmListenr() {
        return this.mListenr;
    }

    @Click
    void layout_share() {
        if (this.gameInformationBean != null && System.currentTimeMillis() - this.lastClick > 2000) {
            this.lastClick = System.currentTimeMillis();
            ShareBean shareBean = new ShareBean();
            shareBean.setTitle(this.gameInformationBean.getTitle());
            shareBean.setText("点击查看详情");
            shareBean.setImageUrl(this.gameInformationBean.getShow_pic());
            shareBean.setQqUrl(this.gameInformationBean.getShare_url());
            shareBean.setqZoneShareUrl(this.gameInformationBean.getShare_url());
            shareBean.setWeiboShareUrl(this.gameInformationBean.getShare_url());
            shareBean.setWechatFriendUrl(this.gameInformationBean.getShare_url());
            shareBean.setWechatShareUrl(this.gameInformationBean.getShare_url());
            shareBean.setFrom(3);
            shareBean.setGameId(this.info_id);
            com.join.mgps.Util.w.r(this, shareBean);
        }
    }

    boolean needPayGame(DetailResultBean bean) {
        return (bean == null || bean.getPay_tag_info() == null || bean.getPay_tag_info().getPay_game_amount() <= 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void noCoumment() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finishM();
        super.onBackPressed();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        changeDownloadTaskNumber(this.downloadTask, downloadTaskEvent.c());
        if (downloadTaskA != null && this.downloadTask != null && downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
            this.downloadTask = downloadTaskA;
            downloadTaskA.setStatus(downloadTaskA.getStatus());
            this.downloadTask.setPath(downloadTaskA.getPath());
            this.downloadTask.setSize(downloadTaskA.getSize());
        }
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.h2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57258b.lambda$onEventMainThread$0();
            }
        });
        int iC = downloadTaskEvent.c();
        if ((iC == 5 || iC == 11 || iC == 48) && downloadTaskA != null && this.downloadTask != null && downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
            this.downloadTask = downloadTaskA;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onEventMainThread: ");
        sb2.append(this.downloadTask.getStatus());
        updateButn();
        updateButnCard();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        WebView webView = this.webView;
        if (webView != null) {
            try {
                webView.getClass().getMethod("onPause", new Class[0]).invoke(this.webView, null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        super.onPause();
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void onPayGameSuccess(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        updateButn();
        updateButnCard();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        boolean z10;
        super.onResume();
        GameInformationBean gameInformationBean = this.gameInformationBean;
        if (gameInformationBean != null && gameInformationBean.getComment_switch() == 1) {
            getCommentInfo(this.info_id);
        }
        updateDownloadView();
        WebView webView = this.webView;
        DownloadTask downloadTaskG = null;
        if (webView != null) {
            try {
                webView.getClass().getMethod("onResume", new Class[0]).invoke(this.webView, null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null && this.usericonMe != null) {
            UtilsMy.J3(this.context, accountData.getAvatarSrc(), this.usericonMe);
        }
        if (com.join.mgps.Util.t2.h(this.gameId)) {
            return;
        }
        DetailResultBean detailResultBean = this.detailResultBean;
        if (detailResultBean != null) {
            List<DownloadTask> listH = detailResultBean.getMod_info() != null ? q5.f.M().H(this.detailResultBean.getMod_info().getMod_game_id(), this.detailResultBean.getMod_info().getMain_game_id()) : q5.f.M().I(this.detailResultBean.getPackage_name());
            if (listH != null && listH.size() > 0) {
                boolean z11 = false;
                loop0: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask : listH) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.g.t0(this).e(this, downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop0;
                }
                if (z11 && z10) {
                    downloadTaskG = q5.f.M().G(this.gameId);
                } else if (z11) {
                    if (this.detailResultBean.getMod_info() != null) {
                        downloadTaskG = q5.f.M().G(this.detailResultBean.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    downloadTaskG = q5.f.M().G(this.gameId);
                } else {
                    downloadTaskG = this.detailResultBean.getMod_info() != null ? q5.f.M().G(this.detailResultBean.getMod_info().getMod_game_id()) : null;
                    if (downloadTaskG == null) {
                        downloadTaskG = q5.f.M().G(this.gameId);
                    }
                }
            }
        }
        if (downloadTaskG != null) {
            this.downloadTask = downloadTaskG;
        }
        if (downloadTaskG == null || this.downloadTask == null) {
            if (downloadTaskG == null && this.downloadTask != null && Dtype.android.name().equals(this.downloadTask.getFileType()) && this.downloadTask.getStatus() == 5 && this.detailResultBean.getMod_info() == null) {
                if (Boolean.valueOf(com.join.android.app.common.utils.g.t0(this).e(this, this.downloadTask.getPackageName())).booleanValue()) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this).n(this, this.downloadTask.getPackageName());
                    if (!com.join.mgps.Util.t2.i(this.downloadTask.getVer()) || aVarN.d() >= Integer.parseInt(this.downloadTask.getVer())) {
                        this.downloadTask.setStatus(5);
                    } else {
                        this.downloadTask.setStatus(9);
                    }
                } else {
                    this.downloadTask.setStatus(0);
                }
            }
        } else if (!Dtype.android.name().equals(this.downloadTask.getFileType()) || this.downloadTask.getStatus() != 5) {
            this.downloadTask.setStatus(downloadTaskG.getStatus());
        } else if (this.detailResultBean.getMod_info() == null) {
            if (Boolean.valueOf(com.join.android.app.common.utils.g.t0(this).e(this, this.downloadTask.getPackageName())).booleanValue()) {
                APKUtils.a aVarN2 = com.join.android.app.common.utils.g.t0(this).n(this, this.downloadTask.getPackageName());
                if (!com.join.mgps.Util.t2.i(this.downloadTask.getVer()) || aVarN2.d() >= Integer.parseInt(this.downloadTask.getVer())) {
                    this.downloadTask.setStatus(5);
                } else {
                    this.downloadTask.setStatus(9);
                }
            } else {
                this.downloadTask.setStatus(11);
            }
        }
        updateButn();
        updateButnCard();
    }

    @Click
    void relodingimag() {
        showLoding();
        getGameInfo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendParesed(InformationCommentBeanV2 bean, ImageView parise, TextView parseNUmber) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("没有网络");
            bean.setPraise(Boolean.FALSE);
            updatePraise(bean);
            return;
        }
        try {
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                return;
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this);
            GameInformationCommentPraiseArgs gameInformationCommentPraiseArgs = new GameInformationCommentPraiseArgs();
            gameInformationCommentPraiseArgs.setCommentId(bean.getId());
            gameInformationCommentPraiseArgs.setUid(this.accountBean.getUid() + "");
            gameInformationCommentPraiseArgs.setUserToken(this.accountBean.getToken());
            requestModel.setArgs(gameInformationCommentPraiseArgs);
            ResponseModel responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().D(requestModel.makeSign()).execute().body();
            if (responseModelBody != null && responseModelBody.getCode() == 706) {
                showMessage("完善资料后就可点赞哦");
                IntentUtil.getInstance().goLoginInteractive(this);
                return;
            }
            if (responseModelBody != null && responseModelBody.getCode() == 706) {
                showMessage("完善资料后就可点赞哦");
                IntentUtil.getInstance().goLoginInteractive(this);
                return;
            }
            if (responseModelBody != null && responseModelBody.getCode() == 200) {
                Boolean bool = Boolean.TRUE;
                bean.setPraise(bool);
                bean.setLike(bean.getLike() + 1);
                bean.setPraise(bool);
                updatePraise(bean);
                return;
            }
            if (responseModelBody == null || responseModelBody.getMessage() == null) {
                showToast("点赞失败");
            } else {
                showToast(responseModelBody.getMessage());
            }
            bean.setPraise(Boolean.FALSE);
            updatePraise(bean);
        } catch (Exception e10) {
            e10.printStackTrace();
            showToast("点赞失败");
            bean.setPraise(Boolean.FALSE);
            updatePraise(bean);
        }
    }

    void setCommentMessageReplyBottomVisibility(o bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((GameCommentAdapterV2.l.b) bean.f52785a).f60630g = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setListenr(p mListenr) {
        this.mListenr = mListenr;
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void showComment() {
        LayoutInflater.from(this.context);
        this.showDatas.add(new o(GType.sendcomment));
        this.gameInformationdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void showCommentList(List<InformationCommentBeanV2> gameInformationBeans) {
        String json = JsonMapper.getInstance().toJson(gameInformationBeans);
        if (this.lastJson.equals(json)) {
            return;
        }
        this.lastJson = json;
        ArrayList arrayList = new ArrayList();
        this.commitDataBeanList = arrayList;
        arrayList.addAll(gameInformationBeans);
        addViewItem(gameInformationBeans);
        this.gameInformationdapter.notifyDataSetChanged();
        updateHight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
        this.bottom_lay.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.loding_faile.setVisibility(0);
        this.loding_layout.setVisibility(8);
        this.bottom_lay.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(GameInformationBean gameInformation) {
        boolean z10;
        this.shareImg.setVisibility(0);
        if (gameInformation.getComment_switch() == 1) {
            this.comment.setVisibility(0);
            int comment_count = gameInformation.getComment_count();
            this.comment_count = comment_count;
            if (comment_count > 0) {
                this.roundMessage.setVisibility(0);
            }
            this.roundMessage.setText(gameInformation.getComment_count() + "");
        } else {
            this.comment.setVisibility(8);
            this.roundMessage.setVisibility(8);
        }
        this.layout_share.setVisibility(0);
        this.gameInformationBean = gameInformation;
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.bottom_lay.setVisibility(0);
        List<DetailResultBean> game_info = gameInformation.getGame_info();
        this.showDatas.add(new o(GType.webview));
        if (game_info != null && game_info.size() != 0) {
            DetailResultBean detailResultBean = game_info.get(0);
            this.detailResultBean = detailResultBean;
            if (detailResultBean == null) {
                this.applayout.setVisibility(8);
            } else {
                this.applayout.setVisibility(0);
                this.showDatas.add(new o(GType.card));
                if (this.defaultDown) {
                    downloadImage();
                }
            }
        }
        if (gameInformation.getComment_switch() == 1) {
            showComment();
            this.showDatas.add(new o(GType.commentTitle));
            getCommentInfo(this.info_id);
        }
        if (game_info == null || game_info.size() == 0) {
            this.applayout.setVisibility(8);
            this.gameInformationdapter.notifyDataSetChanged();
            return;
        }
        DetailResultBean detailResultBean2 = game_info.get(0);
        this.detailResultBean = detailResultBean2;
        detailResultBean2.set_from(106);
        UtilsMy.B3(this.detailResultBean.getSp_tag_info(), this.moneyText2);
        String crc_sign_id = this.detailResultBean.getCrc_sign_id();
        this.gameId = crc_sign_id;
        if (crc_sign_id == null) {
            return;
        }
        List<DownloadTask> listH = this.detailResultBean.getMod_info() != null ? q5.f.M().H(this.detailResultBean.getMod_info().getMain_game_id(), this.detailResultBean.getMod_info().getMod_game_id()) : q5.f.M().I(this.detailResultBean.getPackage_name());
        if (listH != null && listH.size() > 0) {
            boolean z11 = false;
            loop0: while (true) {
                z10 = false;
                for (DownloadTask downloadTask : listH) {
                    if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                        z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                    } else if (com.join.android.app.common.utils.g.t0(this).e(this, downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                        z10 = true;
                    }
                }
                break loop0;
            }
            if (z11 && z10) {
                this.downloadTask = q5.f.M().G(this.gameId);
            } else if (z11) {
                this.downloadTask = q5.f.M().G(this.detailResultBean.getMod_info().getMod_game_id());
            } else if (z10) {
                this.downloadTask = q5.f.M().G(this.gameId);
            } else {
                if (this.detailResultBean.getMod_info() != null) {
                    this.downloadTask = q5.f.M().G(this.detailResultBean.getMod_info().getMod_game_id());
                }
                if (this.downloadTask == null) {
                    this.downloadTask = q5.f.M().G(this.gameId);
                }
            }
        }
        updateButn();
        com.join.android.app.common.utils.l.h(this.appIcon, this.detailResultBean.getIco_remote());
        this.appname.setText(this.detailResultBean.getGame_name());
        this.appsize.setText("大小：" + this.detailResultBean.getSize() + "M");
        if (this.detailResultBean == null) {
            this.applayout.setVisibility(8);
        } else {
            this.applayout.setVisibility(0);
            if (this.defaultDown) {
                downloadImage();
            }
        }
        this.bottom_lay.setOnClickListener(new c());
        this.gameInformationdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void updateHight() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateView(ImageView parise, TextView parseNUmber, boolean success, String number) {
        if (!success) {
            parise.setImageResource(R.drawable.unlike);
        } else {
            parise.setImageResource(R.drawable.like);
            parseNUmber.setText(number);
        }
    }

    class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f52785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        GType f52786b;

        public o(GType type) {
            this.f52786b = type;
        }

        public o(GType type, Object obj) {
            this.f52786b = type;
            this.f52785a = obj;
        }
    }
}
