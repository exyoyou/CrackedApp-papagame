package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class BattleChallengeConfig implements Serializable {
    private static final long serialVersionUID = -6172796922543736060L;
    private int[] battleChallengeCopper;
    private int challengeScore;
    private int fixChallengeCopper;
    private boolean isBattle;
    private int userCopper;

    public int[] getBattleChallengeCopper() {
        return this.battleChallengeCopper;
    }

    public int getChallengeScore() {
        return this.challengeScore;
    }

    public int getFixChallengeCopper() {
        return this.fixChallengeCopper;
    }

    public boolean getIsBattle() {
        return this.isBattle;
    }

    public int getUserCopper() {
        return this.userCopper;
    }

    public void setBattleChallengeCopper(int[] battleChallengeCopper) {
        this.battleChallengeCopper = battleChallengeCopper;
    }

    public void setChallengeScore(int challengeScore) {
        this.challengeScore = challengeScore;
    }

    public void setFixChallengeCopper(int fixChallengeCopper) {
        this.fixChallengeCopper = fixChallengeCopper;
    }

    public void setIsBattle(boolean battle) {
        this.isBattle = battle;
    }

    public void setUserCopper(int userCopper) {
        this.userCopper = userCopper;
    }
}
