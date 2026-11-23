package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class UserInfo implements Serializable {

    @JSONField(name = "uId")
    public String userId;

    @JSONField(name = "uLevel")
    public int userLevel;

    @JSONField(name = "uToken")
    public String userToken;
    public int userType;

    public String toString() {
        return "UserInfo{userId='" + this.userId + "', userToken='" + this.userToken + "', userLevel=" + this.userLevel + ", userType=" + this.userType + '}';
    }
}
