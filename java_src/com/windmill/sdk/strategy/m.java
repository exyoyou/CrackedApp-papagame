package com.windmill.sdk.strategy;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.BaseColumns;

/* JADX INFO: loaded from: classes8.dex */
public class m extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f87206a = "wm_frequency.db";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f87207b = "table_frequency";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f87208c = 2;

    public class a implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String f87209a = "channelId";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f87210b = "tbPlacementId";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f87211c = "placementId";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f87212d = "month";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f87213e = "day";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f87214f = "hour";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final String f87215g = "tameStamp";

        public a() {
        }
    }

    public m(Context context) {
        super(context, f87206a, (SQLiteDatabase.CursorFactory) null, 2);
    }

    public void a() {
        a(getWritableDatabase());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("create table table_frequency (");
        stringBuffer.append("_id integer primary key autoincrement,");
        stringBuffer.append("channelId integer,");
        stringBuffer.append("tbPlacementId text,");
        stringBuffer.append("placementId text,");
        stringBuffer.append("month integer,");
        stringBuffer.append("day integer,");
        stringBuffer.append("hour integer,");
        stringBuffer.append("tameStamp integer)");
        db2.execSQL(stringBuffer.toString());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase db2, int oldVersion, int newVersion) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onDowngrade database from version ");
        sb2.append(oldVersion);
        sb2.append(" to ");
        sb2.append(newVersion);
        sb2.append(", which will destroy all old data");
        a(db2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db2, int oldVersion, int newVersion) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onUpgrade database from version ");
        sb2.append(oldVersion);
        sb2.append(" to ");
        sb2.append(newVersion);
        sb2.append(", which will destroy all old data");
        a(db2);
    }

    private void a(SQLiteDatabase database) {
        database.execSQL("DROP TABLE IF EXISTS table_frequency");
        onCreate(database);
    }
}
