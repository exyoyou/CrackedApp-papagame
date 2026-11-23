package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.http.SslError;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
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
import com.join.mgps.adapter.GameCommentAdapter;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.ObservableWebView;
import com.join.mgps.customview.SmartScrollView;
import com.join.mgps.customview.WrapContentListView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameInformationBean;
import com.join.mgps.dto.GameInformationCommentRequest;
import com.join.mgps.dto.InformationCommentBack;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.InformationCommentBeanV2;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.PariseRequest;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Where;
import com.wufan.user.service.protobuf.UserInfo;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
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
@EActivity(R.layout.game_information_layout)
public class GameInformationActivity extends BaseActivity {
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

    @ViewById
    TextView cardAppSize;

    @ViewById
    TextView cardAppname;

    @ViewById
    Button cardDownButn;

    @ViewById
    TextView cardDownNumberText;

    @ViewById
    SimpleDraweeView cardIcon;

    @ViewById
    TextView cardInfo;

    @ViewById
    ImageView comment;
    private int comment_count;

    @ViewById
    TextView comment_number;
    private List<InformationCommentBean> commitDataBeanList;

    @ViewById
    TextView contentName;

    @ViewById
    TextView contentTime;

    @ViewById
    TextView content_title;
    private Context context;
    private List<GameCommentAdapter.l> dataSet;

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

    @ViewById
    RelativeLayout gameCardLayout;
    private GameCommentAdapter gameCommenAdapter;
    private GameInformationBean gameInformationBean;

    @ViewById
    LinearLayout game_information_comment_top;

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

    @ViewById
    LinearLayout main;

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
    private WrapContentListView noScrollListView;

    @ViewById
    RelativeLayout relativeLayout;

    @ViewById
    TextView roundMessage;
    com.join.mgps.rpc.e rpcClient;

    @ViewById
    SmartScrollView scrollView;

    @ViewById
    ImageView shareImg;

    @ViewById
    TextView textView69;

    @Extra
    String title;

    @ViewById
    TextView titleText;
    private SimpleDraweeView usericonMe;

    @ViewById
    ObservableWebView webView;
    private String gameId = "";
    private Handler mHandler = new Handler();
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    com.join.mgps.customview.t mDialog = null;

    class a implements SmartScrollView.a {
        a() {
        }

        @Override // com.join.mgps.customview.SmartScrollView.a
        public void a() {
            GameInformationActivity.this.updateHight();
        }

        @Override // com.join.mgps.customview.SmartScrollView.a
        public void b() {
        }
    }

    class b implements GameCommentAdapter.j {
        b() {
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void a(InformationCommentBean bean) {
            if (bean.isHasPraised()) {
                com.join.mgps.Util.a3.b(GameInformationActivity.this.context).d("你已赞过");
            } else {
                GameInformationActivity.this.sendParesed(bean, null, null);
            }
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void b(InformationCommentBean.Sub sub) {
            InformationCommentBeanV2 informationCommentBeanV2 = new InformationCommentBeanV2();
            informationCommentBeanV2.setCommentId(sub.getComment_id());
            informationCommentBeanV2.setUid(sub.getUser_id());
            informationCommentBeanV2.setNickname(sub.getUser_name());
            GameInformationCommentActivity_.intent(GameInformationActivity.this.context).b(GameInformationActivity.this.info_id).a(informationCommentBeanV2).start();
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void c(InformationCommentBean commitDataBean) {
            InformationCommentBeanV2 informationCommentBeanV2 = new InformationCommentBeanV2();
            informationCommentBeanV2.setCommentId(commitDataBean.getComment_id());
            informationCommentBeanV2.setUid(commitDataBean.getUser_id());
            informationCommentBeanV2.setNickname(commitDataBean.getUser_name());
            GameInformationCommentActivity_.intent(GameInformationActivity.this.context).b(GameInformationActivity.this.info_id).a(informationCommentBeanV2).start();
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void d() {
            GameInformationActivity.this.updateHight();
        }
    }

    class c {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                GameInformationCommentActivity_.intent(GameInformationActivity.this.context).b(GameInformationActivity.this.info_id).start();
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52708b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f52709c;

            b(final String val$videoUrl, final String val$imageUrl) {
                this.f52708b = val$videoUrl;
                this.f52709c = val$imageUrl;
            }

            @Override // java.lang.Runnable
            public void run() {
                FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                videoInfo.H(this.f52708b);
                videoInfo.C(this.f52709c);
                FullScreenActivity_.intent(GameInformationActivity.this.context).a(videoInfo).start();
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.activity.GameInformationActivity$c$c, reason: collision with other inner class name */
        class RunnableC0667c implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52711b;

            RunnableC0667c(final String val$json) {
                this.f52711b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentUtil.getInstance().intentActivity(GameInformationActivity.this, (IntentDateBean) JsonMapper.getInstance().fromJson(this.f52711b, IntentDateBean.class));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        c() {
        }

        @JavascriptInterface
        public void intentCommentList() {
            GameInformationActivity.this.mHandler.post(new a());
        }

        @JavascriptInterface
        public void playVideo(final String videoUrl, final String imageUrl) {
            GameInformationActivity.this.mHandler.post(new b(videoUrl, imageUrl));
        }

        @JavascriptInterface
        public void startIntent(final String json) {
            GameInformationActivity.this.mHandler.post(new RunnableC0667c(json));
        }
    }

    class d extends WebViewClient {
        d() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            GameInformationActivity.this.game_information_comment_top.setVisibility(0);
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

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            new IntentDateBean();
            IntentUtil intentUtil = IntentUtil.getInstance();
            GameInformationActivity gameInformationActivity = GameInformationActivity.this;
            intentUtil.goGameDetialActivity(gameInformationActivity, gameInformationActivity.detailResultBean.getCrc_sign_id(), GameInformationActivity.this.detailResultBean.getGame_info_tpl_type(), GameInformationActivity.this.detailResultBean.getSp_tpl_two_position(), 116);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            GameInformationActivity gameInformationActivity = GameInformationActivity.this;
            intentUtil.goGameDetialActivity(gameInformationActivity, gameInformationActivity.detailResultBean.getCrc_sign_id(), GameInformationActivity.this.detailResultBean.getGame_info_tpl_type(), GameInformationActivity.this.detailResultBean.getSp_tpl_two_position(), 116);
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            GameInformationActivity gameInformationActivity = GameInformationActivity.this;
            intentUtil.goGameDetialActivity(gameInformationActivity, gameInformationActivity.detailResultBean.getCrc_sign_id(), GameInformationActivity.this.detailResultBean.getGame_info_tpl_type(), GameInformationActivity.this.detailResultBean.getSp_tpl_two_position(), 116);
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            GameInformationCommentActivity_.intent(GameInformationActivity.this.context).b(GameInformationActivity.this.info_id).start();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (IntentUtil.getInstance().goLoginInteractive(GameInformationActivity.this.context)) {
                return;
            }
            GameInformationCommentActivity_.intent(GameInformationActivity.this.context).b(GameInformationActivity.this.info_id).start();
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
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    private void setListViewHeightByItem(ListView listView) {
        ListAdapter adapter;
        int measuredHeight;
        if (listView == null || (adapter = listView.getAdapter()) == null) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < adapter.getCount(); i12++) {
            View childAt = this.noScrollListView.getChildAt(i12);
            if (childAt != null) {
                measuredHeight = childAt.getHeight();
                if (measuredHeight > i11) {
                    i11 = measuredHeight;
                }
            } else {
                measuredHeight = 0;
            }
            if (measuredHeight == 0) {
                View view = adapter.getView(i12, null, listView);
                view.measure(0, 0);
                measuredHeight = view.getMeasuredHeight();
            }
            i10 += measuredHeight;
        }
        ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
        layoutParams.height = i10 + (listView.getDividerHeight() * (adapter.getCount() - 1));
        listView.setLayoutParams(layoutParams);
    }

    private void updateButn() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            this.downloadImage.setBackgroundResource(R.drawable.download_blue_butn);
            this.downloadImage.setText("打开");
        } else if (UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0 && status != 43) {
            if (status == 48) {
                this.downloadImage.setBackgroundResource(R.drawable.download_green_butn);
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
        this.downloadImage.setBackgroundResource(R.drawable.download_green_butn);
        if (UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            this.downloadImage.setText(this.context.getResources().getString(R.string.pay_game_amount, this.detailResultBean.getPay_tag_info().getPayGameAmount()));
        } else {
            this.downloadImage.setText(this.context.getResources().getString(R.string.download_status_download));
        }
        DetailResultBean detailResultBean = this.detailResultBean;
        if (detailResultBean != null) {
            UtilsMy.x0(detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
            UtilsMy.K3(this.downloadImage, this.detailResultBean);
        }
    }

    private void updateButnCard() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            this.downloadImage.setBackgroundResource(R.drawable.download_blue_butn);
            this.downloadImage.setText("打开");
        } else if (UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0 && status != 43) {
            if (status == 48) {
                this.cardDownButn.setBackgroundResource(R.drawable.download_green_butn);
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
                    Button button = this.cardDownButn;
                    button.setText(button.getResources().getString(R.string.download_status_finished));
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
        this.cardDownButn.setBackgroundResource(R.drawable.download_green_butn);
        if (!needPayGame(this.detailResultBean) || t6.e0.o().p(this.detailResultBean.getCrc_sign_id())) {
            this.cardDownButn.setText(this.context.getResources().getString(R.string.download_status_download));
        } else {
            this.cardDownButn.setText(this.context.getResources().getString(R.string.pay_game_amount, this.detailResultBean.getPay_tag_info().getPayGameAmount()));
        }
        DetailResultBean detailResultBean = this.detailResultBean;
        if (detailResultBean != null) {
            UtilsMy.x0(detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
            UtilsMy.K3(this.cardDownButn, this.detailResultBean);
        }
    }

    private void updatePraise(InformationCommentBean bean) {
        GameInformationBean gameInformationBean = this.gameInformationBean;
        if (gameInformationBean != null && gameInformationBean.getComment_switch() == 1) {
            getCommentInfo(this.info_id);
        }
        if (this.commitDataBeanList == null || bean == null) {
            return;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < this.commitDataBeanList.size(); i10++) {
            InformationCommentBean informationCommentBean = this.commitDataBeanList.get(i10);
            if (bean.getComment_id().equals(informationCommentBean.getComment_id())) {
                if (bean.isHasPraised() != informationCommentBean.isHasPraised()) {
                    informationCommentBean.setHasPraised(bean.isHasPraised());
                    z10 |= true;
                }
                if (!bean.getPraise_count().equals(informationCommentBean.getPraise_count())) {
                    informationCommentBean.setPraise_count(bean.getPraise_count());
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

    void addViewItem(List<InformationCommentBean> list) {
        for (int i10 = 0; list != null && i10 < list.size(); i10++) {
            InformationCommentBean informationCommentBean = list.get(i10);
            this.dataSet.add(new GameCommentAdapter.l(GameCommentAdapter.ViewType.COMMENT, new GameCommentAdapter.l.a(informationCommentBean)));
            List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
            if (sub != null && sub.size() > 0) {
                this.dataSet.add(new GameCommentAdapter.l(GameCommentAdapter.ViewType.REPLY, new GameCommentAdapter.l.b(informationCommentBean.getComment_id(), informationCommentBean, 0, true)));
            }
        }
    }

    @AfterViews
    void afterview() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
        this.context = this;
        this.titleText.setText("详情");
        getDownloadTaskInfo();
        this.downloadView.setVisibility(0);
        showLoding();
        this.game_information_comment_top.setVisibility(8);
        getGameInfo();
        this.scrollView.setScanScrollChangedListener(new a());
    }

    @Click
    void applayout() {
        if (this.detailResultBean == null) {
            return;
        }
        IntentUtil.getInstance().goGameDetialActivity(this, this.detailResultBean.getCrc_sign_id(), this.detailResultBean.getGame_info_tpl_type(), this.detailResultBean.getSp_tpl_two_position(), 116);
    }

    @Click
    void backImage() {
        finishM();
    }

    @Click
    void cardDownButn() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
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
                                            } else {
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
        if (UtilsMy.z0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            UtilsMy.z4(this.context, this.detailResultBean.getCrc_sign_id());
        } else {
            UtilsMy.A1(this.downloadTask, this.detailResultBean);
            if (!UtilsMy.o1(this.context, this.downloadTask)) {
                if (this.detailResultBean.getDown_status() == 5) {
                    UtilsMy.l1(this.context, this.downloadTask);
                } else {
                    UtilsMy.U0(this.context, this.downloadTask, this.detailResultBean.getTp_down_url(), this.detailResultBean.getOther_down_switch(), this.detailResultBean.getCdn_down_switch());
                }
            }
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

    @UiThread(delay = 2000)
    void cxxxxx() {
        this.webView.invalidate();
    }

    @Click
    void downloadImage() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
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
                                            } else {
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
        if (UtilsMy.z0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            UtilsMy.z4(this.context, this.detailResultBean.getCrc_sign_id());
        } else {
            UtilsMy.A1(this.downloadTask, this.detailResultBean);
            if (!UtilsMy.o1(this.context, this.downloadTask)) {
                if (this.detailResultBean.getDown_status() == 5) {
                    UtilsMy.l1(this.context, this.downloadTask);
                } else {
                    UtilsMy.U0(this.context, this.downloadTask, this.detailResultBean.getTp_down_url(), this.detailResultBean.getOther_down_switch(), this.detailResultBean.getCdn_down_switch());
                }
            }
        }
        com.papa.sim.statistic.t.l(this.context).B(this.info_id, AccountUtil_.getInstance_(this.context).getUid());
    }

    @Background
    void getCommentInfo(String informationId) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            noCoumment();
            return;
        }
        try {
            GameInformationCommentRequest gameInformationCommentRequest = new GameInformationCommentRequest();
            gameInformationCommentRequest.setComment_type(new int[]{1});
            gameInformationCommentRequest.setInformation_id(informationId);
            gameInformationCommentRequest.setPn(1);
            gameInformationCommentRequest.setPc(20);
            UserInfo userInfo = this.accountBean;
            if (userInfo != null) {
                gameInformationCommentRequest.setUid(userInfo.getUid());
            }
            ResultMainBean<InformationCommentBack> resultMainBeanR0 = this.rpcClient.R0(RequestBeanUtil.getInstance(this).getGameInformationComment(gameInformationCommentRequest));
            if (resultMainBeanR0 == null || resultMainBeanR0.getFlag() != 1) {
                noCoumment();
                return;
            }
            InformationCommentBack data = resultMainBeanR0.getMessages().getData();
            if (data == null) {
                noCoumment();
                return;
            }
            List<InformationCommentBean> hot = data.getHot();
            if (hot == null) {
                noCoumment();
            } else if (hot.size() > 0) {
                showCommentList(hot);
            } else {
                noCoumment();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            noCoumment();
        }
    }

    @Background
    void getDownloadTaskInfo() {
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

    @Background
    void getGameInfo() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            return;
        }
        try {
            ResultMainBean<List<GameInformationBean>> resultMainBeanW = this.rpcClient.w(RequestBeanUtil.getInstance(this).getgameInformation(this.info_id, this.extBean));
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

    @UiThread(delay = 1000)
    void noCoumment() {
        this.main.addView(LayoutInflater.from(this.context).inflate(R.layout.information_footer, (ViewGroup) null));
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
        if (downloadTaskA != null && this.downloadTask != null && downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
            this.downloadTask.setStatus(downloadTaskA.getStatus());
            this.downloadTask.setPath(downloadTaskA.getPath());
            this.downloadTask.setSize(downloadTaskA.getSize());
        }
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.g2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57221b.lambda$onEventMainThread$0();
            }
        });
        int iC = downloadTaskEvent.c();
        if ((iC == 5 || iC == 11 || iC == 48) && downloadTaskA != null && this.downloadTask != null && downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
            this.downloadTask = downloadTaskA;
        }
        updateButn();
        updateButnCard();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        ObservableWebView observableWebView = this.webView;
        if (observableWebView != null) {
            try {
                observableWebView.getClass().getMethod("onPause", new Class[0]).invoke(this.webView, null);
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
        super.onResume();
        GameInformationBean gameInformationBean = this.gameInformationBean;
        if (gameInformationBean != null && gameInformationBean.getComment_switch() == 1) {
            getCommentInfo(this.info_id);
        }
        updateDownloadView();
        ObservableWebView observableWebView = this.webView;
        if (observableWebView != null) {
            try {
                observableWebView.getClass().getMethod("onResume", new Class[0]).invoke(this.webView, null);
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
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        if (downloadTaskG == null || this.downloadTask == null) {
            if (downloadTaskG != null || this.downloadTask == null) {
                return;
            }
            if (Dtype.android.name().equals(this.downloadTask.getFileType()) && this.downloadTask.getStatus() == 5) {
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
            updateButn();
            updateButnCard();
            return;
        }
        if (Dtype.android.name().equals(this.downloadTask.getFileType()) && this.downloadTask.getStatus() == 5) {
            com.join.android.app.common.utils.g gVarT0 = com.join.android.app.common.utils.g.t0(this);
            String packageName = this.downloadTask.getPackageName();
            APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
            if (Boolean.valueOf(gVarT0.f(this, packageName, device_type)).booleanValue()) {
                APKUtils.a aVarO = com.join.android.app.common.utils.g.t0(this).o(this, this.downloadTask.getPackageName(), device_type);
                if (!com.join.mgps.Util.t2.i(this.downloadTask.getVer()) || aVarO.d() >= Integer.parseInt(this.downloadTask.getVer())) {
                    this.downloadTask.setStatus(5);
                } else {
                    this.downloadTask.setStatus(9);
                }
            } else {
                this.downloadTask.setStatus(11);
            }
        } else {
            this.downloadTask.setStatus(downloadTaskG.getStatus());
        }
        updateButn();
        updateButnCard();
    }

    @Click
    void relodingimag() {
        showLoding();
        getGameInfo();
    }

    @Background
    void sendParesed(InformationCommentBean bean, ImageView parise, TextView parseNUmber) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("没有网络");
            bean.setHasPraised(false);
            updatePraise(bean);
            return;
        }
        try {
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                return;
            }
            PariseRequest pariseRequest = new PariseRequest();
            pariseRequest.setInformation_id(this.info_id);
            pariseRequest.setComment_id(bean.getComment_id());
            pariseRequest.setUid(this.accountBean.getUid());
            ResultMainBean<List<PariseBackData>> resultMainBeanU0 = this.rpcClient.U0(RequestBeanUtil.getInstance(this).getGameInformationParis(pariseRequest));
            if (resultMainBeanU0 != null && resultMainBeanU0.getCode() == 706) {
                showMessage("完善资料后就可点赞哦");
                IntentUtil.getInstance().goLoginInteractive(this);
                return;
            }
            if (resultMainBeanU0 == null || resultMainBeanU0.getFlag() != 1) {
                showToast("点赞失败");
                bean.setHasPraised(false);
                updatePraise(bean);
                return;
            }
            List<PariseBackData> data = resultMainBeanU0.getMessages().getData();
            if (data.size() <= 0) {
                showToast("你已赞过");
                bean.setHasPraised(true);
                updatePraise(bean);
            } else {
                if (!data.get(0).isVal()) {
                    showToast("你已赞过");
                    bean.setHasPraised(true);
                    updatePraise(bean);
                    return;
                }
                bean.setHasPraised(true);
                bean.setPraise_count((Integer.parseInt(bean.getPraise_count()) + 1) + "");
                bean.setHasPraised(true);
                updatePraise(bean);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showToast("点赞失败");
            bean.setHasPraised(false);
            updatePraise(bean);
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    @UiThread(delay = 1000)
    void showComment() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.context);
        this.comment_number.setText(this.comment_count + "条");
        this.more.setOnClickListener(new h());
        View viewInflate = layoutInflaterFrom.inflate(R.layout.game_information_edit_message, (ViewGroup) null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate.findViewById(R.id.usericonMe);
        this.usericonMe = simpleDraweeView;
        simpleDraweeView.setImageResource(R.drawable.unloginstatus);
        UserInfo userInfo = this.accountBean;
        if (userInfo != null) {
            UtilsMy.J3(this.context, userInfo.getAvatarSrc(), this.usericonMe);
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.message);
        this.main.addView(viewInflate);
        textView.setOnClickListener(new i());
    }

    @UiThread(delay = 1000)
    void showCommentList(List<InformationCommentBean> gameInformationBeans) {
        ArrayList arrayList = new ArrayList();
        this.commitDataBeanList = arrayList;
        arrayList.addAll(gameInformationBeans);
        if (this.noScrollListView == null) {
            this.dataSet = new ArrayList();
            this.noScrollListView = new WrapContentListView(this);
            GameCommentAdapter gameCommentAdapter = new GameCommentAdapter(this.context, this.dataSet, new b());
            this.gameCommenAdapter = gameCommentAdapter;
            this.noScrollListView.setAdapter((ListAdapter) gameCommentAdapter);
            this.noScrollListView.setDivider(getResources().getDrawable(R.drawable.transparent_bg));
            this.noScrollListView.setLayoutParams(new ViewGroup.LayoutParams(-1, (com.join.android.app.common.utils.q.n(this.context).k(this) - this.bottom_lay.getHeight()) - this.relativeLayout.getHeight()));
            this.main.addView(this.noScrollListView);
            this.main.addView(LayoutInflater.from(this.context).inflate(R.layout.game_detail_header, (ViewGroup) null));
        }
        this.dataSet.clear();
        addViewItem(gameInformationBeans);
        this.gameCommenAdapter.notifyDataSetChanged();
        updateHight();
    }

    @UiThread
    void showLoding() {
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
        this.scrollView.setVisibility(8);
        this.bottom_lay.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        this.loding_faile.setVisibility(0);
        this.loding_layout.setVisibility(8);
        this.scrollView.setVisibility(8);
        this.bottom_lay.setVisibility(8);
    }

    @UiThread
    void showMain(GameInformationBean gameInformation) {
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
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.scrollView.setVisibility(0);
        this.bottom_lay.setVisibility(0);
        this.content_title.setText(gameInformation.getTitle());
        this.contentName.setText("作者:" + gameInformation.getAuthor());
        this.contentTime.setText(gameInformation.getRelease_time());
        this.webView.setBackgroundColor(-1);
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.getSettings().setDomStorageEnabled(true);
        this.webView.setWebChromeClient(new WebChromeClient());
        this.webView.addJavascriptInterface(new c(), "papa");
        this.webView.loadDataWithBaseURL("about:blank", gameInformation.getContent(), ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
        this.webView.setWebViewClient(new d());
        this.gameInformationBean = gameInformation;
        this.webView.setBackgroundColor(-1);
        if (gameInformation.getComment_switch() == 1) {
            showComment();
            getCommentInfo(this.info_id);
        }
        List<DetailResultBean> game_info = gameInformation.getGame_info();
        if (game_info == null || game_info.size() == 0) {
            this.applayout.setVisibility(8);
            this.gameCardLayout.setVisibility(8);
            return;
        }
        DetailResultBean detailResultBean = game_info.get(0);
        this.detailResultBean = detailResultBean;
        detailResultBean.set_from(106);
        UtilsMy.B3(this.detailResultBean.getSp_tag_info(), this.moneyText);
        UtilsMy.B3(this.detailResultBean.getSp_tag_info(), this.moneyText2);
        String crc_sign_id = this.detailResultBean.getCrc_sign_id();
        this.gameId = crc_sign_id;
        if (crc_sign_id == null) {
            return;
        }
        DownloadTask downloadTaskG = q5.f.M().G(this.detailResultBean.getCrc_sign_id());
        this.downloadTask = downloadTaskG;
        if (downloadTaskG == null) {
            this.downloadTask = this.detailResultBean.getDownloadtaskDown();
            if (UtilsMy.p0(this.detailResultBean.getTag_info())) {
                this.downloadTask.setFileType(Dtype.android.name());
                if (com.join.android.app.common.utils.g.t0(this).e(this, this.detailResultBean.getPackage_name())) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this).n(this, this.detailResultBean.getPackage_name());
                    if (!com.join.mgps.Util.t2.i(this.detailResultBean.getVer()) || aVarN.d() >= Integer.parseInt(this.detailResultBean.getVer())) {
                        this.downloadTask.setStatus(5);
                    } else {
                        this.downloadTask.setStatus(9);
                    }
                } else {
                    this.downloadTask.setStatus(0);
                }
            } else {
                this.downloadTask.setFileType(Dtype.apk.name());
                this.downloadTask.setStatus(0);
            }
        } else {
            downloadTaskG.setCfg_ver(this.detailResultBean.getCfg_ver());
            this.downloadTask.setCfg_ver_name(this.detailResultBean.getCfg_ver_name());
            this.downloadTask.setCfg_down_url(this.detailResultBean.getCfg_down_url());
            this.downloadTask.setDownloadType(this.detailResultBean.getDownloadType());
            this.downloadTask.setScreenshot_pic(this.detailResultBean.getScreenshot_pic());
        }
        updateButn();
        updateButnCard();
        com.join.android.app.common.utils.l.h(this.appIcon, this.detailResultBean.getIco_remote());
        this.appname.setText(this.detailResultBean.getGame_name());
        this.appsize.setText("大小：" + this.detailResultBean.getSize() + "M");
        if (this.detailResultBean == null) {
            this.applayout.setVisibility(8);
            this.gameCardLayout.setVisibility(8);
            return;
        }
        this.applayout.setVisibility(0);
        this.gameCardLayout.setVisibility(0);
        if (this.defaultDown) {
            downloadImage();
        }
        this.cardAppname.setText(this.detailResultBean.getGame_name());
        com.join.android.app.common.utils.l.h(this.cardIcon, this.detailResultBean.getIco_remote());
        this.cardIcon.setOnClickListener(new e());
        this.textView69.setOnClickListener(new f());
        this.bottom_lay.setOnClickListener(new g());
        this.cardDownNumberText.setText(com.join.mgps.Util.t2.b(this.detailResultBean.getDown_count()) + "热度");
        this.cardAppSize.setText(net.lingala.zip4j.util.e.F0 + this.detailResultBean.getSize() + "M");
        this.cardInfo.setText(this.detailResultBean.getInfo());
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    @UiThread
    void showToast(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @UiThread
    void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }

    @UiThread(delay = 500)
    void updateHight() {
        setListViewHeightByItem(this.noScrollListView);
    }

    @UiThread
    void updateView(ImageView parise, TextView parseNUmber, boolean success, String number) {
        if (!success) {
            parise.setImageResource(R.drawable.unlike);
        } else {
            parise.setImageResource(R.drawable.like);
            parseNUmber.setText(number);
        }
    }
}
