package com.join.mgps.dto;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes3.dex */
public class PayResult {
    private String memo;
    private String result;
    private String resultStatus;

    public PayResult(String rawResult) {
        if (TextUtils.isEmpty(rawResult)) {
            return;
        }
        for (String str : rawResult.split(";")) {
            if (str.startsWith("resultStatus")) {
                this.resultStatus = gatValue(str, "resultStatus");
            }
            if (str.startsWith("result")) {
                this.result = gatValue(str, "result");
            }
            if (str.startsWith("memo")) {
                this.memo = gatValue(str, "memo");
            }
        }
    }

    private String gatValue(String content, String key) {
        String str = key + "={";
        return content.substring(content.indexOf(str) + str.length(), content.lastIndexOf("}"));
    }

    public String getMemo() {
        return this.memo;
    }

    public String getResult() {
        return this.result;
    }

    public String getResultStatus() {
        return this.resultStatus;
    }

    public String toString() {
        return "resultStatus={" + this.resultStatus + "};memo={" + this.memo + "};result={" + this.result + "}";
    }
}
