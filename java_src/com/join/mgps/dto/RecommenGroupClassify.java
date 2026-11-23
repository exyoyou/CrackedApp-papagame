package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RecommenGroupClassify {
    private int gid;
    private String gname;

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        RecommenGroupClassify recommenGroupClassify = (RecommenGroupClassify) o10;
        if (this.gid != recommenGroupClassify.gid) {
            return false;
        }
        String str = this.gname;
        String str2 = recommenGroupClassify.gname;
        if (str != null) {
            return str.equals(str2);
        }
        return str2 == null;
    }

    public int getGid() {
        return this.gid;
    }

    public String getGname() {
        return this.gname;
    }

    public int hashCode() {
        int i10 = this.gid * 31;
        String str = this.gname;
        return i10 + (str != null ? str.hashCode() : 0);
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }
}
