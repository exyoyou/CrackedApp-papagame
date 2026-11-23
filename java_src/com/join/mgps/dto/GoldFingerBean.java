package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GoldFingerBean implements Serializable {
    private List<ContentBean> content;
    private boolean isSelected = false;
    private String title;

    public static class ContentBean implements Serializable {
        private String description;
        private String mode;
        private String title;

        public String getDescription() {
            return this.description;
        }

        public String getMode() {
            return this.mode;
        }

        public String getTitle() {
            return this.title;
        }

        public void setDescription(String description) {
            this.description = description;
        }

        public void setMode(String mode) {
            this.mode = mode;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public List<ContentBean> getContent() {
        return this.content;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setContent(List<ContentBean> content) {
        this.content = content;
    }

    public void setSelected(boolean selected) {
        this.isSelected = selected;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
