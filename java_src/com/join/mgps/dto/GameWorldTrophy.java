package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameWorldTrophy {
    private String trophy_key;
    private String trophy_name;
    private List<GameWorldTrophyUser> users;

    public String getTrophy_key() {
        return this.trophy_key;
    }

    public String getTrophy_name() {
        return this.trophy_name;
    }

    public List<GameWorldTrophyUser> getUsers() {
        return this.users;
    }

    public void setTrophy_key(String trophy_key) {
        this.trophy_key = trophy_key;
    }

    public void setTrophy_name(String trophy_name) {
        this.trophy_name = trophy_name;
    }

    public void setUsers(List<GameWorldTrophyUser> users) {
        this.users = users;
    }
}
