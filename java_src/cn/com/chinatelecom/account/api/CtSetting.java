package cn.com.chinatelecom.account.api;

/* JADX INFO: loaded from: classes7.dex */
public class CtSetting {
    private static final int DEFAULT_CONN_TIMEOUT = 5000;
    private static final int DEFAULT_READ_TIMEOUT = 5000;
    private static final int DEFAULT_TOTAL_TIMEOUT = 10000;
    private int connTimeout;
    private int readTimeout;
    private int totalTimeout;

    public CtSetting() {
        this.totalTimeout = 0;
        this.connTimeout = 0;
        this.readTimeout = 0;
    }

    public static int getConnTimeout(CtSetting ctSetting) {
        int i10;
        if (ctSetting == null || (i10 = ctSetting.connTimeout) <= 0) {
            return 5000;
        }
        return i10;
    }

    public static int getReadTimeout(CtSetting ctSetting) {
        int i10;
        if (ctSetting == null || (i10 = ctSetting.readTimeout) <= 0) {
            return 5000;
        }
        return i10;
    }

    public static int getTotalTimeout(CtSetting ctSetting) {
        int i10;
        if (ctSetting == null || (i10 = ctSetting.totalTimeout) <= 0) {
            return 10000;
        }
        return i10;
    }

    public void setConnTimeout(int i10) {
        this.connTimeout = i10;
    }

    public void setReadTimeout(int i10) {
        this.readTimeout = i10;
    }

    public void setTotalTimeout(int i10) {
        this.totalTimeout = i10;
    }

    public CtSetting(int i10, int i11, int i12) {
        this.connTimeout = i10;
        this.readTimeout = i11;
        this.totalTimeout = i12;
    }
}
