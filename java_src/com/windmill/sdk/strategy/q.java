package com.windmill.sdk.strategy;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f87239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f87240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f87241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f87242d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f87243e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f87244f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f87245g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f87246h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f87247i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f87248j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f87249k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public List<String> f87250l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<a> f87251m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<String, String> f87252n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f87253o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f87254p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f87255q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f87256r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f87257s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Map<String, Float> f87258t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f87259u;

    public q(int maxConcurrent, String strategy_id, int ab_flag, int traffic_weight, boolean enable_ab_test, int load_timeout, int type, int time_type, int refresh_interval, boolean auto_load, boolean bid_switch, int bidding_timeout, List<String> track_url, Map<String, String> dc_options, boolean enable_concurrency, int max_concurrent_count, boolean notify_bid_result, boolean strategy_realtime_refresh, boolean client_bidding_switch, Map<String, Float> currency_setting) {
        this.f87239a = maxConcurrent;
        this.f87240b = strategy_id;
        this.f87241c = ab_flag;
        this.f87242d = traffic_weight;
        this.f87243e = enable_ab_test;
        this.f87244f = load_timeout;
        this.f87245g = type;
        this.f87259u = time_type;
        this.f87246h = refresh_interval;
        this.f87247i = auto_load;
        this.f87248j = bid_switch;
        this.f87249k = bidding_timeout;
        this.f87250l = track_url;
        this.f87252n = dc_options;
        this.f87253o = enable_concurrency;
        this.f87254p = max_concurrent_count;
        this.f87255q = notify_bid_result;
        this.f87256r = strategy_realtime_refresh;
        this.f87257s = client_bidding_switch;
        this.f87258t = currency_setting;
        if (time_type == 0) {
            this.f87246h = refresh_interval * 1000;
            this.f87249k = bidding_timeout * 1000;
            this.f87244f = load_timeout * 1000;
        }
    }

    public List<a> a() {
        return this.f87251m;
    }

    public void a(List<a> failList) {
        this.f87251m = failList;
    }
}
