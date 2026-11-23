package com.papa.sim.statistic;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.papa.sim.statistic.db.EMUApkTable;
import com.umeng.analytics.MobclickAgent;
import com.windmill.sdk.point.PointType;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class t {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f77354i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static t f77355j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f77359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.papa.sim.statistic.s f77360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private y7.a f77361d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.papa.sim.statistic.j f77362e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ThreadPoolExecutor f77352g = new ThreadPoolExecutor(1, 1, 500, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f77353h = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f77356k = "1280*720";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f77357l = "$##$";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f77358a = t.class.getSimpleName();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f77363f = 1;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77364b;

        a(String str) {
            this.f77364b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsQuickJoin;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77364b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class a0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77366b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77367c;

        a0(String str, String str2) {
            this.f77366b = str;
            this.f77367c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.X(Event.findButtonEvent.name(), this.f77366b, this.f77367c);
            } catch (Exception unused) {
            }
        }
    }

    class a1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77369b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77370c;

        a1(String str, String str2) {
            this.f77369b = str;
            this.f77370c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.clickGameDetailModel.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77369b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPosition(this.f77370c);
            statRequest.getData().setUid(this.f77369b);
            t.this.f77360c.B(Event.clickGameDetailModel, statRequest);
        }
    }

    class a2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77372b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77373c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77374d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77375e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f77376f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f77377g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ String f77378h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ Ext f77379i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ String f77380j;

        a2(String str, String str2, int i10, String str3, int i11, String str4, String str5, Ext ext, String str6) {
            this.f77372b = str;
            this.f77373c = str2;
            this.f77374d = i10;
            this.f77375e = str3;
            this.f77376f = i11;
            this.f77377g = str4;
            this.f77378h = str5;
            this.f77379i = ext;
            this.f77380j = str6;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            try {
                statRequest.setUid(Integer.parseInt(this.f77372b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setKeyWord(this.f77373c);
            statRequest.getExt().setFrom(this.f77374d + "");
            statRequest.getExt().setPosition(this.f77375e);
            statRequest.getExt().setGameFlag(this.f77376f);
            statRequest.getData().setUid(this.f77372b);
            statRequest.getData().setWhere(this.f77377g);
            statRequest.getExt().setDataFlag(this.f77378h);
            if (this.f77379i != null) {
                t.this.f77360c.v0(statRequest.getExt(), this.f77379i);
            }
            try {
                statRequest.getData().setGameId(this.f77380j);
            } catch (Exception unused2) {
            }
            if (this.f77374d == 103) {
                statRequest.getData().setWhere(Where.search.name());
            }
            statRequest.setTime(System.currentTimeMillis());
            Event event = Event.gameRequest;
            statRequest.setEvent(event.name());
            t.this.f77360c.B(event, statRequest);
        }
    }

    class a3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77382b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77383c;

        a3(String str, int i10) {
            this.f77382b = str;
            this.f77383c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickFunGameMainBtn, Event.matchBattle, this.f77382b, this.f77383c);
            } catch (Exception unused) {
            }
        }
    }

    class a4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77385b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77386c;

        a4(String str, int i10) {
            this.f77385b = str;
            this.f77386c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.startShare;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77385b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setShareType(this.f77386c);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77388b;

        b(String str) {
            this.f77388b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.VsCreateWaitOver;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77388b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class b0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77390b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77391c;

        b0(String str, String str2) {
            this.f77390b = str;
            this.f77391c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.arenaGameListBanner;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77390b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setPosition(this.f77391c);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class b1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77393b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77394c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77395d;

        b1(String str, String str2, String str3) {
            this.f77393b = str;
            this.f77394c = str2;
            this.f77395d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.enterUserGameList.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77393b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setArticleId(this.f77394c);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPosition(this.f77395d);
            statRequest.getData().setUid(this.f77393b);
            t.this.f77360c.B(Event.enterUserGameList, statRequest);
        }
    }

    class b2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77397b;

        b2(String str) {
            this.f77397b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.E(Event.submitPost, this.f77397b);
        }
    }

    class b3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77399b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77400c;

        b3(String str, int i10) {
            this.f77399b = str;
            this.f77400c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickGameMainBtn, Event.inviteBattle, this.f77399b, this.f77400c);
            } catch (Exception unused) {
            }
        }
    }

    class b4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77402b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77403c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77404d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f77405e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f77406f;

        b4(String str, String str2, String str3, int i10, int i11) {
            this.f77402b = str;
            this.f77403c = str2;
            this.f77404d = str3;
            this.f77405e = i10;
            this.f77406f = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.shareChannel.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77402b));
                try {
                    statRequest.getData().setGameId(this.f77403c);
                } catch (Exception unused) {
                }
                statRequest.getExt().setGameId(this.f77403c);
                statRequest.getExt().setArticleId(this.f77404d);
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setShareMfr(this.f77405e);
                statRequest.getExt().setShareType(this.f77406f);
                t.this.f77360c.B(Event.shareChannel, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77408b;

        c(String str) {
            this.f77408b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.VsGameOverSuccess;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77408b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class c0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77410b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77411c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77412d;

        c0(String str, String str2, String str3) {
            this.f77410b = str;
            this.f77411c = str2;
            this.f77412d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.arenaGameListItem.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77410b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77411c);
                statRequest.getExt().setPosition(this.f77412d);
                try {
                    statRequest.getData().setGameId(this.f77411c);
                } catch (Exception unused) {
                }
                t.this.f77360c.B(Event.arenaGameListItem, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    class c1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77415c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77416d;

        c1(String str, String str2, String str3) {
            this.f77414b = str;
            this.f77415c = str2;
            this.f77416d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.clickSearchAdPosition.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77414b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPosition(this.f77415c);
            statRequest.getExt().setGameId(this.f77416d);
            statRequest.getData().setUid(this.f77414b);
            t.this.f77360c.B(Event.clickSearchAdPosition, statRequest);
        }
    }

    class c2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77418b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77419c;

        c2(String str, String str2) {
            this.f77418b = str;
            this.f77419c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.downloadStop, this.f77418b, this.f77419c);
        }
    }

    class c3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77421b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77422c;

        c3(String str, int i10) {
            this.f77421b = str;
            this.f77422c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickGameMainBtn, Event.login, this.f77421b, this.f77422c);
            } catch (Exception unused) {
            }
        }
    }

    class c4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77424b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77425c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77426d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f77427e;

        c4(String str, int i10, int i11, int i12) {
            this.f77424b = str;
            this.f77425c = i10;
            this.f77426d = i11;
            this.f77427e = i12;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.shareResult;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77424b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setShareMfr(this.f77425c);
                statRequest.getExt().setShareType(this.f77426d);
                statRequest.getExt().setShareResult(this.f77427e);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77429b;

        d(String str) {
            this.f77429b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.VsSelectSilentBtn;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77429b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class d0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77431b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77432c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77433d;

        d0(String str, int i10, String str2) {
            this.f77431b = str;
            this.f77432c = i10;
            this.f77433d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.areaRoomFromInvite;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77431b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setRoomID(this.f77432c + "");
                statRequest.getExt().setFightId(this.f77433d);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class d1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77435b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77436c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77437d;

        d1(String str, String str2, String str3) {
            this.f77435b = str;
            this.f77436c = str2;
            this.f77437d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.downloadFromSearchResult.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77435b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setGameId(this.f77436c);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPosition(this.f77437d);
            statRequest.getData().setUid(this.f77435b);
            t.this.f77360c.B(Event.downloadFromSearchResult, statRequest);
        }
    }

    class d2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77439b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77440c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77441d;

        d2(String str, String str2, String str3) {
            this.f77439b = str;
            this.f77440c = str2;
            this.f77441d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.netBattleMatchStart.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77439b));
                statRequest.getData().setGameId(this.f77440c);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPlugVersion(this.f77441d);
            statRequest.getData().setUid(this.f77439b);
            t.this.f77360c.B(Event.netBattleMatchStart, statRequest);
        }
    }

    class d3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77443b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77444c;

        d3(String str, int i10) {
            this.f77443b = str;
            this.f77444c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickGameMainBtn, Event.logout, this.f77443b, this.f77444c);
            } catch (Exception unused) {
            }
        }
    }

    class d4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77446b;

        d4(String str) {
            this.f77446b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fRequestCreateQrcode;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77446b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77448b;

        e(String str) {
            this.f77448b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.VsCreateSilentRoom;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77448b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class e0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77450b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77451c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77452d;

        e0(String str, String str2, String str3) {
            this.f77450b = str;
            this.f77451c = str2;
            this.f77452d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.sharePasteClick.name());
                try {
                    statRequest.getData().setGameId(this.f77450b);
                } catch (Exception unused) {
                }
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77451c));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77450b);
                statRequest.getExt().setFightId(this.f77452d);
                t.this.f77360c.B(Event.sharePasteClick, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    class e1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77454b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77455c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77456d;

        e1(String str, String str2, String str3) {
            this.f77454b = str;
            this.f77455c = str2;
            this.f77456d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.clickDetailFromSearchResult.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77454b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setGameId(this.f77455c);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPosition(this.f77456d);
            statRequest.getData().setUid(this.f77454b);
            t.this.f77360c.B(Event.clickDetailFromSearchResult, statRequest);
        }
    }

    class e2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77458b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77459c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f77460d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77461e;

        e2(String str, String str2, long j10, String str3) {
            this.f77458b = str;
            this.f77459c = str2;
            this.f77460d = j10;
            this.f77461e = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.netBattleMatchFinish.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77458b));
                statRequest.getData().setGameId(this.f77459c);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            statRequest.getExt().setDuration(this.f77460d);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPlugVersion(this.f77461e);
            statRequest.getData().setUid(this.f77458b);
            t.this.f77360c.B(Event.netBattleMatchFinish, statRequest);
        }
    }

    class e3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77463b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77464c;

        e3(String str, int i10) {
            this.f77463b = str;
            this.f77464c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickFunGameMainBtn, Event.logout, this.f77463b, this.f77464c);
            } catch (Exception unused) {
            }
        }
    }

    class e4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77466b;

        e4(String str) {
            this.f77466b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fCreateQrcodeSuccess;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77466b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77468b;

        f(String str) {
            this.f77468b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.VsSilentTransform;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77468b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class f0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77470b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77471c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77472d;

        f0(Event event, String str, String str2) {
            this.f77470b = event;
            this.f77471c = str;
            this.f77472d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f77470b.name());
                try {
                    statRequest.getData().setGameId(this.f77471c);
                } catch (Exception unused) {
                }
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77472d));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77471c);
                t.this.f77360c.B(this.f77470b, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    class f1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77474b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77475c;

        f1(String str, String str2) {
            this.f77474b = str;
            this.f77475c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.clickCreateLocalNetBattleRoomBtn, this.f77474b, this.f77475c);
        }
    }

    class f2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77477b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77478c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f77479d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f77480e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77481f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f77482g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f77483h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ int f77484i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ String f77485j;

        f2(String str, String str2, long j10, int i10, String str3, int i11, int i12, int i13, String str4) {
            this.f77477b = str;
            this.f77478c = str2;
            this.f77479d = j10;
            this.f77480e = i10;
            this.f77481f = str3;
            this.f77482g = i11;
            this.f77483h = i12;
            this.f77484i = i13;
            this.f77485j = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.M(Event.gameDownloadCompleted, this.f77477b, this.f77478c, this.f77479d, this.f77480e, this.f77481f, -1L, this.f77482g, this.f77483h, this.f77484i, this.f77485j);
        }
    }

    class f3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77487b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77488c;

        f3(String str, int i10) {
            this.f77487b = str;
            this.f77488c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickGameMainBtn, Event.forum, this.f77487b, this.f77488c);
            } catch (Exception unused) {
            }
        }
    }

    class f4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Where f77490b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77491c;

        f4(Where where, String str) {
            this.f77490b = where;
            this.f77491c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.D(Event.visitSearchPage, this.f77490b, this.f77491c);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77493b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77494c;

        g(String str, String str2) {
            this.f77493b = str;
            this.f77494c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsLocalBat;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77493b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77494c);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class g0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77496b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77497c;

        g0(String str, String str2) {
            this.f77496b = str;
            this.f77497c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.clickLocalNetBattleStartBtn, this.f77496b, this.f77497c);
        }
    }

    class g1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77499b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77500c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77501d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Ext f77502e;

        g1(String str, String str2, String str3, Ext ext) {
            this.f77499b = str;
            this.f77500c = str2;
            this.f77501d = str3;
            this.f77502e = ext;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.e0(Event.gameStart, this.f77499b, this.f77500c, this.f77501d, this.f77502e);
        }
    }

    class g2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77504b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77505c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f77506d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f77507e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77508f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f77509g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f77510h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ int f77511i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ int f77512j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ String f77513k;

        g2(String str, String str2, long j10, int i10, String str3, String str4, int i11, int i12, int i13, String str5) {
            this.f77504b = str;
            this.f77505c = str2;
            this.f77506d = j10;
            this.f77507e = i10;
            this.f77508f = str3;
            this.f77509g = str4;
            this.f77510h = i11;
            this.f77511i = i12;
            this.f77512j = i13;
            this.f77513k = str5;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.N(Event.gameDownloadCompleted, this.f77504b, this.f77505c, this.f77506d, this.f77507e, this.f77508f, this.f77509g, -1L, this.f77510h, this.f77511i, this.f77512j, this.f77513k);
        }
    }

    class g3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77515b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77516c;

        g3(String str, int i10) {
            this.f77515b = str;
            this.f77516c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickFunGameMainBtn, Event.forum, this.f77515b, this.f77516c);
            } catch (Exception unused) {
            }
        }
    }

    class g4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77518b;

        g4(String str) {
            this.f77518b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.liveResDownloaded;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77518b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77520b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77521c;

        h(String str, String str2) {
            this.f77520b = str;
            this.f77521c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsNetBattleMatch;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77520b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77521c);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class h0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77523b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77524c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77525d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77526e;

        h0(Event event, String str, String str2, String str3) {
            this.f77523b = event;
            this.f77524c = str;
            this.f77525d = str2;
            this.f77526e = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f77523b.name());
                try {
                    statRequest.getData().setGameId(this.f77524c);
                } catch (Exception unused) {
                }
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77525d));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77524c);
                statRequest.getExt().setNodeId(this.f77526e);
                t.this.f77360c.B(this.f77523b, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    class h1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77528b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77529c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77530d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77531e;

        h1(String str, String str2, int i10, String str3) {
            this.f77528b = str;
            this.f77529c = str2;
            this.f77530d = i10;
            this.f77531e = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.L(Event.inviteBattleShareSuccess, this.f77528b, this.f77529c, this.f77530d, this.f77531e);
        }
    }

    class h2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77533b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77534c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77535d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77536e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77537f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ long f77538g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f77539h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ long f77540i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ String f77541j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ int f77542k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ int f77543l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final /* synthetic */ Ext f77544m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final /* synthetic */ int f77545n;

        h2(String str, String str2, String str3, String str4, String str5, long j10, int i10, long j11, String str6, int i11, int i12, Ext ext, int i13) {
            this.f77533b = str;
            this.f77534c = str2;
            this.f77535d = str3;
            this.f77536e = str4;
            this.f77537f = str5;
            this.f77538g = j10;
            this.f77539h = i10;
            this.f77540i = j11;
            this.f77541j = str6;
            this.f77542k = i11;
            this.f77543l = i12;
            this.f77544m = ext;
            this.f77545n = i13;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            String string;
            String string2;
            StatRequest statRequest = new StatRequest();
            if (!TextUtils.isEmpty(this.f77533b)) {
                statRequest.getExt().setPage(this.f77533b);
            }
            statRequest.getExt().setQkPosition(this.f77534c);
            if (TextUtils.isEmpty(this.f77535d)) {
                if (this.f77543l == 1) {
                    Event event = Event.gameDownload;
                    statRequest.setEvent(event.name());
                    statRequest.setTime(System.currentTimeMillis());
                    statRequest.getData().setGameId(this.f77536e);
                    statRequest.getData().setWhere(Where.search.name());
                    statRequest.setUid(Integer.parseInt(this.f77537f));
                    statRequest.getExt().setUid(statRequest.getUid());
                    statRequest.getExt().setKeyWord(this.f77541j);
                    statRequest.getExt().setDuration(this.f77538g);
                    statRequest.getExt().setInterrupt(this.f77539h);
                    statRequest.getExt().setZipCost(this.f77540i);
                    statRequest.getExt().setFrom("103");
                    statRequest.getExt().setPosition(this.f77545n + "");
                    statRequest.getExt().setGameFlag(this.f77542k);
                    if (this.f77544m != null) {
                        t.this.f77360c.v0(statRequest.getExt(), this.f77544m);
                    }
                    t.this.f77360c.B(event, statRequest);
                    return;
                }
                Ext ext = new Ext();
                Data data = new Data();
                try {
                    data.setGameId(this.f77536e);
                    ext.setUid(Integer.parseInt(this.f77537f));
                } catch (Exception unused) {
                }
                data.setWhere(this.f77541j);
                ext.setZipCost(this.f77540i);
                ext.setDuration(this.f77538g);
                ext.setInterrupt(this.f77539h);
                ext.setFrom(this.f77543l + "");
                if (this.f77543l == 101) {
                    ext.setPosition(this.f77545n + "");
                }
                ext.setGameFlag(this.f77542k);
                if (this.f77544m != null) {
                    t.this.f77360c.v0(statRequest.getExt(), this.f77544m);
                }
                t.this.f77360c.O(Event.gameDownload, this.f77536e, this.f77537f, ext);
                return;
            }
            statRequest.setEvent(Event.gameDownload.name());
            statRequest.setTime(System.currentTimeMillis());
            statRequest.getData().setGameId(this.f77536e);
            statRequest.setUid(Integer.parseInt(this.f77537f));
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setDuration(this.f77538g);
            statRequest.getExt().setInterrupt(this.f77539h);
            statRequest.getExt().setZipCost(this.f77540i);
            statRequest.getExt().setKeyWord(this.f77541j);
            statRequest.getExt().setGameFlag(this.f77542k);
            if (this.f77543l == 1) {
                statRequest.getData().setWhere(Where.search.name());
                statRequest.getExt().setFrom("103");
            } else {
                try {
                    if (!TextUtils.isEmpty(this.f77535d)) {
                        JSONObject jSONObject = new JSONObject(this.f77535d);
                        if (!jSONObject.has("from") || TextUtils.isEmpty(jSONObject.getString("from")) || TextUtils.equals("0", jSONObject.getString("from"))) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(this.f77543l);
                            str = "";
                            sb2.append(str);
                            string = sb2.toString();
                        } else {
                            string = jSONObject.getString("from");
                            str = "";
                        }
                        statRequest.getExt().setFrom(string);
                        statRequest.getExt().setPosition(jSONObject.has("position") ? jSONObject.getString("position") : str);
                        statRequest.getExt().setReMarks(jSONObject.has("location") ? jSONObject.getString("location") : str);
                        if (jSONObject.has("_from_type") && (string2 = jSONObject.getString("_from_type")) != null) {
                            statRequest.getExt().setFrom(string);
                            statRequest.getExt().setPosition(string2);
                            if (jSONObject.has("recPosition")) {
                                statRequest.getExt().setRecPosition(jSONObject.getString("recPosition"));
                            }
                            if (jSONObject.has("reMarks")) {
                                statRequest.getExt().setReMarks(jSONObject.getString("reMarks"));
                            }
                            if (jSONObject.has("nodeId")) {
                                statRequest.getExt().setNodeId(jSONObject.getString("nodeId"));
                            }
                        }
                        if (jSONObject.has("dataFlag")) {
                            statRequest.getExt().setDataFlag(jSONObject.getString("dataFlag"));
                        }
                        if (jSONObject.has("where")) {
                            statRequest.getData().setWhere(jSONObject.getString("where"));
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (this.f77544m != null) {
                t.this.f77360c.v0(statRequest.getExt(), this.f77544m);
            }
            t.this.f77360c.B(Event.gameDownload, statRequest);
        }
    }

    class h3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77547b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77548c;

        h3(String str, int i10) {
            this.f77547b = str;
            this.f77548c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickGameMainBtn, Event.practice, this.f77547b, this.f77548c);
            } catch (Exception unused) {
            }
        }
    }

    class h4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77550b;

        h4(String str) {
            this.f77550b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsBtn;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77550b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77552b;

        i(String str) {
            this.f77552b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVslLocalCreateRoom;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77552b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class i0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77554b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77555c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77556d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77557e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f77558f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f77559g;

        i0(Event event, String str, String str2, String str3, int i10, String str4) {
            this.f77554b = event;
            this.f77555c = str;
            this.f77556d = str2;
            this.f77557e = str3;
            this.f77558f = i10;
            this.f77559g = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f77554b.name());
                try {
                    statRequest.getData().setGameId(this.f77555c);
                } catch (Exception unused) {
                }
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77556d));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77555c);
                statRequest.getExt().setPosition(this.f77557e);
                statRequest.getExt().setGameFlag(this.f77558f);
                statRequest.getExt().setFrom(this.f77559g);
                t.this.f77360c.B(this.f77554b, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    class i1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77561b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77562c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77563d;

        i1(String str, int i10, int i11) {
            this.f77561b = str;
            this.f77562c = i10;
            this.f77563d = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.F(Event.gameRecovery, this.f77561b, this.f77562c, this.f77563d);
        }
    }

    class i2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77565b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77566c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77567d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77568e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77569f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f77570g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ long f77571h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ int f77572i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ long f77573j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ String f77574k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ int f77575l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final /* synthetic */ Ext f77576m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final /* synthetic */ int f77577n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ int f77578o;

        i2(String str, String str2, String str3, String str4, String str5, String str6, long j10, int i10, long j11, String str7, int i11, Ext ext, int i12, int i13) {
            this.f77565b = str;
            this.f77566c = str2;
            this.f77567d = str3;
            this.f77568e = str4;
            this.f77569f = str5;
            this.f77570g = str6;
            this.f77571h = j10;
            this.f77572i = i10;
            this.f77573j = j11;
            this.f77574k = str7;
            this.f77575l = i11;
            this.f77576m = ext;
            this.f77577n = i12;
            this.f77578o = i13;
        }

        @Override // java.lang.Runnable
        public void run() {
            String string;
            StatRequest statRequest = new StatRequest();
            if (!TextUtils.isEmpty(this.f77565b)) {
                statRequest.getExt().setPage(this.f77565b);
            }
            statRequest.getExt().setQkPosition(this.f77566c);
            if (TextUtils.isEmpty(this.f77567d)) {
                t.this.f77360c.N(Event.gameDownload, this.f77568e, this.f77570g, this.f77571h, this.f77572i, this.f77569f, this.f77574k, this.f77573j, this.f77577n, this.f77578o, this.f77575l, "");
                return;
            }
            statRequest.setEvent(Event.gameDownload.name());
            statRequest.setTime(System.currentTimeMillis());
            statRequest.getData().setGameId(this.f77568e);
            statRequest.setUid(Integer.parseInt(this.f77569f));
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setKeyWord(this.f77570g);
            statRequest.getExt().setDuration(this.f77571h);
            statRequest.getExt().setInterrupt(this.f77572i);
            statRequest.getExt().setZipCost(this.f77573j);
            statRequest.getExt().setArticleId(this.f77574k);
            statRequest.getExt().setGameFlag(this.f77575l);
            if (this.f77576m != null) {
                t.this.f77360c.v0(statRequest.getExt(), this.f77576m);
            }
            try {
                if (!TextUtils.isEmpty(this.f77567d)) {
                    JSONObject jSONObject = new JSONObject(this.f77567d);
                    String string2 = jSONObject.getString("from");
                    String string3 = jSONObject.getString("position");
                    jSONObject.getString("location");
                    statRequest.getExt().setFrom(string2);
                    statRequest.getExt().setPosition(string3);
                    if (jSONObject.has("_from_type") && (string = jSONObject.getString("_from_type")) != null) {
                        statRequest.getExt().setFrom(string2);
                        statRequest.getExt().setPosition(string);
                        if (jSONObject.has("recPosition")) {
                            statRequest.getExt().setRecPosition(jSONObject.getString("recPosition"));
                        }
                        if (jSONObject.has("reMarks")) {
                            statRequest.getExt().setReMarks(jSONObject.getString("reMarks"));
                        }
                        if (jSONObject.has("nodeId")) {
                            statRequest.getExt().setNodeId(jSONObject.getString("nodeId"));
                        }
                    }
                    if (jSONObject.has("dataFlag")) {
                        statRequest.getExt().setDataFlag(jSONObject.getString("dataFlag"));
                    }
                    if (jSONObject.has("where")) {
                        statRequest.getData().setWhere(jSONObject.getString("where"));
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            t.this.f77360c.B(Event.gameDownload, statRequest);
        }
    }

    class i3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77580b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77581c;

        i3(String str, int i10) {
            this.f77580b = str;
            this.f77581c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickFunGameMainBtn, Event.practice, this.f77580b, this.f77581c);
            } catch (Exception unused) {
            }
        }
    }

    class i4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77583b;

        i4(String str) {
            this.f77583b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsHallBtn;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77583b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77585b;

        j(String str) {
            this.f77585b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsJoinRoom;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77585b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class j0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77587b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77588c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77589d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77590e;

        j0(Event event, String str, String str2, String str3) {
            this.f77587b = event;
            this.f77588c = str;
            this.f77589d = str2;
            this.f77590e = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f77587b.name());
                statRequest.getExt().setReMarks(this.f77588c);
                statRequest.getExt().setPlugId(this.f77589d);
                statRequest.getExt().setPlugVersion(this.f77590e);
                t.this.f77360c.B(this.f77587b, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class j1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77592b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77593c;

        j1(String str, String str2) {
            this.f77592b = str;
            this.f77593c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.inviteBattleAutoJoinSuccess, this.f77592b, this.f77593c);
        }
    }

    class j2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77595b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77596c;

        j2(String str, String str2) {
            this.f77595b = str;
            this.f77596c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.gameList, this.f77595b, this.f77596c);
        }
    }

    class j3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77598b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77599c;

        j3(String str, String str2) {
            this.f77598b = str;
            this.f77599c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Ext ext = new Ext();
            ext.setArticleId(this.f77598b);
            t.this.f77360c.A(Event.articleClickDownload, ext, this.f77599c);
        }
    }

    class j4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77601b;

        j4(String str) {
            this.f77601b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.visitVsRoomPage;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77601b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77603b;

        k(String str) {
            this.f77603b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.startApp, "", this.f77603b);
            try {
                if (TextUtils.isEmpty(com.papa.sim.statistic.u.m())) {
                    HashMap map = new HashMap();
                    map.put("AndroidId", com.papa.sim.statistic.u.f(t.this.f77359b).a(t.this.f77359b));
                    map.put("supportAbis", com.papa.sim.statistic.u.m());
                    map.put("channelId", com.constant.a.b(t.this.f77359b));
                    MobclickAgent.onEvent(t.this.f77359b, "startAppUmeng", map);
                }
            } catch (Exception unused) {
            }
        }
    }

    class k0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77605b;

        k0(String str) {
            this.f77605b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.onMainPageShow;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77605b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class k1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77607b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77608c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77609d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77610e;

        k1(String str, String str2, int i10, String str3) {
            this.f77607b = str;
            this.f77608c = str2;
            this.f77609d = i10;
            this.f77610e = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.L(Event.joinLocalNetBattleRoomSuccess, this.f77607b, this.f77608c, this.f77609d, this.f77610e);
        }
    }

    class k2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77612b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77613c;

        k2(String str, String str2) {
            this.f77612b = str;
            this.f77613c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.appPageVisit, this.f77612b, this.f77613c);
        }
    }

    class k3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77615b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77616c;

        k3(String str, int i10) {
            this.f77615b = str;
            this.f77616c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickGameMainBtn, Event.welcomeGameMain, this.f77615b, this.f77616c);
            } catch (Exception unused) {
            }
        }
    }

    class k4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77618b;

        k4(String str) {
            this.f77618b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.visitVsMainPage;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77618b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77620b;

        l(String str) {
            this.f77620b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fRequestScanQrcode;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77620b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class l0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ext f77623c;

        l0(Event event, Ext ext) {
            this.f77622b = event;
            this.f77623c = ext;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.S(this.f77622b.name(), this.f77623c);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class l1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77625b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77626c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77627d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77628e;

        l1(String str, String str2, int i10, String str3) {
            this.f77625b = str;
            this.f77626c = str2;
            this.f77627d = i10;
            this.f77628e = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.L(Event.clickLocalNetBattleJoinRoomBtn, this.f77625b, this.f77626c, this.f77627d, this.f77628e);
        }
    }

    class l2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ StatJsonRawData f77630b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77631c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77632d;

        l2(StatJsonRawData statJsonRawData, String str, String str2) {
            this.f77630b = statJsonRawData;
            this.f77631c = str;
            this.f77632d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f77630b.setGameId(this.f77631c);
                this.f77630b.setUid(Integer.parseInt(this.f77632d));
                t.this.f77360c.J(Event.netBattleMatchEfficiency, JsonMapper.getInstance().toJson(this.f77630b), this.f77632d);
            } catch (Exception unused) {
            }
        }
    }

    class l3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77634b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77635c;

        l3(String str, int i10) {
            this.f77634b = str;
            this.f77635c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickFunGameMainBtn, Event.welcomeGameMain, this.f77634b, this.f77635c);
            } catch (Exception unused) {
            }
        }
    }

    class l4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77637b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77638c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77639d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77640e;

        l4(Event event, String str, String str2, String str3) {
            this.f77637b = event;
            this.f77638c = str;
            this.f77639d = str2;
            this.f77640e = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f77637b.name());
                if (!TextUtils.isEmpty(this.f77638c)) {
                    statRequest.getData().setGameId(this.f77638c);
                }
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77639d));
                statRequest.getExt().setChannel_id(Integer.parseInt(this.f77640e));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(this.f77637b, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77642b;

        m(String str) {
            this.f77642b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fConnectQrcodeSuccess;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77642b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class m0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77644b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77645c;

        m0(Event event, int i10) {
            this.f77644b = event;
            this.f77645c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f77644b.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(this.f77645c);
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(this.f77644b, statRequest);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class m1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77647b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77648c;

        m1(String str, String str2) {
            this.f77647b = str;
            this.f77648c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.clickLocalNetBattleRoomStartBtn, this.f77647b, this.f77648c);
        }
    }

    class m2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77650b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77651c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77652d;

        m2(String str, String str2, String str3) {
            this.f77650b = str;
            this.f77651c = str2;
            this.f77652d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.P(Event.plugEfficiency, this.f77650b, this.f77651c, this.f77652d);
            } catch (Exception unused) {
            }
        }
    }

    class m3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f77654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77655c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77656d;

        m3(int i10, String str, int i11) {
            this.f77654b = i10;
            this.f77655c = str;
            this.f77656d = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.x(Event.clickGameMainBtn, Event.ad, this.f77654b, this.f77655c, this.f77656d);
            } catch (Exception unused) {
            }
        }
    }

    class m4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f77658b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77659c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77660d;

        m4(int i10, String str, int i11) {
            this.f77658b = i10;
            this.f77659c = str;
            this.f77660d = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int i10 = this.f77658b;
                if (i10 == 0) {
                    t.this.f77360c.y(Event.VsGameStart, Event.VsSingle, this.f77659c, this.f77660d);
                } else if (i10 == 1) {
                    t.this.f77360c.y(Event.VsGameStart, Event.VsHall, this.f77659c, this.f77660d);
                } else if (i10 == 2) {
                    t.this.f77360c.y(Event.VsGameStart, Event.VsLocal, this.f77659c, this.f77660d);
                }
            } catch (Exception unused) {
            }
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77662b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77663c;

        n(String str, String str2) {
            this.f77662b = str;
            this.f77663c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fRequestTransferGame;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77662b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77663c);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class n0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77665b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ext f77666c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77667d;

        n0(Event event, Ext ext, String str) {
            this.f77665b = event;
            this.f77666c = ext;
            this.f77667d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.f0(this.f77665b.name(), this.f77666c, this.f77667d);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class n1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77670c;

        n1(String str, String str2) {
            this.f77669b = str;
            this.f77670c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.joyStickConfigPost, JsonMapper.nonDefaultMapper().toJson(this.f77669b), this.f77670c);
        }
    }

    class n2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77673c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77674d;

        n2(String str, String str2, int i10) {
            this.f77672b = str;
            this.f77673c = str2;
            this.f77674d = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.k0(Event.unzipFailed, this.f77672b, this.f77673c, this.f77674d);
        }
    }

    class n3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f77676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77677c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77678d;

        n3(int i10, String str, int i11) {
            this.f77676b = i10;
            this.f77677c = str;
            this.f77678d = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                switch (this.f77676b) {
                    case 1:
                        t.this.f77360c.y(Event.pspMemberADDialog, Event.pspADOneKey, this.f77677c, this.f77678d);
                        break;
                    case 2:
                        t.this.f77360c.y(Event.pspMemberADDialog, Event.pspADCheat, this.f77677c, this.f77678d);
                        break;
                    case 3:
                        t.this.f77360c.y(Event.pspMemberADDialog, Event.pspADGArchiving, this.f77677c, this.f77678d);
                        break;
                    case 4:
                        t.this.f77360c.y(Event.pspMemberADDialog, Event.pspADSelLevel, this.f77677c, this.f77678d);
                        break;
                    case 5:
                        t.this.f77360c.y(Event.pspMemberADDialog, Event.pspADBattle, this.f77677c, this.f77678d);
                        break;
                    case 6:
                        t.this.f77360c.y(Event.pspMemberADDialog, Event.pspADOpenInstant, this.f77677c, this.f77678d);
                        break;
                }
            } catch (Exception unused) {
            }
        }
    }

    class n4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77680b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77681c;

        n4(String str, String str2) {
            this.f77680b = str;
            this.f77681c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsForumBtn;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77680b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77681c);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77683b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77684c;

        o(String str, String str2) {
            this.f77683b = str;
            this.f77684c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fTransferGameDone;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77683b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77684c);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class o0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77686b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77687c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77688d;

        o0(Event event, String str, String str2) {
            this.f77686b = event;
            this.f77687c = str;
            this.f77688d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.g0(this.f77686b.name(), this.f77687c, this.f77688d);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class o1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77690b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77691c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77692d;

        o1(String str, String str2, String str3) {
            this.f77690b = str;
            this.f77691c = str2;
            this.f77692d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.startDownloadPlug.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77690b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getData().setPlugId(Integer.parseInt(this.f77691c));
            statRequest.getExt().setPlugVersion(this.f77692d + "_" + this.f77691c);
            statRequest.getData().setUid(this.f77690b);
            t.this.f77360c.B(Event.startDownloadPlug, statRequest);
        }
    }

    class o2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77694b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77695c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77696d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77697e;

        o2(String str, String str2, String str3, String str4) {
            this.f77694b = str;
            this.f77695c = str2;
            this.f77696d = str3;
            this.f77697e = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.I(Event.pluginPlayTime, this.f77694b, Long.parseLong(this.f77695c), this.f77696d, this.f77697e);
            } catch (Exception unused) {
            }
        }
    }

    class o3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f77699b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77700c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77701d;

        o3(int i10, String str, int i11) {
            this.f77699b = i10;
            this.f77700c = str;
            this.f77701d = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.x(Event.clickFunGameMainBtn, Event.ad, this.f77699b, this.f77700c, this.f77701d);
            } catch (Exception unused) {
            }
        }
    }

    class o4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77703b;

        o4(String str) {
            this.f77703b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsAdvBtn;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77703b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77705b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77706c;

        p(String str, String str2) {
            this.f77705b = str;
            this.f77706c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.f2fInterruptTransferGame;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77705b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77706c);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class p0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ext f77709c;

        p0(Event event, Ext ext) {
            this.f77708b = event;
            this.f77709c = ext;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.h0(this.f77708b.name(), this.f77709c);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class p1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77711b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77712c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77713d;

        p1(String str, String str2, String str3) {
            this.f77711b = str;
            this.f77712c = str2;
            this.f77713d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.downloadPlugCompleted.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77711b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getData().setPlugId(Integer.parseInt(this.f77712c));
            statRequest.getExt().setPlugVersion(this.f77713d + "_" + this.f77712c);
            statRequest.getData().setUid(this.f77711b);
            t.this.f77360c.B(Event.downloadPlugCompleted, statRequest);
        }
    }

    class p2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77716c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77717d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77718e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77719f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f77720g;

        p2(String str, String str2, String str3, String str4, String str5, String str6) {
            this.f77715b = str;
            this.f77716c = str2;
            this.f77717d = str3;
            this.f77718e = str4;
            this.f77719f = str5;
            this.f77720g = str6;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Ext ext = new Ext();
                ext.setPage(this.f77715b);
                ext.setPosition(this.f77716c);
                ext.setReMarks(this.f77717d);
                ext.setUid(Integer.parseInt(this.f77718e));
                ext.setIsJoin(this.f77719f);
                Data data = new Data();
                data.setWhere(this.f77720g);
                t.this.f77360c.T(Event.clickH5AndCollGamePicPage.name(), ext, data);
            } catch (Exception unused) {
            }
        }
    }

    class p3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f77722b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77723c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77724d;

        p3(int i10, String str, int i11) {
            this.f77722b = i10;
            this.f77723c = str;
            this.f77724d = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.x(Event.clickGameMainBtn, Event.post, this.f77722b, this.f77723c, this.f77724d);
            } catch (Exception unused) {
            }
        }
    }

    class p4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77726b;

        p4(String str) {
            this.f77726b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.clickVsCreateRoom;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77726b));
                statRequest.getExt().setUid(statRequest.getUid());
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77728b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77729c;

        q(String str, String str2) {
            this.f77728b = str;
            this.f77729c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.visitAppInternalPage;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77728b));
                statRequest.getExt().setModule("forum");
                statRequest.getExt().setPage("index");
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setPosition(this.f77729c);
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class q0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ext f77731b;

        q0(Ext ext) {
            this.f77731b = ext;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.i0(Event.opHomePageButton.name(), this.f77731b);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class q1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77733b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77734c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77735d;

        q1(String str, String str2, String str3) {
            this.f77733b = str;
            this.f77734c = str2;
            this.f77735d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.installPlugCompleted.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77733b));
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getData().setPlugId(Integer.parseInt(this.f77734c));
            statRequest.getExt().setPlugVersion(this.f77735d + "_" + this.f77734c);
            statRequest.getData().setUid(this.f77733b);
            t.this.f77360c.B(Event.installPlugCompleted, statRequest);
        }
    }

    class q2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77737b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77738c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77739d;

        q2(String str, String str2, String str3) {
            this.f77737b = str;
            this.f77738c = str2;
            this.f77739d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.P(Event.appPageClick, this.f77737b, this.f77738c, this.f77739d);
            } catch (Exception unused) {
            }
        }
    }

    class q3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77741b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77742c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77743d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77744e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77745f;

        q3(String str, String str2, String str3, String str4, String str5) {
            this.f77741b = str;
            this.f77742c = str2;
            this.f77743d = str3;
            this.f77744e = str4;
            this.f77745f = str5;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.R(Event.visitAppInternalPage, this.f77741b, this.f77742c, this.f77743d, this.f77744e, this.f77745f);
            } catch (Exception unused) {
            }
        }
    }

    class q4 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77747b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77748c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77749d;

        q4(String str, String str2, String str3) {
            this.f77747b = str;
            this.f77748c = str2;
            this.f77749d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.V(this.f77747b, this.f77748c, this.f77749d);
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77751b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77752c;

        r(String str, String str2) {
            this.f77751b = str;
            this.f77752c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Event event = Event.visitAppInternalPage;
                statRequest.setEvent(event.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77751b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setModule("forum");
                statRequest.getExt().setPage("fid" + this.f77752c);
                statRequest.getExt().setPosition("banner1");
                t.this.f77360c.B(event, statRequest);
            } catch (Exception unused) {
            }
        }
    }

    class r0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77754b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77755c;

        r0(String str, String str2) {
            this.f77754b = str;
            this.f77755c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.createLocalNetBattleRoomSuccess, this.f77754b, this.f77755c);
        }
    }

    class r1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77758c;

        r1(String str, String str2) {
            this.f77757b = str;
            this.f77758c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.gameRemove, this.f77757b, this.f77758c);
        }
    }

    class r2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.f f77760b;

        r2(com.papa.sim.statistic.f fVar) {
            this.f77760b = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.Y(Event.clickShopHomeEvent.name(), this.f77760b.e() + "", this.f77760b.b(), this.f77760b.a(), this.f77760b.d(), this.f77760b.c());
            } catch (Exception unused) {
            }
        }
    }

    class r3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.pref.a f77762b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77763c;

        r3(com.papa.sim.statistic.pref.a aVar, String str) {
            this.f77762b = aVar;
            this.f77763c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.J(Event.appUseTime, JsonMapper.getInstance().toJson(this.f77762b), this.f77763c);
                com.papa.sim.statistic.pref.b.k(t.this.f77359b).G(null);
            } catch (Exception unused) {
            }
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77765b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77766c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77767d;

        s(String str, String str2, String str3) {
            this.f77765b = str;
            this.f77766c = str2;
            this.f77767d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.visitAppInternalPage.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77765b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setModule("forum");
                statRequest.getExt().setPage("game" + this.f77766c);
                statRequest.getExt().setGameId(this.f77767d);
                statRequest.getExt().setPosition("gamelist" + this.f77767d);
                try {
                    statRequest.getData().setGameId(this.f77767d);
                } catch (Exception unused) {
                }
                t.this.f77360c.B(Event.visitAppInternalPage, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    class s0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77769b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ext f77770c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77771d;

        s0(Event event, Ext ext, String str) {
            this.f77769b = event;
            this.f77770c = ext;
            this.f77771d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.U(this.f77769b.name(), this.f77770c, this.f77771d);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class s1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77773b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77774c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77775d;

        s1(String str, String str2, int i10) {
            this.f77773b = str;
            this.f77774c = str2;
            this.f77775d = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.K(Event.visitGamePage, this.f77773b, this.f77774c, this.f77775d);
        }
    }

    class s2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f77777b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.f f77778c;

        s2(boolean z10, com.papa.sim.statistic.f fVar) {
            this.f77777b = z10;
            this.f77778c = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f77777b) {
                    t.this.f77360c.Y(Event.clickButtonEvent.name(), this.f77778c.e() + "", this.f77778c.b(), this.f77778c.a(), this.f77778c.d(), this.f77778c.c());
                } else {
                    t.this.f77360c.Y(Event.requestEvent.name(), this.f77778c.e() + "", this.f77778c.b(), this.f77778c.a(), this.f77778c.d(), this.f77778c.c());
                }
            } catch (Exception unused) {
            }
        }
    }

    class s3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77780b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77781c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77782d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77783e;

        s3(String str, String str2, int i10, String str3) {
            this.f77780b = str;
            this.f77781c = str2;
            this.f77782d = i10;
            this.f77783e = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.L(Event.gameStart, this.f77780b, this.f77781c, this.f77782d, this.f77783e);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: com.papa.sim.statistic.t$t, reason: collision with other inner class name */
    class RunnableC1000t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77785b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77786c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77787d;

        RunnableC1000t(String str, String str2, String str3) {
            this.f77785b = str;
            this.f77786c = str2;
            this.f77787d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.visitAppInternalPage.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77785b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setModule("forum");
                statRequest.getExt().setPage("game" + this.f77786c);
                statRequest.getExt().setGameId(this.f77787d);
                statRequest.getExt().setPosition("gamebtn" + this.f77787d);
                try {
                    statRequest.getData().setGameId(this.f77787d);
                } catch (Exception unused) {
                }
                t.this.f77360c.B(Event.visitAppInternalPage, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    class t0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77789b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77790c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77791d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77792e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f77793f;

        t0(Event event, int i10, int i11, String str, int i12) {
            this.f77789b = event;
            this.f77790c = i10;
            this.f77791d = i11;
            this.f77792e = str;
            this.f77793f = i12;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f77789b.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(this.f77790c);
                if (this.f77791d != 0) {
                    statRequest.getData().setPageVersion(this.f77791d);
                }
                statRequest.getData().setUid(String.valueOf(this.f77790c));
                try {
                    if (!TextUtils.isEmpty(this.f77792e)) {
                        statRequest.getData().setGameId(this.f77792e);
                    }
                } catch (Exception unused) {
                    statRequest.getData().setGameId("0");
                }
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77792e);
                if (this.f77793f >= 0) {
                    statRequest.getExt().setFrom(String.valueOf(this.f77793f));
                }
                t.this.f77360c.B(this.f77789b, statRequest);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class t1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77795b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77796c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77797d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77798e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77799f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f77800g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ String f77801h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ String f77802i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ String f77803j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ Ext f77804k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ String f77805l;

        t1(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Ext ext, String str10) {
            this.f77795b = str;
            this.f77796c = str2;
            this.f77797d = str3;
            this.f77798e = str4;
            this.f77799f = str5;
            this.f77800g = str6;
            this.f77801h = str7;
            this.f77802i = str8;
            this.f77803j = str9;
            this.f77804k = ext;
            this.f77805l = str10;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            Ext ext = new Ext();
            statRequest.setExt(ext);
            statRequest.setEvent(Event.visitGamePage.name());
            statRequest.setTime(System.currentTimeMillis());
            String str = this.f77795b;
            if (str != null && !str.equals("")) {
                try {
                    statRequest.setUid(Integer.parseInt(this.f77795b));
                    statRequest.getExt().setUid(Integer.parseInt(this.f77795b));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (String.valueOf(this.f77796c).startsWith(PointType.WIND_ADAPTER)) {
                ext.setPage(ExtFrom.home.name());
            }
            ext.setGameId(this.f77797d);
            ext.setFrom(this.f77796c);
            ext.setPosition(this.f77798e);
            ext.setReMarks(this.f77799f);
            ext.setRecPosition(this.f77799f);
            ext.setNodeId(this.f77800g);
            ext.setReMarks1(this.f77801h);
            ext.setKeyWord(this.f77802i);
            ext.setDataFlag(this.f77803j);
            if (this.f77804k != null) {
                t.this.f77360c.v0(statRequest.getExt(), this.f77804k);
            }
            Data data = new Data();
            data.setLocation(this.f77799f);
            data.setWhere(this.f77805l);
            statRequest.setData(data);
            try {
                if (!TextUtils.isEmpty(this.f77797d)) {
                    statRequest.getData().setGameId(this.f77797d);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            t.this.f77360c.B(Event.visitGamePage, statRequest);
        }
    }

    class t2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77807b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77808c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77809d;

        t2(String str, String str2, String str3) {
            this.f77807b = str;
            this.f77808c = str2;
            this.f77809d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.P(Event.appPageDownload, this.f77807b, this.f77808c, this.f77809d);
            } catch (Exception unused) {
            }
        }
    }

    class t3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77811b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f77812c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77813d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77814e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f77815f;

        t3(String str, boolean z10, String str2, String str3, int i10) {
            this.f77811b = str;
            this.f77812c = z10;
            this.f77813d = str2;
            this.f77814e = str3;
            this.f77815f = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq statDataCenterReqM = t.this.m(Event.joystickSetting);
                statDataCenterReqM.setUid(this.f77811b);
                statDataCenterReqM.setIs_visitors(this.f77812c ? 1 : 0);
                statDataCenterReqM.setJoystick_name(this.f77813d);
                statDataCenterReqM.setJoystick_mac(this.f77814e);
                statDataCenterReqM.setPapa_joy_type(this.f77815f);
                t.this.f77360c.b0(statDataCenterReqM);
            } catch (Exception unused) {
            }
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77817b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77818c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77819d;

        u(String str, String str2, String str3) {
            this.f77817b = str;
            this.f77818c = str2;
            this.f77819d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(Event.arenaGameList.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(Integer.parseInt(this.f77817b));
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setFrom(this.f77818c);
                statRequest.getExt().setGameId(this.f77819d);
                try {
                    statRequest.getData().setGameId(this.f77819d);
                } catch (Exception unused) {
                }
                t.this.f77360c.B(Event.arenaGameList, statRequest);
            } catch (Exception unused2) {
            }
        }
    }

    class u0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77821b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77822c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77823d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77824e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77825f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f77826g;

        u0(Event event, int i10, int i11, String str, String str2, int i12) {
            this.f77821b = event;
            this.f77822c = i10;
            this.f77823d = i11;
            this.f77824e = str;
            this.f77825f = str2;
            this.f77826g = i12;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f77821b.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(this.f77822c);
                if (this.f77823d != 0) {
                    statRequest.getData().setPageVersion(this.f77823d);
                }
                statRequest.getData().setUid(String.valueOf(this.f77822c));
                try {
                    statRequest.getData().setGameId(this.f77824e);
                } catch (Exception unused) {
                    statRequest.getData().setGameId("0");
                }
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77825f);
                statRequest.getExt().setFrom(String.valueOf(this.f77826g));
                t.this.f77360c.B(this.f77821b, statRequest);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class u1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77828b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77829c;

        u1(String str, String str2) {
            this.f77828b = str;
            this.f77829c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.startLocalNetBattleSuccess, this.f77828b, this.f77829c);
        }
    }

    class u2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77831b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77832c;

        u2(String str, int i10) {
            this.f77831b = str;
            this.f77832c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickGameMainBtn, Event.standalone, this.f77831b, this.f77832c);
            } catch (Exception unused) {
            }
        }
    }

    class u3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77834b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77835c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77836d;

        u3(String str, String str2, int i10) {
            this.f77834b = str;
            this.f77835c = str2;
            this.f77836d = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.k0(Event.gameUnzip, this.f77834b, this.f77835c, this.f77836d);
        }
    }

    class v implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f77838b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77839c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Ext f77840d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77841e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Event f77842f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f77843g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ String f77844h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ int f77845i;

        v(int i10, int i11, Ext ext, String str, Event event, String str2, String str3, int i12) {
            this.f77838b = i10;
            this.f77839c = i11;
            this.f77840d = ext;
            this.f77841e = str;
            this.f77842f = event;
            this.f77843g = str2;
            this.f77844h = str3;
            this.f77845i = i12;
        }

        @Override // java.lang.Runnable
        public void run() {
            Ext ext;
            String strOptString;
            StatRequest statRequest = new StatRequest();
            statRequest.getExt().setFrom(String.valueOf(this.f77838b));
            statRequest.getExt().setPosition(String.valueOf(this.f77839c));
            if (this.f77840d != null) {
                t.this.f77360c.v0(statRequest.getExt(), this.f77840d);
            } else {
                try {
                    if (!TextUtils.isEmpty(this.f77841e) && (ext = (Ext) JsonMapper.getInstance().fromJson(this.f77841e, Ext.class)) != null) {
                        t.this.f77360c.v0(statRequest.getExt(), ext);
                    }
                } catch (Exception unused) {
                }
            }
            try {
                if (!TextUtils.isEmpty(this.f77841e)) {
                    JSONObject jSONObject = new JSONObject(this.f77841e);
                    String strOptString2 = jSONObject.optString("from");
                    String strOptString3 = jSONObject.optString("position");
                    jSONObject.optString("location");
                    statRequest.getExt().setFrom(strOptString2);
                    statRequest.getExt().setPosition(strOptString3);
                    if (jSONObject.has("_from_type") && (strOptString = jSONObject.optString("_from_type")) != null) {
                        statRequest.getExt().setFrom(strOptString2);
                        statRequest.getExt().setPosition(strOptString);
                        if (jSONObject.has("recPosition")) {
                            statRequest.getExt().setRecPosition(jSONObject.optString("recPosition"));
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            t.this.f77360c.m0(this.f77842f, this.f77843g, this.f77844h, this.f77845i, statRequest);
        }
    }

    class v0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Data f77847b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Event f77848c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77849d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Ext f77850e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Event f77851f;

        v0(Data data, Event event, String str, Ext ext, Event event2) {
            this.f77847b = data;
            this.f77848c = event;
            this.f77849d = str;
            this.f77850e = ext;
            this.f77851f = event2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                if (this.f77847b != null) {
                    statRequest.getData().setGameId(this.f77847b.getGameId());
                    statRequest.getData().setWhere(this.f77848c.name());
                }
                if (!"".equals(this.f77849d)) {
                    statRequest.setUid(Integer.parseInt(this.f77849d));
                }
                if (this.f77850e != null) {
                    statRequest.getExt().setFromTabId(this.f77850e.getFromTabId());
                    statRequest.getExt().setArticleId(this.f77850e.getArticleId());
                    statRequest.getExt().setFrom(this.f77850e.getFrom());
                    statRequest.getExt().setLiveTime(this.f77850e.getLiveTime());
                }
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setRequest(true);
                statRequest.setEvent(this.f77851f.name());
                t.this.f77360c.j0(statRequest);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class v1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77853b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77854c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77855d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f77856e;

        v1(String str, String str2, String str3, long j10) {
            this.f77853b = str;
            this.f77854c = str2;
            this.f77855d = str3;
            this.f77856e = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.startLocalNetBattleSuccessEmu.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77853b));
                statRequest.getData().setGameId(this.f77854c);
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid2(this.f77855d);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPlugVersion(t.f77353h);
            statRequest.getExt().setDuration(this.f77856e);
            statRequest.getData().setUid(this.f77853b);
            t.this.f77360c.B(Event.startLocalNetBattleSuccessEmu, statRequest);
        }
    }

    class v2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77858b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77859c;

        v2(String str, int i10) {
            this.f77858b = str;
            this.f77859c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickFunGameMainBtn, Event.standalone, this.f77858b, this.f77859c);
            } catch (Exception unused) {
            }
        }
    }

    class v3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77861b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f77862c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77863d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77864e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f77865f;

        v3(String str, boolean z10, String str2, String str3, int i10) {
            this.f77861b = str;
            this.f77862c = z10;
            this.f77863d = str2;
            this.f77864e = str3;
            this.f77865f = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq statDataCenterReqM = t.this.m(Event.joystickJoin);
                statDataCenterReqM.setUid(this.f77861b);
                statDataCenterReqM.setIs_visitors(this.f77862c ? 1 : 0);
                statDataCenterReqM.setJoystick_name(this.f77863d);
                statDataCenterReqM.setJoystick_mac(this.f77864e);
                statDataCenterReqM.setPapa_joy_type(this.f77865f);
                t.this.f77360c.b0(statDataCenterReqM);
            } catch (Exception unused) {
            }
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77867b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77868c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77869d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77870e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77871f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f77872g;

        w(String str, String str2, String str3, String str4, String str5, String str6) {
            this.f77867b = str;
            this.f77868c = str2;
            this.f77869d = str3;
            this.f77870e = str4;
            this.f77871f = str5;
            this.f77872g = str6;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.Y(this.f77867b, this.f77868c, this.f77869d, this.f77870e, this.f77871f, this.f77872g);
            } catch (Exception unused) {
            }
        }
    }

    class w0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77874b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77875c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77876d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77877e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77878f;

        w0(Event event, int i10, int i11, String str, String str2) {
            this.f77874b = event;
            this.f77875c = i10;
            this.f77876d = i11;
            this.f77877e = str;
            this.f77878f = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                statRequest.setEvent(this.f77874b.name());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setUid(this.f77875c);
                statRequest.getData().setPageVersion(this.f77876d);
                statRequest.getData().setUid(String.valueOf(this.f77875c));
                statRequest.getData().setGameId(this.f77877e);
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.getExt().setGameId(this.f77877e);
                statRequest.getExt().setQkPosition(this.f77878f);
                t.this.f77360c.B(this.f77874b, statRequest);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class w1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77880b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77881c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77882d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f77883e;

        w1(String str, String str2, String str3, long j10) {
            this.f77880b = str;
            this.f77881c = str2;
            this.f77882d = str3;
            this.f77883e = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.endLocalNetBattleSuccessEmu.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77880b));
                statRequest.getData().setGameId(this.f77881c);
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid2(this.f77882d);
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPlugVersion(t.f77353h);
            statRequest.getExt().setDuration(this.f77883e);
            statRequest.getData().setUid(this.f77880b);
            t.this.f77360c.B(Event.endLocalNetBattleSuccessEmu, statRequest);
        }
    }

    class w2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77885b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77886c;

        w2(String str, int i10) {
            this.f77885b = str;
            this.f77886c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickGameMainBtn, Event.localBattle, this.f77885b, this.f77886c);
            } catch (Exception unused) {
            }
        }
    }

    class w3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77888b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f77889c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77890d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77891e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f77892f;

        w3(String str, boolean z10, String str2, String str3, int i10) {
            this.f77888b = str;
            this.f77889c = z10;
            this.f77890d = str2;
            this.f77891e = str3;
            this.f77892f = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq statDataCenterReqM = t.this.m(Event.joystickConfigChanged);
                statDataCenterReqM.setUid(this.f77888b);
                statDataCenterReqM.setIs_visitors(this.f77889c ? 1 : 0);
                statDataCenterReqM.setJoystick_name(this.f77890d);
                statDataCenterReqM.setJoystick_mac(this.f77891e);
                statDataCenterReqM.setPapa_joy_type(this.f77892f);
                t.this.f77360c.b0(statDataCenterReqM);
            } catch (Exception unused) {
            }
        }
    }

    class x implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77894b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77895c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77896d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77897e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77898f;

        x(String str, String str2, String str3, String str4, String str5) {
            this.f77894b = str;
            this.f77895c = str2;
            this.f77896d = str3;
            this.f77897e = str4;
            this.f77898f = str5;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.Y(Event.requestEvent.name(), this.f77894b, this.f77895c, this.f77896d, this.f77897e, this.f77898f);
            } catch (Exception unused) {
            }
        }
    }

    class x0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Event f77900b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ext f77901c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Data f77902d;

        x0(Event event, Ext ext, Data data) {
            this.f77900b = event;
            this.f77901c = ext;
            this.f77902d = data;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.T(this.f77900b.name(), this.f77901c, this.f77902d);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class x1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77904b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77905c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f77906d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77907e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77908f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Ext f77909g;

        x1(String str, String str2, int i10, String str3, String str4, Ext ext) {
            this.f77904b = str;
            this.f77905c = str2;
            this.f77906d = i10;
            this.f77907e = str3;
            this.f77908f = str4;
            this.f77909g = ext;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.o0(Event.installAndroidCompleted, this.f77904b, this.f77905c, this.f77906d, this.f77907e, this.f77908f, this.f77909g);
        }
    }

    class x2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77911b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77912c;

        x2(String str, int i10) {
            this.f77911b = str;
            this.f77912c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickFunGameMainBtn, Event.localBattle, this.f77911b, this.f77912c);
            } catch (Exception unused) {
            }
        }
    }

    class x3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77914b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f77915c;

        x3(String str, boolean z10) {
            this.f77914b = str;
            this.f77915c = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq statDataCenterReqM = t.this.m(Event.click_vs_hall);
                statDataCenterReqM.setUid(this.f77914b);
                statDataCenterReqM.setIs_visitors(this.f77915c ? 1 : 0);
                t.this.f77360c.b0(statDataCenterReqM);
            } catch (Exception unused) {
            }
        }
    }

    class y implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77917b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77918c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77919d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77920e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f77921f;

        y(String str, String str2, String str3, String str4, String str5) {
            this.f77917b = str;
            this.f77918c = str2;
            this.f77919d = str3;
            this.f77920e = str4;
            this.f77921f = str5;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.Y(Event.clickButtonEvent.name(), this.f77917b, this.f77918c, this.f77919d, this.f77920e, this.f77921f);
            } catch (Exception unused) {
            }
        }
    }

    class y0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Data f77923b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ext f77924c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Event f77925d;

        y0(Data data, Ext ext, Event event) {
            this.f77923b = data;
            this.f77924c = ext;
            this.f77925d = event;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                if (this.f77923b != null) {
                    statRequest.getData().setGameId(this.f77923b.getGameId());
                }
                if (this.f77924c != null) {
                    statRequest.getExt().setFromTabId(this.f77924c.getFromTabId());
                    statRequest.getExt().setArticleId(this.f77924c.getArticleId());
                    statRequest.getExt().setFrom(this.f77924c.getFrom());
                    statRequest.getExt().setLiveTime(this.f77924c.getLiveTime());
                    statRequest.getExt().setEndId(this.f77924c.getEndId());
                    statRequest.getExt().setPosition(this.f77924c.getPosition());
                }
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setRequest(true);
                statRequest.setEvent(this.f77925d.name());
                t.this.f77360c.j0(statRequest);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class y1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77927b;

        y1(String str) {
            this.f77927b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.setpapaerror, this.f77927b, null);
        }
    }

    class y2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77929b;

        y2(String str) {
            this.f77929b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f77360c.J(Event.visitBattlePage, "", this.f77929b);
        }
    }

    class y3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77931b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f77932c;

        y3(String str, boolean z10) {
            this.f77931b = str;
            this.f77932c = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq statDataCenterReqM = t.this.m(Event.click_vs_create_room);
                statDataCenterReqM.setUid(this.f77931b);
                statDataCenterReqM.setIs_visitors(this.f77932c ? 1 : 0);
                t.this.f77360c.b0(statDataCenterReqM);
            } catch (Exception unused) {
            }
        }
    }

    class z implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77934b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77935c;

        z(String str, String str2) {
            this.f77934b = str;
            this.f77935c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.W(this.f77934b, this.f77935c);
            } catch (Exception unused) {
            }
        }
    }

    class z0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Data f77937b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ext f77938c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Event f77939d;

        z0(Data data, Ext ext, Event event) {
            this.f77937b = data;
            this.f77938c = ext;
            this.f77939d = event;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatRequest statRequest = new StatRequest();
                Data data = this.f77937b;
                if (data != null) {
                    statRequest.setData(data);
                }
                Ext ext = this.f77938c;
                if (ext != null) {
                    statRequest.setExt(ext);
                }
                statRequest.getExt().setUid(statRequest.getUid());
                statRequest.setTime(System.currentTimeMillis());
                statRequest.setRequest(true);
                statRequest.setEvent(this.f77939d.name());
                t.this.f77360c.j0(statRequest);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class z1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77941b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77942c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77943d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f77944e;

        z1(String str, String str2, String str3, long j10) {
            this.f77941b = str;
            this.f77942c = str2;
            this.f77943d = str3;
            this.f77944e = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatRequest statRequest = new StatRequest();
            statRequest.setEvent(Event.gameOut.name());
            try {
                statRequest.setUid(Integer.parseInt(this.f77941b));
                statRequest.getData().setGameId(this.f77942c);
            } catch (Exception unused) {
            }
            statRequest.getExt().setUid(statRequest.getUid());
            statRequest.getExt().setPlugVersion(this.f77943d);
            statRequest.getExt().setDuration(this.f77944e);
            statRequest.getData().setUid(this.f77941b);
            t.this.f77360c.B(Event.gameOut, statRequest);
        }
    }

    class z2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f77947c;

        z2(String str, int i10) {
            this.f77946b = str;
            this.f77947c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t.this.f77360c.y(Event.clickGameMainBtn, Event.matchBattle, this.f77946b, this.f77947c);
            } catch (Exception unused) {
            }
        }
    }

    class z3 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f77949b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f77950c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f77951d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f77952e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f77953f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ byte f77954g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ byte f77955h;

        z3(int i10, String str, String str2, String str3, boolean z10, byte b10, byte b11) {
            this.f77949b = i10;
            this.f77950c = str;
            this.f77951d = str2;
            this.f77952e = str3;
            this.f77953f = z10;
            this.f77954g = b10;
            this.f77955h = b11;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                StatDataCenterReq statDataCenterReqM = t.this.m(Event.user_filters_refresh);
                statDataCenterReqM.setPlug_id(this.f77949b);
                statDataCenterReqM.setGame_type(this.f77950c);
                statDataCenterReqM.setZone(this.f77951d);
                statDataCenterReqM.setUid(this.f77952e);
                statDataCenterReqM.setIs_visitors(this.f77953f ? 1 : 0);
                statDataCenterReqM.setPapa_allow_spectators(this.f77954g);
                statDataCenterReqM.setPapa_has_slot(this.f77955h);
                t.this.f77360c.b0(statDataCenterReqM);
            } catch (Exception unused) {
            }
        }
    }

    private t(Context context) {
        this.f77359b = context;
        this.f77361d = y7.a.o(context);
        this.f77360c = com.papa.sim.statistic.s.m(context);
    }

    private void M2(com.papa.sim.statistic.pref.a aVar, String str) {
        f77352g.execute(new r3(aVar, str));
    }

    public static t l(Context context) {
        if (f77355j == null) {
            f77355j = new t(context);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            try {
                ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                f77356k = displayMetrics.heightPixels + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + displayMetrics.widthPixels;
            } catch (Exception unused) {
            }
        }
        return f77355j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StatDataCenterReq m(Event event) {
        StatDataCenterReq statDataCenterReq = new StatDataCenterReq();
        statDataCenterReq.setEvent(event.name());
        statDataCenterReq.setGame_time(System.currentTimeMillis() / 1000);
        statDataCenterReq.setDid(com.papa.sim.statistic.u.f(this.f77359b).b());
        statDataCenterReq.setAdv_id(com.papa.sim.statistic.m.a(this.f77359b));
        String str = Build.VERSION.RELEASE;
        statDataCenterReq.setOs(str);
        statDataCenterReq.setPhone(str);
        statDataCenterReq.setModel(Build.MODEL);
        statDataCenterReq.setMfr(Build.MANUFACTURER);
        statDataCenterReq.setRes(f77356k);
        statDataCenterReq.setIs_test(this.f77363f);
        statDataCenterReq.setApp_version(com.papa.sim.statistic.u.f(this.f77359b).q());
        return statDataCenterReq;
    }

    public void A(String str, String str2, String str3) {
        f77352g.execute(new c0(str, str2, str3));
    }

    public void A0(String str, int i10) {
        f77352g.execute(new i3(str, i10));
    }

    public void A1(Ext ext, String str) {
        this.f77360c.A(Event.memberClickRegister, ext, str);
    }

    public void A2(String str) {
        f77352g.execute(new j4(str));
    }

    public void B(String str, String str2) {
        f77352g.execute(new j3(str, str2));
    }

    public void B0(String str, int i10) {
        f77352g.execute(new l3(str, i10));
    }

    public void B1(Event event, int i10, String str, String str2, int i11, int i12) {
        f77352g.execute(new u0(event, i10, i12, str2, str, i11));
    }

    public void B2(String str) {
        f77352g.execute(new e(str));
    }

    public void C(String str, String str2) {
        Ext ext = new Ext();
        ext.setArticleId(str);
        this.f77360c.A(Event.articleClickPraise, ext, str2);
    }

    public void C0(String str, String str2, long j10, int i10, String str3, long j11, int i11, int i12, String str4, int i13, String str5, Ext ext) {
        D0(str, str2, j10, i10, str3, j11, i11, i12, str4, i13, null, str5, ext);
    }

    public void C1(String str, String str2, String str3) {
        f77352g.execute(new l2((StatJsonRawData) JsonMapper.getInstance().fromJson(str2.toLowerCase(), StatJsonRawData.class), str, str3));
    }

    public void C2(String str) {
        f77352g.execute(new b(str));
    }

    public void D(String str, String str2) {
        f77352g.execute(new f1(str, str2));
    }

    public void D0(String str, String str2, long j10, int i10, String str3, long j11, int i11, int i12, String str4, int i13, String str5, String str6, Ext ext) {
        f77352g.execute(new h2(str5, str6, str4, str, str3, j10, i10, j11, str2, i13, i11, ext, i12));
    }

    public void D1(String str, long j10, String str2) {
        this.f77360c.H(Event.netBattleMatchFinish, str, j10, str2);
    }

    public void D2(String str) {
        f77352g.execute(new c(str));
    }

    public void E(String str, String str2, String str3) {
        f77352g.execute(new e1(str3, str2, str));
    }

    public void E0(String str, String str2, long j10, int i10, String str3, String str4, long j11, int i11, int i12, String str5, int i13, String str6, Ext ext) {
        F0(str, str2, j10, i10, str3, str4, j11, i11, i12, str5, i13, null, str6, ext);
    }

    public void E1(String str, long j10, String str2, String str3) {
        f77352g.execute(new e2(str2, str, j10, str3));
    }

    public void E2(int i10, String str, int i11) {
        f77352g.execute(new m4(i11, str, i10));
    }

    public void F(String str, String str2) {
        f77352g.execute(new a1(str2, str));
    }

    public void F0(String str, String str2, long j10, int i10, String str3, String str4, long j11, int i11, int i12, String str5, int i13, String str6, String str7, Ext ext) {
        f77352g.execute(new i2(str6, str7, str5, str, str3, str2, j10, i10, j11, str4, i13, ext, i11, i12));
    }

    public void F1(String str, String str2) {
        this.f77360c.J(Event.netBattleMatchStart, str, str2);
    }

    public void F2(String str) {
        f77352g.execute(new d(str));
    }

    public void G(String str, String str2) {
        this.f77360c.J(Event.clickLocalNetBattleJoinRoomBtn, str, str2);
    }

    public void G0(String str, String str2, long j10, int i10, String str3, int i11, int i12, int i13, String str4) {
        f77352g.execute(new f2(str, str2, j10, i10, str3, i11, i12, i13, str4));
    }

    public void G1(String str, String str2, String str3) {
        f77352g.execute(new d2(str2, str, str3));
    }

    public void G2(String str) {
        f77352g.execute(new f(str));
    }

    public void H(String str, String str2, int i10, String str3) {
        f77352g.execute(new l1(str, str2, i10, str3));
    }

    public void H0(String str, String str2, long j10, int i10, String str3, String str4, int i11, int i12, int i13, String str5) {
        f77352g.execute(new g2(str, str2, j10, i10, str3, str4, i11, i12, i13, str5));
    }

    public void H1(String str, String str2) {
        this.f77360c.J(Event.netMatchBtnClick, str, str2);
    }

    public void H2(String str, int i10) {
        f77352g.execute(new k3(str, i10));
    }

    public void I(String str, String str2) {
        f77352g.execute(new m1(str, str2));
    }

    public void I0(String str, int i10) {
        f77352g.execute(new v2(str, i10));
    }

    public void I1(Ext ext) {
        f77352g.execute(new q0(ext));
    }

    public void I2(boolean z10, String str) {
        this.f77360c.r0(z10);
        if (!z10 || str == null || str.equals("")) {
            return;
        }
        this.f77361d.a();
        List<EMUApkTable> list = (List) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ArrayList.class, EMUApkTable.class));
        if (list == null) {
            return;
        }
        this.f77361d.u(list);
    }

    public void J(String str, String str2) {
        f77352g.execute(new g0(str, str2));
    }

    public void J0(String str, String str2) {
        f77352g.execute(new j2(str, str2));
    }

    public void J1(String str) {
        this.f77360c.J(Event.newbieGuideLoad, "", str);
    }

    public void J2(boolean z10) {
        this.f77360c.s0(z10);
    }

    public void K(String str, String str2, String str3) {
        f77352g.execute(new c1(str2, str, str3));
    }

    public void K0(String str, int i10, int i11) {
        f77352g.execute(new m3(i11, str, i10));
    }

    public void K1(String str) {
        this.f77360c.J(Event.newbieGuidePlay, "", str);
    }

    public void K2(boolean z10) {
        this.f77360c.t0(z10);
    }

    public void L(String str) {
        f77352g.execute(new o4(str));
    }

    public void L0(String str, int i10) {
        f77352g.execute(new a3(str, i10));
    }

    public void L1(String str) {
        this.f77360c.J(Event.newbieGuidePlayGame, "", str);
    }

    public void L2(com.papa.sim.statistic.j jVar) {
        this.f77362e = jVar;
    }

    public void M(String str) {
        f77352g.execute(new h4(str));
    }

    public void M0(String str, int i10) {
        f77352g.execute(new f3(str, i10));
    }

    public void M1(String str) {
        f77352g.execute(new k0(str));
    }

    public void N(String str) {
        f77352g.execute(new p4(str));
    }

    public void N0(String str, int i10) {
        f77352g.execute(new b3(str, i10));
    }

    public void N1(String str) {
        f77352g.execute(new y1(str));
    }

    public void N2(String str, String str2, String str3, long j10) {
        f77352g.execute(new v1(str2, str, str3, j10));
    }

    public void O(String str, boolean z10) {
        f77352g.execute(new y3(str, z10));
    }

    public void O0(String str, int i10) {
        f77352g.execute(new w2(str, i10));
    }

    public void O1(String str, String str2, String str3) {
        f77352g.execute(new m2(str, str2, str3));
    }

    public void O2(int i10, String str) {
        com.papa.sim.statistic.pref.a aVarM;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method updateLiveStat() called.step=");
        sb2.append(i10);
        if (i10 == 0) {
            com.papa.sim.statistic.pref.a aVarM2 = com.papa.sim.statistic.pref.b.k(this.f77359b).m();
            if (aVarM2 != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("liveStat=");
                sb3.append(aVarM2.toString());
                if (aVarM2.a() == 0) {
                    return;
                } else {
                    M2(aVarM2, str);
                }
            } else {
                aVarM2 = new com.papa.sim.statistic.pref.a();
            }
            aVarM2.f((byte) 0);
            aVarM2.g(System.currentTimeMillis());
            aVarM2.e(0L);
            com.papa.sim.statistic.pref.b.k(this.f77359b).G(aVarM2);
            return;
        }
        if (i10 == 1) {
            com.papa.sim.statistic.pref.a aVarM3 = com.papa.sim.statistic.pref.b.k(this.f77359b).m();
            if (aVarM3 != null) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("step=");
                sb4.append(i10);
                sb4.append(";liveStat=");
                sb4.append(aVarM3.toString());
                aVarM3.e(System.currentTimeMillis());
                com.papa.sim.statistic.pref.b.k(this.f77359b).G(aVarM3);
                M2(aVarM3, str);
                return;
            }
            return;
        }
        if (i10 != 2 || (aVarM = com.papa.sim.statistic.pref.b.k(this.f77359b).m()) == null) {
            return;
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("step=");
        sb5.append(i10);
        sb5.append(";liveStat=");
        sb5.append(aVarM.toString());
        if (System.currentTimeMillis() - aVarM.a() <= e0.a.f90863b || aVarM.a() <= 0) {
            return;
        }
        M2(aVarM, str);
        com.papa.sim.statistic.pref.a aVar = new com.papa.sim.statistic.pref.a();
        aVar.g(System.currentTimeMillis());
        aVar.f((byte) 0);
        com.papa.sim.statistic.pref.b.k(this.f77359b).G(aVar);
    }

    public void P(String str, String str2) {
        f77352g.execute(new n4(str, str2));
    }

    public void P0(String str, int i10) {
        f77352g.execute(new c3(str, i10));
    }

    public void P1(String str, String str2, String str3, String str4) {
        f77352g.execute(new o2(str, str2, str3, str4));
    }

    public void P2(String str, String str2, String str3, String str4, String str5) {
        f77352g.execute(new q3(str, str2, str3, str4, str5));
    }

    public void Q(String str, boolean z10) {
        f77352g.execute(new x3(str, z10));
    }

    public void Q0(String str, int i10) {
        f77352g.execute(new d3(str, i10));
    }

    public void Q1(Event event) {
        R1(event, new Ext());
    }

    public void R(String str) {
        f77352g.execute(new i4(str));
    }

    public void R0(String str, int i10) {
        f77352g.execute(new z2(str, i10));
    }

    public void R1(Event event, Ext ext) {
        f77352g.execute(new l0(event, ext));
    }

    public void S(String str) {
        f77352g.execute(new j(str));
    }

    public void S0(String str, int i10, int i11) {
        f77352g.execute(new p3(i11, str, i10));
    }

    public void S1(Event event, int i10, String str, int i11, int i12) {
        f77352g.execute(new t0(event, i10, i12, str, i11));
    }

    public void T(String str, String str2) {
        f77352g.execute(new g(str, str2));
    }

    public void T0(String str, int i10) {
        f77352g.execute(new h3(str, i10));
    }

    public void T1(Event event, int i10) {
        f77352g.execute(new m0(event, i10));
    }

    public void U(String str, String str2) {
        f77352g.execute(new h(str, str2));
    }

    public void U0(String str, int i10) {
        f77352g.execute(new u2(str, i10));
    }

    public void U1(String str, int i10, int i11) {
        f77352g.execute(new n3(i10, str, i11));
    }

    public void V(String str) {
        f77352g.execute(new a(str));
    }

    public void V0(String str, long j10, String str2) {
        this.f77360c.H(Event.gameOut, str, j10, str2);
    }

    public void V1(Event event, String str, int i10, String str2, int i11) {
        f77352g.execute(new w0(event, i10, i11, str, str2));
    }

    public void W(String str) {
        f77352g.execute(new i(str));
    }

    public void W0(String str, long j10, String str2, String str3) {
        f77352g.execute(new z1(str2, str, str3, j10));
    }

    public void W1(Event event, Ext ext, Data data) {
        f77352g.execute(new x0(event, ext, data));
    }

    public void X(Event event, Ext ext, String str) {
        f77352g.execute(new s0(event, ext, str));
    }

    public void X0(Event event, String str, String str2, String str3) {
        f77352g.execute(new h0(event, str2, str, str3));
    }

    public void X1(String str, int i10, int i11, String str2, String str3) {
        f77352g.execute(new b4(str, str2, str3, i11, i10));
    }

    public void Y(Event event, Ext ext, Data data) {
        f77352g.execute(new z0(data, ext, event));
    }

    public void Y0(Event event, String str, String str2) {
        f77352g.execute(new f0(event, str2, str));
    }

    public void Y1(String str, int i10, int i11, int i12) {
        f77352g.execute(new c4(str, i11, i10, i12));
    }

    public void Z(String str, String str2) {
        f77352g.execute(new r0(str, str2));
    }

    public void Z0(Event event, String str, String str2, String str3, int i10) {
        a1(event, str, str2, str3, i10, "");
    }

    public void Z1(Event event, String str, String str2, String str3) {
        f77352g.execute(new j0(event, str3, str2, str));
    }

    public void a0(String str, boolean z10, String str2, String str3, int i10) {
        f77352g.execute(new w3(str, z10, str2, str3, i10));
    }

    public void a1(Event event, String str, String str2, String str3, int i10, String str4) {
        f77352g.execute(new i0(event, str2, str, str3, i10, str4));
    }

    public void a2(String str) {
        f77352g.execute(new k(str));
    }

    public void b0(String str, boolean z10, String str2, String str3, int i10) {
        f77352g.execute(new v3(str, z10, str2, str3, i10));
    }

    public void b1(String str, int i10, int i11) {
        f77352g.execute(new i1(str, i10, i11));
    }

    public void b2(String str) {
        this.f77360c.J(Event.startApp2, "", str);
    }

    public void c0(String str, boolean z10, String str2, String str3, int i10) {
        f77352g.execute(new t3(str, z10, str2, str3, i10));
    }

    public void c1(String str, String str2) {
        f77352g.execute(new r1(str, str2));
    }

    public void c2(String str, String str2) {
        this.f77360c.J(Event.startDownloadPlug, str, str2);
    }

    public void d(String str, Ext ext) {
        String[] list;
        Context context;
        File file = this.f77359b.getExternalFilesDir("") != null ? new File(this.f77359b.getExternalFilesDir("").getAbsolutePath() + "/wufan91/aidlservice") : new File(this.f77359b.getFilesDir().getAbsolutePath() + "/wufan91/aidlservice");
        if (Build.VERSION.SDK_INT >= 23 && (context = this.f77359b) != null && context.checkSelfPermission("android.permission-group.STORAGE") == 0) {
            String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
            com.papa.sim.statistic.g.b(new File(absolutePath + "/mgpapa/aidlservice"), file);
            com.papa.sim.statistic.g.b(new File(absolutePath + "/wufan91/aidlservice"), file);
        }
        if (file.exists() && file.isDirectory() && (list = file.list()) != null) {
            for (String str2 : list) {
                File file2 = new File(file, str2);
                if (str2.toLowerCase().startsWith("game_start15")) {
                    try {
                        try {
                            j(str2.split("_")[2], str2.split("_")[3], str, ext);
                            file2.delete();
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                    }
                } else if (str2.toLowerCase().startsWith("game_startbattle15")) {
                    e2(str2.split("_")[2], str2.split("_")[3]);
                    file2.delete();
                } else if (str2.toLowerCase().startsWith("game_start160")) {
                    i(str2.split("_")[2], str2.split("_")[3], Integer.parseInt(str2.split("_")[4]), str);
                    file2.delete();
                } else if (str2.toLowerCase().startsWith("play_time_")) {
                    P1(str2.split("_")[2], str2.split("_")[4] + "", str2.split("_")[3], UUID.randomUUID().toString());
                    file2.delete();
                } else if (str2.toLowerCase().startsWith("game_out_")) {
                    W0(str2.split("_")[2], Long.parseLong(str2.split("_")[3]), str2.split("_")[4], str);
                    file2.delete();
                }
            }
        }
    }

    public void d0(String str, String str2, String str3) {
        f77352g.execute(new d1(str3, str2, str));
    }

    public void d1(String str, String str2) {
        this.f77360c.J(Event.gameRemove1, str, str2);
    }

    public void d2(String str, String str2, String str3) {
        f77352g.execute(new o1(str3, str, str2));
    }

    public void e() {
        this.f77361d.b();
    }

    public void e0(String str, String str2) {
        this.f77360c.J(Event.downloadPlugCompleted, str, str2);
    }

    public void e1(String str, String str2) {
        this.f77360c.J(Event.gameRemove2, str, str2);
    }

    public void e2(String str, String str2) {
        f77352g.execute(new u1(str, str2));
    }

    public void f(String str) {
        this.f77360c.J(Event.joystickConfigChanged, "", str);
    }

    public void f0(String str, String str2, String str3) {
        f77352g.execute(new p1(str3, str, str2));
    }

    public void f1(String str, int i10, String str2, String str3, String str4, int i11, String str5, String str6, Ext ext) {
        f77352g.execute(new a2(str3, str2, i10, str4, i11, str6, str5, ext, str));
    }

    public void f2(String str, int i10) {
        f77352g.execute(new a4(str, i10));
    }

    public void g(String str, int i10, String str2) {
        JoyStickConfig joyStickConfig = new JoyStickConfig();
        joyStickConfig.setUid(Integer.parseInt(str));
        joyStickConfig.setType(i10);
        joyStickConfig.setFile(str2);
        com.papa.sim.statistic.s.m(this.f77359b).E(Event.joyStickConfigPost, JsonMapper.nonDefaultMapper().toJson(joyStickConfig));
    }

    public void g0(String str, String str2) {
        f77352g.execute(new c2(str, str2));
    }

    public void g1(Event event, String str, String str2, int i10, int i11, int i12, String str3) {
        h1(event, str, str2, i10, i11, i12, str3, null);
    }

    public void g2(String str) {
        f77352g.execute(new b2(str));
    }

    public void h(String str, String str2, String str3, long j10) {
        f77352g.execute(new w1(str2, str, str3, j10));
    }

    public void h0(String str) {
        this.f77360c.J(Event.setemuerror, str, null);
    }

    public void h1(Event event, String str, String str2, int i10, int i11, int i12, String str3, Ext ext) {
        f77352g.execute(new v(i11, i12, ext, str3, event, str, str2, i10));
    }

    public void h2(String str, String str2, int i10) {
        f77352g.execute(new n2(str, str2, i10));
    }

    public void i(String str, String str2, int i10, String str3) {
        f77352g.execute(new s3(str, str2, i10, str3));
    }

    public void i0(Event event, Ext ext, Data data) {
        f77352g.execute(new y0(data, ext, event));
    }

    public void i1(String str, String str2, int i10, int i11, int i12, String str3) {
        h1(Event.gameStart, str, str2, i10, i11, i12, str3, null);
    }

    public void i2(String str, String str2) {
        this.f77360c.J(Event.unzipIOFailed, str, str2);
    }

    public void j(String str, String str2, String str3, Ext ext) {
        f77352g.execute(new g1(str, str2, str3, ext));
    }

    public void j0(String str, String str2, String str3) {
        f77352g.execute(new b1(str3, str2, str));
    }

    public void j1(String str, String str2, int i10, int i11, int i12, String str3, Ext ext) {
        h1(Event.gameStart, str, str2, i10, i11, i12, str3, ext);
    }

    public void j2(String str, String str2) {
        this.f77360c.J(Event.unzipIndexFailed, str, str2);
    }

    public void k(String str, String str2) {
        this.f77360c.J(Event.startLocalNetBattleSuccess, str, str2);
    }

    public void k0(Event event, Ext ext, String str) {
        f77352g.execute(new n0(event, ext, str));
    }

    public void k1(String str) {
        this.f77360c.E(Event.gameUnlockSp, str);
    }

    public void k2(String str, boolean z10, String str2, int i10, String str3, byte b10, byte b11) {
        f77352g.execute(new z3(i10, str3, str2, str, z10, b10, b11));
    }

    public void l0(String str) {
        f77352g.execute(new m(str));
    }

    public void l1(String str, String str2, int i10) {
        f77352g.execute(new u3(str, str2, i10));
    }

    public void l2(String str, String str2, String str3, String str4, String str5) {
        f77352g.execute(new y(str, str2, str3, str4, str5));
    }

    public void m0(String str) {
        f77352g.execute(new e4(str));
    }

    public void m1(String str, String str2, String str3) {
        f77352g.execute(new e0(str2, str, str3));
    }

    public void m2(String str) {
        s2(Event.clickHomePageEvent.name(), str);
    }

    public com.papa.sim.statistic.j n() {
        return this.f77362e;
    }

    public void n0(String str, String str2) {
        f77352g.execute(new p(str2, str));
    }

    public void n1(Event event, String str, String str2) {
        f77352g.execute(new o0(event, str, str2));
    }

    public void n2(String str, String str2, String str3, String str4, String str5) {
        f77352g.execute(new x(str, str2, str3, str4, str5));
    }

    public void o() {
    }

    public void o0(String str) {
        f77352g.execute(new d4(str));
    }

    public void o1(Event event, Ext ext) {
        f77352g.execute(new p0(event, ext));
    }

    public void o2(String str, String str2, int i10, int i11, int i12, String str3) {
        g1(Event.VMGameStart, str, str2, i10, i11, i12, str3);
    }

    public void p(String str, String str2, String str3) {
        f77352g.execute(new q4(str, str2, str3));
    }

    public void p0(String str) {
        f77352g.execute(new l(str));
    }

    public void p1(String str, String str2, int i10, String str3, String str4, Ext ext) {
        f77352g.execute(new x1(str, str2, i10, str3, str4, ext));
    }

    public void p2(String str, String str2, int i10, int i11, int i12, String str3) {
        g1(Event.VMGameStartAfterStatus, str, str2, i10, i11, i12, str3);
    }

    public void q(Event event, String str, String str2, String str3) {
        f77352g.execute(new l4(event, str, str3, str2));
    }

    public void q0(String str, String str2) {
        f77352g.execute(new n(str2, str));
    }

    public void q1(String str, String str2, String str3) {
        f77352g.execute(new q1(str3, str, str2));
    }

    public void q2(String str, String str2) {
        f77352g.execute(new a0(str, str2));
    }

    public void r(String str, String str2, String str3, String str4, String str5, String str6) {
        f77352g.execute(new p2(str, str2, str4, str3, str5, str6));
    }

    public void r0(String str, String str2) {
        f77352g.execute(new o(str2, str));
    }

    public void r1(String str, String str2) {
        this.f77360c.J(Event.insufficientStorage, str, str2);
    }

    public void r2(String str, String str2, String str3, String str4, String str5, String str6) {
        f77352g.execute(new w(str, str2, str3, str4, str5, str6));
    }

    public void s(com.papa.sim.statistic.f fVar) {
        f77352g.execute(new r2(fVar));
    }

    public void s0(String str, String str2, String str3) {
        f77352g.execute(new RunnableC1000t(str3, str, str2));
    }

    public void s1(Event event, Event event2, String str, Ext ext, Data data) {
        f77352g.execute(new v0(data, event2, str, ext, event));
    }

    public void s2(String str, String str2) {
        f77352g.execute(new z(str, str2));
    }

    public void t(String str, String str2, String str3) {
        f77352g.execute(new q2(str, str2, str3));
    }

    public void t0(String str, String str2, String str3) {
        f77352g.execute(new s(str3, str, str2));
    }

    public void t1(String str, String str2) {
        f77352g.execute(new j1(str, str2));
    }

    public void t2(String str) {
        f77352g.execute(new y2(str));
    }

    public void u(String str, String str2, String str3) {
        f77352g.execute(new t2(str, str2, str3));
    }

    public void u0(String str, String str2) {
        f77352g.execute(new q(str2, str));
    }

    public void u1(String str, String str2, int i10, String str3) {
        f77352g.execute(new h1(str, str2, i10, str3));
    }

    public void u2(String str, String str2, int i10) {
        f77352g.execute(new s1(str, str2, i10));
    }

    public void v(String str, String str2) {
        f77352g.execute(new k2(str, str2));
    }

    public void v0(String str, String str2) {
        f77352g.execute(new r(str2, str));
    }

    public void v1(String str, String str2) {
        this.f77360c.J(Event.joinLocalNetBattleRoomSuccess, str, str2);
    }

    public void v2(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        w2(str, str2, str3, str4, str5, str6, "", "", str7, str8);
    }

    public void w(com.papa.sim.statistic.f fVar, boolean z10) {
        f77352g.execute(new s2(z10, fVar));
    }

    public void w0(String str, int i10, int i11) {
        f77352g.execute(new o3(i11, str, i10));
    }

    public void w1(String str, String str2, int i10, String str3) {
        f77352g.execute(new k1(str, str2, i10, str3));
    }

    public void w2(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        x2(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, null);
    }

    public void x(String str, int i10, String str2) {
        f77352g.execute(new d0(str, i10, str2));
    }

    public void x0(String str, int i10) {
        f77352g.execute(new g3(str, i10));
    }

    public void x1(String str, String str2) {
        f77352g.execute(new n1(str, str2));
    }

    public void x2(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Ext ext) {
        f77352g.execute(new t1(str2, str3, str, str4, str5, str6, str7, str9, str8, ext, str10));
    }

    public void y(String str, String str2, String str3) {
        f77352g.execute(new u(str, str3, str2));
    }

    public void y0(String str, int i10) {
        f77352g.execute(new x2(str, i10));
    }

    public void y1(Ext ext, String str) {
        this.f77360c.A(Event.joystickJoinApp, ext, str);
    }

    public void y2(Where where, String str) {
        f77352g.execute(new f4(where, str));
    }

    public void z(String str, String str2) {
        f77352g.execute(new b0(str, str2));
    }

    public void z0(String str, int i10) {
        f77352g.execute(new e3(str, i10));
    }

    public void z1(String str) {
        f77352g.execute(new g4(str));
    }

    public void z2(String str) {
        f77352g.execute(new k4(str));
    }
}
