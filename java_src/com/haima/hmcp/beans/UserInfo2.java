package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;
import com.czhj.sdk.common.Constants;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class UserInfo2 implements Serializable {

    @JSONField(name = "userId")
    public String userId;

    @JSONField(name = "uLevel")
    public int userLevel;

    @JSONField(name = Constants.TOKEN)
    public String userToken;
    public int userType;

    public String toString() {
        return "UserInfo2{userId='" + this.userId + "', userToken='" + this.userToken + "', userLevel=" + this.userLevel + ", userType=" + this.userType + '}';
    }
}
