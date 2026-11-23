package com.android.dx;

import com.android.dex.DexFormat;
import com.android.dx.dex.DexOptions;
import com.android.dx.dex.code.RopTranslator;
import com.android.dx.dex.file.ClassDefItem;
import com.android.dx.dex.file.DexFile;
import com.android.dx.dex.file.EncodedField;
import com.android.dx.dex.file.EncodedMethod;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;

/* JADX INFO: loaded from: classes7.dex */
public final class DexMaker {
    private static boolean didWarnBlacklistedMethods;
    private static boolean didWarnNonBaseDexClassLoader;
    private boolean markAsTrusted;
    private DexFile outputDex;
    private ClassLoader sharedClassLoader;
    private final Map<TypeId<?>, TypeDeclaration> types = new LinkedHashMap();

    static class FieldDeclaration {
        private final int accessFlags;
        final FieldId<?, ?> fieldId;
        private final Object staticValue;

        FieldDeclaration(FieldId<?, ?> fieldId, int i10, Object obj) {
            if ((i10 & 8) == 0 && obj != null) {
                throw new IllegalArgumentException("instance fields may not have a value");
            }
            this.fieldId = fieldId;
            this.accessFlags = i10;
            this.staticValue = obj;
        }

        public boolean isStatic() {
            return (this.accessFlags & 8) != 0;
        }

        EncodedField toEncodedField() {
            return new EncodedField(this.fieldId.constant, this.accessFlags);
        }
    }

    static class MethodDeclaration {
        private final Code code = new Code(this);
        private final int flags;
        final MethodId<?, ?> method;

        public MethodDeclaration(MethodId<?, ?> methodId, int i10) {
            this.method = methodId;
            this.flags = i10;
        }

        boolean isDirect() {
            return (this.flags & 65546) != 0;
        }

        boolean isStatic() {
            return (this.flags & 8) != 0;
        }

        EncodedMethod toEncodedMethod(DexOptions dexOptions) {
            return new EncodedMethod(this.method.constant, this.flags, RopTranslator.translate(new RopMethod(this.code.toBasicBlocks(), 0), 1, null, this.code.paramSize(), dexOptions), StdTypeList.EMPTY);
        }
    }

    static class TypeDeclaration {
        private ClassDefItem classDefItem;
        private boolean declared;
        private int flags;
        private TypeList interfaces;
        private String sourceFile;
        private TypeId<?> supertype;
        private final TypeId<?> type;
        private final Map<FieldId, FieldDeclaration> fields = new LinkedHashMap();
        private final Map<MethodId, MethodDeclaration> methods = new LinkedHashMap();

        TypeDeclaration(TypeId<?> typeId) {
            this.type = typeId;
        }

        ClassDefItem toClassDefItem() {
            if (!this.declared) {
                throw new IllegalStateException("Undeclared type " + this.type + " declares members: " + this.fields.keySet() + " " + this.methods.keySet());
            }
            DexOptions dexOptions = new DexOptions();
            dexOptions.minSdkVersion = 13;
            CstType cstType = this.type.constant;
            if (this.classDefItem == null) {
                this.classDefItem = new ClassDefItem(cstType, this.flags, this.supertype.constant, this.interfaces.ropTypes, new CstString(this.sourceFile));
                for (MethodDeclaration methodDeclaration : this.methods.values()) {
                    EncodedMethod encodedMethod = methodDeclaration.toEncodedMethod(dexOptions);
                    if (methodDeclaration.isDirect()) {
                        this.classDefItem.addDirectMethod(encodedMethod);
                    } else {
                        this.classDefItem.addVirtualMethod(encodedMethod);
                    }
                }
                for (FieldDeclaration fieldDeclaration : this.fields.values()) {
                    EncodedField encodedField = fieldDeclaration.toEncodedField();
                    if (fieldDeclaration.isStatic()) {
                        this.classDefItem.addStaticField(encodedField, Constants.getConstant(fieldDeclaration.staticValue));
                    } else {
                        this.classDefItem.addInstanceField(encodedField);
                    }
                }
            }
            return this.classDefItem;
        }
    }

    private void doDeleteOatFiles(File file, String str) {
        File[] fileArrListFiles;
        if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && file2.getName().startsWith(str)) {
                    file2.delete();
                }
            }
        }
    }

    private ClassLoader generateClassLoader(File file, File file2, ClassLoader classLoader) {
        ClassLoader classLoader2;
        try {
            try {
                ClassLoader classLoader3 = this.sharedClassLoader;
                boolean z10 = classLoader3 != null;
                if (classLoader != null) {
                    classLoader2 = classLoader;
                } else {
                    classLoader2 = classLoader3 != null ? classLoader3 : null;
                }
                Class<?> cls = Class.forName("dalvik.system.BaseDexClassLoader");
                if (z10 && !cls.isAssignableFrom(classLoader2.getClass())) {
                    if (!classLoader2.getClass().getName().equals("java.lang.BootClassLoader") && !didWarnNonBaseDexClassLoader) {
                        System.err.println("Cannot share classloader as shared classloader '" + classLoader2 + "' is not a subclass of '" + cls + "'");
                        didWarnNonBaseDexClassLoader = true;
                    }
                    z10 = false;
                }
                if (this.markAsTrusted) {
                    try {
                        if (!z10) {
                            return (ClassLoader) cls.getConstructor(String.class, File.class, String.class, ClassLoader.class, Boolean.TYPE).newInstance(file.getPath(), file2.getAbsoluteFile(), null, classLoader2, Boolean.TRUE);
                        }
                        classLoader2.getClass().getMethod("addDexPath", String.class, Boolean.TYPE).invoke(classLoader2, file.getPath(), Boolean.TRUE);
                        return classLoader2;
                    } catch (InvocationTargetException e10) {
                        if (!(e10.getCause() instanceof SecurityException)) {
                            throw e10;
                        }
                        if (!didWarnBlacklistedMethods) {
                            System.err.println("Cannot allow to call blacklisted super methods. This might break spying on system classes." + e10.getCause());
                            didWarnBlacklistedMethods = true;
                        }
                    }
                }
                if (!z10) {
                    return (ClassLoader) Class.forName("dalvik.system.DexClassLoader").getConstructor(String.class, String.class, String.class, ClassLoader.class).newInstance(file.getPath(), file2.getAbsolutePath(), null, classLoader2);
                }
                classLoader2.getClass().getMethod("addDexPath", String.class).invoke(classLoader2, file.getPath());
                return classLoader2;
            } catch (InvocationTargetException e11) {
                throw new RuntimeException(e11.getCause());
            }
        } catch (ClassNotFoundException e12) {
            throw new UnsupportedOperationException("load() requires a Dalvik VM", e12);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InstantiationException unused2) {
            throw new AssertionError();
        } catch (NoSuchMethodException unused3) {
            throw new AssertionError();
        }
    }

    private String generateFileName() {
        Set<TypeId<?>> setKeySet = this.types.keySet();
        Iterator<TypeId<?>> it2 = setKeySet.iterator();
        int size = setKeySet.size();
        int[] iArr = new int[size];
        int i10 = 0;
        while (it2.hasNext()) {
            TypeDeclaration typeDeclaration = getTypeDeclaration(it2.next());
            Set setKeySet2 = typeDeclaration.methods.keySet();
            if (typeDeclaration.supertype != null) {
                iArr[i10] = (((typeDeclaration.supertype.hashCode() * 31) + typeDeclaration.interfaces.hashCode()) * 31) + setKeySet2.hashCode();
                i10++;
            }
        }
        Arrays.sort(iArr);
        int i11 = 1;
        for (int i12 = 0; i12 < size; i12++) {
            i11 = (i11 * 31) + iArr[i12];
        }
        return "Generated_" + i11 + ".jar";
    }

    public void declare(TypeId<?> typeId, String str, int i10, TypeId<?> typeId2, TypeId<?>... typeIdArr) {
        TypeDeclaration typeDeclaration = getTypeDeclaration(typeId);
        if ((i10 & (-5138)) != 0) {
            throw new IllegalArgumentException("Unexpected flag: " + Integer.toHexString(i10));
        }
        if (typeDeclaration.declared) {
            throw new IllegalStateException("already declared: " + typeId);
        }
        typeDeclaration.declared = true;
        typeDeclaration.flags = i10;
        typeDeclaration.supertype = typeId2;
        typeDeclaration.sourceFile = str;
        typeDeclaration.interfaces = new TypeList(typeIdArr);
    }

    public void deleteOldDex(File file) {
        file.delete();
        File file2 = new File(file.getParent(), "/oat/");
        File file3 = new File(file2, "/arm/");
        File file4 = new File(file2, "/arm64/");
        if (file2.exists()) {
            String strReplaceAll = file.getName().replaceAll(".jar", "");
            doDeleteOatFiles(file2, strReplaceAll);
            doDeleteOatFiles(file3, strReplaceAll);
            doDeleteOatFiles(file4, strReplaceAll);
        }
    }

    public byte[] generate() {
        if (this.outputDex == null) {
            DexOptions dexOptions = new DexOptions();
            dexOptions.minSdkVersion = 13;
            this.outputDex = new DexFile(dexOptions);
        }
        Iterator<TypeDeclaration> it2 = this.types.values().iterator();
        while (it2.hasNext()) {
            this.outputDex.add(it2.next().toClassDefItem());
        }
        try {
            return this.outputDex.toDex(null, false);
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public ClassLoader generateAndLoad(ClassLoader classLoader, File file) throws IOException {
        return generateAndLoad(classLoader, file, generateFileName());
    }

    DexFile getDexFile() {
        if (this.outputDex == null) {
            DexOptions dexOptions = new DexOptions();
            dexOptions.minSdkVersion = 13;
            this.outputDex = new DexFile(dexOptions);
        }
        return this.outputDex;
    }

    TypeDeclaration getTypeDeclaration(TypeId<?> typeId) {
        TypeDeclaration typeDeclaration = this.types.get(typeId);
        if (typeDeclaration != null) {
            return typeDeclaration;
        }
        TypeDeclaration typeDeclaration2 = new TypeDeclaration(typeId);
        this.types.put(typeId, typeDeclaration2);
        return typeDeclaration2;
    }

    public ClassLoader loadClassDirect(ClassLoader classLoader, File file, String str) {
        File file2 = new File(file, str);
        if (file2.exists()) {
            return generateClassLoader(file2, file, classLoader);
        }
        return null;
    }

    public void markAsTrusted() {
        this.markAsTrusted = true;
    }

    public void setSharedClassLoader(ClassLoader classLoader) {
        this.sharedClassLoader = classLoader;
    }

    public ClassLoader generateAndLoad(ClassLoader classLoader, File file, String str) throws IOException {
        if (file == null) {
            String property = System.getProperty("dexmaker.dexcache");
            if (property != null) {
                file = new File(property);
            } else {
                file = new AppDataDirGuesser().guess();
                if (file == null) {
                    throw new IllegalArgumentException("dexcache == null (and no default could be found; consider setting the 'dexmaker.dexcache' system property)");
                }
            }
        }
        File file2 = new File(file, str);
        if (file2.exists()) {
            try {
                deleteOldDex(file2);
            } catch (Throwable unused) {
            }
        }
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        file2.createNewFile();
        JarOutputStream jarOutputStream = new JarOutputStream(new FileOutputStream(file2));
        JarEntry jarEntry = new JarEntry(DexFormat.DEX_IN_JAR_NAME);
        byte[] bArrGenerate = generate();
        jarEntry.setSize(bArrGenerate.length);
        jarOutputStream.putNextEntry(jarEntry);
        jarOutputStream.write(bArrGenerate);
        jarOutputStream.closeEntry();
        jarOutputStream.close();
        file2.setReadOnly();
        return generateClassLoader(file2, file, classLoader);
    }

    public Code declare(MethodId<?, ?> methodId, int i10) {
        TypeDeclaration typeDeclaration = getTypeDeclaration(methodId.declaringType);
        if (typeDeclaration.methods.containsKey(methodId)) {
            throw new IllegalStateException("already declared: " + methodId);
        }
        if ((i10 & (-4224)) == 0) {
            if ((i10 & 32) != 0) {
                i10 = (i10 & (-33)) | 131072;
            }
            if (methodId.isConstructor() || methodId.isStaticInitializer()) {
                i10 |= 65536;
            }
            MethodDeclaration methodDeclaration = new MethodDeclaration(methodId, i10);
            typeDeclaration.methods.put(methodId, methodDeclaration);
            return methodDeclaration.code;
        }
        throw new IllegalArgumentException("Unexpected flag: " + Integer.toHexString(i10));
    }

    public void declare(FieldId<?, ?> fieldId, int i10, Object obj) {
        TypeDeclaration typeDeclaration = getTypeDeclaration(fieldId.declaringType);
        if (typeDeclaration.fields.containsKey(fieldId)) {
            throw new IllegalStateException("already declared: " + fieldId);
        }
        if ((i10 & (-4320)) != 0) {
            throw new IllegalArgumentException("Unexpected flag: " + Integer.toHexString(i10));
        }
        if ((i10 & 8) == 0 && obj != null) {
            throw new IllegalArgumentException("staticValue is non-null, but field is not static");
        }
        typeDeclaration.fields.put(fieldId, new FieldDeclaration(fieldId, i10, obj));
    }
}
