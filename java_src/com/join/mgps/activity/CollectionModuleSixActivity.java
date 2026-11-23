package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.BreakBeanMain;
import com.join.mgps.dto.CollectionBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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
@EActivity(R.layout.activity_collection_module_six)
public class CollectionModuleSixActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    private static final String TAG = "CollectionModuleSixActivity";
    private Animation animation;

    @ViewById
    ImageView back_image;

    @ViewById
    ImageView back_image_rl;

    @ViewById
    TextView biground;
    private BreakBeanMain breakBeanMain;

    @ViewById
    XListView2 breakListView;
    private com.join.mgps.adapter.v collectionAdapter;
    private CollectionBean collectionBean;
    private List<CollectionBeanSub> collectionBeanSubs;
    private CollectionDataBean collectionDataBean;

    @Extra
    String collection_id;
    private String collection_title;
    private Context context;

    @ViewById
    ImageView downloadLine;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;

    @ViewById(R.id.downLayout)
    RelativeLayout downloadView2;

    @Extra
    ExtBean extBean;
    private LinearLayout headerViewLl;
    com.join.android.app.component.video.c helper;

    @ViewById
    ImageView imageLoading;
    private SimpleDraweeView imgBreak;
    private String info;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;

    @ViewById
    RelativeLayout moduleSixTitleRl;

    @ViewById
    RelativeLayout module_six_rl;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    ImageView relodingimag;
    com.join.mgps.rpc.e rpcClient;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @ViewById(R.id.title_normal_search_img_rl)
    ImageView searchImg2;
    private TextView textViewBreak;

    @ViewById
    RelativeLayout title_bar_layout;

    @ViewById
    TextView title_textview;
    private String tpl_pic;
    private int pn = 1;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f50813pc = 10;
    private int lastVisibleIndex = 0;
    private boolean SCROLLING = false;
    private boolean isRequesting = false;
    private int height = 0;
    int firstVisiblePosition = 0;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CollectionModuleSixActivity.this.isRequesting) {
                return;
            }
            CollectionModuleSixActivity.this.getBreakData();
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CollectionModuleSixActivity.this.isRequesting) {
                return;
            }
            CollectionModuleSixActivity.this.pn = 1;
            CollectionModuleSixActivity.this.getBreakData();
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            int i11 = i10 - 1;
            if (i11 >= CollectionModuleSixActivity.this.collectionBeanSubs.size() || i11 < 0) {
                return;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) CollectionModuleSixActivity.this.collectionBeanSubs.get(i11);
            if (collectionBeanSub.getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(CollectionModuleSixActivity.this.context, collectionBeanSub.getIntentDataBean());
            }
        }
    }

    class d implements Animation.AnimationListener {
        d() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownStateList(this.collectionBeanSubs);
        this.collectionAdapter.notifyDataSetChanged();
        updateDownloadView();
        return null;
    }

    private List<CollectionBeanSub> updateDownStateList(List<CollectionBeanSub> collectionBeanSubList) {
        Iterator<CollectionBeanSub> it2 = collectionBeanSubList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
        return collectionBeanSubList;
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) this.breakListView.getItemAtPosition(i10);
            if (collectionBeanSub != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.breakListView.getChildAt(i10 - this.firstVisiblePosition);
                if (childAt.getTag() instanceof com.join.mgps.adapter.v.a) {
                    com.join.mgps.adapter.v.a aVar = (com.join.mgps.adapter.v.a) childAt.getTag();
                    try {
                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG == null) {
                            return;
                        }
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            aVar.f63252l.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            aVar.f63252l.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        if (downloadTask.getStatus() == 12) {
                            aVar.f63255o.setProgress((int) downloadTaskG.getProgress());
                        } else {
                            aVar.f63254n.setProgress((int) downloadTaskG.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            aVar.f63253m.setText(downloadTaskG.getSpeed() + "/S");
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

    @AfterViews
    void afterViews() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        try {
            this.context = this;
            this.helper = new com.join.android.app.component.video.c(this, TAG);
            com.join.mgps.Util.j0.a().d(this);
            getDownloadTaskInfo();
            this.searchImg.setVisibility(0);
            this.searchImg2.setVisibility(0);
            this.downloadView.setVisibility(0);
            this.downloadView2.setVisibility(0);
            showLoding();
            this.title_bar_layout.setVisibility(8);
            this.title_bar_layout.setAlpha(0.0f);
            this.module_six_rl.setBackgroundColor(Color.parseColor("#212F3C"));
            View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.collection_six_new_header, (ViewGroup) null);
            this.imgBreak = (SimpleDraweeView) viewInflate.findViewById(R.id.imgBreak);
            int width = getWindowManager().getDefaultDisplay().getWidth();
            this.height = (width * 526) / 720;
            this.imgBreak.setLayoutParams(new RelativeLayout.LayoutParams(width, this.height));
            this.textViewBreak = (TextView) viewInflate.findViewById(R.id.textViewBreak);
            this.headerViewLl = (LinearLayout) viewInflate.findViewById(R.id.headerViewLl);
            this.breakListView.addHeaderView(viewInflate);
            com.join.mgps.adapter.v vVar = new com.join.mgps.adapter.v(this.context, this.helper);
            this.collectionAdapter = vVar;
            this.collectionBeanSubs = vVar.c();
            this.breakListView.setAdapter((ListAdapter) this.collectionAdapter);
            this.breakListView.setPreLoadCount(10);
            getBreakData();
            this.breakListView.setPullLoadEnable(new a());
            this.breakListView.setPullRefreshEnable(new b());
            this.breakListView.setOnItemClickListener(new c());
            this.breakListView.setOnScrollListener(this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void back_image() {
        finish();
    }

    @Click
    void back_image_rl() {
        finish();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        updateDownloadView();
    }

    @Click
    void comment() {
        IntentUtil.getInstance().goCollectionCommentActivity(this, this.collection_id);
    }

    @Click
    void downLayout() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getBreakData() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            updateListFooter();
            showLodingFailed();
            return;
        }
        this.isRequesting = true;
        try {
            try {
                CollectionBean collectionBeanO0 = this.rpcClient.o0(getRequestBean(this.collection_id, this.pn));
                this.collectionBean = collectionBeanO0;
                if (collectionBeanO0 == null || collectionBeanO0.getMessages().getData() == null || this.collectionBean.getMessages().getData().size() <= 0) {
                    showLodingFailed();
                    updateListFooter();
                } else {
                    CollectionDataBean collectionDataBean = this.collectionBean.getMessages().getData().get(0);
                    this.collectionDataBean = collectionDataBean;
                    if (collectionDataBean.getInfo().size() > 0) {
                        List<CollectionBeanSub> sub = this.collectionDataBean.getInfo().get(0).getSub();
                        BreakBeanMain main = this.collectionDataBean.getInfo().get(0).getMain();
                        this.breakBeanMain = main;
                        if (main != null) {
                            this.collection_title = main.getCollection_title();
                            this.tpl_pic = this.breakBeanMain.getTpl_pic();
                            this.info = this.breakBeanMain.getInfo();
                        }
                        this.pn++;
                        ArrayList arrayList = new ArrayList();
                        for (CollectionBeanSub collectionBeanSub : sub) {
                            ExtBean extBean = this.extBean;
                            if (extBean == null || !extBean.isKeepOrginFrom() || TextUtils.isEmpty(this.extBean.getOrginFrom())) {
                                ExtBean extBean2 = this.extBean;
                                if (extBean2 == null || extBean2.get_from_type() != 134) {
                                    collectionBeanSub.set_from(111);
                                    collectionBeanSub.set_from_type(121);
                                } else {
                                    collectionBeanSub.set_from(13401);
                                    collectionBeanSub.set_from_type(13401);
                                }
                            } else {
                                try {
                                    collectionBeanSub.set_from(Integer.parseInt(this.extBean.getOrginFrom()));
                                    collectionBeanSub.set_from_type(Integer.parseInt(this.extBean.getOrginFrom()));
                                } catch (Exception unused) {
                                }
                            }
                            arrayList.add(collectionBeanSub);
                        }
                        showMain(updateDownStateList(arrayList));
                    } else if (this.pn == 1) {
                        showLodingFailed();
                        updateListFooter();
                    } else {
                        noMore();
                        updateListFooter();
                    }
                }
            } finally {
                this.isRequesting = false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            updateListFooter();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        updateDownloadView();
    }

    public CommonRequestBean getRequestBean(String collection_id, int Page) {
        return RequestBeanUtil.getInstance(this.context).getCollectionRequestBean(collection_id, Page, this.f50813pc, "", "", this.extBean);
    }

    @Click
    void loding_faile() {
        showLoding();
        this.pn = 1;
        getBreakData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void netWorkException() {
        com.join.android.app.common.manager.a.h().j(this.context, this.netExcption, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void noMore() {
        this.breakListView.setNoMore();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (com.join.android.app.component.video.a.c0(this, TAG)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.F();
        }
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        changeDownloadTaskNumber(downloadTaskEvent.a(), downloadTaskEvent.c());
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.q0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57901b.lambda$onEventMainThread$0();
            }
        });
        if (downloadTaskEvent.c() != 8 || this.SCROLLING) {
            return;
        }
        updateProgressPartly();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.G();
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
        com.join.mgps.adapter.v vVar = this.collectionAdapter;
        if (vVar != null) {
            vVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.H();
        }
        updateDownloadView();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.helper.e(view, firstVisibleItem, visibleItemCount, totalItemCount);
        this.lastVisibleIndex = (visibleItemCount + firstVisibleItem) - 1;
        this.firstVisiblePosition = firstVisibleItem;
        View childAt = this.breakListView.getChildAt(0);
        if (childAt != null) {
            int firstVisiblePosition = (-childAt.getTop()) + (this.breakListView.getFirstVisiblePosition() * childAt.getHeight());
            int height = this.height - this.headerViewLl.getHeight();
            if (firstVisiblePosition == 0) {
                this.moduleSixTitleRl.setVisibility(0);
                this.title_bar_layout.setVisibility(8);
                this.title_bar_layout.setAlpha(0.0f);
            } else if (firstVisiblePosition >= height) {
                this.moduleSixTitleRl.setVisibility(8);
                this.title_bar_layout.setVisibility(0);
                this.title_bar_layout.setAlpha(1.0f);
            } else {
                this.moduleSixTitleRl.setVisibility(0);
                this.title_bar_layout.setVisibility(0);
                this.title_bar_layout.setAlpha(firstVisiblePosition / height);
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        if (scrollState == 0 && Fresco.getImagePipeline().P()) {
            Fresco.getImagePipeline().c0();
        }
        this.helper.i(view, scrollState);
        this.SCROLLING = scrollState != 0;
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        com.join.mgps.Util.g1.c("onstop");
    }

    @Click
    void relodingimag() {
        this.pn = 1;
        showLoding();
        getBreakData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this.context, this.netConnectExcption, 1);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
            this.mPtrFrame.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            List<CollectionBeanSub> list = this.collectionBeanSubs;
            if (list != null || list.size() == 0) {
                this.loding_faile.setVisibility(0);
                this.loding_layout.setVisibility(8);
                this.mPtrFrame.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CollectionBeanSub> collectionBeanSubList) {
        if (collectionBeanSubList != null) {
            try {
                if (collectionBeanSubList.size() == 0) {
                    return;
                }
                this.loding_faile.setVisibility(8);
                this.loding_layout.setVisibility(8);
                this.mPtrFrame.setVisibility(0);
                if (this.pn == 2) {
                    this.collectionBeanSubs.clear();
                }
                this.extBean = null;
                this.collectionBeanSubs.addAll(collectionBeanSubList);
                if (this.pn == 2) {
                    String str = this.collection_title;
                    if (str != null) {
                        this.title_textview.setText(str);
                    }
                    String str2 = this.info;
                    if (str2 != null) {
                        this.textViewBreak.setText(str2);
                    }
                    String str3 = this.tpl_pic;
                    if (str3 != null) {
                        com.join.android.app.common.utils.l.d(this.imgBreak, R.drawable.banner_normal_icon, str3.trim());
                    }
                    if (collectionBeanSubList.size() < 10) {
                        noMore();
                    }
                }
                this.collectionAdapter.notifyDataSetChanged();
                updateListFooter();
                this.helper.K(1);
                this.helper.m(this.breakListView);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessageCount(int switchInt, int comment_count) {
    }

    void startLineAnimation() {
        this.downloadLine.setImageResource(R.drawable.line_blue_bg);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.context, R.anim.img_translate);
        this.animation = animationLoadAnimation;
        animationLoadAnimation.setFillAfter(true);
        this.imageLoading.setVisibility(0);
        this.imageLoading.startAnimation(this.animation);
        this.animation.setAnimationListener(new d());
    }

    void stopLineAnimation() {
        this.imageLoading.clearAnimation();
        this.imageLoading.setVisibility(8);
        this.downloadLine.setImageResource(R.drawable.line_white_bg);
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this.context).start();
    }

    @Click
    void title_normal_search_img_rl() {
        SearchHintActivity_.intent(this.context).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            int downloadedSize = DlTaskManager.INSTANCE.getDownloadedSize();
            this.downloadView.setDownloadGameNum();
            updateDownloadingPoint(downloadedSize);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadingPoint(int number) {
        if (number == 0) {
            this.biground.setVisibility(4);
            this.biground.setText("");
            return;
        }
        if (number < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.biground.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
            this.biground.setLayoutParams(layoutParams);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.mygame_big_round);
            this.biground.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.biground.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
            this.biground.setGravity(17);
            this.biground.setLayoutParams(layoutParams2);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.message_round);
            this.biground.setPadding(1, 0, 2, 1);
        }
        this.biground.setVisibility(0);
        this.biground.setText(number + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateListFooter() {
        this.breakListView.u();
        this.breakListView.v();
    }
}
