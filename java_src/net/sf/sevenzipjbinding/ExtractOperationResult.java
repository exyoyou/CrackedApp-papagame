package net.sf.sevenzipjbinding;

/* JADX INFO: loaded from: classes.dex */
public enum ExtractOperationResult {
    OK,
    UNSUPPORTEDMETHOD,
    DATAERROR,
    CRCERROR,
    UNAVAILABLE,
    UNEXPECTED_END,
    DATA_AFTER_END,
    IS_NOT_ARC,
    HEADERS_ERROR,
    WRONG_PASSWORD,
    UNKNOWN_OPERATION_RESULT;

    public static ExtractOperationResult getOperationResult(int i10) {
        return (i10 < 0 || i10 >= values().length) ? UNKNOWN_OPERATION_RESULT : values()[i10];
    }
}
