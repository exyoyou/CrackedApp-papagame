package com.beizi.fusion.unified;

/* JADX INFO: loaded from: classes6.dex */
public class BZBZUnifiedAdRequestParameters {
    private int adType;
    private String extraData;
    private String spaceId;
    private int timeout;

    public static class Builder {
        private int adType;
        private String extraData;
        private String spaceId;
        private int timeout;

        public BZBZUnifiedAdRequestParameters build() {
            BZBZUnifiedAdRequestParameters bZBZUnifiedAdRequestParameters = new BZBZUnifiedAdRequestParameters();
            bZBZUnifiedAdRequestParameters.setSpaceId(this.spaceId);
            bZBZUnifiedAdRequestParameters.setTimeout(this.timeout);
            bZBZUnifiedAdRequestParameters.setAdType(this.adType);
            bZBZUnifiedAdRequestParameters.setExtraData(this.extraData);
            return bZBZUnifiedAdRequestParameters;
        }

        public Builder setAdType(int i10) {
            this.adType = i10;
            return this;
        }

        public Builder setExtraData(String str) {
            this.extraData = str;
            return this;
        }

        public Builder setSpaceId(String str) {
            this.spaceId = str;
            return this;
        }

        public Builder setTimeout(int i10) {
            this.timeout = i10;
            return this;
        }
    }

    public int getAdType() {
        return this.adType;
    }

    public String getExtraData() {
        return this.extraData;
    }

    public String getSpaceId() {
        return this.spaceId;
    }

    public int getTimeout() {
        return this.timeout;
    }

    public void setAdType(int i10) {
        this.adType = i10;
    }

    public void setExtraData(String str) {
        this.extraData = str;
    }

    public void setSpaceId(String str) {
        this.spaceId = str;
    }

    public void setTimeout(int i10) {
        this.timeout = i10;
    }
}
