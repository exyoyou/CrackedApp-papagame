package com.czhj.sdk.common.track;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.czhj.sdk.common.Database.DBOperator;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.common.Database.SQLiteLisenter;
import com.czhj.sdk.common.Database.SQLiteTrackHelper;
import com.czhj.sdk.logger.SigmobLog;
import com.join.mgps.activity.QuarkDownGameActivity_;
import com.swift.sandhook.annotation.MethodReflectParams;
import com.umeng.umcrash.UMCrash;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class AdTracker implements Serializable {
    private static final long serialVersionUID = 1;
    private String extInfo;
    private boolean mCalled;
    private final String mEvent;
    private Long mId;
    private final MessageType mMessageType;
    private final String mRequest_id;
    private String mSource = "native";
    private String mUrl;
    private Integer retryCount;
    private Integer retryNum;
    private Long timestamp;

    /* JADX INFO: renamed from: com.czhj.sdk.common.track.AdTracker$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType;

        static {
            int[] iArr = new int[MessageType.values().length];
            $SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType = iArr;
            try {
                iArr[MessageType.QUARTILE_EVENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType[MessageType.TOBID_TRACKING_URL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType[MessageType.TRACKING_URL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum MessageType {
        TRACKING_URL,
        QUARTILE_EVENT,
        TOBID_TRACKING_URL
    }

    public AdTracker(MessageType messageType, String str, String str2, String str3) {
        this.mRequest_id = str3;
        this.mMessageType = messageType;
        this.mUrl = str;
        this.mEvent = str2;
    }

    public static void cleanExpiredAdTracker(long j10) {
        try {
            DBOperator.getInstance().delete(SQLiteTrackHelper.getInstance().getWritableDatabase(), "tracks", "timestamp < ?", new String[]{String.valueOf(System.currentTimeMillis() - j10)}, new SQLiteLisenter() { // from class: com.czhj.sdk.common.track.AdTracker.1
                @Override // com.czhj.sdk.common.Database.SQLiteLisenter
                public void onFailed(Error error) {
                    SigmobLog.e(error.getMessage());
                }

                @Override // com.czhj.sdk.common.Database.SQLiteLisenter
                public void onSuccess(List list) {
                }
            });
        } catch (Throwable th) {
            SigmobLog.e("cleanExpiredAdTracker error", th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0089 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:46:? A[RETURN, SYNTHETIC] */
    public static void cleanLimitAdTracker(long j10) {
        long count;
        Cursor cursorRawQuery;
        Cursor cursor = null;
        l = null;
        Long l10 = null;
        try {
            SQLiteDatabase readableDatabase = SQLiteTrackHelper.getInstance().getReadableDatabase();
            Cursor cursorRawQuery2 = readableDatabase.rawQuery("select * from tracks", null);
            if (cursorRawQuery2 != null) {
                try {
                    count = cursorRawQuery2.getCount();
                    cursorRawQuery2.close();
                    cursorRawQuery2 = null;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery2;
                    try {
                        SigmobLog.e("cleanLimitAdTracker ", th);
                        if (cursor != null) {
                            return;
                        } else {
                            return;
                        }
                    } finally {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
            } else {
                count = 0;
            }
            if (count > j10) {
                cursorRawQuery = readableDatabase.rawQuery("select * from tracks order by id desc limit ?", new String[]{String.valueOf(j10)});
                try {
                    int columnIndex = cursorRawQuery.getColumnIndex("id");
                    if (cursorRawQuery.moveToLast()) {
                        Long lValueOf = Long.valueOf(cursorRawQuery.getLong(columnIndex));
                        cursorRawQuery.close();
                        cursorRawQuery = null;
                        l10 = lValueOf;
                    }
                } catch (Throwable th2) {
                    cursor = cursorRawQuery;
                    th = th2;
                    SigmobLog.e("cleanLimitAdTracker ", th);
                    if (cursor != null) {
                        return;
                    } else {
                        return;
                    }
                }
            } else {
                cursorRawQuery = cursorRawQuery2;
            }
            if (l10 == null) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            } else {
                DBOperator.getInstance().delete(SQLiteTrackHelper.getInstance().getWritableDatabase(), "tracks", "id < ?", new String[]{String.valueOf(l10)}, new SQLiteLisenter() { // from class: com.czhj.sdk.common.track.AdTracker.2
                    @Override // com.czhj.sdk.common.Database.SQLiteLisenter
                    public void onFailed(Error error) {
                        SigmobLog.e(error.getMessage());
                    }

                    @Override // com.czhj.sdk.common.Database.SQLiteLisenter
                    public void onSuccess(List list) {
                    }
                });
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static SQLiteBuider.CreateTable createTable() {
        SQLiteBuider.CreateTable.Builder builder = new SQLiteBuider.CreateTable.Builder();
        builder.setTableName("tracks");
        builder.setPrimaryKey("id", MethodReflectParams.LONG);
        builder.autoincrement(true);
        HashMap map = new HashMap();
        map.put("url", "text");
        map.put(NotificationCompat.CATEGORY_EVENT, "text");
        map.put("request_id", "text");
        map.put(UMCrash.SP_KEY_TIMESTAMP, MethodReflectParams.LONG);
        map.put("source", "text");
        map.put("retryNum", "int");
        map.put(QuarkDownGameActivity_.EXT_INFO_EXTRA, "text");
        map.put("messageType", "int");
        builder.setColumns(map);
        return builder.build();
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0113  */
    /* JADX WARN: Code duplicated, block: B:72:0x0130 A[DONT_GENERATE, PHI: r2
      0x0130: PHI (r2v2 android.database.Cursor) = (r2v1 android.database.Cursor), (r2v3 android.database.Cursor) binds: [B:71:0x012e, B:67:0x0125] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:97:0x0125 A[EDGE_INSN: B:97:0x0125->B:67:0x0125 BREAK  A[LOOP:0: B:9:0x006b->B:66:0x0115], SYNTHETIC] */
    public static List<AdTracker> getAdTrackerFromDB(int i10, long j10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        MessageType messageType;
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            int i17 = 0;
            cursorRawQuery = SQLiteTrackHelper.getInstance().getReadableDatabase().rawQuery("select * from tracks where timestamp > ? order by id desc limit ?", new String[]{String.valueOf(System.currentTimeMillis() - j10), String.valueOf(i10)});
            if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
                int columnIndex = cursorRawQuery.getColumnIndex("url");
                int columnIndex2 = cursorRawQuery.getColumnIndex("id");
                int columnIndex3 = cursorRawQuery.getColumnIndex(NotificationCompat.CATEGORY_EVENT);
                int columnIndex4 = cursorRawQuery.getColumnIndex("request_id");
                int columnIndex5 = cursorRawQuery.getColumnIndex(UMCrash.SP_KEY_TIMESTAMP);
                int columnIndex6 = cursorRawQuery.getColumnIndex("source");
                int columnIndex7 = cursorRawQuery.getColumnIndex("retryNum");
                int columnIndex8 = cursorRawQuery.getColumnIndex(QuarkDownGameActivity_.EXT_INFO_EXTRA);
                int columnIndex9 = cursorRawQuery.getColumnIndex("messageType");
                while (i17 < i10) {
                    try {
                        String string = cursorRawQuery.getString(columnIndex);
                        long j11 = cursorRawQuery.getLong(columnIndex2);
                        String string2 = cursorRawQuery.getString(columnIndex3);
                        String string3 = cursorRawQuery.getString(columnIndex4);
                        i11 = columnIndex;
                        try {
                            Long lValueOf = Long.valueOf(cursorRawQuery.getLong(columnIndex5));
                            i12 = columnIndex2;
                            try {
                                String string4 = cursorRawQuery.getString(columnIndex6);
                                i13 = columnIndex3;
                                try {
                                    int i18 = cursorRawQuery.getInt(columnIndex7);
                                    i14 = columnIndex4;
                                    try {
                                        String string5 = cursorRawQuery.getString(columnIndex8);
                                        i15 = columnIndex5;
                                        try {
                                            int i19 = cursorRawQuery.getInt(columnIndex9);
                                            if (TextUtils.isEmpty(string) || j11 < 0 || TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
                                                i16 = columnIndex6;
                                            } else {
                                                i16 = columnIndex6;
                                                if (i19 == 1) {
                                                    messageType = MessageType.QUARTILE_EVENT;
                                                } else if (i19 != 2) {
                                                    try {
                                                        messageType = MessageType.TRACKING_URL;
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        SigmobLog.e("getAdTrackList error", th);
                                                    }
                                                } else {
                                                    messageType = MessageType.TOBID_TRACKING_URL;
                                                }
                                                AdTracker adTracker = new AdTracker(messageType, string, string2, string3);
                                                adTracker.setId(Long.valueOf(j11));
                                                adTracker.setRetryCount(i18);
                                                adTracker.setTimestamp(lValueOf);
                                                if (!TextUtils.isEmpty(string4)) {
                                                    adTracker.setSource(string4);
                                                }
                                                adTracker.setExtInfo(string5);
                                                arrayList.add(adTracker);
                                                if (!cursorRawQuery.moveToNext()) {
                                                    break;
                                                }
                                                i17++;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            i16 = columnIndex6;
                                            SigmobLog.e("getAdTrackList error", th);
                                            if (!cursorRawQuery.moveToNext()) {
                                                break;
                                                if (cursorRawQuery != null) {
                                                }
                                                return arrayList;
                                            }
                                            i17++;
                                            columnIndex2 = i12;
                                            columnIndex3 = i13;
                                            columnIndex = i11;
                                            columnIndex4 = i14;
                                            columnIndex5 = i15;
                                            columnIndex6 = i16;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        i15 = columnIndex5;
                                        i16 = columnIndex6;
                                        SigmobLog.e("getAdTrackList error", th);
                                        if (!cursorRawQuery.moveToNext()) {
                                            break;
                                            if (cursorRawQuery != null) {
                                            }
                                            return arrayList;
                                        }
                                        i17++;
                                        columnIndex2 = i12;
                                        columnIndex3 = i13;
                                        columnIndex = i11;
                                        columnIndex4 = i14;
                                        columnIndex5 = i15;
                                        columnIndex6 = i16;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    i14 = columnIndex4;
                                    i15 = columnIndex5;
                                    i16 = columnIndex6;
                                    SigmobLog.e("getAdTrackList error", th);
                                    if (!cursorRawQuery.moveToNext()) {
                                        break;
                                        if (cursorRawQuery != null) {
                                        }
                                        return arrayList;
                                    }
                                    i17++;
                                    columnIndex2 = i12;
                                    columnIndex3 = i13;
                                    columnIndex = i11;
                                    columnIndex4 = i14;
                                    columnIndex5 = i15;
                                    columnIndex6 = i16;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                i13 = columnIndex3;
                                i14 = columnIndex4;
                                i15 = columnIndex5;
                                i16 = columnIndex6;
                                SigmobLog.e("getAdTrackList error", th);
                                if (!cursorRawQuery.moveToNext()) {
                                    break;
                                    if (cursorRawQuery != null) {
                                    }
                                    return arrayList;
                                }
                                i17++;
                                columnIndex2 = i12;
                                columnIndex3 = i13;
                                columnIndex = i11;
                                columnIndex4 = i14;
                                columnIndex5 = i15;
                                columnIndex6 = i16;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            i12 = columnIndex2;
                            i13 = columnIndex3;
                            i14 = columnIndex4;
                            i15 = columnIndex5;
                            i16 = columnIndex6;
                            SigmobLog.e("getAdTrackList error", th);
                            if (!cursorRawQuery.moveToNext()) {
                                break;
                                if (cursorRawQuery != null) {
                                }
                                return arrayList;
                            }
                            i17++;
                            columnIndex2 = i12;
                            columnIndex3 = i13;
                            columnIndex = i11;
                            columnIndex4 = i14;
                            columnIndex5 = i15;
                            columnIndex6 = i16;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        i11 = columnIndex;
                    }
                    columnIndex2 = i12;
                    columnIndex3 = i13;
                    columnIndex = i11;
                    columnIndex4 = i14;
                    columnIndex5 = i15;
                    columnIndex6 = i16;
                }
            }
            if (cursorRawQuery != null) {
            }
        } catch (Throwable th8) {
            try {
                SigmobLog.e("getlogs fail", th8);
            } finally {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            }
        }
        return arrayList;
    }

    private void setId(Long l10) {
        this.mId = l10;
    }

    private void setRetryCount(int i10) {
        this.retryCount = Integer.valueOf(i10);
    }

    public void deleteDB() {
        if (this.mId == null) {
            return;
        }
        try {
            DBOperator.getInstance().delete(SQLiteTrackHelper.getInstance().getWritableDatabase(), "tracks", "id = ?", new String[]{String.valueOf(this.mId)}, new SQLiteLisenter() { // from class: com.czhj.sdk.common.track.AdTracker.4
                @Override // com.czhj.sdk.common.Database.SQLiteLisenter
                public void onFailed(Error error) {
                    SigmobLog.e(error.getMessage());
                }

                @Override // com.czhj.sdk.common.Database.SQLiteLisenter
                public void onSuccess(List list) {
                    SigmobLog.d("delete id " + AdTracker.this.mId);
                }
            });
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public String getEvent() {
        return this.mEvent;
    }

    public String getExtInfo() {
        return this.extInfo;
    }

    public Long getId() {
        return this.mId;
    }

    public MessageType getMessageType() {
        return this.mMessageType;
    }

    public String getRequest_id() {
        return this.mRequest_id;
    }

    public int getRetryCount() {
        return this.retryCount.intValue();
    }

    public Integer getRetryNum() {
        Integer num = this.retryNum;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getSource() {
        return this.mSource;
    }

    public long getTimestamp() {
        Long l10 = this.timestamp;
        if (l10 == null) {
            return 0L;
        }
        return l10.longValue();
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void insertToDB(final SQLiteTrackHelper.ExecCallBack execCallBack) {
        try {
            SQLiteBuider.Insert.Builder builder = new SQLiteBuider.Insert.Builder();
            builder.setTableName("tracks");
            HashMap map = new HashMap();
            int i10 = AnonymousClass5.$SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType[this.mMessageType.ordinal()];
            int i11 = 1;
            if (i10 != 1) {
                i11 = 2;
                if (i10 != 2) {
                    i11 = 0;
                }
            }
            map.put("url", this.mUrl);
            map.put("request_id", this.mRequest_id);
            map.put(NotificationCompat.CATEGORY_EVENT, this.mEvent);
            map.put("source", this.mSource);
            map.put("retryNum", this.retryCount);
            map.put(UMCrash.SP_KEY_TIMESTAMP, Long.valueOf(System.currentTimeMillis()));
            map.put(QuarkDownGameActivity_.EXT_INFO_EXTRA, this.extInfo);
            map.put("messageType", Integer.valueOf(i11));
            builder.setColumnValues(map);
            SQLiteTrackHelper.insert(SQLiteTrackHelper.getInstance().getWritableDatabase(), builder.build(), new SQLiteTrackHelper.ExecCallBack() { // from class: com.czhj.sdk.common.track.AdTracker.3
                @Override // com.czhj.sdk.common.Database.SQLiteTrackHelper.ExecCallBack
                public void onFailed(Throwable th) {
                    SQLiteTrackHelper.ExecCallBack execCallBack2 = execCallBack;
                    if (execCallBack2 != null) {
                        execCallBack2.onFailed(th);
                    }
                    SigmobLog.e(th.getMessage());
                }

                @Override // com.czhj.sdk.common.Database.SQLiteTrackHelper.ExecCallBack
                public void onSuccess() {
                    SigmobLog.d("event: " + AdTracker.this.mEvent + " url " + AdTracker.this.mUrl + " mRequest_id: " + AdTracker.this.mRequest_id + " insert success! ");
                    SQLiteTrackHelper.ExecCallBack execCallBack2 = execCallBack;
                    if (execCallBack2 != null) {
                        execCallBack2.onSuccess();
                    }
                }
            });
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public boolean isTracked() {
        return this.mCalled;
    }

    public void setExtInfo(String str) {
        this.extInfo = str;
    }

    public void setRetryCountInc() {
        this.retryCount = Integer.valueOf(this.retryCount.intValue() + 1);
    }

    public void setRetryNum(Integer num) {
        this.retryNum = num;
    }

    public void setSource(String str) {
        this.mSource = str;
    }

    public void setTimestamp(Long l10) {
        this.timestamp = l10;
    }

    public void setTracked() {
        this.mCalled = true;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public void updateToDB() {
        try {
            SQLiteBuider.Update.Builder builder = new SQLiteBuider.Update.Builder();
            builder.setTableName("tracks");
            builder.setWhere(" where id=" + this.mId.toString());
            HashMap map = new HashMap();
            map.put("retryNum", this.retryCount);
            builder.setColumnValues(map);
            SQLiteTrackHelper.getInstance().transactionWriteExecSQL(SQLiteTrackHelper.getInstance().getWritableDatabase(), builder.build().getSql(), null);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }
}
