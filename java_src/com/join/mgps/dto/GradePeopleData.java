package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GradePeopleData implements Serializable {
    private int people;

    public GradePeopleData() {
    }

    public int getPeople() {
        return this.people;
    }

    public void setPeople(int people) {
        this.people = people;
    }

    public GradePeopleData(int people) {
        this.people = people;
    }
}
