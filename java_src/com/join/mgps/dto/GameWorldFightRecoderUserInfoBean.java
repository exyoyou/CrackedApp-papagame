package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GameWorldFightRecoderUserInfoBean implements Serializable {
    private String avatar_src;
    private String battle_count;
    private String battle_winning_rate;
    private int match_count;
    private int match_curr_ex;
    private int match_defeat_count;
    private int match_level;
    private int match_next_ex;
    private int match_winning_count;
    private int match_winning_rate;
    private String nickname;
    private int papa_money;
    private int uid;
    private int vip_level = 0;
    private int svip_level = 0;
    private long vip_expire_time = 0;

    public GameWorldFightRecoderUserInfoBean() {
    }

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public String getBattle_count() {
        return this.battle_count;
    }

    public String getBattle_winning_rate() {
        return this.battle_winning_rate;
    }

    public int getMatch_count() {
        return this.match_count;
    }

    public int getMatch_curr_ex() {
        return this.match_curr_ex;
    }

    public int getMatch_defeat_count() {
        return this.match_defeat_count;
    }

    public int getMatch_level() {
        return this.match_level;
    }

    public int getMatch_next_ex() {
        return this.match_next_ex;
    }

    public int getMatch_winning_count() {
        return this.match_winning_count;
    }

    public int getMatch_winning_rate() {
        return this.match_winning_rate;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getPapa_money() {
        return this.papa_money;
    }

    public int getSvip_level() {
        return this.svip_level;
    }

    public int getUid() {
        return this.uid;
    }

    public long getVip_expire_time() {
        return this.vip_expire_time;
    }

    public int getVip_level() {
        return this.vip_level;
    }

    public void setAvatar_src(String avatar_src) {
        this.avatar_src = avatar_src;
    }

    public void setBattle_count(String battle_count) {
        this.battle_count = battle_count;
    }

    public void setBattle_winning_rate(String battle_winning_rate) {
        this.battle_winning_rate = battle_winning_rate;
    }

    public void setMatch_count(int match_count) {
        this.match_count = match_count;
    }

    public void setMatch_curr_ex(int match_curr_ex) {
        this.match_curr_ex = match_curr_ex;
    }

    public void setMatch_defeat_count(int match_defeat_count) {
        this.match_defeat_count = match_defeat_count;
    }

    public void setMatch_level(int match_level) {
        this.match_level = match_level;
    }

    public void setMatch_next_ex(int match_next_ex) {
        this.match_next_ex = match_next_ex;
    }

    public void setMatch_winning_count(int match_winning_count) {
        this.match_winning_count = match_winning_count;
    }

    public void setMatch_winning_rate(int match_winning_rate) {
        this.match_winning_rate = match_winning_rate;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPapa_money(int papa_money) {
        this.papa_money = papa_money;
    }

    public void setSvip_level(int svip_level) {
        this.svip_level = svip_level;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setVip_expire_time(long vip_expire_time) {
        this.vip_expire_time = vip_expire_time;
    }

    public void setVip_level(int vip_level) {
        this.vip_level = vip_level;
    }

    public String toString() {
        return "GameWorldFightRecoderUserInfoBean{uid=" + this.uid + ", nickname='" + this.nickname + "', papa_money=" + this.papa_money + ", match_next_ex=" + this.match_next_ex + ", match_curr_ex=" + this.match_curr_ex + ", match_level=" + this.match_level + ", match_winning_rate=" + this.match_winning_rate + ", match_count=" + this.match_count + ", match_winning_count=" + this.match_winning_count + ", match_defeat_count=" + this.match_defeat_count + ", avatar_src='" + this.avatar_src + "', battle_winning_rate='" + this.battle_winning_rate + "', battle_count='" + this.battle_count + "'}";
    }

    public GameWorldFightRecoderUserInfoBean(int uid, String nickname, int papa_money, int match_next_ex, int match_curr_ex, int match_level, int match_winning_rate, int match_count, int match_winning_count, int match_defeat_count) {
        this.uid = uid;
        this.nickname = nickname;
        this.papa_money = papa_money;
        this.match_next_ex = match_next_ex;
        this.match_curr_ex = match_curr_ex;
        this.match_level = match_level;
        this.match_winning_rate = match_winning_rate;
        this.match_count = match_count;
        this.match_winning_count = match_winning_count;
        this.match_defeat_count = match_defeat_count;
    }
}
