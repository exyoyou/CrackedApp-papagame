package com.windmill.sdk.models;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.sdk.base.module.manager.SDKManager;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.strategy.a;
import com.windmill.sdk.strategy.d;
import com.windmill.sdk.utils.n;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class BidInfo {
    private String bidTime;
    private String bidType;
    private String clickStatus;
    private String eCPM;
    private String exposureStatus;
    private String failReason;
    private Map<String, String> option;
    private String requestId;
    private String secondPrice;
    private String winner;

    public BidInfo(Map<String, String> map) {
        this.winner = "5";
        this.eCPM = "0";
        this.bidType = "4";
        this.exposureStatus = "2";
        this.clickStatus = "2";
        this.failReason = "5";
        this.secondPrice = "0";
        this.bidTime = "";
        this.requestId = "未知";
        if (map != null) {
            this.option = map;
            this.winner = map.get("A");
            this.eCPM = map.get(SDKManager.ALGO_B_AES_SHA256_RSA);
            this.bidType = map.get(SDKManager.ALGO_C_RFU);
            this.exposureStatus = map.get("S");
            this.clickStatus = map.get(SDKManager.ALGO_D_RFU);
            this.failReason = map.get("H");
            this.secondPrice = map.get("I");
            this.bidTime = map.get("J");
            this.requestId = map.get("K");
        }
    }

    private void cacheData(a strategy) {
        if (strategy != null) {
            try {
                if (TextUtils.isEmpty(strategy.aL())) {
                    return;
                }
                if (this.option == null) {
                    this.option = new HashMap();
                }
                this.option.put("A", this.winner);
                this.option.put(SDKManager.ALGO_B_AES_SHA256_RSA, this.eCPM);
                this.option.put(SDKManager.ALGO_C_RFU, this.bidType);
                this.option.put("S", this.exposureStatus);
                this.option.put(SDKManager.ALGO_D_RFU, this.clickStatus);
                this.option.put("H", this.failReason);
                this.option.put("I", this.secondPrice);
                this.option.put("J", this.bidTime);
                this.option.put("K", this.requestId);
                SharedPreferences.Editor editorEdit = n.a(WindMillAd.sharedAds().getContext(), d.f87139b).edit();
                editorEdit.putString(d.f87138a + strategy.aL(), this.option.toString());
                editorEdit.apply();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public String getBidTime() {
        return this.bidTime;
    }

    public String getBidType() {
        return this.bidType;
    }

    public String getClickStatus() {
        return this.clickStatus;
    }

    public String getECpm() {
        return this.eCPM;
    }

    public String getExposureStatus() {
        return this.exposureStatus;
    }

    public String getFailReason() {
        return this.failReason;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public String getSecondPrice() {
        return this.secondPrice;
    }

    public String getWinner() {
        return this.winner;
    }

    public String toString() {
        return "{winner='" + this.winner + "', eCPM='" + this.eCPM + "', bidType='" + this.bidType + "', exposureStatus='" + this.exposureStatus + "', clickStatus='" + this.clickStatus + "', failReason='" + this.failReason + "', secondPrice='" + this.secondPrice + "', bidTime='" + this.bidTime + "', requestId='" + this.requestId + "'}";
    }

    public void update(int type, String request_id, a strategy) {
        if (strategy != null) {
            boolean z10 = false;
            try {
                if (!TextUtils.isEmpty(strategy.V())) {
                    if (Double.parseDouble(strategy.V()) > Double.parseDouble(this.secondPrice)) {
                        if (Double.parseDouble(strategy.V()) > Double.parseDouble(this.eCPM)) {
                            this.secondPrice = this.eCPM;
                        }
                        if (Double.parseDouble(strategy.V()) < Double.parseDouble(this.eCPM)) {
                            this.secondPrice = strategy.V();
                        }
                        z10 = true;
                    }
                    if (Double.parseDouble(strategy.V()) > Double.parseDouble(this.eCPM)) {
                        this.eCPM = strategy.V();
                        z10 = true;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (type == 0 && !z10) {
                if (strategy.aN() != 21 || TextUtils.isEmpty(request_id)) {
                    return;
                }
                this.requestId = request_id;
                cacheData(strategy);
                return;
            }
            if (strategy.aN() == 21) {
                this.winner = "2";
                this.failReason = "5";
                if (!TextUtils.isEmpty(request_id)) {
                    this.requestId = request_id;
                }
            } else {
                this.winner = "5";
                this.failReason = "2";
            }
            if (type == 1) {
                this.exposureStatus = "1";
            } else {
                this.exposureStatus = "2";
            }
            if (strategy.Y() == 1) {
                this.bidType = "3";
            } else {
                this.bidType = "2";
            }
            this.bidTime = String.valueOf(System.currentTimeMillis() / 1000);
            cacheData(strategy);
        }
    }

    public BidInfo(int type, String request_Id, a strategy) {
        this.winner = "5";
        this.eCPM = "0";
        this.bidType = "4";
        this.exposureStatus = "2";
        this.clickStatus = "2";
        this.failReason = "5";
        this.secondPrice = "0";
        this.bidTime = "";
        this.requestId = "未知";
        if (strategy != null) {
            if (strategy.aN() == 21) {
                this.winner = "2";
                this.failReason = "5";
                if (!TextUtils.isEmpty(request_Id)) {
                    this.requestId = request_Id;
                }
            } else {
                this.winner = "5";
                this.failReason = "2";
                this.requestId = "未知";
            }
            if (type == 1) {
                this.exposureStatus = "1";
            } else {
                this.exposureStatus = "2";
            }
            if (!TextUtils.isEmpty(strategy.V())) {
                this.eCPM = strategy.V();
                this.secondPrice = "0";
            }
            if (strategy.Y() == 1) {
                this.bidType = "3";
            } else {
                this.bidType = "2";
            }
            this.bidTime = String.valueOf(System.currentTimeMillis() / 1000);
            cacheData(strategy);
        }
    }
}
