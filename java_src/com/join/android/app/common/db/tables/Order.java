package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
@DatabaseTable(tableName = "t_order")
public class Order {

    @DatabaseField(columnName = "account_id", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private Account account;

    @DatabaseField
    public Date date;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f34453id;

    @DatabaseField
    private String name;

    public Account getAccount() {
        return this.account;
    }

    public Date getDate() {
        return this.date;
    }

    public int getId() {
        return this.f34453id;
    }

    public String getName() {
        return this.name;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setId(int id2) {
        this.f34453id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }
}
