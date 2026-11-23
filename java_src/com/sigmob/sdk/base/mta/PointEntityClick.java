package com.sigmob.sdk.base.mta;

/* JADX INFO: loaded from: classes5.dex */
public class PointEntityClick extends PointEnitySigmobBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f79525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f79526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f79527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f79528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f79529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f79530f;

    public String getClick_duration() {
        return this.f79526b;
    }

    public String getIs_valid_click() {
        return this.f79527c;
    }

    public String getLocation() {
        return this.f79525a;
    }

    public String getPressure() {
        return this.f79529e;
    }

    public String getTouchSize() {
        return this.f79530f;
    }

    public String getTouchType() {
        return this.f79528d;
    }

    public void setClick_duration(String click_duration) {
        this.f79526b = click_duration;
    }

    public void setIs_valid_click(String is_valid_click) {
        this.f79527c = is_valid_click;
    }

    public void setLocation(String location) {
        this.f79525a = location;
    }

    public void setPressure(String pressure) {
        this.f79529e = pressure;
    }

    public void setTouchSize(String touchSize) {
        this.f79530f = touchSize;
    }

    public void setTouchType(String touchType) {
        this.f79528d = touchType;
    }
}
