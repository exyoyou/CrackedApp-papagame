package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DetialIntentBean implements Serializable {
    public static final int GIFTMORE = 4;
    public static final int INFORMITIONMORE = 2;
    public static final int SERVICEMORE = 3;
    public static final int STRATEGYMORE = 1;
    public static final int STRATEGYTABLE = 5;
    private String gameId;
    private int intentType;
    private int startegyTab;
    private List<GameDetialStrategyTag> strategyTags;

    public String getGameId() {
        return this.gameId;
    }

    public int getIntentType() {
        return this.intentType;
    }

    public int getStartegyTab() {
        return this.startegyTab;
    }

    public List<GameDetialStrategyTag> getStrategyTags() {
        return this.strategyTags;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setIntentType(int intentType) {
        this.intentType = intentType;
    }

    public void setStartegyTab(int startegyTab) {
        this.startegyTab = startegyTab;
    }

    public void setStrategyTags(List<GameDetialStrategyTag> strategyTags) {
        this.strategyTags = strategyTags;
    }
}
