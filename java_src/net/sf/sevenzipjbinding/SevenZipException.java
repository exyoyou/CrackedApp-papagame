package net.sf.sevenzipjbinding;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class SevenZipException extends IOException {
    private static final String NEW_LINE = System.getProperty("line.separator");
    private static final long serialVersionUID = 42;
    private Throwable causeFirstPotentialThrown;
    private Throwable causeLastPotentialThrown;
    private Throwable causeLastThrown;

    private static class PrintStreamWriter extends Writer {
        private final PrintStream printStream;

        PrintStreamWriter(PrintStream printStream) {
            this.printStream = printStream;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.printStream.close();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            this.printStream.flush();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) throws IOException {
            if (i10 == 0 && i11 == cArr.length) {
                this.printStream.print(cArr);
            } else {
                this.printStream.print(new String(cArr, i10, i11));
            }
        }
    }

    private static class StackTraceWriter extends Writer {
        private int indexInMessage;
        private final String message;
        private boolean newlineFound;
        private PrintWriter writer;

        StackTraceWriter(PrintWriter printWriter, String str) {
            super(printWriter);
            this.newlineFound = true;
            this.writer = printWriter;
            this.message = str;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.writer.close();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            this.writer.flush();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) {
            for (int i12 = 0; i12 < i11; i12++) {
                char c10 = cArr[i12];
                if (c10 == '\n' || c10 == '\r') {
                    this.newlineFound = true;
                } else {
                    if (this.newlineFound) {
                        if (this.message.charAt(this.indexInMessage) == ' ') {
                            this.writer.write("| ");
                        } else {
                            this.writer.write(this.message.charAt(this.indexInMessage));
                            this.writer.write(32);
                        }
                        int i13 = this.indexInMessage + 1;
                        this.indexInMessage = i13;
                        if (i13 >= this.message.length()) {
                            this.indexInMessage = 0;
                        }
                    }
                    this.newlineFound = false;
                }
                this.writer.write(cArr[i12]);
            }
        }
    }

    public SevenZipException() {
    }

    private static String getMessageForPrintStackTraceExtended(Throwable th) {
        return th instanceof SevenZipException ? ((SevenZipException) th).getMessage(true) : th.toString();
    }

    private void printMessageToStringBuilder(String str, StringBuilder sb2, Throwable th) {
        sb2.append(th.getClass().getCanonicalName());
        sb2.append(": ");
        if (!(th instanceof SevenZipException)) {
            sb2.append(th.getMessage());
            return;
        }
        ((SevenZipException) th).printToStringBuilder(str + "  ", sb2, false);
    }

    private static void printStackTraceOfThrowable(PrintWriter printWriter, Throwable th, Throwable th2) {
        if (th instanceof SevenZipException) {
            printStackTraceToPrintWriter(printWriter, (SevenZipException) th, th2);
        } else {
            printStackTraceRecursive(printWriter, th, th2);
        }
    }

    private static void printStackTraceRecursive(PrintWriter printWriter, Throwable th, Throwable th2) {
        int i10;
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (th2 != null) {
            StackTraceElement[] stackTrace2 = th2.getStackTrace();
            int length = stackTrace2.length - 1;
            int length2 = stackTrace.length - 1;
            i10 = 0;
            while (length >= 3 && length2 >= 3 && stackTrace2[length].equals(stackTrace[length2])) {
                length--;
                length2--;
                i10++;
            }
        } else {
            i10 = 0;
        }
        if (i10 <= 3) {
            i10 = 0;
        }
        if (th2 == null) {
            printWriter.println(getMessageForPrintStackTraceExtended(th));
        } else {
            printWriter.println("Caused by: " + getMessageForPrintStackTraceExtended(th));
        }
        for (int i11 = 0; i11 < stackTrace.length - i10; i11++) {
            printWriter.println("\tat " + stackTrace[i11]);
        }
        if (i10 > 0) {
            printWriter.println("\t... " + i10 + " more");
        }
        if (th.getCause() != null) {
            printStackTraceOfThrowable(printWriter, th.getCause(), th);
        }
    }

    private static void printStackTraceToPrintWriter(PrintWriter printWriter, SevenZipException sevenZipException, Throwable th) {
        if (sevenZipException.causeLastThrown == null && sevenZipException.causeFirstPotentialThrown == null && sevenZipException.causeLastPotentialThrown == null) {
            printStackTraceRecursive(printWriter, sevenZipException, th);
        }
        printWriter.println("+------ " + SevenZipException.class.getSimpleName() + " with multiple 'cause by' exceptions. Stacktraces for all involved exceptions:");
        printWriter.println("+-- The " + SevenZipException.class.getSimpleName() + " itself with first thrown 'cause by' exception (first cause): ");
        printStackTraceRecursive(new PrintWriter(new StackTraceWriter(printWriter, "  FIRST THROWN CAUSE ")), sevenZipException, th);
        if (sevenZipException.causeLastThrown != null) {
            printWriter.println("+-- Last thrown 'cause by' exception (last cause): ");
            printStackTraceOfThrowable(new PrintWriter(new StackTraceWriter(printWriter, "  LAST THROWN CAUSE ")), sevenZipException.causeLastThrown, sevenZipException);
        }
        if (sevenZipException.causeFirstPotentialThrown != null) {
            printWriter.println("+-- First thrown potential 'cause by' exception, thrown in an other thread (first possible cause): ");
            printStackTraceOfThrowable(new PrintWriter(new StackTraceWriter(printWriter, "  FIRST THROWN POTENTIAL CAUSE ")), sevenZipException.causeFirstPotentialThrown, sevenZipException);
        }
        if (sevenZipException.causeLastPotentialThrown != null) {
            printWriter.println("+-- Last thrown potential 'cause by' exception, thrown in an other thread (last possible cause): ");
            printStackTraceOfThrowable(new PrintWriter(new StackTraceWriter(printWriter, "  LAST THROWN POTENTIAL CAUSE ")), sevenZipException.causeLastPotentialThrown, sevenZipException);
        }
        printWriter.println("+------ End of stacktrace of " + SevenZipException.class.getSimpleName() + " with multiple 'cause by' exceptions");
    }

    private void printToStringBuilder(String str, StringBuilder sb2, boolean z10) {
        String message = super.getMessage();
        if (message == null) {
            sb2.append("No message");
        } else {
            sb2.append(message);
        }
        if (str.length() == 0 && !z10) {
            sb2.append(NEW_LINE);
            sb2.append("This " + SevenZipException.class.getSimpleName() + " has multiple 'cause by' exceptions. Use one of the " + SevenZipException.class.getSimpleName() + ".printStackTraceExtended(..) methods to get stack trace of last thrown and first/last potiential thrown 'cause by' exceptions.");
        }
        Throwable cause = getCause();
        if (cause != null) {
            sb2.append(NEW_LINE);
            sb2.append(str);
            sb2.append("Caused by (first thrown): ");
            printMessageToStringBuilder(str, sb2, cause);
        }
        if (this.causeLastThrown != null) {
            sb2.append(NEW_LINE);
            sb2.append(str);
            sb2.append("Caused by (last thrown): ");
            printMessageToStringBuilder(str, sb2, this.causeLastThrown);
        }
        if (this.causeFirstPotentialThrown != null) {
            sb2.append(NEW_LINE);
            sb2.append(str);
            sb2.append("Caused by (first potential thrown): ");
            printMessageToStringBuilder(str, sb2, this.causeFirstPotentialThrown);
        }
        if (this.causeLastPotentialThrown != null) {
            sb2.append(NEW_LINE);
            sb2.append(str);
            sb2.append("Caused by (last potential thrown): ");
            printMessageToStringBuilder(str, sb2, this.causeLastPotentialThrown);
        }
    }

    private void setCauseFirstPotentialThrown(Throwable th) {
        this.causeFirstPotentialThrown = th;
    }

    private void setCauseLastPotentialThrown(Throwable th) {
        this.causeLastPotentialThrown = th;
    }

    private void setCauseLastThrown(Throwable th) {
        this.causeLastThrown = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return super.getCause();
    }

    public Throwable getCauseFirstPotentialThrown() {
        return this.causeFirstPotentialThrown;
    }

    public Throwable getCauseLastPotentialThrown() {
        return this.causeLastPotentialThrown;
    }

    public Throwable getCauseLastThrown() {
        return this.causeLastThrown;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return getMessage(false);
    }

    public String getSevenZipExceptionMessage() {
        return super.getMessage();
    }

    public void printStackTraceExtended() {
        printStackTraceExtended(System.err);
    }

    public SevenZipException(String str, Throwable th) {
        super(str);
        initCause(th);
    }

    private String getMessage(boolean z10) {
        if (this.causeLastThrown == null && this.causeFirstPotentialThrown == null && this.causeLastPotentialThrown == null) {
            return super.getMessage();
        }
        StringBuilder sb2 = new StringBuilder();
        printToStringBuilder("", sb2, z10);
        return sb2.toString();
    }

    public void printStackTraceExtended(PrintStream printStream) {
        synchronized (printStream) {
            printStackTraceToPrintWriter(new PrintWriter(new PrintStreamWriter(printStream)), this, null);
        }
    }

    public SevenZipException(String str) {
        super(str);
    }

    public SevenZipException(Throwable th) {
        initCause(th);
    }

    public void printStackTraceExtended(PrintWriter printWriter) {
        synchronized (printWriter) {
            printStackTraceToPrintWriter(printWriter, this, null);
        }
    }
}
