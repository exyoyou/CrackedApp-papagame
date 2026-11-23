package com.join.android.app.common.db.tables;

import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;

/* JADX INFO: loaded from: classes5.dex */
public class Account {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f34447id;

    @DatabaseField(index = true)
    private String name;

    @ForeignCollectionField(eager = false)
    ForeignCollection<Order> orders;

    public int getId() {
        return this.f34447id;
    }

    public String getName() {
        return this.name;
    }

    public ForeignCollection<Order> getOrders() {
        return this.orders;
    }

    public void setId(int id2) {
        this.f34447id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setOrders(ForeignCollection<Order> orders) {
        this.orders = orders;
    }
}
