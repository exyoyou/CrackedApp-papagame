package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class RequestAppDetialArgs extends BaseDto {
    private String deviceid;
    private String game_id;
    private String token;
    private int uid;
    private String version;

    public RequestAppDetialArgs() {
    }

    public Map<String, String> getArgs() {
        HashMap map = new HashMap();
        map.put("game_id", this.game_id);
        map.put("uid", this.uid + "");
        map.put("device_id", this.deviceid);
        map.put("version", this.version);
        map.put(Constants.TOKEN, this.token);
        return map;
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public RequestAppDetialArgs(String game_id, int uid) {
        this.game_id = game_id;
        this.uid = uid;
    }

    public RequestAppDetialArgs(String game_id, String token, int uid) {
        this.game_id = game_id;
        this.token = token;
        this.uid = uid;
    }
}
