package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class TodayWufunBean {
    private TodayWufunBroadcast bm_broadcast;
    private TodayWufunEverday every_day_discover;
    private long times;
    private List<TodayWufunTodayNew> today_is_new;
    private TodayWufunTopic today_is_topic;

    public TodayWufunBroadcast getBm_broadcast() {
        return this.bm_broadcast;
    }

    public TodayWufunEverday getEvery_day_discover() {
        return this.every_day_discover;
    }

    public long getTimes() {
        return this.times;
    }

    public List<TodayWufunTodayNew> getToday_is_new() {
        return this.today_is_new;
    }

    public TodayWufunTopic getToday_is_topic() {
        return this.today_is_topic;
    }

    public void setBm_broadcast(TodayWufunBroadcast bm_broadcast) {
        this.bm_broadcast = bm_broadcast;
    }

    public void setEvery_day_discover(TodayWufunEverday every_day_discover) {
        this.every_day_discover = every_day_discover;
    }

    public void setTimes(long times) {
        this.times = times;
    }

    public void setToday_is_new(List<TodayWufunTodayNew> today_is_new) {
        this.today_is_new = today_is_new;
    }

    public void setToday_is_topic(TodayWufunTopic today_is_topic) {
        this.today_is_topic = today_is_topic;
    }
}
