package com.windmill.sdk.point;

/* JADX INFO: loaded from: classes8.dex */
public class PointEntityWMTrack extends PointEntityWind {
    private String content_length;
    private String content_type;
    private String http_code;
    private String response;
    private String time_spend;
    private String tracking_type;
    private String url;

    public static PointEntityWMTrack WindTracking(String category, String acType, String placement_id, String adType) {
        PointEntityWMTrack pointEntityWMTrack = new PointEntityWMTrack();
        pointEntityWMTrack.setAc_type(acType);
        pointEntityWMTrack.setCategory(category);
        pointEntityWMTrack.setAdtype(adType);
        pointEntityWMTrack.setPlacement_id(placement_id);
        return pointEntityWMTrack;
    }

    public String getContent_length() {
        return this.content_length;
    }

    public String getContent_type() {
        return this.content_type;
    }

    public String getHttp_code() {
        return this.http_code;
    }

    public String getResponse() {
        return this.response;
    }

    public String getTime_spend() {
        return this.time_spend;
    }

    public String getTracking_type() {
        return this.tracking_type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setContent_length(String content_length) {
        this.content_length = content_length;
    }

    public void setContent_type(String content_type) {
        this.content_type = content_type;
    }

    public void setHttp_code(String http_code) {
        this.http_code = http_code;
    }

    public void setResponse(String response) {
        this.response = response;
    }

    public void setTime_spend(String time_spend) {
        this.time_spend = time_spend;
    }

    public void setTracking_type(String tracking_type) {
        this.tracking_type = tracking_type;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
