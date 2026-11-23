package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GamerecommendBean implements Serializable {
    private List<RecomDatabean> left;
    private List<RecomDatabean> right;
    private List<RecomDatabean> top;

    public GamerecommendBean() {
    }

    public List<RecomDatabean> getLeft() {
        return this.left;
    }

    public List<RecomDatabean> getRight() {
        return this.right;
    }

    public List<RecomDatabean> getTop() {
        return this.top;
    }

    public void setLeft(List<RecomDatabean> left) {
        this.left = left;
    }

    public void setRight(List<RecomDatabean> right) {
        this.right = right;
    }

    public void setTop(List<RecomDatabean> top) {
        this.top = top;
    }

    public GamerecommendBean(List<RecomDatabean> left, List<RecomDatabean> top, List<RecomDatabean> right) {
        this.left = left;
        this.top = top;
        this.right = right;
    }
}
