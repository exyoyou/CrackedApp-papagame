package com.j256.ormlite.db;

import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.FieldConverter;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.field.converter.BooleanNumberFieldConverter;
import com.j256.ormlite.field.types.BigDecimalStringType;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseSqliteDatabaseType extends BaseDatabaseType {

    /* JADX INFO: renamed from: com.j256.ormlite.db.BaseSqliteDatabaseType$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$j256$ormlite$field$SqlType;

        static {
            int[] iArr = new int[SqlType.values().length];
            $SwitchMap$com$j256$ormlite$field$SqlType = iArr;
            try {
                iArr[SqlType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BIG_DECIMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.j256.ormlite.db.BaseDatabaseType, com.j256.ormlite.db.DatabaseType
    public void appendInsertNoColumns(StringBuilder sb2) {
        sb2.append("DEFAULT VALUES");
    }

    @Override // com.j256.ormlite.db.BaseDatabaseType
    protected void appendLongType(StringBuilder sb2, FieldType fieldType, int i10) {
        if (fieldType.getSqlType() == SqlType.LONG && fieldType.isGeneratedId()) {
            sb2.append("INTEGER");
        } else {
            sb2.append("BIGINT");
        }
    }

    @Override // com.j256.ormlite.db.BaseDatabaseType
    protected void configureGeneratedId(String str, StringBuilder sb2, FieldType fieldType, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        if (fieldType.getSqlType() != SqlType.INTEGER && fieldType.getSqlType() != SqlType.LONG) {
            throw new IllegalArgumentException("Sqlite requires that auto-increment generated-id be integer or long type");
        }
        sb2.append("PRIMARY KEY AUTOINCREMENT ");
    }

    @Override // com.j256.ormlite.db.BaseDatabaseType
    protected boolean generatedIdSqlAtEnd() {
        return false;
    }

    @Override // com.j256.ormlite.db.BaseDatabaseType, com.j256.ormlite.db.DatabaseType
    public FieldConverter getFieldConverter(DataPersister dataPersister, FieldType fieldType) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$field$SqlType[dataPersister.getSqlType().ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? super.getFieldConverter(dataPersister, fieldType) : BigDecimalStringType.getSingleton();
        }
        return BooleanNumberFieldConverter.getSingleton();
    }

    @Override // com.j256.ormlite.db.BaseDatabaseType, com.j256.ormlite.db.DatabaseType
    public boolean isCreateIfNotExistsSupported() {
        return true;
    }

    @Override // com.j256.ormlite.db.BaseDatabaseType, com.j256.ormlite.db.DatabaseType
    public boolean isCreateTableReturnsZero() {
        return false;
    }

    @Override // com.j256.ormlite.db.BaseDatabaseType, com.j256.ormlite.db.DatabaseType
    public boolean isVarcharFieldWidthSupported() {
        return false;
    }
}
