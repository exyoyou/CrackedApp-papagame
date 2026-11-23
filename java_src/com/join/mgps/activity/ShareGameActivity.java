package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.tencent.qzone.QZone;
import cn.sharesdk.wechat.friends.Wechat;
import cn.sharesdk.wechat.moments.WechatMoments;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.GameShareData;
import com.join.mgps.dto.RequestGameShareTag;
import com.join.mgps.dto.RequestUidtagidTagdes;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareGameTodayData;
import com.join.mgps.dto.TipBean;
import com.wufan.user.service.protobuf.UserInfo;
import com.zhy.view.flowlayout.FlowLayout;
import com.zhy.view.flowlayout.TagFlowLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_share_game)
public class ShareGameActivity extends AppCompatActivity {

    @ViewById
    TextView appName;

    @ViewById
    TextView appNameEnd;

    @ViewById
    ImageView back;

    @ViewById
    SimpleDraweeView backImg;
    UserInfo bean;

    @ViewById
    ImageView closeImg;

    @ViewById
    TextView commit;

    @ViewById
    LinearLayout commitLayout;
    Context context;
    ShareGameTodayData data;

    @Extra
    DownloadTask downloadTask;

    @ViewById
    EditText editText;

    @ViewById
    SimpleDraweeView icon;

    @ViewById
    SimpleDraweeView iconEnd;
    LayoutInflater mInflater;

    @ViewById
    TextView msg;

    @ViewById
    TextView msgEnd;

    @ViewById
    ImageView notShow;
    boolean prefrencehas = false;
    com.join.mgps.rpc.e rpcClient;

    @ViewById
    MStarBar selecteStar;

    @ViewById
    MStarBar selecteStar2;

    @ViewById
    MStarBar selecteStar3;

    @ViewById
    MStarBar selecteStarEnd;

    @ViewById
    TextView selectedMessage;

    @ViewById
    LinearLayout sharEndlayout;

    @ViewById
    LinearLayout sharMainlayout;

    @ViewById
    LinearLayout shareLayout;

    @ViewById
    LinearLayout starLayout;

    @ViewById
    TextView startGame;

    @ViewById
    LinearLayout startGameLayout;
    String tagid;

    @ViewById
    TagFlowLayout tips;

    @ViewById
    LinearLayout tipsLayout;

    @ViewById
    SimpleDraweeView titleImg;

    @ViewById
    SimpleDraweeView titleImgEnd;

    @ViewById
    SimpleDraweeView userIcon;

    @ViewById
    SimpleDraweeView userIcon2;

    @ViewById
    SimpleDraweeView userIcon3;

    @ViewById
    SimpleDraweeView userIconEnd;

    @ViewById
    TextView userName;

    @ViewById
    TextView userName3;

    @ViewById
    TextView userNameEnd;

    @ViewById
    ImageView zxing;

    class a extends com.zhy.view.flowlayout.b<TipBean> {
        a(List datas) {
            super(datas);
        }

        @Override // com.zhy.view.flowlayout.b
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public View d(FlowLayout parent, int position, TipBean s10) {
            ShareGameActivity shareGameActivity = ShareGameActivity.this;
            TextView textView = (TextView) shareGameActivity.mInflater.inflate(R.layout.share_flowlayout_tagitem, (ViewGroup) shareGameActivity.tips, false);
            textView.setText(s10.getName());
            return textView;
        }
    }

    class b implements TagFlowLayout.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f55742a;

        b(final List val$tags) {
            this.f55742a = val$tags;
        }

        @Override // com.zhy.view.flowlayout.TagFlowLayout.b
        public boolean a(View view, int position, FlowLayout parent) {
            try {
                DownloadTask downloadTaskG = q5.f.M().G(ShareGameActivity.this.downloadTask.getCrc_link_type_val());
                downloadTaskG.setIs_boot_commented(1);
                q5.f.M().update(downloadTaskG);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (position + 1 == this.f55742a.size()) {
                ShareGameActivity.this.startGameLayout.setVisibility(8);
                ShareGameActivity.this.sharMainlayout.setVisibility(8);
                ShareGameActivity.this.commitLayout.setVisibility(0);
                r7.a.c(ShareGameActivity.this.editText);
                ShareGameActivity.this.closeImg.setVisibility(0);
                ShareGameActivity.this.notShow.setVisibility(8);
                ShareGameActivity.this.back.setVisibility(8);
                MobclickAgentKt.onEvent(ShareGameActivity.this.context, "OnRemarkInput");
            } else if (AccountUtil_.getInstance_(ShareGameActivity.this.context).isTourist()) {
                ShareGameActivity.this.showDialog(1, ((TipBean) this.f55742a.get(position)).getContent(), ((TipBean) this.f55742a.get(position)).getId());
            } else {
                MobclickAgentKt.onEvent(ShareGameActivity.this.context, "OnRemarkShare");
                ShareGameActivity.this.sharEndlayout.setVisibility(0);
                ShareGameActivity.this.closeImg.setVisibility(0);
                ShareGameActivity.this.back.setVisibility(8);
                ShareGameActivity.this.shareLayout.setVisibility(0);
                ShareGameActivity.this.sharMainlayout.setVisibility(8);
                ShareGameActivity.this.tipsLayout.setVisibility(8);
                ShareGameActivity.this.selectedMessage.setText(((TipBean) this.f55742a.get(position)).getContent());
                if (ShareGameActivity.this.bean.getAccountType() == 2) {
                    ShareGameActivity shareGameActivity = ShareGameActivity.this;
                    shareGameActivity.setStarText(shareGameActivity.selecteStar.getStarMark(), ShareGameActivity.this.userNameEnd);
                } else {
                    ShareGameActivity.this.sendClickTag(((TipBean) this.f55742a.get(position)).getId());
                }
            }
            return false;
        }
    }

    class c implements TagFlowLayout.a {
        c() {
        }

        @Override // com.zhy.view.flowlayout.TagFlowLayout.a
        public void a(Set<Integer> selectPosSet) {
        }
    }

    class d implements MStarBar.a {
        d() {
        }

        @Override // com.join.mgps.customview.MStarBar.a
        public void a(float mark) {
            double d10 = mark;
            ShareGameActivity.this.selecteStar2.setStarMark(d10);
            ShareGameActivity.this.selecteStarEnd.setStarMark(d10);
            ShareGameActivity.this.selecteStar3.setStarMark(d10);
            if (mark > 2.0f) {
                ShareGameActivity.this.starLayout.setVisibility(8);
                ShareGameActivity.this.notShow.setVisibility(8);
                ShareGameActivity.this.tipsLayout.setVisibility(0);
                ShareGameActivity.this.closeImg.setVisibility(8);
                MobclickAgentKt.onEvent(ShareGameActivity.this.context, "onRemarkLabel");
                ShareGameActivity.this.back.setVisibility(0);
                return;
            }
            ShareGameActivity.this.startGameLayout.setVisibility(8);
            ShareGameActivity.this.sharMainlayout.setVisibility(8);
            ShareGameActivity.this.commitLayout.setVisibility(0);
            ShareGameActivity.this.closeImg.setVisibility(0);
            ShareGameActivity.this.notShow.setVisibility(8);
            r7.a.c(ShareGameActivity.this.editText);
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ShareGameActivity.this.editText.getText().toString().trim().length() == 0) {
                com.join.mgps.Util.a3.b(ShareGameActivity.this.context).d("评价不能为空");
                return;
            }
            try {
                DownloadTask downloadTaskG = q5.f.M().G(ShareGameActivity.this.downloadTask.getCrc_link_type_val());
                downloadTaskG.setIs_boot_commented(1);
                q5.f.M().update(downloadTaskG);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (AccountUtil_.getInstance_(ShareGameActivity.this.context).isTourist()) {
                ShareGameActivity shareGameActivity = ShareGameActivity.this;
                shareGameActivity.showDialog(2, shareGameActivity.editText.getText().toString(), "1");
            } else {
                ShareGameActivity.this.commitLayout.setVisibility(8);
                MobclickAgentKt.onEvent(ShareGameActivity.this.context, "OnRemarkShare");
                ShareGameActivity.this.sharEndlayout.setVisibility(0);
                ShareGameActivity.this.shareLayout.setVisibility(0);
                ShareGameActivity shareGameActivity2 = ShareGameActivity.this;
                shareGameActivity2.selectedMessage.setText(shareGameActivity2.editText.getText());
                if (ShareGameActivity.this.bean.getAccountType() == 2) {
                    ShareGameActivity shareGameActivity3 = ShareGameActivity.this;
                    shareGameActivity3.setStarText(shareGameActivity3.selecteStar.getStarMark(), ShareGameActivity.this.userNameEnd);
                }
                ShareGameActivity shareGameActivity4 = ShareGameActivity.this;
                shareGameActivity4.sendComment(shareGameActivity4.editText.getText().toString());
            }
            r7.a.b(ShareGameActivity.this.editText);
        }
    }

    class f implements com.join.mgps.callbacks.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f55747a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55748b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55749c;

        f(final String val$id, final String val$message, final int val$type) {
            this.f55747a = val$id;
            this.f55748b = val$message;
            this.f55749c = val$type;
        }

        @Override // com.join.mgps.callbacks.e
        public void a(Dialog dialog) {
            ShareGameActivity shareGameActivity = ShareGameActivity.this;
            shareGameActivity.tagid = this.f55747a;
            shareGameActivity.selectedMessage.setText(this.f55748b);
            LoginSplashActivity_.intent(ShareGameActivity.this.context).start();
            dialog.dismiss();
        }

        @Override // com.join.mgps.callbacks.e
        public void b(Dialog dialog) {
            MobclickAgentKt.onEvent(ShareGameActivity.this.context, "OnRemarkShare");
            ShareGameActivity.this.sharEndlayout.setVisibility(0);
            ShareGameActivity.this.closeImg.setVisibility(0);
            ShareGameActivity.this.shareLayout.setVisibility(0);
            ShareGameActivity.this.sharMainlayout.setVisibility(8);
            ShareGameActivity.this.tipsLayout.setVisibility(8);
            ShareGameActivity.this.back.setVisibility(8);
            ShareGameActivity.this.commitLayout.setVisibility(8);
            ShareGameActivity.this.sharEndlayout.setVisibility(0);
            ShareGameActivity.this.shareLayout.setVisibility(0);
            ShareGameActivity.this.selectedMessage.setText(this.f55748b);
            if (this.f55749c == 1) {
                if (ShareGameActivity.this.bean.getAccountType() == 2) {
                    ShareGameActivity shareGameActivity = ShareGameActivity.this;
                    shareGameActivity.setStarText(shareGameActivity.selecteStar.getStarMark(), ShareGameActivity.this.userNameEnd);
                }
                ShareGameActivity.this.sendClickTag(this.f55747a);
            } else {
                if (ShareGameActivity.this.bean.getAccountType() == 2) {
                    ShareGameActivity shareGameActivity2 = ShareGameActivity.this;
                    shareGameActivity2.setStarText(shareGameActivity2.selecteStar.getStarMark(), ShareGameActivity.this.userNameEnd);
                }
                ShareGameActivity shareGameActivity3 = ShareGameActivity.this;
                shareGameActivity3.sendComment(shareGameActivity3.editText.getText().toString());
            }
            dialog.dismiss();
        }
    }

    public static boolean isQQClientInstalled(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i10 = 0; i10 < installedPackages.size(); i10++) {
                if (installedPackages.get(i10).packageName.toLowerCase(Locale.ENGLISH).equals("com.tencent.mobileqq")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isWeixinInstalled(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i10 = 0; i10 < installedPackages.size(); i10++) {
                if (installedPackages.get(i10).packageName.toLowerCase(Locale.ENGLISH).equals("com.tencent.mm")) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStarText(float mark, TextView mstarBarTx) {
        int i10 = (int) mark;
        if (i10 == 1) {
            mstarBarTx.setText("浪费生命");
            return;
        }
        if (i10 == 2) {
            mstarBarTx.setText("打发时间");
            return;
        }
        if (i10 == 3) {
            mstarBarTx.setText("值得一玩");
            return;
        }
        if (i10 == 4) {
            mstarBarTx.setText("强烈推荐");
        } else if (i10 != 5) {
            mstarBarTx.setText("点击星星评分");
        } else {
            mstarBarTx.setText("必玩神作");
        }
    }

    private static void shareQQZonneImage(final Context context, String imageUrl, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setImagePath(imageUrl);
        ShareSDK.getPlatform(QZone.NAME).share(shareParams);
    }

    private static void shareWechatFImage(final Context context, Bitmap bitmap, final int from) {
        HashMap map = new HashMap();
        map.put("Id", "4");
        map.put("SortId", "1");
        map.put(com.alipay.sdk.packet.d.f7184h, "wxf04635c4c318fe2d");
        map.put("AppSecret", "8e21d75298829047b830ac5034b7073c");
        map.put("BypassApproval", "false");
        map.put("Enable", "true");
        ShareSDK.setPlatformDevInfo(WechatMoments.NAME, map);
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setTitle("分享");
        shareParams.setImageData(bitmap);
        ShareSDK.getPlatform(Wechat.NAME).share(shareParams);
    }

    private static void shareWechatImage(final Context context, Bitmap bitmap, final int from) {
        HashMap map = new HashMap();
        map.put("Id", "4");
        map.put("SortId", "1");
        map.put(com.alipay.sdk.packet.d.f7184h, "wxf04635c4c318fe2d");
        map.put("AppSecret", "8e21d75298829047b830ac5034b7073c");
        map.put("BypassApproval", "false");
        map.put("Enable", "true");
        String str = Wechat.NAME;
        ShareSDK.setPlatformDevInfo(str, map);
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setTitle("分享");
        shareParams.setImageData(bitmap);
        ShareSDK.getPlatform(str).share(shareParams);
    }

    @Receiver(actions = {p5.a.B})
    void AccountChange() {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.bean = accountData;
        com.join.android.app.common.utils.l.h(this.userIcon, accountData.getAvatarSrc());
        com.join.android.app.common.utils.l.h(this.userIcon2, this.bean.getAvatarSrc());
        com.join.android.app.common.utils.l.h(this.userIcon3, this.bean.getAvatarSrc());
        com.join.android.app.common.utils.l.h(this.userIconEnd, this.bean.getAvatarSrc());
        this.userName.setText(this.bean.getNickname());
        this.userName3.setText(this.bean.getNickname());
        this.userNameEnd.setText(this.bean.getNickname());
    }

    @AfterViews
    void afterView() {
        this.context = this;
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        MobclickAgentKt.onEvent(this.context, "onRemarkBegin");
        com.join.android.app.common.utils.l.M(this.backImg, this.downloadTask.getPortraitURL(), 6, 15);
        String strK = com.join.mgps.pref.h.n(this.context).K();
        if (com.join.mgps.Util.t2.h(strK)) {
            this.data = new ShareGameTodayData();
        } else {
            this.data = (ShareGameTodayData) JsonMapper.getInstance().fromJson(strK, ShareGameTodayData.class);
        }
        if (this.data == null) {
            this.data = new ShareGameTodayData();
        }
        if (com.join.android.app.common.utils.i.h(this.data.getLastTime())) {
            String crc_link_type_val = this.downloadTask.getCrc_link_type_val();
            if (!crc_link_type_val.equals(this.data.getGameid1()) && !crc_link_type_val.equals(this.data.getGameid2()) && !crc_link_type_val.equals(this.data.getGameid3())) {
                if (this.data.getGameid1() == null) {
                    this.data.setGameid1(crc_link_type_val);
                } else if (this.data.getGameid2() == null) {
                    this.data.setGameid2(crc_link_type_val);
                } else if (this.data.getGameid3() == null) {
                    this.data.setGameid3(crc_link_type_val);
                }
            }
        } else {
            this.data.setLastTime(System.currentTimeMillis());
            this.data.setGameid1(this.downloadTask.getCrc_link_type_val());
            this.data.setGameid2(null);
            this.data.setGameid3(null);
            this.data.setHasShare(false);
        }
        com.join.mgps.pref.h.n(this.context).y0(JsonMapper.getInstance().toJson(this.data));
        loadData();
    }

    @Click
    void back() {
        this.starLayout.setVisibility(0);
        this.notShow.setVisibility(0);
        this.tipsLayout.setVisibility(8);
        this.back.setVisibility(8);
    }

    @Click
    void closeImg() {
        if (this.commitLayout.getVisibility() != 0) {
            startGame();
            return;
        }
        MobclickAgentKt.onEvent(this.context, "onRemarkBegin");
        this.startGameLayout.setVisibility(0);
        this.sharMainlayout.setVisibility(0);
        this.commitLayout.setVisibility(8);
        this.closeImg.setVisibility(8);
        if (this.selecteStar.getStarMark() > 2.0f) {
            this.back.setVisibility(0);
            this.notShow.setVisibility(8);
        } else {
            this.back.setVisibility(8);
            this.notShow.setVisibility(0);
        }
        r7.a.b(this.editText);
    }

    @Click
    void friendLayout() {
        if (!isWeixinInstalled(this.context)) {
            com.join.mgps.Util.a3.b(this.context).d("沒有安裝微信");
            return;
        }
        MobclickAgentKt.onEvent(this.context, "OnRemarkShareChannel", "friends");
        shareFinish();
        this.sharEndlayout.setDrawingCacheEnabled(true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.sharEndlayout.getDrawingCache());
        this.sharEndlayout.setDrawingCacheEnabled(false);
        shareWechatFImage(this.context, bitmapCreateBitmap, 1);
    }

    @Background
    void loadData() {
        try {
            ResultMainBean<GameShareData> resultMainBeanF0 = this.rpcClient.f0(RequestBeanUtil.getInstance(this.context).getDetialmoreServer(this.downloadTask.getCrc_link_type_val()));
            if (resultMainBeanF0 == null || resultMainBeanF0.getFlag() != 1) {
                reloadData();
            } else {
                updateUi(resultMainBeanF0.getMessages().getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            reloadData();
        }
    }

    @Click
    void notShow() {
        try {
            DownloadTask downloadTaskG = q5.f.M().G(this.downloadTask.getCrc_link_type_val());
            downloadTaskG.setIs_boot_commented(1);
            q5.f.M().update(downloadTaskG);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        startGame();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == 10011) {
            MobclickAgentKt.onEvent(this.context, "OnRemarkShare");
            this.sharEndlayout.setVisibility(0);
            this.closeImg.setVisibility(0);
            this.shareLayout.setVisibility(0);
            this.sharMainlayout.setVisibility(8);
            this.notShow.setVisibility(8);
            this.tipsLayout.setVisibility(8);
            this.back.setVisibility(8);
            this.commitLayout.setVisibility(8);
            this.sharEndlayout.setVisibility(0);
            this.shareLayout.setVisibility(0);
            if (requestCode == 1) {
                sendClickTag(this.tagid);
            } else {
                sendComment(this.editText.getText().toString());
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        UtilsMy.l4(this, this.downloadTask, 0);
        finish();
    }

    @Click
    void qZoneLayout() throws Throwable {
        if (!isQQClientInstalled(this.context)) {
            com.join.mgps.Util.a3.b(this.context).d("沒有安裝qq");
            return;
        }
        MobclickAgentKt.onEvent(this.context, "OnRemarkShareChannel", "qZone");
        shareFinish();
        this.sharEndlayout.setDrawingCacheEnabled(true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.sharEndlayout.getDrawingCache());
        this.sharEndlayout.setDrawingCacheEnabled(false);
        String str = com.join.mgps.Util.z.f50172k + "shareImage.png";
        com.join.mgps.Util.c2.n(bitmapCreateBitmap, str);
        shareQQZonneImage(this.context, str, 1);
    }

    @Click
    void qqLayout() throws Throwable {
        if (!isQQClientInstalled(this.context)) {
            com.join.mgps.Util.a3.b(this.context).d("沒有安裝qq");
            return;
        }
        MobclickAgentKt.onEvent(this.context, "OnRemarkShareChannel", "qq");
        shareFinish();
        this.sharEndlayout.setDrawingCacheEnabled(true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.sharEndlayout.getDrawingCache());
        this.sharEndlayout.setDrawingCacheEnabled(false);
        String str = com.join.mgps.Util.z.f50172k + "shareImage.png";
        com.join.mgps.Util.c2.n(bitmapCreateBitmap, str);
        com.join.mgps.Util.w.l(this.context, str, 1);
    }

    @UiThread(delay = 2000)
    void reloadData() {
        loadData();
    }

    @Background
    void sendClickTag(String id2) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            if (accountData != null && accountData.getUid() != 0 && accountData.getAccountType() != 2) {
                RequestGameShareTag requestGameShareTag = new RequestGameShareTag();
                requestGameShareTag.setGame_id(this.downloadTask.getCrc_link_type_val());
                requestGameShareTag.setUid(accountData.getUid());
                requestGameShareTag.setScore(this.selecteStar.getStarMark() + "");
                requestGameShareTag.setTag_des_id(id2);
                requestGameShareTag.setTag_des_type(0);
                requestGameShareTag.setToken(accountData.getToken());
                this.rpcClient.m0(RequestBeanUtil.getInstance(this.context).getDefalutRequestBean(requestGameShareTag));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void sendComment(String message) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            if (accountData != null && accountData.getUid() != 0 && accountData.getAccountType() != 2) {
                RequestUidtagidTagdes requestUidtagidTagdes = new RequestUidtagidTagdes();
                requestUidtagidTagdes.setGame_id(this.downloadTask.getCrc_link_type_val());
                requestUidtagidTagdes.setUid(accountData.getUid());
                requestUidtagidTagdes.setScore(this.selecteStar.getStarMark() + "");
                requestUidtagidTagdes.setTag_des(message);
                requestUidtagidTagdes.setToken(accountData.getToken());
                this.rpcClient.v1(RequestBeanUtil.getInstance(this.context).getDefalutRequestBean(requestUidtagidTagdes));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void shareFinish() {
        if (this.prefrencehas) {
            return;
        }
        this.prefrencehas = true;
        try {
            DownloadTask downloadTaskG = q5.f.M().G(this.downloadTask.getCrc_link_type_val());
            downloadTaskG.setIs_boot_commented(1);
            q5.f.M().update(downloadTaskG);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.data.setHasShare(true);
        com.join.mgps.pref.h.n(this.context).y0(JsonMapper.getInstance().toJson(this.data));
    }

    void showDialog(int type, String message, String id2) {
        com.join.mgps.Util.h0.h0(this.context).d(this.context, "登陆后保存点评数据", "悟饭为你记录每一份评价", "跳过", "去登陆", new f(id2, message, type)).show();
    }

    @Click
    void startGame() {
        UtilsMy.l4(this, this.downloadTask, 0);
        finish();
    }

    @UiThread
    void updateUi(GameShareData shareData) {
        this.bean = AccountUtil_.getInstance_(this).getAccountData();
        SimpleDraweeView simpleDraweeView = this.titleImg;
        String cover = shareData.getStatistics_info().getCover();
        com.facebook.drawee.drawable.s.c cVar = com.facebook.drawee.drawable.s.c.f27292i;
        com.join.android.app.common.utils.l.i(simpleDraweeView, cover, cVar);
        com.join.android.app.common.utils.l.i(this.titleImgEnd, shareData.getStatistics_info().getCover(), cVar);
        com.join.android.app.common.utils.l.h(this.icon, this.downloadTask.getPortraitURL());
        com.join.android.app.common.utils.l.h(this.iconEnd, this.downloadTask.getPortraitURL());
        com.join.android.app.common.utils.l.h(this.userIcon, this.bean.getAvatarSrc());
        com.join.android.app.common.utils.l.h(this.userIcon2, this.bean.getAvatarSrc());
        com.join.android.app.common.utils.l.h(this.userIcon3, this.bean.getAvatarSrc());
        com.join.android.app.common.utils.l.h(this.userIconEnd, this.bean.getAvatarSrc());
        if (shareData.getStatistics_info().getCounts().equals("0")) {
            this.msgEnd.setVisibility(4);
            this.msg.setVisibility(4);
        } else {
            this.msg.setText(shareData.getStatistics_info().getCounts() + "人平均打分" + shareData.getStatistics_info().getAvg_score());
            this.msgEnd.setText(shareData.getStatistics_info().getCounts() + "人平均打分" + shareData.getStatistics_info().getAvg_score());
        }
        com.join.android.app.common.utils.l.M(this.backImg, shareData.getStatistics_info().getCover(), 6, 15);
        this.appName.setText(this.downloadTask.getShowName());
        this.appNameEnd.setText(this.downloadTask.getShowName());
        this.mInflater = LayoutInflater.from(this);
        this.userName.setText(this.bean.getNickname());
        this.userName3.setText(this.bean.getNickname());
        this.userNameEnd.setText(this.bean.getNickname());
        List<TipBean> tag_info = shareData.getTag_info();
        TipBean tipBean = new TipBean();
        tipBean.setName("+自定义");
        tag_info.add(tipBean);
        this.tips.setAdapter(new a(tag_info));
        this.tips.setOnTagClickListener(new b(tag_info));
        this.tips.setOnSelectListener(new c());
        this.selecteStar.setOnStarChangeListener(new d());
        this.commit.setOnClickListener(new e());
    }

    @Click
    void weichartLayout() {
        if (!isWeixinInstalled(this.context)) {
            com.join.mgps.Util.a3.b(this.context).d("沒有安裝微信");
            return;
        }
        MobclickAgentKt.onEvent(this.context, "OnRemarkShareChannel", "weichart");
        shareFinish();
        this.sharEndlayout.setDrawingCacheEnabled(true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.sharEndlayout.getDrawingCache());
        this.sharEndlayout.setDrawingCacheEnabled(false);
        shareWechatImage(this.context, bitmapCreateBitmap, 1);
    }
}
