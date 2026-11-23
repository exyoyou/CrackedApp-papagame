package com.windmill.sdk.models;

/* JADX INFO: loaded from: classes8.dex */
public class WaterfallFilterData {
    private String adnPlacementId;
    private final String bidType;
    private String channelId;
    private final int filterIndex;
    private String placementId;
    private final String price;
    private String renderType;
    private String subType;

    public static class Builder {
        private String bidType;
        private int filterIndex;
        private String price;
        private String placementId = "";
        private String channelId = "";
        private String adnPlacementId = "";
        private String subType = "";
        private String renderType = "";

        public Builder adnPlacementId(String adnPlacementId) {
            this.adnPlacementId = adnPlacementId;
            return this;
        }

        public Builder bidType(String bidType) {
            this.bidType = bidType;
            return this;
        }

        public WaterfallFilterData build() {
            return new WaterfallFilterData(this);
        }

        public Builder channelId(String channelId) {
            this.channelId = channelId;
            return this;
        }

        public Builder filterIndex(int filterIndex) {
            this.filterIndex = filterIndex;
            return this;
        }

        public Builder placementId(String placementId) {
            this.placementId = placementId;
            return this;
        }

        public Builder price(String price) {
            this.price = price;
            return this;
        }

        public Builder renderType(String renderType) {
            this.renderType = renderType;
            return this;
        }

        public Builder subType(String subType) {
            this.subType = subType;
            return this;
        }
    }

    public String getAdnPlacementId() {
        return this.adnPlacementId;
    }

    public String getBidType() {
        return this.bidType;
    }

    public String getChannelId() {
        return this.channelId;
    }

    public int getFilterIndex() {
        return this.filterIndex;
    }

    public String getPlacementId() {
        return this.placementId;
    }

    public String getPrice() {
        return this.price;
    }

    public Object getWithKey(String key) {
        if (key.equals("channelId")) {
            return this.channelId;
        }
        if (key.equals(WMFilter.KEY_ADN_PLACEMENT_ID)) {
            return this.adnPlacementId;
        }
        if (key.equals("eCpm")) {
            return this.price;
        }
        if (key.equals(WMFilter.KEY_BIDDING_TYPE)) {
            return this.bidType;
        }
        if (key.equals(WMFilter.KEY_ADN_PLACEMENT_SUB_TYPE)) {
            return this.subType;
        }
        if (key.equals(WMFilter.KEY_ADN_PLACEMENT_RENDER_TYPE)) {
            return this.renderType;
        }
        return null;
    }

    public String toString() {
        return "WaterfallFilterData{filterIndex=" + this.filterIndex + ", placementId='" + this.placementId + "', channelId='" + this.channelId + "', adnPlacementId='" + this.adnPlacementId + "', price='" + this.price + "', bidType='" + this.bidType + "', subType='" + this.subType + "', renderType='" + this.renderType + "'}";
    }

    private WaterfallFilterData(Builder builder) {
        this.placementId = "";
        this.channelId = "";
        this.adnPlacementId = "";
        this.subType = "";
        this.renderType = "";
        this.filterIndex = builder.filterIndex;
        this.placementId = builder.placementId;
        this.channelId = builder.channelId;
        this.adnPlacementId = builder.adnPlacementId;
        this.price = builder.price;
        this.bidType = builder.bidType;
        this.subType = builder.subType;
        this.renderType = builder.renderType;
    }
}
