package com.byazt.bz;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 231, 15})
public class uj {
    public static void c(com.byazt.bo.c cVar, String str) {
        com.byazt.eu.tt.tt("TMe_reward", "RewardUtils  ".concat(String.valueOf(str)));
        if (cVar == null) {
            com.byazt.eu.tt.tt("TMe_reward", "rewardItem is null ");
            return;
        }
        com.byazt.eu.tt.tt("TMe_reward", "rewardItem.getRewardName " + cVar.ve());
        com.byazt.eu.tt.tt("TMe_reward", "rewardItem.getAmount " + cVar.tt());
        com.byazt.eu.tt.tt("TMe_reward", "rewardItem.getCustomData() " + cVar.uj());
        com.byazt.eu.tt.tt("TMe_reward", "rewardItem.rewardVerify() " + cVar.c());
    }
}
