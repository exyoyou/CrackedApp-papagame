package com.join.mgps.dto;

import com.join.mgps.db.tables.UserPurchaseInfo;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AccountLoginresultData<E> {
    private int error_code;
    private String error_msg;
    private List<UserPurchaseInfo> game_list_permission;
    private boolean is_success;
    private RewardBean reward;
    private AccountBean user_info;

    public int getError_code() {
        return this.error_code;
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public List<UserPurchaseInfo> getGame_list_permission() {
        return this.game_list_permission;
    }

    public RewardBean getReward() {
        return this.reward;
    }

    public AccountBean getUser_info() {
        return this.user_info;
    }

    public boolean isIs_success() {
        return this.is_success;
    }

    public boolean is_success() {
        return this.is_success;
    }

    public void setError_code(int error_code) {
        this.error_code = error_code;
    }

    public void setError_msg(String error_msg) {
        this.error_msg = error_msg;
    }

    public void setGame_list_permission(List<UserPurchaseInfo> game_list_permission) {
        this.game_list_permission = game_list_permission;
    }

    public void setIs_success(boolean is_success) {
        this.is_success = is_success;
    }

    public void setReward(RewardBean reward) {
        this.reward = reward;
    }

    public void setUser_info(AccountBean user_info) {
        this.user_info = user_info;
    }
}
