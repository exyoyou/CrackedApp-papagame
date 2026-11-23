package com.aggmoread.sdk.client.reward;

import com.aggmoread.sdk.client.IAMAdInteractionListener;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public interface AMRewardInteractionListener extends IAMAdInteractionListener {
    void onAdClicked();

    void onAdClosed();

    void onAdExposed();

    void onReward(Map map);

    void onVideoComplete();
}
