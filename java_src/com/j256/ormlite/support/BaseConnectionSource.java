package com.j256.ormlite.support;

import com.j256.ormlite.logger.Logger;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseConnectionSource implements ConnectionSource {
    private ThreadLocal<NestedConnection> specialConnection = new ThreadLocal<>();

    private static class NestedConnection {
        public final DatabaseConnection connection;
        private int nestedC = 1;

        public NestedConnection(DatabaseConnection databaseConnection) {
            this.connection = databaseConnection;
        }

        public int decrementAndGet() {
            int i10 = this.nestedC - 1;
            this.nestedC = i10;
            return i10;
        }

        public void increment() {
            this.nestedC++;
        }
    }

    protected boolean clearSpecial(DatabaseConnection databaseConnection, Logger logger) {
        NestedConnection nestedConnection = this.specialConnection.get();
        if (databaseConnection != null) {
            if (nestedConnection == null) {
                logger.error("no connection has been saved when clear() called");
            } else {
                DatabaseConnection databaseConnection2 = nestedConnection.connection;
                if (databaseConnection2 == databaseConnection) {
                    if (nestedConnection.decrementAndGet() == 0) {
                        this.specialConnection.set(null);
                    }
                    return true;
                }
                logger.error("connection saved {} is not the one being cleared {}", databaseConnection2, databaseConnection);
            }
        }
        return false;
    }

    protected DatabaseConnection getSavedConnection() {
        NestedConnection nestedConnection = this.specialConnection.get();
        if (nestedConnection == null) {
            return null;
        }
        return nestedConnection.connection;
    }

    @Override // com.j256.ormlite.support.ConnectionSource
    public DatabaseConnection getSpecialConnection(String str) {
        NestedConnection nestedConnection = this.specialConnection.get();
        if (nestedConnection == null) {
            return null;
        }
        return nestedConnection.connection;
    }

    protected boolean isSavedConnection(DatabaseConnection databaseConnection) {
        NestedConnection nestedConnection = this.specialConnection.get();
        return nestedConnection != null && nestedConnection.connection == databaseConnection;
    }

    protected boolean isSingleConnection(DatabaseConnection databaseConnection, DatabaseConnection databaseConnection2) throws SQLException {
        databaseConnection.setAutoCommit(true);
        databaseConnection2.setAutoCommit(true);
        try {
            databaseConnection.setAutoCommit(false);
            if (databaseConnection2.isAutoCommit()) {
                databaseConnection.setAutoCommit(true);
                return false;
            }
            databaseConnection.setAutoCommit(true);
            return true;
        } catch (Throwable th) {
            databaseConnection.setAutoCommit(true);
            throw th;
        }
    }

    protected boolean saveSpecial(DatabaseConnection databaseConnection) throws SQLException {
        NestedConnection nestedConnection = this.specialConnection.get();
        if (nestedConnection == null) {
            this.specialConnection.set(new NestedConnection(databaseConnection));
            return true;
        }
        if (nestedConnection.connection == databaseConnection) {
            nestedConnection.increment();
            return false;
        }
        throw new SQLException("trying to save connection " + databaseConnection + " but already have saved connection " + nestedConnection.connection);
    }
}
