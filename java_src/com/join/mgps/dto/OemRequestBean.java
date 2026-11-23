package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class OemRequestBean {

    public static class GetOemDetailRequestBean {
        private String oid;
        private String uid;

        public String getOid() {
            return this.oid;
        }

        public LinkedMultiValueMap<String, Object> getParams() {
            LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", getUid() + "");
            linkedMultiValueMap.add("oid", getOid() + "");
            return linkedMultiValueMap;
        }

        public String getUid() {
            return this.uid;
        }

        public void setOid(String oid) {
            this.oid = oid;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }
    }

    public static class ReceiveCdkRequestBean {
        private String oid;
        private String uid;

        public String getOid() {
            return this.oid;
        }

        public LinkedMultiValueMap<String, Object> getParams() {
            LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", getUid() + "");
            linkedMultiValueMap.add("oid", getOid() + "");
            return linkedMultiValueMap;
        }

        public String getUid() {
            return this.uid;
        }

        public void setOid(String oid) {
            this.oid = oid;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }
    }
}
