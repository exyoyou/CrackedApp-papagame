package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaLobbyPlayCheck {
    private int create_money;
    private int join_money;
    private int money;

    public boolean canCreate() {
        return getMoney() != 0 && getMoney() >= getCreate_money();
    }

    public boolean canJoin() {
        return getMoney() != 0 && getMoney() >= getJoin_money();
    }

    public int getCreate_money() {
        return this.create_money;
    }

    public int getJoin_money() {
        return this.join_money;
    }

    public int getMoney() {
        return this.money;
    }

    public void setCreate_money(int create_money) {
        this.create_money = create_money;
    }

    public void setJoin_money(int join_money) {
        this.join_money = join_money;
    }

    public void setMoney(int money) {
        this.money = money;
    }
}
