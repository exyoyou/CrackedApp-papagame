package com.join.mgps.event;

import com.join.mgps.dto.FriendInviteBean;
import com.papa91.battle.protocol.GameRoom;

/* JADX INFO: loaded from: classes3.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f68222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f68223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f68224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f68225d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f68226e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FriendInviteBean f68227f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f68228g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f68229h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private GameRoom f68230i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f68231j;

    public w() {
    }

    public int a() {
        return this.f68222a;
    }

    public int b() {
        return this.f68224c;
    }

    public String c() {
        return this.f68225d;
    }

    public GameRoom d() {
        return this.f68230i;
    }

    public FriendInviteBean e() {
        return this.f68227f;
    }

    public String f() {
        return this.f68229h;
    }

    public int g() {
        return this.f68226e;
    }

    public int h() {
        return this.f68228g;
    }

    public int i() {
        return this.f68231j;
    }

    public boolean j() {
        return this.f68223b;
    }

    public void k(boolean accept) {
        this.f68223b = accept;
    }

    public void l(int event) {
        this.f68222a = event;
    }

    public void m(int fromAccountId) {
        this.f68224c = fromAccountId;
    }

    public void n(String gameId) {
        this.f68225d = gameId;
    }

    public void o(GameRoom gameRoom) {
        this.f68230i = gameRoom;
    }

    public void p(FriendInviteBean inviteBean) {
        this.f68227f = inviteBean;
    }

    public void q(String joinSpectatorReason) {
        this.f68229h = joinSpectatorReason;
    }

    public void r(int roomId) {
        this.f68226e = roomId;
    }

    public void s(int roomLive) {
        this.f68228g = roomLive;
    }

    public void t(int source) {
        this.f68231j = source;
    }

    public w(int event) {
        this.f68222a = event;
    }
}
