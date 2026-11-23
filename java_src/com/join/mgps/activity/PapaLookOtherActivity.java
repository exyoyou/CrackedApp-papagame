package com.join.mgps.activity;

import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.fragment.CollectionModuleFourFragment_;
import com.join.mgps.fragment.CollectionModuleTwoFragment_;
import com.papa.sim.statistic.Where;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.papeverday_new_activity_layout)
public class PapaLookOtherActivity extends BaseFragmentActivity {
    private static final String TAG = "PapaLookOtherActivity";
    private String collection_id;

    @ViewById
    ImageView comment;

    @ViewById
    RelativeLayout commentParent;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;
    private int everdayOrLookOther;

    @ViewById
    FrameLayout fragment;
    private FragmentManager fragmentManager;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    TextView roundMessage;
    com.join.mgps.rpc.e rpcClient;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @ViewById
    TextView title_textview;
    private int pn = 1;
    private boolean destroyed = false;
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    @AfterViews
    void afterview() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.title_textview.setText("大家都在玩");
        getLookOther();
        showLoding();
        getDownloadTaskInfo();
        org.greenrobot.eventbus.c.f().v(this);
        this.searchImg.setVisibility(0);
        this.downloadView.setVisibility(0);
    }

    @Click
    void back_image() {
        finish();
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
        IntentUtil.getInstance().goCollectionCommentActivity(this, this.collection_id);
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
    void getLookOther() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            return;
        }
        try {
            ResultMainBean<List<CollectionDataBean>> resultMainBeanA0 = this.rpcClient.A0(RequestBeanUtil.getInstance(this).getLookOther(this.pn, new ExtBean("home", "5-0")));
            if (resultMainBeanA0 == null || resultMainBeanA0.getFlag() != 1) {
                showLodingFailed();
                return;
            }
            List<CollectionDataBean> data = resultMainBeanA0.getMessages().getData();
            if (data.size() > 0) {
                CollectionDataBean collectionDataBean = data.get(0);
                if (collectionDataBean.getTpl_type() != null) {
                    setLinkType(Integer.parseInt(collectionDataBean.getTpl_type()), collectionDataBean);
                }
                if (collectionDataBean.getInfo() != null && collectionDataBean.getInfo().size() > 0 && collectionDataBean.getInfo().get(0).getMain() != null) {
                    String crc_collection_id = collectionDataBean.getInfo().get(0).getMain().getCrc_collection_id();
                    this.collection_id = crc_collection_id;
                    try {
                        if (com.join.mgps.Util.t2.i(crc_collection_id)) {
                            showMessageCount(collectionDataBean.getComment_switch(), collectionDataBean.getComment_count());
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
            showMain();
        } catch (Exception e11) {
            e11.printStackTrace();
            showLodingFailed();
        }
    }

    boolean isDestroyedActivity() {
        return isDestroyed();
    }

    @UiThread
    void netWorkException() {
        com.join.android.app.common.manager.a.h().j(this, this.netExcption, 1);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.destroyed = true;
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        changeDownloadTaskNumber(downloadTaskEvent.a(), downloadTaskEvent.c());
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.j8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57352b.lambda$onEventMainThread$0();
            }
        });
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        updateDownloadView();
    }

    @Click
    void relodingimag() {
        this.pn = 1;
        showLoding();
        if (this.everdayOrLookOther == 0) {
            return;
        }
        this.title_textview.setText("大家都在玩");
        getLookOther();
    }

    @UiThread
    void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this, this.netConnectExcption, 1);
    }

    @UiThread
    void setLinkType(int index, CollectionDataBean collectionDataBeanFirsts) {
        this.fragmentManager = getSupportFragmentManager();
        Bundle bundle = new Bundle();
        if (collectionDataBeanFirsts.getInfo() == null || collectionDataBeanFirsts.getInfo().size() == 0) {
            return;
        }
        bundle.putString("collection_id", collectionDataBeanFirsts.getInfo().get(0).getMain().getCrc_collection_id());
        FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
        if (index == 2) {
            CollectionModuleTwoFragment_ collectionModuleTwoFragment_ = new CollectionModuleTwoFragment_();
            collectionModuleTwoFragment_.X(collectionDataBeanFirsts);
            collectionModuleTwoFragment_.setArguments(bundle);
            fragmentTransactionBeginTransaction.add(R.id.fragment, collectionModuleTwoFragment_);
        } else if (index == 4) {
            CollectionModuleFourFragment_ collectionModuleFourFragment_ = new CollectionModuleFourFragment_();
            collectionModuleFourFragment_.W(collectionDataBeanFirsts);
            collectionModuleFourFragment_.setArguments(bundle);
            fragmentTransactionBeginTransaction.add(R.id.fragment, collectionModuleFourFragment_);
        }
        if (isDestroyedActivity()) {
            return;
        }
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    @UiThread
    void showLoding() {
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        this.loding_faile.setVisibility(0);
        this.loding_layout.setVisibility(8);
        this.fragment.setVisibility(8);
    }

    @UiThread
    void showMain() {
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.fragment.setVisibility(0);
    }

    @UiThread
    void showMessageCount(int switchInt, int comment_count) {
        if (switchInt != 1) {
            this.commentParent.setVisibility(8);
            this.comment.setVisibility(8);
            this.roundMessage.setVisibility(8);
            return;
        }
        this.commentParent.setVisibility(0);
        this.comment.setVisibility(0);
        if (comment_count > 0) {
            this.roundMessage.setVisibility(0);
        }
        this.roundMessage.setText(comment_count + "");
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this).start();
        com.papa.sim.statistic.t.l(this).y2(Where.lookOther, AccountUtil_.getInstance_(this).getUid());
    }

    @UiThread
    void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }
}
