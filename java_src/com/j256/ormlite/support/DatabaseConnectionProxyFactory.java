package com.j256.ormlite.support;

import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public interface DatabaseConnectionProxyFactory {
    DatabaseConnection createProxy(DatabaseConnection databaseConnection) throws SQLException;
}
