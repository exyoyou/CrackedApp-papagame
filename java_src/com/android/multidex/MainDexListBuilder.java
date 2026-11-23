package com.android.multidex;

import com.android.dx.cf.attrib.AttRuntimeVisibleAnnotations;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.FieldList;
import com.android.dx.cf.iface.HasAttribute;
import com.android.dx.cf.iface.MethodList;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class MainDexListBuilder {
    private static final String CLASS_EXTENSION = ".class";
    private static final String DISABLE_ANNOTATION_RESOLUTION_WORKAROUND = "--disable-annotation-resolution-workaround";
    private static final String EOL;
    private static final int STATUS_ERROR = 1;
    private static final String USAGE_MESSAGE;
    private Set<String> filesToKeep = new HashSet();

    static {
        String property = System.getProperty("line.separator");
        EOL = property;
        USAGE_MESSAGE = "Usage:" + property + property + "Short version: Don't use this." + property + property + "Slightly longer version: This tool is used by mainDexClasses script to build" + property + "the main dex list." + property;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x006f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MainDexListBuilder(boolean r5, java.lang.String r6, java.lang.String r7) throws java.lang.Throwable {
        /*
            r4 = this;
            r4.<init>()
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            r4.filesToKeep = r0
            r0 = 0
            java.util.zip.ZipFile r1 = new java.util.zip.ZipFile     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L72
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L72
            com.android.multidex.Path r6 = new com.android.multidex.Path     // Catch: java.lang.Throwable -> L6b
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L6b
            com.android.multidex.ClassReferenceListBuilder r7 = new com.android.multidex.ClassReferenceListBuilder     // Catch: java.lang.Throwable -> L69
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L69
            r7.addRoots(r1)     // Catch: java.lang.Throwable -> L69
            java.util.Set r7 = r7.getClassNames()     // Catch: java.lang.Throwable -> L69
            java.util.Iterator r7 = r7.iterator()     // Catch: java.lang.Throwable -> L69
        L25:
            boolean r0 = r7.hasNext()     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L48
            java.lang.Object r0 = r7.next()     // Catch: java.lang.Throwable -> L69
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L69
            java.util.Set<java.lang.String> r2 = r4.filesToKeep     // Catch: java.lang.Throwable -> L69
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L69
            r3.<init>()     // Catch: java.lang.Throwable -> L69
            r3.append(r0)     // Catch: java.lang.Throwable -> L69
            java.lang.String r0 = ".class"
            r3.append(r0)     // Catch: java.lang.Throwable -> L69
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L69
            r2.add(r0)     // Catch: java.lang.Throwable -> L69
            goto L25
        L48:
            if (r5 == 0) goto L4d
            r4.keepAnnotated(r6)     // Catch: java.lang.Throwable -> L69
        L4d:
            r1.close()     // Catch: java.io.IOException -> L50
        L50:
            java.util.List<com.android.multidex.ClassPathElement> r5 = r6.elements
            java.util.Iterator r5 = r5.iterator()
        L56:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L68
            java.lang.Object r6 = r5.next()
            com.android.multidex.ClassPathElement r6 = (com.android.multidex.ClassPathElement) r6
            r6.close()     // Catch: java.io.IOException -> L66
            goto L56
        L66:
            goto L56
        L68:
            return
        L69:
            r5 = move-exception
            goto L6d
        L6b:
            r5 = move-exception
            r6 = r0
        L6d:
            r0 = r1
            goto L9b
        L6f:
            r5 = move-exception
            r6 = r0
            goto L9b
        L72:
            r5 = move-exception
            java.io.IOException r7 = new java.io.IOException     // Catch: java.lang.Throwable -> L6f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6f
            r1.<init>()     // Catch: java.lang.Throwable -> L6f
            java.lang.String r2 = "\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L6f
            r1.append(r6)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r6 = "\" can not be read as a zip archive. ("
            r1.append(r6)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r6 = r5.getMessage()     // Catch: java.lang.Throwable -> L6f
            r1.append(r6)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r6 = ")"
            r1.append(r6)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r6 = r1.toString()     // Catch: java.lang.Throwable -> L6f
            r7.<init>(r6, r5)     // Catch: java.lang.Throwable -> L6f
            throw r7     // Catch: java.lang.Throwable -> L6f
        L9b:
            r0.close()     // Catch: java.io.IOException -> L9f
            goto La0
        L9f:
        La0:
            if (r6 == 0) goto Lba
            java.util.List<com.android.multidex.ClassPathElement> r6 = r6.elements
            java.util.Iterator r6 = r6.iterator()
        La8:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto Lba
            java.lang.Object r7 = r6.next()
            com.android.multidex.ClassPathElement r7 = (com.android.multidex.ClassPathElement) r7
            r7.close()     // Catch: java.io.IOException -> Lb8
            goto La8
        Lb8:
            goto La8
        Lba:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.multidex.MainDexListBuilder.<init>(boolean, java.lang.String, java.lang.String):void");
    }

    private boolean hasRuntimeVisibleAnnotation(HasAttribute hasAttribute) {
        Attribute attributeFindFirst = hasAttribute.getAttributes().findFirst(AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME);
        return attributeFindFirst != null && ((AttRuntimeVisibleAnnotations) attributeFindFirst).getAnnotations().size() > 0;
    }

    private void keepAnnotated(Path path) throws FileNotFoundException {
        Iterator<ClassPathElement> it2 = path.getElements().iterator();
        while (it2.hasNext()) {
            for (String str : it2.next().list()) {
                if (str.endsWith(CLASS_EXTENSION)) {
                    DirectClassFile directClassFile = path.getClass(str);
                    if (!hasRuntimeVisibleAnnotation(directClassFile)) {
                        MethodList methods = directClassFile.getMethods();
                        int i10 = 0;
                        while (true) {
                            if (i10 >= methods.size()) {
                                FieldList fields = directClassFile.getFields();
                                for (int i11 = 0; i11 < fields.size(); i11++) {
                                    if (hasRuntimeVisibleAnnotation(fields.get(i11))) {
                                        this.filesToKeep.add(str);
                                        break;
                                    }
                                }
                                break;
                            }
                            if (hasRuntimeVisibleAnnotation(methods.get(i10))) {
                                this.filesToKeep.add(str);
                                break;
                            }
                            i10++;
                        }
                    } else {
                        this.filesToKeep.add(str);
                    }
                }
            }
        }
    }

    public static void main(String[] strArr) {
        int i10 = 0;
        boolean z10 = true;
        while (i10 < strArr.length - 2) {
            if (strArr[i10].equals(DISABLE_ANNOTATION_RESOLUTION_WORKAROUND)) {
                z10 = false;
            } else {
                System.err.println("Invalid option " + strArr[i10]);
                printUsage();
                System.exit(1);
            }
            i10++;
        }
        if (strArr.length - i10 != 2) {
            printUsage();
            System.exit(1);
        }
        try {
            printList(new MainDexListBuilder(z10, strArr[i10], strArr[i10 + 1]).getMainDexList());
        } catch (IOException e10) {
            System.err.println("A fatal error occured: " + e10.getMessage());
            System.exit(1);
        }
    }

    private static void printList(Set<String> set) {
        Iterator<String> it2 = set.iterator();
        while (it2.hasNext()) {
            System.out.println(it2.next());
        }
    }

    private static void printUsage() {
        System.err.print(USAGE_MESSAGE);
    }

    public Set<String> getMainDexList() {
        return this.filesToKeep;
    }
}
