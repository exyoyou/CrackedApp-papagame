package org.webrtc.haima.util;

import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes10.dex */
public class ExceptionUtils {
    public static String toString(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            exc.printStackTrace(printWriter);
            printWriter.flush();
            stringWriter.flush();
            return stringWriter.toString();
        } catch (Exception e10) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("ExceptionUtils.toString-->");
            for (StackTraceElement stackTraceElement : (StackTraceElement[]) e10.getStackTrace().clone()) {
                stringBuffer.append(stackTraceElement.toString());
                stringBuffer.append("\n");
            }
            return stringBuffer.toString();
        } finally {
            try {
                printWriter.close();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            try {
                stringWriter.close();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }
}
