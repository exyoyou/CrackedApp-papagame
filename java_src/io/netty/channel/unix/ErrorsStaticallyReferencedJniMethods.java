package io.netty.channel.unix;

/* JADX INFO: loaded from: classes.dex */
final class ErrorsStaticallyReferencedJniMethods {
    private ErrorsStaticallyReferencedJniMethods() {
    }

    static native int errnoEAGAIN();

    static native int errnoEBADF();

    static native int errnoECONNRESET();

    static native int errnoEINPROGRESS();

    static native int errnoENOENT();

    static native int errnoENOTCONN();

    static native int errnoEPIPE();

    static native int errnoEWOULDBLOCK();

    static native int errorEALREADY();

    static native int errorECONNREFUSED();

    static native int errorEISCONN();

    static native int errorENETUNREACH();

    static native String strError(int i10);
}
