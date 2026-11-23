package com.join.mgps.activity.recomend;

import com.join.mgps.dto.CollectionBeanSub;

/* JADX INFO: loaded from: classes9.dex */
public class GamedownRecomendItemBean extends CollectionBeanSub {
    boolean hasSendData = false;
    private RecContext rec_context;

    public static class RecContext {
        private String position;
        private String scene;
        private String tid;
        private String version;

        public String getPosition() {
            return this.position;
        }

        public String getScene() {
            return this.scene;
        }

        public String getTid() {
            return this.tid;
        }

        public String getVersion() {
            return this.version;
        }

        public void setPosition(String position) {
            this.position = position;
        }

        public void setScene(String scene) {
            this.scene = scene;
        }

        public void setTid(String tid) {
            this.tid = tid;
        }

        public void setVersion(String version) {
            this.version = version;
        }
    }

    public RecContext getRec_context() {
        return this.rec_context;
    }

    public boolean isHasSendData() {
        return this.hasSendData;
    }

    public void setHasSendData(boolean hasSendData) {
        this.hasSendData = hasSendData;
    }

    public void setRec_context(RecContext rec_context) {
        this.rec_context = rec_context;
    }
}
