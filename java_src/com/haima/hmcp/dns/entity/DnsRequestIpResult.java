package com.haima.hmcp.dns.entity;

import com.haima.hmcp.beans.BaseResult;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DnsRequestIpResult extends BaseResult {
    public List<Result> result;

    public static class Result {
        public int code;
        public List<Data> data;
        public String host;
        public String msg;
        public int priorityType;

        public static class Data {
            public List<String> ip;
            public int type;

            public String toString() {
                return "Data{ip=" + this.ip + ", type=" + this.type + '}';
            }
        }

        public String toString() {
            return "Result{code=" + this.code + ", data=" + this.data + ", msg='" + this.msg + "', priorityType=" + this.priorityType + ", url='" + this.host + "'}";
        }
    }

    @Override // com.haima.hmcp.beans.BaseResult
    public String toString() {
        return "DnsRequestIpResult{code=" + this.code + ", msg='" + this.msg + "', errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', retryRequestCount=" + this.retryRequestCount + ", result=" + this.result + '}';
    }
}
