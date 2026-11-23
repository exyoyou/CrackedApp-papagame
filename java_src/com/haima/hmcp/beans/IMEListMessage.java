package com.haima.hmcp.beans;

import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class IMEListMessage extends BaseSwitchIMEMessageProtocol {
    public IMEListMessage() {
        this.event = "ime_list";
    }

    public ArrayList<IMEBean> getList(String str) {
        if (TextUtils.isEmpty(this.payload)) {
            return null;
        }
        ArrayList<IMEBean> arrayList = new ArrayList<>();
        for (String str2 : this.payload.split(";")) {
            if (!TextUtils.isEmpty(str2)) {
                IMEBean iMEBean = new IMEBean();
                iMEBean.name = str2;
                if (TextUtils.equals(str, str2)) {
                    iMEBean.isDefault = 1;
                } else {
                    iMEBean.isDefault = 0;
                }
                arrayList.add(iMEBean);
            }
        }
        return arrayList;
    }
}
