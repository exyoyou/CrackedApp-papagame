package com.kwai.monitor.log;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import ec.b;
import fc.a;
import kwai.a.e;

/* JADX INFO: loaded from: classes2.dex */
public class TurboAgent {
    public static final String TAG = "TurboAgent";

    public static void init(TurboConfig turboConfig) {
        e.c.INSTANCE.f93885a.a(turboConfig);
    }

    public static void on14dayStay() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_14_DAY_STAY"));
    }

    public static void on24hStay() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_24h_STAY"));
    }

    public static void on2dayStay() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_2_DAY_STAY"));
    }

    public static void on30dayStay() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_30_DAY_STAY"));
    }

    public static void on3dayStay() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_3_DAY_STAY"));
    }

    public static void on4dayStay() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_4_DAY_STAY"));
    }

    public static void on5dayStay() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_5_DAY_STAY"));
    }

    public static void on6dayStay() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_6_DAY_STAY"));
    }

    public static void onAddShoppingCart(double d10) {
        a aVar = new a("EVENT_ADD_SHOPPINGCART");
        aVar.f91176b = d10;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void onAffairFinish() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_JINJIAN"));
    }

    public static void onAppActive() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_ACTIVE"));
    }

    public static void onCreditGrant() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_CREDIT_GRANT"));
    }

    public static void onFormSubmit() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_FORM_SUBMIT"));
    }

    public static void onGameConsumption(double d10) {
        a aVar = new a("EVENT_GAME_CONSUMPTION");
        aVar.f91176b = d10;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void onGameCreateRole(String str) {
        a aVar = new a("EVENT_GAME_CREATE_ROLE");
        aVar.f91178d = str;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void onGameUpgradeRole(int i10) {
        a aVar = new a("EVENT_GAME_UPGRADE_ROLE");
        aVar.f91179e = i10;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void onGameWatchRewardVideo() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_GAME_WATCH_REWARD_VIDEO"));
    }

    public static void onGoodsView(double d10) {
        a aVar = new a("EVENT_GOODS_VIEW");
        aVar.f91176b = d10;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void onNextDayStay() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_NEXTDAY_STAY"));
    }

    public static void onOrderPayed(double d10) {
        a aVar = new a("EVENT_ORDER_PAIED");
        aVar.f91176b = d10;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void onOrderSubmit(double d10) {
        a aVar = new a("EVENT_ORDER_SUBMIT");
        aVar.f91176b = d10;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void onPagePause() {
        if (b.f90890b <= 0) {
            kc.a.a("GameDurationHelper", "GAME_RESUME_LAST_TIME <=0");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - b.f90890b;
        if (jCurrentTimeMillis < BaseCloudFileManager.ACK_TIMEOUT) {
            kc.a.a("GameDurationHelper", "ignore this time while duration is less than 3s");
            return;
        }
        a aVar = new a("EVENT_GAME_REPORT_DURATION");
        aVar.f91177c = jCurrentTimeMillis;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void onPageResume(Activity activity) {
        b.c(activity);
    }

    public static void onPassKeyGameCard() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_PASS_KEY_GAME_CARD"));
    }

    public static void onPay(double d10) {
        a aVar = new a("EVENT_PAY");
        aVar.f91176b = d10;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void onRegister() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_REGISTER"));
    }

    public static void onVipLevelUp(int i10) {
        a aVar = new a("EVENT_VIP_LEVEL_UP");
        aVar.f91180f = i10;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void onWatchAppAd() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_WATCH_APP_AD"));
    }

    public static void onWeekStay() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_WEEK_STAY"));
    }

    public static void registerOAIDListener(Context context, OAIDListener oAIDListener) {
        if (context == null || oAIDListener == null) {
            kc.a.b(TAG, "registerOAIDListener context or oaidListener is null");
            return;
        }
        Context applicationContext = context.getApplicationContext();
        hc.a.f91459b = oAIDListener;
        if (TextUtils.isEmpty(hc.a.f91458a)) {
            hc.a.e(applicationContext);
            return;
        }
        try {
            OAIDListener oAIDListener2 = hc.a.f91459b;
            if (oAIDListener2 != null) {
                oAIDListener2.OnOAIDValid(hc.a.f91458a);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void reportGameServer(ServerType serverType) {
        a aVar = new a("EVENT_SERVER_CONNECTION");
        if (serverType == ServerType.DedicatedServer) {
            aVar.f91182h = 1;
        } else if (serverType == ServerType.MixtureServer) {
            aVar.f91182h = 2;
        }
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void reportInsufficientGoldCoins() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_INSUFFICIENT_GOLD_COINS"));
    }

    public static void reportKeyPathOptimization(String str) {
        a aVar = new a("EVENT_KEY_PATH_OPTIMIZATION");
        aVar.f91183i = str;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void reportMainCityUpgrade(int i10) {
        a aVar = new a("EVENT_MAIN_CITY_UPGRADE");
        aVar.f91179e = i10;
        e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void reportUsersIndependentNaming() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_USERS_INDEPENDENT_NAMING"));
    }

    public static void reportUsersReceiveGiftBags() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_USERS_RECEIVE_GIFT_BAGS"));
    }

    public static void reportUsersReceiveRedEnvelopes() {
        e.c.INSTANCE.f93885a.b(new a("EVENT_USERS_RECEIVE_RED_ENVELOPES"));
    }

    public static void unRegisterOAIDListener() {
        hc.a.f91459b = null;
    }

    public static void onPageResume() {
        b.a();
    }

    public static void onPagePause(Activity activity) {
        b.b(activity);
    }
}
