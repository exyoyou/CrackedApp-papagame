package com.haima.hmcp.beans;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class FrameInfo {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    protected long f33817id;
    protected long renderedTimeStamp;

    public FrameInfo setId(long j10) {
        this.f33817id = j10;
        return this;
    }

    public FrameInfo setRenderedTime(long j10) {
        this.renderedTimeStamp = j10;
        return this;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f33817id);
            jSONObject.put("rendered_time_stamp", this.renderedTimeStamp);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }
}
