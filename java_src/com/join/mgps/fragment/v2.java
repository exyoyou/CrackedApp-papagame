package com.join.mgps.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.activity.GameMainActivity4_;
import com.join.mgps.activity.arena.GameRoomListActivity;
import com.join.mgps.customview.smartpopupwindow.SmartPopupWindow;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendRecommendRequest;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ShareBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;
import com.wufan.friend.chat.protocol.AccountInfo;
import com.wufan.friend.chat.protocol.AllFriendNotification;
import com.wufan.friend.chat.protocol.AllOnlineFriendNotification;
import com.wufan.friend.chat.protocol.Friend;
import com.wufan.friend.chat.protocol.FriendAddSuccessNotification;
import com.wufan.friend.chat.protocol.FriendChangePlayStateNotification;
import com.wufan.friend.chat.protocol.FriendChangeStateNotification;
import com.wufan.friend.chat.protocol.FriendDeleteSuccessNotification;
import com.wufan.friend.chat.protocol.NotificationData;
import com.wufan.friend.chat.protocol.PlayState;
import com.wufan.friend.chat.protocol.RecommendPlayer;
import com.wufan.friend.chat.protocol.RecommendPlayerData;
import com.wufan.friend.chat.protocol.RecommendPlayerStateChangeNotification;
import com.wufan.friend.chat.protocol.Response;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_friend_my)
public class v2 extends e {
    ClipboardManager B;
    View C;
    ImageView D;
    ImageView E;
    TextView F;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f71306c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    TextView f71307d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f71308e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    TextView f71309f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f71310g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    View f71311h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    View f71312i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    View f71313j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    View f71314k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    View f71315l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    RecyclerView f71316m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    ImageView f71317n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    SmartPopupWindow f71318o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    UserInfo f71320q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.join.mgps.adapter.v0 f71321r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    com.join.mgps.rpc.j f71322s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    String f71323t;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    String f71326w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private FriendAccountInfo f71327x;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    com.wufan.friend.chat.c f71319p = com.wufan.friend.chat.c.u();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    String f71324u = "";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    List<GameInfoBean> f71325v = new ArrayList();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f71328y = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    boolean f71329z = false;
    Dialog A = null;

    class a extends RecyclerView.AdapterDataObserver {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            super.onChanged();
            if (v2.this.f71321r != null) {
                v2 v2Var = v2.this;
                if (v2Var.f71313j != null) {
                    if (v2Var.f71321r.getItemCount() > 0) {
                        v2.this.f71313j.setVisibility(8);
                    } else {
                        v2.this.f71313j.setVisibility(0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(View view) {
        e0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0(View view) {
        E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(View view) {
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D0(View view) {
        IntentUtil.getInstance().goLogin(view.getContext());
    }

    private void f0() {
        this.f71329z = false;
    }

    private void h0(String content) {
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
        this.B = clipboardManager;
        clipboardManager.setText(content.trim());
    }

    private String i0() {
        return com.wufan.friend.chat.c.u().m(Integer.parseInt(AccountUtil_.getInstance_(getContext()).getUid()));
    }

    private void j0(String packagename) throws Exception {
        PackageInfo packageInfo = getContext().getPackageManager().getPackageInfo(packagename, 0);
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(packageInfo.packageName);
        ResolveInfo next = getContext().getPackageManager().queryIntentActivities(intent, 0).iterator().next();
        if (next != null) {
            ActivityInfo activityInfo = next.activityInfo;
            String str = activityInfo.packageName;
            String str2 = activityInfo.name;
            Intent intent2 = new Intent("android.intent.action.MAIN");
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            intent2.addCategory("android.intent.category.LAUNCHER");
            intent2.setComponent(new ComponentName(str, str2));
            startActivity(intent2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(View view) {
        this.A.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(View view) {
        U0(0);
        this.A.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(View view) {
        U0(2);
        this.A.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(View view) {
        S0(0);
        com.wufan.friend.chat.c.u().U(0);
        this.f71318o.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(View view) {
        S0(1);
        com.wufan.friend.chat.c.u().U(1);
        this.f71318o.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0() {
        this.f71315l.setRotation(0.0f);
    }

    @Click
    void E0() {
        if (getActivity() instanceof FriendActivity) {
            ((FriendActivity) getActivity()).go(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        Iterator<FriendBean> it2 = this.f71321r.o().iterator();
        while (it2.hasNext()) {
            if (it2.next().isRecommend()) {
                it2.remove();
            }
        }
        if (this.f71321r.p() != null && this.f71321r.p().size() != 0) {
            this.f71321r.o().addAll(this.f71321r.p());
        }
        this.f71321r.K();
        this.f71321r.notifyDataSetChanged();
    }

    public void G0(String collection_id, List<GameInfoBean> gameInfoBeanList) {
        this.f71324u = collection_id;
        this.f71325v.clear();
        if (gameInfoBeanList != null) {
            this.f71325v.addAll(gameInfoBeanList);
        }
        q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(AllFriendNotification allFrdNotification) {
        if (allFrdNotification == null) {
            return;
        }
        this.f71321r.E(allFrdNotification.getFriendCount());
        ArrayList arrayList = new ArrayList();
        Iterator<Friend> it2 = allFrdNotification.getOnlineFriendsList().iterator();
        while (it2.hasNext()) {
            FriendBean friendBeanK0 = k0(it2.next());
            friendBeanK0.setState(0);
            arrayList.add(friendBeanK0);
        }
        arrayList.addAll(this.f71321r.p());
        Iterator<Friend> it3 = allFrdNotification.getOfflineFriendsList().iterator();
        while (it3.hasNext()) {
            FriendBean friendBeanK1 = k0(it3.next());
            friendBeanK1.setState(1);
            arrayList.add(friendBeanK1);
        }
        this.f71321r.o().clear();
        this.f71321r.o().addAll(arrayList);
        this.f71321r.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(AllOnlineFriendNotification allFriendNotification) {
        com.join.mgps.adapter.v0 v0Var;
        if (allFriendNotification == null || (v0Var = this.f71321r) == null) {
            return;
        }
        v0Var.E(allFriendNotification.getFriendCount());
        ArrayList arrayList = new ArrayList();
        for (Friend friend : allFriendNotification.getFriendsList()) {
            FriendBean friendBean = new FriendBean();
            friendBean.setNickName(friend.getAccount().getNickname());
            friendBean.setAvatar(friend.getAccount().getAvatar());
            friendBean.setUid(friend.getAccount().getAccountId());
            friendBean.setLevel(friend.getAccount().getLevel());
            friendBean.setVip(friend.getAccount().getVip());
            friendBean.setBanned(friend.getAccount().getBanned());
            if (friend.getState() != null) {
                friendBean.setGameId(friend.getState().getGameId() + "");
                friendBean.setGameName(friend.getState().getGameName());
                friendBean.setRoomId((int) friend.getState().getLobbyRoomId());
                friendBean.setRoomType(friend.getState().getRoomType());
                friendBean.setPlayType(friend.getState().getPlayTypeValue());
            }
            arrayList.add(friendBean);
        }
        this.f71321r.o().clear();
        if (arrayList.size() != 0) {
            this.f71321r.o().addAll(arrayList);
        }
        this.f71321r.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(FriendChangePlayStateNotification data) {
        int lobbyRoomId;
        String gameName;
        int roomType;
        int playTypeValue;
        if (data == null || data.getFriend() == null) {
            return;
        }
        AccountInfo friend = data.getFriend();
        com.join.mgps.adapter.v0 v0Var = this.f71321r;
        if (v0Var != null) {
            for (FriendBean friendBean : v0Var.o()) {
                if (friendBean.getUid() == friend.getAccountId()) {
                    String str = "";
                    if (data.getState() != null) {
                        str = data.getState().getGameId() + "";
                        gameName = data.getState().getGameName();
                        lobbyRoomId = (int) data.getState().getLobbyRoomId();
                        playTypeValue = data.getState().getPlayTypeValue();
                        roomType = data.getState().getRoomType();
                    } else {
                        lobbyRoomId = 0;
                        gameName = "";
                        roomType = 0;
                        playTypeValue = 0;
                    }
                    friendBean.setGameId(str);
                    friendBean.setGameName(gameName);
                    friendBean.setRoomId(lobbyRoomId);
                    friendBean.setPlayType(playTypeValue);
                    friendBean.setRoomType(roomType);
                    break;
                }
            }
            this.f71321r.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(FriendChangeStateNotification friendChangeStateNotification) {
        FriendBean next;
        if (friendChangeStateNotification == null || friendChangeStateNotification.getFriend() == null) {
            return;
        }
        AccountInfo friend = friendChangeStateNotification.getFriend();
        if (AccountUtil_.getInstance_(getContext()).getUid().equals(friend.getAccountId() + "")) {
            FriendAccountInfo friendAccountInfo = this.f71327x;
            if (friendAccountInfo != null) {
                friendAccountInfo.setOnLineStatus(friendChangeStateNotification.getState().name());
                S0(!"ONLINE".equals(this.f71327x.getOnLineStatus()) ? 1 : 0);
                return;
            }
            return;
        }
        com.join.mgps.adapter.v0 v0Var = this.f71321r;
        if (v0Var != null) {
            Iterator<FriendBean> it2 = v0Var.o().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                if (next.getUid() == friend.getAccountId()) {
                    next.setNickName(friend.getNickname());
                    next.setAvatar(friend.getAvatar());
                    next.setUid(friend.getAccountId());
                    next.setLevel(friend.getLevel());
                    next.setBanned(friend.getBanned());
                    if (friendChangeStateNotification.getPlayState() != null) {
                        next.setGameId(friendChangeStateNotification.getPlayState().getGameId() + "");
                        next.setGameName(friendChangeStateNotification.getPlayState().getGameName());
                        next.setRoomId((int) friendChangeStateNotification.getPlayState().getLobbyRoomId());
                        next.setRoomType(friendChangeStateNotification.getPlayState().getRoomType());
                        next.setPlayType(friendChangeStateNotification.getPlayState().getPlayTypeValue());
                    } else {
                        next.setGameId("");
                        next.setGameName("");
                        next.setRoomId(0);
                        next.setRoomType(0);
                        next.setPlayType(0);
                    }
                    next.setState(friendChangeStateNotification.getStateValue());
                    break;
                }
            }
            if (next == null) {
                FriendBean friendBean = new FriendBean();
                friendBean.setState(friendChangeStateNotification.getStateValue());
                friendBean.setNickName(friend.getNickname());
                friendBean.setAvatar(friend.getAvatar());
                friendBean.setUid(friend.getAccountId());
                friendBean.setLevel(friend.getLevel());
                friendBean.setBanned(friend.getBanned());
                if (friendChangeStateNotification.getPlayState() != null) {
                    friendBean.setGameId(friendChangeStateNotification.getPlayState().getGameId() + "");
                    friendBean.setGameName(friendChangeStateNotification.getPlayState().getGameName());
                    friendBean.setRoomId((int) friendChangeStateNotification.getPlayState().getLobbyRoomId());
                    friendBean.setRoomType(friendChangeStateNotification.getPlayState().getRoomType());
                    friendBean.setPlayType(friendChangeStateNotification.getPlayState().getPlayTypeValue());
                }
                this.f71321r.o().add(friendBean);
                com.join.mgps.adapter.v0 v0Var2 = this.f71321r;
                v0Var2.E(v0Var2.n() + 1);
            }
            this.f71321r.K();
            this.f71321r.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0(RecommendPlayerData notification) {
        if (notification == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<RecommendPlayer> it2 = notification.getRecommendPlayerList().iterator();
        while (it2.hasNext()) {
            FriendBean friendBeanM0 = m0(it2.next());
            friendBeanM0.setState(0);
            arrayList.add(friendBeanM0);
        }
        updateUi(arrayList);
        if (getActivity() instanceof GameMainActivity4_) {
            ((GameMainActivity4_) getActivity()).setOnlinePlayersCount(arrayList.size());
        }
    }

    @Click
    void M0() {
        if (this.f71318o == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.pop_friend_alive, (ViewGroup) null);
            this.f71318o = SmartPopupWindow.f.a((Activity) getContext(), viewInflate).e(true).b();
            viewInflate.findViewById(R.id.online).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.l2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f70068b.x0(view);
                }
            });
            viewInflate.findViewById(R.id.notDisturb).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.m2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f70182b.y0(view);
                }
            });
            this.f71318o.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.join.mgps.fragment.n2
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    this.f70290b.z0();
                }
            });
            this.f71318o.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp350));
            this.f71318o.setHeight(getResources().getDimensionPixelOffset(R.dimen.wdp193));
        }
        this.f71315l.setRotation(180.0f);
        boolean zIsFocusable = this.f71318o.isFocusable();
        f0();
        this.f71318o.C(this.f71309f, 2, 0, getResources().getDimensionPixelOffset(R.dimen.wdp80), 0);
        d0(zIsFocusable);
    }

    @Click
    void N0() {
        M0();
    }

    @Click
    void O0() {
        ShareBean shareBean = new ShareBean();
        shareBean.setTitle("邀请你一起联机对战");
        shareBean.setText("畅玩海量免费经典游戏，体验超爽联机！");
        shareBean.setQqUrl("https://tuis.5fun.com/?aid=7Fp12l");
        com.join.mgps.Util.w.p(getContext(), 2, shareBean);
        Ext ext = new Ext();
        ext.setPosition("0");
        com.papa.sim.statistic.t.l(getContext()).R1(Event.InviteFriends, ext);
    }

    public void P0() {
        q0();
    }

    @Click
    void Q0() {
        if (getActivity() instanceof FriendActivity) {
            ((FriendActivity) getActivity()).onAddFriend();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0(int number) {
        TextView textView = this.f71310g;
        if (textView == null) {
            return;
        }
        if (number < 1) {
            textView.setVisibility(4);
            return;
        }
        textView.setVisibility(0);
        if (number < 100) {
            textView.setCompoundDrawables(null, null, null, null);
            textView.setBackgroundResource(R.drawable.mygame_big_round);
            textView.setPadding(1, 0, 0, 1);
        } else {
            textView.setCompoundDrawables(null, null, null, null);
            textView.setBackgroundResource(R.drawable.message_round);
            textView.setPadding(1, 0, 2, 1);
        }
        textView.setText(number + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0(int state) {
        TextView textView = this.f71309f;
        if (textView == null) {
            return;
        }
        if (state == 0) {
            textView.setText("在线");
            this.f71309f.setSelected(true);
            this.f71309f.setTextColor(Color.parseColor("#FF16DB16"));
        } else if (state == 1) {
            textView.setText("勿扰");
            this.f71309f.setTextColor(Color.parseColor("#FFC4C4C4"));
            this.f71309f.setSelected(false);
        } else {
            textView.setText("离线");
            this.f71309f.setTextColor(Color.parseColor("#FFC4C4C4"));
            this.f71309f.setSelected(false);
        }
    }

    void T0(View view) {
        if (view == null) {
            return;
        }
        view.setSystemUiVisibility(5894);
    }

    void U0(int to) {
        String strM = com.wufan.friend.chat.c.u().m(Integer.parseInt(AccountUtil_.getInstance_(getContext()).getUid()));
        if (to == 2) {
            ShareBean shareBean = new ShareBean();
            shareBean.setTitle("邀请你一起联机对战");
            shareBean.setText(strM);
            shareBean.setQqUrl("https://tuis.5fun.com/?aid=7Fp12l");
            new Ext().setPosition("0");
        } else if (to == 0) {
            ShareBean shareBean2 = new ShareBean();
            shareBean2.setTitle("邀请你一起联机对战");
            shareBean2.setText(strM);
            shareBean2.setWechatShareUrl("https://tuis.5fun.com/?aid=7Fp12l");
            com.join.mgps.Util.w.q(getContext(), 0, strM, 1, 0);
            Ext ext = new Ext();
            ext.setPosition("1");
            com.papa.sim.statistic.t.l(getContext()).R1(Event.pasteInviteCode, ext);
        }
        h0(strM);
        toast("已复制到粘贴板");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V0() {
        Context context = getContext();
        if (g0(context, "com.tencent.mobileqq")) {
            W0(context);
        } else {
            Toast.makeText(context, "本机未安装QQ应用", 0).show();
        }
    }

    void W0(Context mContext) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", i0());
        intent.setType("text/plain");
        try {
            intent.setClassName("com.tencent.mobileqq", "com.tencent.mobileqq.activity.JumpActivity");
            Intent intentCreateChooser = Intent.createChooser(intent, "选择分享途径");
            if (intentCreateChooser == null) {
                return;
            }
            mContext.startActivity(intentCreateChooser);
        } catch (Exception unused) {
            mContext.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0() {
        if (!IntentUtil.getInstance().isLogined(getContext()) || IntentUtil.getInstance().isTourist(getContext())) {
            TextView textView = this.f71308e;
            if (textView != null) {
                textView.setVisibility(0);
            }
            TextView textView2 = this.f71307d;
            if (textView2 != null) {
                textView2.setVisibility(4);
            }
            TextView textView3 = this.f71309f;
            if (textView3 != null) {
                textView3.setVisibility(4);
            }
            View view = this.f71315l;
            if (view != null) {
                view.setVisibility(4);
            }
            View view2 = this.f71311h;
            if (view2 != null) {
                view2.setVisibility(4);
            }
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.fragment.r2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    v2.D0(view3);
                }
            };
            TextView textView4 = this.f71308e;
            if (textView4 != null) {
                textView4.setOnClickListener(onClickListener);
            }
            SimpleDraweeView simpleDraweeView = this.f71306c;
            if (simpleDraweeView != null) {
                simpleDraweeView.setOnClickListener(onClickListener);
            }
            View view3 = this.f71312i;
            if (view3 != null) {
                view3.setOnClickListener(onClickListener);
            }
            View view4 = this.f71314k;
            if (view4 != null) {
                view4.setOnClickListener(onClickListener);
                return;
            }
            return;
        }
        TextView textView5 = this.f71308e;
        if (textView5 != null) {
            textView5.setVisibility(8);
        }
        TextView textView6 = this.f71307d;
        if (textView6 != null) {
            textView6.setVisibility(0);
        }
        TextView textView7 = this.f71309f;
        if (textView7 != null) {
            textView7.setVisibility(0);
        }
        View view5 = this.f71315l;
        if (view5 != null) {
            view5.setVisibility(0);
        }
        TextView textView8 = this.f71307d;
        if (textView8 != null) {
            textView8.setText(this.f71320q.getNickname());
        }
        if (this.f71311h != null) {
            if (com.join.mgps.Util.b.piv(this.f71320q)) {
                this.f71311h.setVisibility(0);
            } else {
                this.f71311h.setVisibility(8);
            }
        }
        SimpleDraweeView simpleDraweeView2 = this.f71306c;
        if (simpleDraweeView2 != null) {
            simpleDraweeView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.o2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view6) {
                    this.f70391b.A0(view6);
                }
            });
        }
        View view6 = this.f71312i;
        if (view6 != null) {
            view6.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.p2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view7) {
                    this.f70494b.B0(view7);
                }
            });
        }
        View view7 = this.f71314k;
        if (view7 != null) {
            view7.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.q2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view8) {
                    this.f70581b.C0(view8);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0(FriendChangeStateNotification friendChangeState) {
        if (friendChangeState == null) {
            return;
        }
        if (friendChangeState.getFriend().getAccountId() == AccountUtil_.getInstance_(getContext()).getAccountData().getUid()) {
            S0(friendChangeState.getStateValue());
            return;
        }
        com.join.mgps.adapter.v0 v0Var = this.f71321r;
        if (v0Var != null) {
            for (FriendBean friendBean : v0Var.o()) {
                if (friendBean.getUid() == friendChangeState.getFriend().getAccountId()) {
                    friendBean.setState(friendChangeState.getStateValue());
                    this.f71321r.notifyDataSetChanged();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0(FriendAccountInfo data) {
        int i10;
        try {
            this.f71327x = data;
            if (data == null) {
                return;
            }
            com.wufan.friend.chat.c.u().S(this.f71327x);
            com.join.android.app.common.utils.l.y(this.f71306c, this.f71327x.getAvatar());
            TextView textView = this.f71307d;
            if (textView != null) {
                textView.setText(this.f71327x.getNickname());
            }
            if ("OFFLINE".equals(this.f71327x.getOnLineStatus())) {
                i10 = 2;
            } else {
                i10 = (!"ONLINE".equals(this.f71327x.getOnLineStatus()) && "INVISIBLE".equals(this.f71327x.getOnLineStatus())) ? 1 : 0;
            }
            com.wufan.friend.chat.c.u().W(i10);
            S0(i10);
            int requestFriendCount = this.f71327x.getRequestFriendCount() + this.f71327x.getLikedCount();
            if (requestFriendCount > 0) {
                TextView textView2 = this.f71310g;
                if (textView2 != null) {
                    textView2.setVisibility(0);
                }
                R0(requestFriendCount);
            } else {
                TextView textView3 = this.f71310g;
                if (textView3 != null) {
                    textView3.setVisibility(8);
                }
            }
            if (this.f71311h != null) {
                if (data.isVip()) {
                    this.f71311h.setVisibility(0);
                } else {
                    this.f71311h.setVisibility(8);
                }
            }
            X0();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void a0(int ruid) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRuid(ruid);
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            ResponseModel responseModelI = this.f71322s.i(friendReqBean);
            if (responseModelI != null) {
                if (responseModelI.getError() == 0) {
                    b0(Boolean.TRUE);
                } else {
                    toast(responseModelI.getMsg());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a1() {
        try {
            if (this.f71327x == null) {
                return;
            }
            com.wufan.friend.chat.c.u().S(this.f71327x);
            com.join.android.app.common.utils.l.y(this.f71306c, this.f71327x.getAvatar());
            TextView textView = this.f71307d;
            if (textView != null) {
                textView.setText(this.f71327x.getNickname());
            }
            S0("ONLINE".equals(this.f71327x.getOnLineStatus()) ? 0 : 1);
            int requestFriendCount = this.f71327x.getRequestFriendCount() + this.f71327x.getLikedCount();
            if (requestFriendCount > 0) {
                TextView textView2 = this.f71310g;
                if (textView2 != null) {
                    textView2.setVisibility(0);
                }
                R0(requestFriendCount);
            } else {
                TextView textView3 = this.f71310g;
                if (textView3 != null) {
                    textView3.setVisibility(8);
                }
            }
            if (this.f71311h != null) {
                if (this.f71327x.isVip()) {
                    this.f71311h.setVisibility(0);
                } else {
                    this.f71311h.setVisibility(8);
                }
            }
            X0();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterViews() {
        Context context = getContext();
        this.f71322s = com.join.mgps.rpc.impl.h.p();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        linearLayoutManager.setOrientation(1);
        this.f71316m.setLayoutManager(linearLayoutManager);
        RecyclerView.ItemAnimator itemAnimator = this.f71316m.getItemAnimator();
        if (itemAnimator != null && (itemAnimator instanceof DefaultItemAnimator)) {
            ((DefaultItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        }
        com.join.mgps.adapter.v0 v0Var = new com.join.mgps.adapter.v0(context);
        this.f71321r = v0Var;
        this.f71316m.setAdapter(v0Var);
        if (context instanceof FriendActivity) {
            this.f71321r.J((FriendActivity) context);
        }
        this.f71321r.registerAdapterDataObserver(new a());
        c0();
        if (this.f71317n.getVisibility() == 0) {
            com.papa.sim.statistic.t.l(requireContext()).R1(Event.expBattleHallShare, new ExtBean().setFirstModule(EventP.FirstModel.findTab.name()).buildScene().toExt());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0(Boolean f10) {
        if (f10.booleanValue()) {
            toast("已发送申请");
        }
    }

    @Click
    void b1() {
        ShareBean shareBean = new ShareBean();
        shareBean.setTitle("邀请你一起联机对战");
        shareBean.setText("畅玩海量免费经典游戏，体验超爽联机！");
        shareBean.setWechatShareUrl("https://tuis.5fun.com/?aid=7Fp12l");
        com.join.mgps.Util.w.p(getContext(), 0, shareBean);
        Ext ext = new Ext();
        ext.setPosition("1");
        com.papa.sim.statistic.t.l(getContext()).R1(Event.InviteFriends, ext);
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.action_login_success"})
    void c0() {
        UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        this.f71320q = accountData;
        com.join.android.app.common.utils.l.y(this.f71306c, accountData.getAvatarSrc());
        X0();
        p0();
        q0();
        o0();
    }

    void d0(boolean tempFocusable) {
        s0(this.f71318o.getContentView());
        this.f71329z = tempFocusable;
        this.f71318o.update();
    }

    @Click
    void e0() {
        if (getActivity() instanceof FriendActivity) {
            ((FriendActivity) getActivity()).onFriendClick(AccountUtil_.getInstance_(getContext()).getUid());
        }
    }

    public boolean g0(Context context, String packageName) {
        if (packageName != null && !"".equals(packageName)) {
            try {
                context.getPackageManager().getApplicationInfo(packageName, 8192);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    FriendBean k0(Friend friend) {
        FriendBean friendBean = new FriendBean();
        friendBean.setNickName(friend.getAccount().getNickname());
        friendBean.setAvatar(friend.getAccount().getAvatar());
        friendBean.setUid(friend.getAccount().getAccountId());
        friendBean.setLevel(friend.getAccount().getLevel());
        friendBean.setVip(friend.getAccount().getVip());
        friendBean.setBanned(friend.getAccount().getBanned());
        if (friend.getState() != null) {
            friendBean.setGameId(friend.getState().getGameId() + "");
            friendBean.setGameName(friend.getState().getGameName());
            friendBean.setRoomId((int) friend.getState().getLobbyRoomId());
            friendBean.setRoomType(friend.getState().getRoomType());
            friendBean.setPlayType(friend.getState().getPlayTypeValue());
        }
        return friendBean;
    }

    FriendBean l0(FriendAddSuccessNotification notification) {
        FriendBean friendBean = new FriendBean();
        AccountInfo friend = notification.getFriend();
        friendBean.setNickName(friend.getNickname());
        friendBean.setAvatar(friend.getAvatar());
        friendBean.setUid(friend.getAccountId());
        friendBean.setLevel(friend.getLevel());
        friendBean.setVip(friend.getVip());
        friendBean.setBanned(friend.getBanned());
        friendBean.setState(notification.getOnlineState().getNumber());
        PlayState playState = notification.getPlayState();
        if (playState != null) {
            friendBean.setGameId(playState.getGameId() + "");
            friendBean.setGameName(playState.getGameName());
            friendBean.setRoomId((int) playState.getLobbyRoomId());
            friendBean.setRoomType(playState.getRoomType());
            friendBean.setPlayType(playState.getPlayTypeValue());
        }
        return friendBean;
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    FriendBean m0(RecommendPlayer friend) {
        FriendBean friendBean = new FriendBean();
        friendBean.setRecommend(true);
        friendBean.setNickName(friend.getNickname());
        friendBean.setAvatar(friend.getAvatar());
        friendBean.setUid(friend.getAccountId());
        friendBean.setLevel(friend.getLevel());
        friendBean.setBanned(friend.getBanned());
        friendBean.setGameId(friend.getGameId() + "");
        friendBean.setGameName(friend.getGameName());
        return friendBean;
    }

    FriendBean n0(RecommendPlayerStateChangeNotification notification) {
        FriendBean friendBean = new FriendBean();
        friendBean.setRecommend(true);
        AccountInfo friend = notification.getFriend();
        friendBean.setNickName(friend.getNickname());
        friendBean.setAvatar(friend.getAvatar());
        friendBean.setUid(friend.getAccountId());
        friendBean.setLevel(friend.getLevel());
        friendBean.setVip(friend.getVip());
        friendBean.setBanned(friend.getBanned());
        friendBean.setState(notification.getState().getNumber());
        PlayState playState = notification.getPlayState();
        if (playState != null) {
            friendBean.setGameId(playState.getGameId() + "");
            friendBean.setGameName(playState.getGameName());
            friendBean.setRoomId((int) playState.getLobbyRoomId());
            friendBean.setRoomType(playState.getRoomType());
            friendBean.setPlayType(playState.getPlayTypeValue());
        }
        return friendBean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = me.relex.photodraweeview.d.S1)
    public void o0() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            ResponseModel<FriendAccountInfo> responseModelB = this.f71322s.b(accountData.getUid() + "", accountData.getToken());
            if (responseModelB != null) {
                if (responseModelB.getError() != 0 || responseModelB.getData() == null) {
                    toast(responseModelB.getMsg());
                } else {
                    Z0(responseModelB.getData());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!org.greenrobot.eventbus.c.f().o(this)) {
            com.join.mgps.Util.j0.a().d(this);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f71323t = arguments.getString("gameId");
            this.f71324u = arguments.getString("gameSeries");
            this.f71326w = arguments.getString("type");
        }
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.join.mgps.event.w event) {
        com.join.mgps.adapter.v0 v0Var;
        if (event == null || event.a() != 10 || (v0Var = this.f71321r) == null) {
            return;
        }
        v0Var.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 100)
    public void p0() {
        if (this.f71319p.F()) {
            this.f71319p.t();
        } else {
            this.f71319p.L(this.f71320q.getUid(), this.f71320q.getToken());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:30:0x0090  */
    @Background(delay = me.relex.photodraweeview.d.S1)
    public void q0() {
        int i10;
        try {
            if (!TextUtils.isEmpty(this.f71326w) && this.f71326w.equals("BATTLE_ROOM_LIST") && (getActivity() instanceof GameRoomListActivity) && TextUtils.isEmpty(this.f71324u)) {
                this.f71324u = ((GameRoomListActivity) getActivity()).getGameSeries();
            }
            List<DownloadTask> listU = q5.f.M().u();
            ArrayList arrayList = new ArrayList();
            Iterator<DownloadTask> it2 = listU.iterator();
            while (it2.hasNext()) {
                arrayList.add(Long.valueOf(it2.next().getCrc_link_type_val()));
            }
            if (TextUtils.isEmpty(this.f71326w) || this.f71326w.equals("BATTLE_HOME_PAGE")) {
                i10 = 0;
            } else if (this.f71326w.equals("BATTLE_ROOM_LIST")) {
                i10 = 1;
            } else if (this.f71326w.equals("BATTLE_ROOM")) {
                i10 = 2;
            } else if (this.f71326w.equals("GAME_HOME_PAGE")) {
                i10 = 3;
            } else {
                i10 = 0;
            }
            long j10 = 0;
            try {
                if (!TextUtils.isEmpty(this.f71323t)) {
                    j10 = Long.parseLong(this.f71323t);
                }
            } catch (NumberFormatException e10) {
                e10.printStackTrace();
            }
            this.f71319p.y(j10, this.f71324u, arrayList, i10);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = me.relex.photodraweeview.d.S1)
    public void r0() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            if (!TextUtils.isEmpty(this.f71326w) && this.f71326w.equals("BATTLE_ROOM_LIST") && (getActivity() instanceof GameRoomListActivity)) {
                if (TextUtils.isEmpty(this.f71324u)) {
                    this.f71324u = ((GameRoomListActivity) getActivity()).getGameSeries();
                }
                if (((GameRoomListActivity) getActivity()).getGameSeriesGames() != null && ((GameRoomListActivity) getActivity()).getGameSeriesGames().size() > 0) {
                    this.f71325v.clear();
                    this.f71325v.addAll(((GameRoomListActivity) getActivity()).getGameSeriesGames());
                }
                if (TextUtils.isEmpty(this.f71324u)) {
                    return;
                }
            }
            ArrayList arrayList = new ArrayList();
            List<GameInfoBean> list = this.f71325v;
            if (list != null && list.size() > 0) {
                Iterator<GameInfoBean> it2 = this.f71325v.iterator();
                while (it2.hasNext()) {
                    DownloadTask downloadTaskG = q5.f.M().G(it2.next().getGame_id());
                    if (downloadTaskG != null) {
                        arrayList.add(downloadTaskG.getCrc_link_type_val());
                    }
                }
            }
            FriendRecommendRequest friendRecommendRequest = new FriendRecommendRequest();
            friendRecommendRequest.setUid(accountData.getUid());
            friendRecommendRequest.setToken(accountData.getToken());
            friendRecommendRequest.setPage(1);
            friendRecommendRequest.setGameId(this.f71323t);
            friendRecommendRequest.setGameSeries(this.f71324u);
            friendRecommendRequest.setLocationPageType(this.f71326w);
            friendRecommendRequest.setLocalDownloadGameIds(arrayList);
            ResponseModel<List<FriendBean>> responseModelA = this.f71322s.a(friendRecommendRequest);
            if (responseModelA != null) {
                if (responseModelA.getError() != 0 || responseModelA.getData() == null) {
                    toast(responseModelA.getMsg());
                } else {
                    updateUi(responseModelA.getData());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void s0(View view) {
        T0(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String info) {
        com.join.mgps.Util.a3.b(getContext()).d(info);
    }

    @Click
    void t0() {
        Context context = getContext();
        if (IntentUtil.getInstance().goLogin(context)) {
            return;
        }
        if (this.A == null) {
            Dialog dialog = new Dialog(context, R.style.newtrans_floating_dialog);
            this.A = dialog;
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                this.A.getWindow().setAttributes(attributes);
            }
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_invite_battle1, (ViewGroup) null);
            this.C = viewInflate.findViewById(R.id.iv_close);
            this.D = (ImageView) viewInflate.findViewById(R.id.button);
            this.E = (ImageView) viewInflate.findViewById(R.id.button1);
            this.F = (TextView) viewInflate.findViewById(R.id.txt);
            this.A.setContentView(viewInflate);
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.wdp622);
            int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.wdp447);
            Window window = this.A.getWindow();
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (dimensionPixelOffset == 0) {
                dimensionPixelOffset = -1;
            }
            attributes2.width = dimensionPixelOffset;
            if (dimensionPixelOffset2 == 0) {
                dimensionPixelOffset2 = -1;
            }
            attributes2.height = dimensionPixelOffset2;
            window.setGravity(17);
            this.C.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.s2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f70868b.u0(view);
                }
            });
            com.papa.sim.statistic.t.l(getContext()).R1(Event.clickBattleHallShare, new ExtBean().setFirstModule(EventP.FirstModel.findTab.name()).buildScene().toExt());
        }
        this.D.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.t2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f70972b.v0(view);
            }
        });
        this.E.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.u2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f71073b.w0(view);
            }
        });
        this.F.setText(i0());
        if (this.A.isShowing()) {
            return;
        }
        this.A.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toast(String msg) {
        ToastManager.show(msg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(List<FriendBean> data) {
        if (this.f71321r == null) {
            return;
        }
        if (data == null || data.size() == 0) {
            this.f71321r.p().clear();
            F0();
            return;
        }
        for (FriendBean friendBean : data) {
            friendBean.setState(0);
            friendBean.setRecommend(true);
        }
        this.f71321r.p().clear();
        this.f71321r.p().addAll(data);
        Iterator<FriendBean> it2 = this.f71321r.o().iterator();
        while (it2.hasNext()) {
            if (it2.next().isRecommend()) {
                it2.remove();
            }
        }
        this.f71321r.o().addAll(data);
        this.f71321r.K();
        this.f71321r.notifyDataSetChanged();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(Response response) {
        if (response == null) {
            return;
        }
        if (response.getServiceValue() == 1) {
            if (response.getPathValue() == 1) {
                if (response.getData() != null && response.getData().getLoginData() != null && response.getData().getLoginData().getSucceed()) {
                    S0(0);
                    com.wufan.friend.chat.c.u().T(true);
                    com.wufan.friend.chat.c.u().U(0);
                    this.f71319p.t();
                    this.f71328y = 1;
                } else if (this.f71328y > 0) {
                    o0();
                    this.f71328y--;
                }
                if (IntentUtil.getInstance().isLogined(getContext())) {
                    q0();
                }
            } else if (response.getPathValue() == 5 && response.getData() != null && response.getData().getNotification() != null && response.getData().getNotification().getFriendChangeState() != null) {
                Y0(response.getData().getNotification().getFriendChangeState());
            }
        }
        if (response.getServiceValue() == 4 && (response.getPathValue() == 11 || response.getPathValue() == 12)) {
            L0(response.getData().getRecommendPlayerData());
        }
        if (response.getData() == null || response.getData().getNotification() == null) {
            return;
        }
        NotificationData notification = response.getData().getNotification();
        if (response.getNotificationTypeValue() == 3) {
            J0(notification.getFriendPlayState());
            return;
        }
        if (response.getNotificationTypeValue() == 2) {
            K0(notification.getFriendChangeState());
            return;
        }
        if (response.getNotificationTypeValue() == 11) {
            if (notification.getAllFrdNotification() != null) {
                H0(notification.getAllFrdNotification());
                return;
            }
            return;
        }
        if (response.getNotificationTypeValue() == 7) {
            if (notification.getFriAddReqNotification() == null || this.f71327x == null) {
                return;
            }
            int count = notification.getFriAddReqNotification().getCount();
            if (notification.getFriAddReqNotification().getTypeValue() == 0) {
                FriendAccountInfo friendAccountInfo = this.f71327x;
                friendAccountInfo.setRequestFriendCount(friendAccountInfo.getRequestFriendCount() + count >= 0 ? this.f71327x.getRequestFriendCount() + count : 0);
            } else if (notification.getFriAddReqNotification().getTypeValue() == 1) {
                FriendAccountInfo friendAccountInfo2 = this.f71327x;
                friendAccountInfo2.setLikedCount(friendAccountInfo2.getLikedCount() + count >= 0 ? this.f71327x.getLikedCount() + count : 0);
            }
            a1();
            return;
        }
        if (response.getNotificationTypeValue() == 9) {
            if (notification.getFriendAddSuccessNotification() != null) {
                FriendAddSuccessNotification friendAddSuccessNotification = notification.getFriendAddSuccessNotification();
                if (friendAddSuccessNotification.getOnlineState().getNumber() == 0) {
                    FriendBean friendBeanL0 = l0(friendAddSuccessNotification);
                    com.join.mgps.adapter.v0 v0Var = this.f71321r;
                    v0Var.E(v0Var.n() + 1);
                    this.f71321r.o().add(friendBeanL0);
                    this.f71321r.K();
                    this.f71321r.notifyDataSetChanged();
                    return;
                }
                return;
            }
            return;
        }
        if (response.getNotificationTypeValue() == 12) {
            if (notification.getRecommendPlayerStateChange() != null) {
                RecommendPlayerStateChangeNotification recommendPlayerStateChange = notification.getRecommendPlayerStateChange();
                List<FriendBean> listP = this.f71321r.p();
                Iterator<FriendBean> it2 = listP.iterator();
                while (it2.hasNext()) {
                    FriendBean next = it2.next();
                    if (next.getUid() == recommendPlayerStateChange.getFriend().getAccountId()) {
                        if (recommendPlayerStateChange.getPlayState() != null && recommendPlayerStateChange.getPlayState().getGameId() != 0) {
                            PlayState playState = recommendPlayerStateChange.getPlayState();
                            next.setGameId(playState.getGameId() + "");
                            next.setGameName(playState.getGameName());
                            next.setRoomId((int) playState.getLobbyRoomId());
                            next.setRoomType(playState.getRoomType());
                            next.setPlayType(playState.getPlayTypeValue());
                        } else {
                            it2.remove();
                        }
                    }
                }
                F0();
                if (listP.size() == 0) {
                    q0();
                    return;
                }
                return;
            }
            return;
        }
        if (response.getNotificationTypeValue() == 13) {
            if (notification.getFriendDeleteSuccess() == null || this.f71321r == null) {
                return;
            }
            FriendDeleteSuccessNotification friendDeleteSuccess = notification.getFriendDeleteSuccess();
            Iterator<FriendBean> it3 = this.f71321r.o().iterator();
            while (it3.hasNext()) {
                FriendBean next2 = it3.next();
                if (!next2.isRecommend() && next2.getUid() == friendDeleteSuccess.getFriendId()) {
                    it3.remove();
                }
            }
            this.f71321r.notifyDataSetChanged();
            return;
        }
        if (response.getNotificationTypeValue() != 14 || notification.getPlayerBanned() == null || notification.getPlayerBanned().getAccountInfo() == null) {
            return;
        }
        AccountInfo accountInfo = notification.getPlayerBanned().getAccountInfo();
        com.join.mgps.adapter.v0 v0Var2 = this.f71321r;
        if (v0Var2 != null) {
            for (FriendBean friendBean : v0Var2.o()) {
                if (friendBean.getUid() == accountInfo.getAccountId()) {
                    friendBean.setBanned(accountInfo.getBanned());
                }
            }
            this.f71321r.notifyDataSetChanged();
        }
        FriendAccountInfo friendAccountInfo3 = this.f71327x;
        if (friendAccountInfo3 == null || friendAccountInfo3.getAccountId() != accountInfo.getAccountId()) {
            return;
        }
        this.f71327x.setBanned(accountInfo.getBanned());
        a1();
    }
}
