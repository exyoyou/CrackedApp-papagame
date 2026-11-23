package com.join.mgps.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DownloadGameArgsBean;
import com.join.mgps.dto.PayOrderInfo;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.SharePostRequest;
import com.join.mgps.dto.SpValue;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.common.constants.BAction;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class CommonService_ extends CommonService {
    private final IntentFilter Z = new IntentFilter();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final BroadcastReceiver f72580p0 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.e1();
        }
    };

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private final IntentFilter f72548b1 = new IntentFilter();

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private final BroadcastReceiver f72557f1 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.f1();
        }
    };

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private final IntentFilter f72564i1 = new IntentFilter();

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private final BroadcastReceiver f72571l1 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.v0();
        }
    };

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private final IntentFilter f72581p1 = new IntentFilter();

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private final BroadcastReceiver f72584q1 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.l0();
        }
    };

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private final IntentFilter f72587r1 = new IntentFilter();

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private final BroadcastReceiver f72594v1 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.A0(intent);
        }
    };
    private final IntentFilter L1 = new IntentFilter();
    private final BroadcastReceiver R1 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.6

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72761b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.H0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };
    private final IntentFilter V1 = new IntentFilter();

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    private final BroadcastReceiver f72546a2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.h1();
        }
    };

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private final IntentFilter f72549b2 = new IntentFilter();

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    private final BroadcastReceiver f72551c2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.8

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72764b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72765c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72766d = "sec";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72767e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.K(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    };

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    private final IntentFilter f72553d2 = new IntentFilter();

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    private final BroadcastReceiver f72555e2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.9

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72769b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72770c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72771d = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.N(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"));
        }
    };

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private final IntentFilter f72558f2 = new IntentFilter();

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    private final BroadcastReceiver f72560g2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.10

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72601b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72602c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72603d = "uid";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72604e = "startMode";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.O(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"), extras.getInt("startMode"));
        }
    };

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    private final IntentFilter f72562h2 = new IntentFilter();

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    private final BroadcastReceiver f72565i2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.11

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72606b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72607c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72608d = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.P(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"));
        }
    };

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    private final IntentFilter f72567j2 = new IntentFilter();

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    private final BroadcastReceiver f72569k2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.12

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72610b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72611c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72612d = "uid";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72613e = "p2Uid";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f72614f = "time";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.Q(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"), extras.getString("p2Uid"), extras.getLong("time"));
        }
    };

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    private final IntentFilter f72572l2 = new IntentFilter();

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    private final BroadcastReceiver f72574m2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.13

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72616b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72617c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72618d = "uid";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72619e = "p2Uid";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f72620f = "time";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.J(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"), extras.getString("p2Uid"), extras.getLong("time"));
        }
    };

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    private final IntentFilter f72576n2 = new IntentFilter();

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    private final BroadcastReceiver f72578o2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.14

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72622b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72623c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72624d = "jsonData";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72625e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.x0(extras.getString("packageName"), extras.getString("gameId"), extras.getString("jsonData"), extras.getString("uid"));
        }
    };

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private final IntentFilter f72582p2 = new IntentFilter();

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    private final BroadcastReceiver f72585q2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.15

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72627b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72628c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72629d = "uid";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72630e = "sec";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.J0(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"), extras.getLong("sec"));
        }
    };

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    private final IntentFilter f72588r2 = new IntentFilter();

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    private final BroadcastReceiver f72590s2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.16

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72632b = "gameId";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72633c = "uid";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72634d = "packageName";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72635e = "version";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f72636f = "errorInfo";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.H(extras.getString("gameId"), extras.getString("uid"), extras.getString("packageName"), extras.getString("version"), extras.getString(f72636f));
        }
    };

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    private final IntentFilter f72592t2 = new IntentFilter();

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    private final BroadcastReceiver f72593u2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.17

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72638b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72639c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72640d = "sec";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72641e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.L0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    };

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private final IntentFilter f72595v2 = new IntentFilter();

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    private final BroadcastReceiver f72596w2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.18

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72643b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72644c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72645d = "sec";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72646e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.P0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    };

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    private final IntentFilter f72597x2 = new IntentFilter();

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    private final BroadcastReceiver f72598y2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.19

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72648b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72649c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72650d = "sec";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72651e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.O0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    };

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    private final IntentFilter f72599z2 = new IntentFilter();
    private final BroadcastReceiver A2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.20

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72654b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72655c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72656d = "sec";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72657e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.N0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    };
    private final IntentFilter B2 = new IntentFilter();
    private final BroadcastReceiver C2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.21

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72659b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72660c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72661d = "sec";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72662e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.Q0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    };
    private final IntentFilter D2 = new IntentFilter();
    private final BroadcastReceiver E2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.22

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72664b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72665c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72666d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72667e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.Y0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    };
    private final IntentFilter F2 = new IntentFilter();
    private final BroadcastReceiver G2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.23

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72669b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72670c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72671d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72672e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.T0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    };
    private final IntentFilter H2 = new IntentFilter();
    private final BroadcastReceiver I2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.24

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72674b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72675c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72676d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72677e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.Z0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    };
    private final IntentFilter J2 = new IntentFilter();
    private final BroadcastReceiver K2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.25

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72679b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72680c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72681d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72682e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.S0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    };
    private final IntentFilter L2 = new IntentFilter();
    private final BroadcastReceiver M2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.26

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72684b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72685c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72686d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72687e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.X0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    };
    private final IntentFilter N2 = new IntentFilter();
    private final BroadcastReceiver O2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.27

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72689b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72690c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72691d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72692e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.U0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    };
    private final IntentFilter P2 = new IntentFilter();
    private final BroadcastReceiver Q2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.28

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72694b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72695c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72696d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72697e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.V0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    };
    private final IntentFilter R2 = new IntentFilter();
    private final BroadcastReceiver S2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.29

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72699b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72700c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72701d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72702e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.W0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    };
    private final IntentFilter T2 = new IntentFilter();
    private final BroadcastReceiver U2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.30

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72705b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72706c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72707d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72708e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.R0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    };
    private final IntentFilter V2 = new IntentFilter();
    private final BroadcastReceiver W2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.31

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72710b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72711c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72712d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72713e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.M0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    };
    private final IntentFilter X2 = new IntentFilter();
    private final BroadcastReceiver Y2 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.32

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72715b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72716c = "key";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72717d = "msg";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72718e = "startMode";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f72719f = "gameId";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final String f72720g = "roomId";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final String f72721h = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.D0(extras.getString("packageName"), extras.getString("key"), extras.getString("msg"), extras.getInt("startMode"), extras.getString("gameId"), extras.getString(f72720g), extras.getString("uid"));
        }
    };
    private final IntentFilter Z2 = new IntentFilter();

    /* JADX INFO: renamed from: a3, reason: collision with root package name */
    private final BroadcastReceiver f72547a3 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.33

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72723b = "eventName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72724c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72725d = "position";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72726e = "uid";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f72727f = "endId";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.G(extras.getString(f72723b), extras.getString("gameId"), extras.getString("position"), extras.getString("uid"), extras.getString("endId"));
        }
    };

    /* JADX INFO: renamed from: b3, reason: collision with root package name */
    private final IntentFilter f72550b3 = new IntentFilter();

    /* JADX INFO: renamed from: c3, reason: collision with root package name */
    private final BroadcastReceiver f72552c3 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.34

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72729b = "imagePath";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72730c = "from";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.g1(extras.getString("imagePath"), (Integer) extras.getSerializable("from"));
        }
    };

    /* JADX INFO: renamed from: d3, reason: collision with root package name */
    private final IntentFilter f72554d3 = new IntentFilter();

    /* JADX INFO: renamed from: e3, reason: collision with root package name */
    private final BroadcastReceiver f72556e3 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.35

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72732b = "md5Str";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.o1((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString(f72732b));
        }
    };

    /* JADX INFO: renamed from: f3, reason: collision with root package name */
    private final IntentFilter f72559f3 = new IntentFilter();

    /* JADX INFO: renamed from: g3, reason: collision with root package name */
    private final BroadcastReceiver f72561g3 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.36

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72734b = "gameId";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72735c = "liveTime";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.Z1(extras.getString("gameId"), (Long) extras.getSerializable(f72735c));
        }
    };

    /* JADX INFO: renamed from: h3, reason: collision with root package name */
    private final IntentFilter f72563h3 = new IntentFilter();

    /* JADX INFO: renamed from: i3, reason: collision with root package name */
    private final BroadcastReceiver f72566i3 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.37

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72737b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72738c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72739d = "sec";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72740e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.M(extras.getString("packageName"), extras.getString("gameId"), extras.getLong("sec"), extras.getString("uid"));
        }
    };

    /* JADX INFO: renamed from: j3, reason: collision with root package name */
    private final IntentFilter f72568j3 = new IntentFilter();

    /* JADX INFO: renamed from: k3, reason: collision with root package name */
    private final BroadcastReceiver f72570k3 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.38

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72742b = "packageName";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72743c = "gameId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f72744d = "sec";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f72745e = "uid";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.L(extras.getString("packageName"), extras.getString("gameId"), extras.getLong("sec"), extras.getString("uid"));
        }
    };

    /* JADX INFO: renamed from: l3, reason: collision with root package name */
    private final IntentFilter f72573l3 = new IntentFilter();

    /* JADX INFO: renamed from: m3, reason: collision with root package name */
    private final BroadcastReceiver f72575m3 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.39

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72747b = "key_name";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72748c = "show";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.I0(extras.getString(f72747b), extras.getBoolean("show"));
        }
    };

    /* JADX INFO: renamed from: n3, reason: collision with root package name */
    private final IntentFilter f72577n3 = new IntentFilter();

    /* JADX INFO: renamed from: o3, reason: collision with root package name */
    private final BroadcastReceiver f72579o3 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.40

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72751b = "challengeId";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72752c = "gameId";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.E0(extras.getString(f72751b), extras.getString("gameId"));
        }
    };

    /* JADX INFO: renamed from: p3, reason: collision with root package name */
    private final IntentFilter f72583p3 = new IntentFilter();

    /* JADX INFO: renamed from: q3, reason: collision with root package name */
    private final BroadcastReceiver f72586q3 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.41

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72754b = "sp_key";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72755c = "sp_value";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.G0(extras.getString(f72754b), (SpValue) extras.getSerializable(f72755c));
        }
    };

    /* JADX INFO: renamed from: r3, reason: collision with root package name */
    private final IntentFilter f72589r3 = new IntentFilter();

    /* JADX INFO: renamed from: s3, reason: collision with root package name */
    private final BroadcastReceiver f72591s3 = new BroadcastReceiver() { // from class: com.join.mgps.service.CommonService_.42

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f72757b = "gameId";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f72758c = "isOnStart";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.A(extras.getString("gameId"), extras.getBoolean(f72758c));
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72773b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ PayOrderInfo f72774c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ UserInfo f72775d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f72776e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f72777f;

        a(final String val$gameid, final PayOrderInfo val$orderInfo, final UserInfo val$accountBean, final boolean val$fromSdk, final String val$appkey) {
            this.f72773b = val$gameid;
            this.f72774c = val$orderInfo;
            this.f72775d = val$accountBean;
            this.f72776e = val$fromSdk;
            this.f72777f = val$appkey;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.O1(this.f72773b, this.f72774c, this.f72775d, this.f72776e, this.f72777f);
        }
    }

    class a0 extends org.androidannotations.api.a.c {
        a0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.d();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72780b;

        b(final String val$message) {
            this.f72780b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.t0(this.f72780b);
        }
    }

    class b0 extends org.androidannotations.api.a.c {
        b0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.l1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f72783b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f72784c;

        c(final CollectionBeanSub val$detialResultBean, final boolean val$needCheckpay) {
            this.f72783b = val$detialResultBean;
            this.f72784c = val$needCheckpay;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.J1(this.f72783b, this.f72784c);
        }
    }

    class c0 extends org.androidannotations.api.a.c {
        c0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.e0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f72787b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f72788c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f72789d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f72790e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f72791f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ boolean f72792g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f72793h;

        d(final CollectionBeanSub val$detialResultBean, final boolean val$needCheckpay, final boolean val$uncheckSelfSupport, final String val$ext, final boolean val$disableShowSpeedUpPrompt, final boolean val$fromRecomDown, final DownloadGameArgsBean val$downArgs) {
            this.f72787b = val$detialResultBean;
            this.f72788c = val$needCheckpay;
            this.f72789d = val$uncheckSelfSupport;
            this.f72790e = val$ext;
            this.f72791f = val$disableShowSpeedUpPrompt;
            this.f72792g = val$fromRecomDown;
            this.f72793h = val$downArgs;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.K1(this.f72787b, this.f72788c, this.f72789d, this.f72790e, this.f72791f, this.f72792g, this.f72793h);
        }
    }

    class d0 extends org.androidannotations.api.a.c {
        d0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.a0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f72796b;

        e(final Intent val$intent) {
            this.f72796b = val$intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.A0(this.f72796b);
        }
    }

    class e0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f72798b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e0(String id2, long delay, String serial, final List val$beans) {
            super(id2, delay, serial);
            this.f72798b = val$beans;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.s1(this.f72798b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72800b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f72801c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ QueryDownloadInfoResponseData f72802d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ DownloadTask f72803e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f72804f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f72805g;

        f(final String val$gameId, final String val$ext, final QueryDownloadInfoResponseData val$data, final DownloadTask val$task, final boolean val$isfromRecomed, final DownloadGameArgsBean val$downArgs) {
            this.f72800b = val$gameId;
            this.f72801c = val$ext;
            this.f72802d = val$data;
            this.f72803e = val$task;
            this.f72804f = val$isfromRecomed;
            this.f72805g = val$downArgs;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.G1(this.f72800b, this.f72801c, this.f72802d, this.f72803e, this.f72804f, this.f72805g);
        }
    }

    class f0 extends org.androidannotations.api.a.c {
        f0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.z();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72808b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f72809c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f72810d;

        g(final String val$gameid, final String val$gamename, final boolean val$isfromRecom) {
            this.f72808b = val$gameid;
            this.f72809c = val$gamename;
            this.f72810d = val$isfromRecom;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.V(this.f72808b, this.f72809c, this.f72810d);
        }
    }

    class g0 extends org.androidannotations.api.a.c {
        g0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.e();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72813b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f72814c;

        h(final String val$imagePath, final int val$from) {
            this.f72813b = val$imagePath;
            this.f72814c = val$from;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.M1(this.f72813b, this.f72814c);
        }
    }

    class h0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72816b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f72817c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DownloadTask f72818d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f72819e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f72820f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h0(String id2, long delay, String serial, final String val$gameId, final String val$ext, final DownloadTask val$downloadTask, final boolean val$fromRecomDown, final DownloadGameArgsBean val$downArgs) {
            super(id2, delay, serial);
            this.f72816b = val$gameId;
            this.f72817c = val$ext;
            this.f72818d = val$downloadTask;
            this.f72819e = val$fromRecomDown;
            this.f72820f = val$downArgs;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.E(this.f72816b, this.f72817c, this.f72818d, this.f72819e, this.f72820f);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72822b;

        i(final String val$msg) {
            this.f72822b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.Q1(this.f72822b);
        }
    }

    class i0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72824b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(String id2, long delay, String serial, final String val$packageName) {
            super(id2, delay, serial);
            this.f72824b = val$packageName;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.b0(this.f72824b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SharePostRequest f72826b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final SharePostRequest val$request) {
            super(id2, delay, serial);
            this.f72826b = val$request;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.D1(this.f72826b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72828b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f72829c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j0(String id2, long delay, String serial, final String val$gameId, final String val$upFilePath) {
            super(id2, delay, serial);
            this.f72828b = val$gameId;
            this.f72829c = val$upFilePath;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.Y1(this.f72828b, this.f72829c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k extends org.androidannotations.api.a.c {
        k(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.R1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f72832b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f72833c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f72834d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k0(String id2, long delay, String serial, final boolean val$silent, final boolean val$isOm, final String val$qkPosition) {
            super(id2, delay, serial);
            this.f72832b = val$silent;
            this.f72833c = val$isOm;
            this.f72834d = val$qkPosition;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.F(this.f72832b, this.f72833c, this.f72834d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.X();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l0 extends org.androidannotations.api.a.c {
        l0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.u1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72838b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final String val$gameid) {
            super(id2, delay, serial);
            this.f72838b = val$gameid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.k1(this.f72838b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m0 extends org.androidannotations.api.a.c {
        m0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.u0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72841b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final String val$gameid) {
            super(id2, delay, serial);
            this.f72841b = val$gameid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.m1(this.f72841b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class n0 extends org.androidannotations.api.builder.g<n0> {
        public n0(Context context) {
            super(context, (Class<?>) CommonService_.class);
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f72843b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final DownloadTask val$downloadTask) {
            super(id2, delay, serial);
            this.f72843b = val$downloadTask;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.x(this.f72843b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72845b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f72846c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f72847d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f72848e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ QueryDownloadInfoResponseData f72849f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ boolean f72850g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f72851h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ int f72852i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ boolean f72853j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f72854k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String id2, long delay, String serial, final String val$gameId, final String val$ext, final boolean val$uncheckSelfSupport, final long val$resourceSize, final QueryDownloadInfoResponseData val$data, final boolean val$disableShowSpeedUpPrompt, final int val$from, final int val$fromType, final boolean val$fromRecomDown, final DownloadGameArgsBean val$downArgs) {
            super(id2, delay, serial);
            this.f72845b = val$gameId;
            this.f72846c = val$ext;
            this.f72847d = val$uncheckSelfSupport;
            this.f72848e = val$resourceSize;
            this.f72849f = val$data;
            this.f72850g = val$disableShowSpeedUpPrompt;
            this.f72851h = val$from;
            this.f72852i = val$fromType;
            this.f72853j = val$fromRecomDown;
            this.f72854k = val$downArgs;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.U(this.f72845b, this.f72846c, this.f72847d, this.f72848e, this.f72849f, this.f72850g, this.f72851h, this.f72852i, this.f72853j, this.f72854k);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72856b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f72857c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f72858d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String id2, long delay, String serial, final String val$gameId, final int val$location, final String val$typeId) {
            super(id2, delay, serial);
            this.f72856b = val$gameId;
            this.f72857c = val$location;
            this.f72858d = val$typeId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.c0(this.f72856b, this.f72857c, this.f72858d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f72860b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String id2, long delay, String serial, final int val$curPid) {
            super(id2, delay, serial);
            this.f72860b = val$curPid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.K0(this.f72860b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s extends org.androidannotations.api.a.c {
        s(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.g0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t extends org.androidannotations.api.a.c {
        t(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.h0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class u extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f72864b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f72864b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.i0(this.f72864b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class v extends org.androidannotations.api.a.c {
        v(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.f0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class w extends org.androidannotations.api.a.c {
        w(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.W();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class x extends org.androidannotations.api.a.c {
        x(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.d0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class y extends org.androidannotations.api.a.c {
        y(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class z extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f72870b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        z(String id2, long delay, String serial, final List val$gameIds) {
            super(id2, delay, serial);
            this.f72870b = val$gameIds;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.w(this.f72870b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private void O2() {
        this.f72453c = new PrefDef_(this);
        this.f72454d = AccountUtil_.getInstance_(this);
        this.Z.addAction(p5.a.f96233z);
        this.f72548b1.addAction(p5.a.f96219s);
        this.f72564i1.addAction(p5.a.f96207m);
        this.f72581p1.addAction(p5.a.f96215q);
        this.f72587r1.addAction("android.net.wifi.STATE_CHANGE");
        this.f72587r1.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.f72587r1.addAction("android.net.wifi.SCAN_RESULTS");
        this.f72587r1.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.L1.addAction(p5.a.G);
        this.V1.addAction(p5.a.B);
        this.V1.addAction(p5.a.H);
        this.f72549b2.addAction(p5.a.V);
        this.f72553d2.addAction(p5.a.P);
        this.f72558f2.addAction(p5.a.T);
        this.f72562h2.addAction(p5.a.Q);
        this.f72567j2.addAction(p5.a.R);
        this.f72572l2.addAction(p5.a.S);
        this.f72576n2.addAction(p5.a.U);
        this.f72582p2.addAction(p5.a.O);
        this.f72588r2.addAction(p5.a.W);
        this.f72592t2.addAction(p5.a.X);
        this.f72595v2.addAction(p5.a.Y);
        this.f72597x2.addAction(p5.a.Z);
        this.f72599z2.addAction(p5.a.f96184a0);
        this.B2.addAction(p5.a.f96186b0);
        this.D2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.showvippopup");
        this.F2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.onclickVippopup");
        this.H2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.uesVippopup");
        this.J2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.onclickFunction");
        this.L2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.shareScreenshot");
        this.N2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.openGoldfinger");
        this.P2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.openKeyskill");
        this.R2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.selectLevel");
        this.T2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.NotpromptVippopup");
        this.V2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.exitVippopup");
        this.X2.addAction(p5.a.N0);
        this.Z2.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        this.f72550b3.addAction(p5.a.f96208m0);
        this.f72554d3.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.adInfo");
        this.f72559f3.addAction(BAction.ACTION_EMU_GAME_PLAY_TIMES);
        this.f72563h3.addAction(p5.a.J0);
        this.f72568j3.addAction(p5.a.K0);
        this.f72573l3.addAction(p5.a.L0);
        this.f72577n3.addAction(BAction.ACTION_ENDGAME_RECORD_UPLOAD);
        this.f72583p3.addAction(p5.a.M0);
        this.f72589r3.addAction(BAction.ACTION_EMU_SHOW_HIDE);
    }

    public static n0 P2(Context context) {
        return new n0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void A0(final Intent intent) {
        org.androidannotations.api.b.e("", new e(intent), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void D1(final SharePostRequest request) {
        org.androidannotations.api.a.l(new j("", 0L, "", request));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void E(final String gameId, final String ext, final DownloadTask downloadTask, final boolean fromRecomDown, final DownloadGameArgsBean downArgs) {
        org.androidannotations.api.a.l(new h0("", 0L, "", gameId, ext, downloadTask, fromRecomDown, downArgs));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void F(final boolean silent, final boolean isOm, final String qkPosition) {
        org.androidannotations.api.a.l(new k0("", 0L, "", silent, isOm, qkPosition));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void G1(final String gameId, final String ext, final QueryDownloadInfoResponseData data, final DownloadTask task, final boolean isfromRecomed, final DownloadGameArgsBean downArgs) {
        org.androidannotations.api.b.e("", new f(gameId, ext, data, task, isfromRecomed, downArgs), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    /* JADX INFO: renamed from: I1 */
    public void t0(final String message) {
        org.androidannotations.api.b.e("", new b(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void J1(final CollectionBeanSub detialResultBean, final boolean needCheckpay) {
        org.androidannotations.api.b.e("", new c(detialResultBean, needCheckpay), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void K0(final int curPid) {
        org.androidannotations.api.a.l(new r("", 0L, "", curPid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void K1(final CollectionBeanSub detialResultBean, final boolean needCheckpay, final boolean uncheckSelfSupport, final String ext, final boolean disableShowSpeedUpPrompt, final boolean fromRecomDown, final DownloadGameArgsBean downArgs) {
        org.androidannotations.api.b.e("", new d(detialResultBean, needCheckpay, uncheckSelfSupport, ext, disableShowSpeedUpPrompt, fromRecomDown, downArgs), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void M1(final String imagePath, final int from) {
        org.androidannotations.api.b.e("", new h(imagePath, from), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void O1(final String gameid, final PayOrderInfo orderInfo, final UserInfo accountBean, final boolean fromSdk, final String appkey) {
        org.androidannotations.api.b.e("", new a(gameid, orderInfo, accountBean, fromSdk, appkey), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void Q1(final String msg) {
        org.androidannotations.api.b.e("", new i(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void R() {
        org.androidannotations.api.a.l(new y("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void R1() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void U(final String gameId, final String ext, final boolean uncheckSelfSupport, final long resourceSize, final QueryDownloadInfoResponseData data, final boolean disableShowSpeedUpPrompt, final int from, final int fromType, final boolean fromRecomDown, final DownloadGameArgsBean downArgs) {
        org.androidannotations.api.a.l(new p("", 0L, "", gameId, ext, uncheckSelfSupport, resourceSize, data, disableShowSpeedUpPrompt, from, fromType, fromRecomDown, downArgs));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void V(final String gameid, final String gamename, final boolean isfromRecom) {
        org.androidannotations.api.b.e("", new g(gameid, gamename, isfromRecom), 200L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void W() {
        org.androidannotations.api.a.l(new w("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void X() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void Y1(final String gameId, final String upFilePath) {
        org.androidannotations.api.a.l(new j0("", 0L, "", gameId, upFilePath));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void a0() {
        org.androidannotations.api.a.l(new d0("", 500L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void b0(final String packageName) {
        org.androidannotations.api.a.l(new i0("", 0L, "", packageName));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void c0(final String gameId, final int location, final String typeId) {
        org.androidannotations.api.a.l(new q("", 0L, "", gameId, location, typeId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void d() {
        org.androidannotations.api.a.l(new a0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void d0() {
        org.androidannotations.api.a.l(new x("", 5000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void e() {
        org.androidannotations.api.a.l(new g0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void e0() {
        org.androidannotations.api.a.l(new c0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void f0() {
        org.androidannotations.api.a.l(new v("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void g0() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void h0() {
        org.androidannotations.api.a.l(new t("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void i0(final int page) {
        org.androidannotations.api.a.l(new u("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void k1(final String gameid) {
        org.androidannotations.api.a.l(new m("", 0L, "", gameid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void l1() {
        org.androidannotations.api.a.l(new b0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void m1(final String gameid) {
        org.androidannotations.api.a.l(new n("", 0L, "", gameid));
    }

    @Override // com.join.mgps.service.CommonService, android.app.Service
    public void onCreate() {
        O2();
        super.onCreate();
        registerReceiver(this.f72580p0, this.Z);
        registerReceiver(this.f72557f1, this.f72548b1);
        registerReceiver(this.f72571l1, this.f72564i1);
        registerReceiver(this.f72584q1, this.f72581p1);
        registerReceiver(this.f72594v1, this.f72587r1);
        registerReceiver(this.R1, this.L1);
        registerReceiver(this.f72546a2, this.V1);
        registerReceiver(this.f72551c2, this.f72549b2);
        registerReceiver(this.f72555e2, this.f72553d2);
        registerReceiver(this.f72560g2, this.f72558f2);
        registerReceiver(this.f72565i2, this.f72562h2);
        registerReceiver(this.f72569k2, this.f72567j2);
        registerReceiver(this.f72574m2, this.f72572l2);
        registerReceiver(this.f72578o2, this.f72576n2);
        registerReceiver(this.f72585q2, this.f72582p2);
        registerReceiver(this.f72590s2, this.f72588r2);
        registerReceiver(this.f72593u2, this.f72592t2);
        registerReceiver(this.f72596w2, this.f72595v2);
        registerReceiver(this.f72598y2, this.f72597x2);
        registerReceiver(this.A2, this.f72599z2);
        registerReceiver(this.C2, this.B2);
        registerReceiver(this.E2, this.D2);
        registerReceiver(this.G2, this.F2);
        registerReceiver(this.I2, this.H2);
        registerReceiver(this.K2, this.J2);
        registerReceiver(this.M2, this.L2);
        registerReceiver(this.O2, this.N2);
        registerReceiver(this.Q2, this.P2);
        registerReceiver(this.S2, this.R2);
        registerReceiver(this.U2, this.T2);
        registerReceiver(this.W2, this.V2);
        registerReceiver(this.Y2, this.X2);
        registerReceiver(this.f72547a3, this.Z2);
        registerReceiver(this.f72552c3, this.f72550b3);
        registerReceiver(this.f72556e3, this.f72554d3);
        registerReceiver(this.f72561g3, this.f72559f3);
        registerReceiver(this.f72566i3, this.f72563h3);
        registerReceiver(this.f72570k3, this.f72568j3);
        registerReceiver(this.f72575m3, this.f72573l3);
        registerReceiver(this.f72579o3, this.f72577n3);
        registerReceiver(this.f72586q3, this.f72583p3);
        registerReceiver(this.f72591s3, this.f72589r3);
    }

    @Override // com.join.mgps.service.CommonService, android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.f72580p0);
        unregisterReceiver(this.f72557f1);
        unregisterReceiver(this.f72571l1);
        unregisterReceiver(this.f72584q1);
        unregisterReceiver(this.f72594v1);
        unregisterReceiver(this.R1);
        unregisterReceiver(this.f72546a2);
        unregisterReceiver(this.f72551c2);
        unregisterReceiver(this.f72555e2);
        unregisterReceiver(this.f72560g2);
        unregisterReceiver(this.f72565i2);
        unregisterReceiver(this.f72569k2);
        unregisterReceiver(this.f72574m2);
        unregisterReceiver(this.f72578o2);
        unregisterReceiver(this.f72585q2);
        unregisterReceiver(this.f72590s2);
        unregisterReceiver(this.f72593u2);
        unregisterReceiver(this.f72596w2);
        unregisterReceiver(this.f72598y2);
        unregisterReceiver(this.A2);
        unregisterReceiver(this.C2);
        unregisterReceiver(this.E2);
        unregisterReceiver(this.G2);
        unregisterReceiver(this.I2);
        unregisterReceiver(this.K2);
        unregisterReceiver(this.M2);
        unregisterReceiver(this.O2);
        unregisterReceiver(this.Q2);
        unregisterReceiver(this.S2);
        unregisterReceiver(this.U2);
        unregisterReceiver(this.W2);
        unregisterReceiver(this.Y2);
        unregisterReceiver(this.f72547a3);
        unregisterReceiver(this.f72552c3);
        unregisterReceiver(this.f72556e3);
        unregisterReceiver(this.f72561g3);
        unregisterReceiver(this.f72566i3);
        unregisterReceiver(this.f72570k3);
        unregisterReceiver(this.f72575m3);
        unregisterReceiver(this.f72579o3);
        unregisterReceiver(this.f72586q3);
        unregisterReceiver(this.f72591s3);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void s1(final List<AppBean> beans) {
        org.androidannotations.api.a.l(new e0("", 0L, "", beans));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void u0() {
        org.androidannotations.api.a.l(new m0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void u1() {
        org.androidannotations.api.a.l(new l0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void w(final List<String> gameIds) {
        org.androidannotations.api.a.l(new z("", 0L, "", gameIds));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void x(final DownloadTask downloadTask) {
        org.androidannotations.api.a.l(new o("", 0L, "", downloadTask));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void z() {
        org.androidannotations.api.a.l(new f0("", 0L, ""));
    }
}
