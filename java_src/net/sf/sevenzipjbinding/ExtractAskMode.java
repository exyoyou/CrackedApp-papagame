package net.sf.sevenzipjbinding;

/* JADX INFO: loaded from: classes.dex */
public enum ExtractAskMode {
    EXTRACT,
    TEST,
    SKIP,
    UNKNOWN_ASK_MODE;

    public static ExtractAskMode getExtractAskModeByIndex(int i10) {
        return (i10 < 0 || i10 >= values().length) ? UNKNOWN_ASK_MODE : values()[i10];
    }
}
