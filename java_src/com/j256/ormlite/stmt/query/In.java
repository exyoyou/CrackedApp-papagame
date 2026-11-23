package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class In extends BaseComparison {

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    private final boolean f34409in;
    private Iterable<?> objects;

    public In(String str, FieldType fieldType, Iterable<?> iterable, boolean z10) throws SQLException {
        super(str, fieldType, null, true);
        this.objects = iterable;
        this.f34409in = z10;
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Comparison
    public void appendOperation(StringBuilder sb2) {
        if (this.f34409in) {
            sb2.append("IN ");
        } else {
            sb2.append("NOT IN ");
        }
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Clause
    public /* bridge */ /* synthetic */ void appendSql(DatabaseType databaseType, String str, StringBuilder sb2, List list, Clause clause) throws SQLException {
        super.appendSql(databaseType, str, sb2, list, clause);
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Comparison
    public void appendValue(DatabaseType databaseType, StringBuilder sb2, List<ArgumentHolder> list) throws SQLException {
        sb2.append('(');
        boolean z10 = true;
        for (Object obj : this.objects) {
            if (obj == null) {
                throw new IllegalArgumentException("one of the IN values for '" + this.columnName + "' is null");
            }
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            super.appendArgOrValue(databaseType, this.fieldType, sb2, list, obj);
            int length = sb2.length();
            if (length > 0) {
                int i10 = length - 1;
                if (sb2.charAt(i10) == ' ') {
                    sb2.setLength(i10);
                }
            }
        }
        sb2.append(") ");
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Comparison
    public /* bridge */ /* synthetic */ String getColumnName() {
        return super.getColumnName();
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public In(String str, FieldType fieldType, Object[] objArr, boolean z10) throws SQLException {
        super(str, fieldType, null, true);
        this.objects = Arrays.asList(objArr);
        this.f34409in = z10;
    }
}
