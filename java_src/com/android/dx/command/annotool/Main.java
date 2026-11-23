package com.android.dx.command.annotool;

import external.org.apache.commons.lang3.d;
import java.lang.annotation.ElementType;
import java.util.AbstractCollection;
import java.util.EnumSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class Main {

    static class Arguments {
        String aclass;
        String[] files;
        EnumSet<ElementType> eTypes = EnumSet.noneOf(ElementType.class);
        EnumSet<PrintType> printTypes = EnumSet.noneOf(PrintType.class);

        Arguments() {
        }

        void parse(String[] strArr) throws InvalidArgumentException {
            for (int i10 = 0; i10 < strArr.length; i10++) {
                String str = strArr[i10];
                if (str.startsWith("--annotation=")) {
                    String strSubstring = str.substring(str.indexOf(61) + 1);
                    if (this.aclass != null) {
                        throw new InvalidArgumentException("--annotation can only be specified once.");
                    }
                    this.aclass = strSubstring.replace(d.f90941a, '/');
                } else if (!str.startsWith("--element=")) {
                    if (!str.startsWith("--print=")) {
                        String[] strArr2 = new String[strArr.length - i10];
                        this.files = strArr2;
                        System.arraycopy(strArr, i10, strArr2, 0, strArr2.length);
                        break;
                    }
                    try {
                        for (String str2 : str.substring(str.indexOf(61) + 1).split(",")) {
                            this.printTypes.add(PrintType.valueOf(str2.toUpperCase(Locale.ROOT)));
                        }
                    } catch (IllegalArgumentException unused) {
                        throw new InvalidArgumentException("invalid --print");
                    }
                } else {
                    try {
                        for (String str3 : str.substring(str.indexOf(61) + 1).split(",")) {
                            this.eTypes.add(ElementType.valueOf(str3.toUpperCase(Locale.ROOT)));
                        }
                    } catch (IllegalArgumentException unused2) {
                        throw new InvalidArgumentException("invalid --element");
                    }
                }
            }
            if (this.aclass == null) {
                throw new InvalidArgumentException("--annotation must be specified");
            }
            if (this.printTypes.isEmpty()) {
                this.printTypes.add(PrintType.CLASS);
            }
            if (this.eTypes.isEmpty()) {
                this.eTypes.add(ElementType.TYPE);
            }
            AbstractCollection abstractCollectionClone = this.eTypes.clone();
            abstractCollectionClone.remove(ElementType.TYPE);
            abstractCollectionClone.remove(ElementType.PACKAGE);
            if (!abstractCollectionClone.isEmpty()) {
                throw new InvalidArgumentException("only --element parameters 'type' and 'package' supported");
            }
        }
    }

    private static class InvalidArgumentException extends Exception {
        InvalidArgumentException() {
        }

        InvalidArgumentException(String str) {
            super(str);
        }
    }

    enum PrintType {
        CLASS,
        INNERCLASS,
        METHOD,
        PACKAGE
    }

    private Main() {
    }

    public static void main(String[] strArr) {
        Arguments arguments = new Arguments();
        try {
            arguments.parse(strArr);
            new AnnotationLister(arguments).process();
        } catch (InvalidArgumentException e10) {
            System.err.println(e10.getMessage());
            throw new RuntimeException("usage");
        }
    }
}
