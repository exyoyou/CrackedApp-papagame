package com.join.mgps.activity.message;

import android.content.Context;
import android.widget.ImageView;
import com.BaseFragmentActivity;
import com.czhj.sdk.common.Constants;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.a3;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.pref.h;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.activity_message_setting)
public class MessageSettingActivity extends BaseFragmentActivity {
    private Context context;

    @ViewById
    ImageView isGetLikeIv;

    @ViewById
    ImageView isGetMessageIv;

    @ViewById
    ImageView isGetReplayIv;
    private com.join.mgps.rpc.b rpcAccountClient;

    @AfterViews
    void afterview() {
        this.context = this;
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        getJPushSetting();
    }

    @Click
    void back() {
        finish();
    }

    @UiThread
    void checkIsGetNotif() {
        if (!h.n(this.context).q()) {
            this.isGetMessageIv.setImageResource(R.drawable.ic_notif_closed);
            this.isGetReplayIv.setImageResource(R.drawable.ic_notif_closed);
            this.isGetLikeIv.setImageResource(R.drawable.ic_notif_closed);
            return;
        }
        this.isGetMessageIv.setImageResource(R.drawable.ic_notif_open);
        if (h.n(this.context).r()) {
            this.isGetLikeIv.setImageResource(R.drawable.ic_notif_open);
        } else {
            this.isGetLikeIv.setImageResource(R.drawable.ic_notif_closed);
        }
        if (h.n(this.context).s()) {
            this.isGetReplayIv.setImageResource(R.drawable.ic_notif_open);
        } else {
            this.isGetReplayIv.setImageResource(R.drawable.ic_notif_closed);
        }
    }

    @UiThread
    void checkIsGetNotifresult(AccountResultMainBean<JPushJoinDeviceResult> result) {
        if (result != null && result.getError() == 0 && result.getData().isResult()) {
            if (result.getData().getOpenPush() != 1) {
                h.n(this.context).e0(false);
            } else {
                h.n(this.context).e0(true);
            }
            if (result.getData().getOpenPraise() == 1) {
                h.n(this.context).f0(true);
            } else {
                h.n(this.context).f0(false);
            }
            if (result.getData().getOpenReply() == 1) {
                h.n(this.context).g0(true);
            } else {
                h.n(this.context).g0(false);
            }
        }
        checkIsGetNotif();
    }

    @Background
    void getJPushSetting() {
        if (!m.j(this.context)) {
            checkIsGetNotif();
            return;
        }
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.context).getUid() + "");
        linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(this.context).getToken());
        checkIsGetNotifresult(this.rpcAccountClient.T(linkedMultiValueMap));
    }

    @Click
    void isGetLikeIv() {
        setJPushSetting(3);
    }

    @Click
    void isGetMessageIv() {
        setJPushSetting(1);
    }

    @Click
    void isGetReplayIv() {
        setJPushSetting(2);
    }

    @Background
    void setJPushSetting(int i10) {
        if (!m.j(this.context)) {
            checkIsGetNotif();
            return;
        }
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.context).getUid() + "");
        linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(this.context).getToken());
        boolean zQ = h.n(this.context).q();
        boolean zS = h.n(this.context).s();
        boolean zR = h.n(this.context).r();
        linkedMultiValueMap.add("openPush", (zQ ? 1 : 0) + "");
        linkedMultiValueMap.add("openReply", (zS ? 1 : 0) + "");
        linkedMultiValueMap.add("openPraise", (zR ? 1 : 0) + "");
        if (i10 == 1) {
            if (zQ) {
                linkedMultiValueMap.add("openPush", "0");
                linkedMultiValueMap.add("openReply", "0");
                linkedMultiValueMap.add("openPraise", "0");
            } else {
                linkedMultiValueMap.add("openPush", "1");
                linkedMultiValueMap.add("openReply", "0");
                linkedMultiValueMap.add("openPraise", "0");
            }
        } else if (i10 == 2) {
            if (!zQ) {
                linkedMultiValueMap.add("openPraise", "0");
            }
            if (zS) {
                linkedMultiValueMap.add("openReply", "0");
            } else {
                linkedMultiValueMap.add("openPush", "1");
                linkedMultiValueMap.add("openReply", "1");
            }
        } else if (i10 == 3) {
            if (!zQ) {
                linkedMultiValueMap.add("openReply", "0");
            }
            if (zR) {
                linkedMultiValueMap.add("openPraise", "0");
            } else {
                linkedMultiValueMap.add("openPush", "1");
                linkedMultiValueMap.add("openPraise", "1");
            }
        }
        setNotifresult(this.rpcAccountClient.m(linkedMultiValueMap), i10);
    }

    @UiThread
    void setNotifresult(AccountResultMainBean<JPushJoinDeviceResult> result, int num) {
        if (result == null || result.getError() != 0 || !result.getData().isResult()) {
            a3.b(this.context).d("设置失败！");
            return;
        }
        boolean zQ = h.n(this.context).q();
        boolean zS = h.n(this.context).s();
        boolean zR = h.n(this.context).r();
        if (num == 1) {
            if (zQ) {
                h.n(this.context).e0(false);
                h.n(this.context).f0(false);
                h.n(this.context).g0(false);
            } else {
                h.n(this.context).e0(true);
            }
        } else if (num == 2) {
            if (zS) {
                h.n(this.context).g0(false);
            } else {
                h.n(this.context).e0(true);
                h.n(this.context).g0(true);
            }
        } else if (num == 3) {
            if (zR) {
                h.n(this.context).f0(false);
            } else {
                h.n(this.context).e0(true);
                h.n(this.context).f0(true);
            }
        }
        getJPushSetting();
    }
}
