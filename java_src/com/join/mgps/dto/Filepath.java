package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class Filepath {
    private long allsize;
    private long available;
    private boolean islocal;
    private String pathHome;
    private String pathRoot;

    public long getAllsize() {
        return this.allsize;
    }

    public long getAvailable() {
        return this.available;
    }

    public String getPathHome() {
        return this.pathHome;
    }

    public String getPathRoot() {
        return this.pathRoot;
    }

    public boolean isIslocal() {
        return this.islocal;
    }

    public void setAllsize(long allsize) {
        this.allsize = allsize;
    }

    public void setAvailable(long available) {
        this.available = available;
    }

    public void setIslocal(boolean islocal) {
        this.islocal = islocal;
    }

    public void setPathHome(String pathHome) {
        this.pathHome = pathHome;
    }

    public void setPathRoot(String pathRoot) {
        this.pathRoot = pathRoot;
    }
}
