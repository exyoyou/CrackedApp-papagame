package com.join.mgps.activity;

import android.content.Intent;
import android.os.CountDownTimer;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.FriendInviteBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_friend_invite)
public class FriendInviteActivity extends FriendActivity {

    @ViewById
    SimpleDraweeView avatar;

    @ViewById
    TextView decline;
    com.join.mgps.rpc.j friendClient;

    @ViewById(R.id.gameName)
    TextView gameNameTv;

    @Extra
    FriendInviteBean inviteNotification;

    @ViewById
    TextView name;
    CountDownTimer timer = new a(16000, 1000);

    class a extends CountDownTimer {
        a(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Ext ext = new Ext();
            ext.setFrom("0");
            UserInfo accountData = AccountUtil_.getInstance_(FriendInviteActivity.this).getAccountData();
            if (accountData != null) {
                ext.setUid(accountData.getUid());
            }
            if (FriendInviteActivity.this.inviteNotification != null) {
                ext.setGameId(FriendInviteActivity.this.inviteNotification.getGameId() + "");
                ext.setPosition(FriendInviteActivity.this.inviteNotification.getSource() != 1 ? "1" : "0");
            }
            com.papa.sim.statistic.t.l(FriendInviteActivity.this).R1(Event.OverdueInvitation, ext);
            FriendInviteActivity.this.decline.setText("拒绝");
            com.wufan.friend.chat.c.u().P();
            FriendInviteActivity.this.finish();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            FriendInviteActivity.this.decline.setText("拒绝(" + (millisUntilFinished / 1000) + "s)");
        }
    }

    @Click
    void accept() {
        Ext ext = new Ext();
        ext.setPosition(this.inviteNotification.getSource() == 1 ? "0" : "1");
        ext.setFrom("0");
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setGameId(this.inviteNotification.getGameId() + "");
        com.papa.sim.statistic.t.l(this).R1(Event.SuccessInvitation, ext);
        String str = "" + this.inviteNotification.getGameId();
        if (!checkGameIsInstall(str)) {
            startDownloadActivity(str, 10001);
        } else {
            com.wufan.friend.chat.c.u().O();
            sendEmuExitBroadcast(2);
        }
    }

    @AfterViews
    void afterViews() {
        if (!org.greenrobot.eventbus.c.f().o(this)) {
            org.greenrobot.eventbus.c.f().v(this);
        }
        FriendInviteBean friendInviteBean = this.inviteNotification;
        if (friendInviteBean == null) {
            finish();
            return;
        }
        com.join.android.app.common.utils.l.h(this.avatar, friendInviteBean.getAvatar());
        this.name.setText(this.inviteNotification.getFromNickname());
        this.gameNameTv.setText(this.inviteNotification.getGameName());
        this.friendClient = com.join.mgps.rpc.impl.h.p();
        com.join.mgps.Util.p2.r(this, -1, true);
        if (getResources().getConfiguration().orientation == 2) {
            setSystemUiHide(true);
        }
        Ext ext = new Ext();
        ext.setPosition(this.inviteNotification.getSource() == 1 ? "0" : "1");
        ext.setFrom("0");
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setGameId(this.inviteNotification.getGameId() + "");
        com.papa.sim.statistic.t.l(this).R1(Event.ReceiveInvitation, ext);
        this.timer.start();
    }

    @Click
    void decline() {
        reject();
        com.wufan.friend.chat.c.u().P();
        Ext ext = new Ext();
        ext.setPosition(this.inviteNotification.getSource() == 1 ? "0" : "1");
        ext.setFrom("0");
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setGameId(this.inviteNotification.getGameId() + "");
        com.papa.sim.statistic.t.l(this).R1(Event.RefuseInvitation, ext);
        finish();
    }

    @Click
    void iv_close() {
        com.wufan.friend.chat.c.u().P();
        Ext ext = new Ext();
        ext.setPosition(this.inviteNotification.getSource() == 1 ? "0" : "1");
        ext.setFrom("0");
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setGameId(this.inviteNotification.getGameId() + "");
        com.papa.sim.statistic.t.l(this).R1(Event.RefuseInvitation, ext);
        finish();
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 10001 && resultCode == -1) {
            com.wufan.friend.chat.c.u().O();
            sendEmuExitBroadcast(2);
        }
    }

    @Override // com.join.mgps.activity.FriendActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        com.wufan.friend.chat.c.u().P();
        Ext ext = new Ext();
        ext.setPosition(this.inviteNotification.getSource() == 1 ? "0" : "1");
        ext.setFrom("0");
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setGameId(this.inviteNotification.getGameId() + "");
        com.papa.sim.statistic.t.l(this).R1(Event.RefuseInvitation, ext);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        if (org.greenrobot.eventbus.c.f().o(this)) {
            org.greenrobot.eventbus.c.f().A(this);
        }
    }

    @Subscribe
    public void onFriendEvent(com.join.mgps.event.w event) {
        if (event != null) {
            if (event.a() == 3) {
                finish();
            } else if (event.a() == 8) {
                iv_close();
            }
        }
    }

    @Background
    void reject() {
        try {
            com.wufan.friend.chat.c.u().P();
            if (com.ta.utdid2.android.utils.f.f(this)) {
                HashMap map = new HashMap();
                map.put("uid", AccountUtil_.getInstance_(this).getUid());
                map.put(Constants.TOKEN, AccountUtil_.getInstance_(this).getToken());
                map.put("friendId", Integer.valueOf(this.inviteNotification.getFromAccountId()));
                this.friendClient.e(map);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void sendEmuExitBroadcast(int exit) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra("adAction", 100);
        intent.putExtra("exit", exit);
        sendBroadcast(intent);
    }
}
