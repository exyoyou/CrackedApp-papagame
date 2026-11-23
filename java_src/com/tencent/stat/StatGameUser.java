package com.tencent.stat;

/* JADX INFO: loaded from: classes2.dex */
public class StatGameUser implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f83793a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f83794b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f83795c = "";

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public StatGameUser m43clone() {
        try {
            return (StatGameUser) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public String getAccount() {
        return this.f83794b;
    }

    public String getLevel() {
        return this.f83795c;
    }

    public String getWorldName() {
        return this.f83793a;
    }

    public void setAccount(String str) {
        this.f83794b = str;
    }

    public void setLevel(String str) {
        this.f83795c = str;
    }

    public void setWorldName(String str) {
        this.f83793a = str;
    }
}
