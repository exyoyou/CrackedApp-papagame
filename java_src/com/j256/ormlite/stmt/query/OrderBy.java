package com.j256.ormlite.stmt.query;

import com.j256.ormlite.stmt.ArgumentHolder;

/* JADX INFO: loaded from: classes5.dex */
public class OrderBy {
    private final boolean ascending;
    private final String columnName;
    private final boolean nullsFirst;
    private final boolean nullsLast;
    private final ArgumentHolder[] orderByArgs;
    private final String rawSql;

    public OrderBy(String str, boolean z10) {
        this(str, z10, null, null, false, false);
    }

    public String getColumnName() {
        return this.columnName;
    }

    public ArgumentHolder[] getOrderByArgs() {
        return this.orderByArgs;
    }

    public String getRawSql() {
        return this.rawSql;
    }

    public boolean isAscending() {
        return this.ascending;
    }

    public boolean isNullsFirst() {
        return this.nullsFirst;
    }

    public boolean isNullsLast() {
        return this.nullsLast;
    }

    public OrderBy(String str, boolean z10, boolean z11) {
        this(str, z10, null, null, z11, !z11);
    }

    public OrderBy(String str, ArgumentHolder[] argumentHolderArr) {
        this(null, true, str, argumentHolderArr, false, false);
    }

    private OrderBy(String str, boolean z10, String str2, ArgumentHolder[] argumentHolderArr, boolean z11, boolean z12) {
        this.columnName = str;
        this.ascending = z10;
        this.rawSql = str2;
        this.orderByArgs = argumentHolderArr;
        this.nullsFirst = z11;
        this.nullsLast = z12;
    }
}
