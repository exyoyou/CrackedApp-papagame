package com.j256.ormlite.dao;

import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public interface RawRowMapper<T> {
    T mapRow(String[] strArr, String[] strArr2) throws SQLException;
}
