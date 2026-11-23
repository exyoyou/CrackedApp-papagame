package com.sigmob.sdk.base.mta;

/* JADX INFO: loaded from: classes5.dex */
public class PointEntityActive extends PointEntitySigmobSuper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f79521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f79522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f79523c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f79524d;

    public static PointEntityActive ActiveTracking(String category, String activeId, String duration, String activeTime) {
        PointEntityActive pointEntityActive = new PointEntityActive();
        pointEntityActive.setAc_type(PointType.WIND_ACTIVE);
        pointEntityActive.setCategory(category);
        pointEntityActive.setActive_id(activeId);
        pointEntityActive.setDuration(duration);
        pointEntityActive.setTimestamp(activeTime);
        pointEntityActive.commit();
        return pointEntityActive;
    }

    public String getActive_id() {
        return this.f79521a;
    }

    public String getDuration() {
        return this.f79524d;
    }

    public String getRequest_id() {
        return this.f79522b;
    }

    public String getVid() {
        return this.f79523c;
    }

    public void setActive_id(String active_id) {
        this.f79521a = active_id;
    }

    public void setDuration(String duration) {
        this.f79524d = duration;
    }

    public void setRequest_id(String request_id) {
        this.f79522b = request_id;
    }

    public void setVid(String vid) {
        this.f79523c = vid;
    }
}
