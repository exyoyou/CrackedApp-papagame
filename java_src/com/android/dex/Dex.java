package com.android.dex;

import com.android.dex.util.ByteInput;
import com.android.dex.util.ByteOutput;
import com.android.dex.util.FileUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UTFDataFormatException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.AbstractList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.zip.Adler32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.UShort;

/* JADX INFO: loaded from: classes7.dex */
public final class Dex {
    private static final int CHECKSUM_OFFSET = 8;
    private static final int CHECKSUM_SIZE = 4;
    static final short[] EMPTY_SHORT_ARRAY = new short[0];
    private static final int SIGNATURE_OFFSET = 12;
    private static final int SIGNATURE_SIZE = 20;
    private ByteBuffer data;
    private final FieldIdTable fieldIds;
    private final MethodIdTable methodIds;
    private int nextSectionStart;
    private final ProtoIdTable protoIds;
    private final StringTable strings;
    private final TableOfContents tableOfContents;
    private final TypeIndexToDescriptorIndexTable typeIds;
    private final TypeIndexToDescriptorTable typeNames;

    private final class ClassDefIterable implements Iterable<ClassDef> {
        private ClassDefIterable() {
        }

        @Override // java.lang.Iterable
        public Iterator<ClassDef> iterator() {
            return !Dex.this.tableOfContents.classDefs.exists() ? Collections.emptySet().iterator() : new ClassDefIterator();
        }
    }

    private final class ClassDefIterator implements Iterator<ClassDef> {
        private int count;

        /* JADX INFO: renamed from: in, reason: collision with root package name */
        private final Section f7307in;

        private ClassDefIterator() {
            this.f7307in = Dex.this.open(Dex.this.tableOfContents.classDefs.off);
            this.count = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.count < Dex.this.tableOfContents.classDefs.size;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public ClassDef next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.count++;
            return this.f7307in.readClassDef();
        }
    }

    private final class FieldIdTable extends AbstractList<FieldId> implements RandomAccess {
        private FieldIdTable() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.fieldIds.size;
        }

        @Override // java.util.AbstractList, java.util.List
        public FieldId get(int i10) {
            Dex.checkBounds(i10, Dex.this.tableOfContents.fieldIds.size);
            Dex dex = Dex.this;
            return dex.open(dex.tableOfContents.fieldIds.off + (i10 * 8)).readFieldId();
        }
    }

    private final class MethodIdTable extends AbstractList<MethodId> implements RandomAccess {
        private MethodIdTable() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.methodIds.size;
        }

        @Override // java.util.AbstractList, java.util.List
        public MethodId get(int i10) {
            Dex.checkBounds(i10, Dex.this.tableOfContents.methodIds.size);
            Dex dex = Dex.this;
            return dex.open(dex.tableOfContents.methodIds.off + (i10 * 8)).readMethodId();
        }
    }

    private final class ProtoIdTable extends AbstractList<ProtoId> implements RandomAccess {
        private ProtoIdTable() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.protoIds.size;
        }

        @Override // java.util.AbstractList, java.util.List
        public ProtoId get(int i10) {
            Dex.checkBounds(i10, Dex.this.tableOfContents.protoIds.size);
            Dex dex = Dex.this;
            return dex.open(dex.tableOfContents.protoIds.off + (i10 * 12)).readProtoId();
        }
    }

    public final class Section implements ByteInput, ByteOutput {
        private final ByteBuffer data;
        private final int initialPosition;
        private final String name;

        private int findCatchHandlerIndex(Code.CatchHandler[] catchHandlerArr, int i10) {
            for (int i11 = 0; i11 < catchHandlerArr.length; i11++) {
                if (catchHandlerArr[i11].getOffset() == i10) {
                    return i11;
                }
            }
            throw new IllegalArgumentException();
        }

        private byte[] getBytesFrom(int i10) {
            byte[] bArr = new byte[this.data.position() - i10];
            this.data.position(i10);
            this.data.get(bArr);
            return bArr;
        }

        private Code.CatchHandler readCatchHandler(int i10) {
            int sleb128 = readSleb128();
            int iAbs = Math.abs(sleb128);
            int[] iArr = new int[iAbs];
            int[] iArr2 = new int[iAbs];
            for (int i11 = 0; i11 < iAbs; i11++) {
                iArr[i11] = readUleb128();
                iArr2[i11] = readUleb128();
            }
            return new Code.CatchHandler(iArr, iArr2, sleb128 <= 0 ? readUleb128() : -1, i10);
        }

        private Code.CatchHandler[] readCatchHandlers() {
            int iPosition = this.data.position();
            int uleb128 = readUleb128();
            Code.CatchHandler[] catchHandlerArr = new Code.CatchHandler[uleb128];
            for (int i10 = 0; i10 < uleb128; i10++) {
                catchHandlerArr[i10] = readCatchHandler(this.data.position() - iPosition);
            }
            return catchHandlerArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ClassData readClassData() {
            return new ClassData(readFields(readUleb128()), readFields(readUleb128()), readMethods(readUleb128()), readMethods(readUleb128()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Code readCode() {
            Code.Try[] tries;
            Code.CatchHandler[] catchHandlers;
            int unsignedShort = readUnsignedShort();
            int unsignedShort2 = readUnsignedShort();
            int unsignedShort3 = readUnsignedShort();
            int unsignedShort4 = readUnsignedShort();
            int i10 = readInt();
            short[] shortArray = readShortArray(readInt());
            if (unsignedShort4 > 0) {
                if (shortArray.length % 2 == 1) {
                    readShort();
                }
                Section sectionOpen = Dex.this.open(this.data.position());
                skip(unsignedShort4 * 8);
                catchHandlers = readCatchHandlers();
                tries = sectionOpen.readTries(unsignedShort4, catchHandlers);
            } else {
                tries = new Code.Try[0];
                catchHandlers = new Code.CatchHandler[0];
            }
            return new Code(unsignedShort, unsignedShort2, unsignedShort3, i10, shortArray, tries, catchHandlers);
        }

        private ClassData.Field[] readFields(int i10) {
            ClassData.Field[] fieldArr = new ClassData.Field[i10];
            int uleb128 = 0;
            for (int i11 = 0; i11 < i10; i11++) {
                uleb128 += readUleb128();
                fieldArr[i11] = new ClassData.Field(uleb128, readUleb128());
            }
            return fieldArr;
        }

        private ClassData.Method[] readMethods(int i10) {
            ClassData.Method[] methodArr = new ClassData.Method[i10];
            int uleb128 = 0;
            for (int i11 = 0; i11 < i10; i11++) {
                uleb128 += readUleb128();
                methodArr[i11] = new ClassData.Method(uleb128, readUleb128(), readUleb128());
            }
            return methodArr;
        }

        private Code.Try[] readTries(int i10, Code.CatchHandler[] catchHandlerArr) {
            Code.Try[] tryArr = new Code.Try[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                tryArr[i11] = new Code.Try(readInt(), readUnsignedShort(), findCatchHandlerIndex(catchHandlerArr, readUnsignedShort()));
            }
            return tryArr;
        }

        public void alignToFourBytes() {
            ByteBuffer byteBuffer = this.data;
            byteBuffer.position((byteBuffer.position() + 3) & (-4));
        }

        public void alignToFourBytesWithZeroFill() {
            while ((this.data.position() & 3) != 0) {
                this.data.put((byte) 0);
            }
        }

        public void assertFourByteAligned() {
            if ((this.data.position() & 3) != 0) {
                throw new IllegalStateException("Not four byte aligned!");
            }
        }

        public int getPosition() {
            return this.data.position();
        }

        public Annotation readAnnotation() {
            byte b10 = readByte();
            int iPosition = this.data.position();
            new EncodedValueReader(this, 29).skipValue();
            return new Annotation(Dex.this, b10, new EncodedValue(getBytesFrom(iPosition)));
        }

        @Override // com.android.dex.util.ByteInput
        public byte readByte() {
            return this.data.get();
        }

        public byte[] readByteArray(int i10) {
            byte[] bArr = new byte[i10];
            this.data.get(bArr);
            return bArr;
        }

        public CallSiteId readCallSiteId() {
            return new CallSiteId(Dex.this, readInt());
        }

        public ClassDef readClassDef() {
            return new ClassDef(Dex.this, getPosition(), readInt(), readInt(), readInt(), readInt(), readInt(), readInt(), readInt(), readInt());
        }

        public EncodedValue readEncodedArray() {
            int iPosition = this.data.position();
            new EncodedValueReader(this, 28).skipValue();
            return new EncodedValue(getBytesFrom(iPosition));
        }

        public FieldId readFieldId() {
            return new FieldId(Dex.this, readUnsignedShort(), readUnsignedShort(), readInt());
        }

        public int readInt() {
            return this.data.getInt();
        }

        public MethodHandle readMethodHandle() {
            return new MethodHandle(Dex.this, MethodHandle.MethodHandleType.fromValue(readUnsignedShort()), readUnsignedShort(), readUnsignedShort(), readUnsignedShort());
        }

        public MethodId readMethodId() {
            return new MethodId(Dex.this, readUnsignedShort(), readUnsignedShort(), readInt());
        }

        public ProtoId readProtoId() {
            return new ProtoId(Dex.this, readInt(), readInt(), readInt());
        }

        public short readShort() {
            return this.data.getShort();
        }

        public short[] readShortArray(int i10) {
            if (i10 == 0) {
                return Dex.EMPTY_SHORT_ARRAY;
            }
            short[] sArr = new short[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                sArr[i11] = readShort();
            }
            return sArr;
        }

        public int readSleb128() {
            return Leb128.readSignedLeb128(this);
        }

        public String readString() {
            int i10 = readInt();
            int iPosition = this.data.position();
            int iLimit = this.data.limit();
            this.data.position(i10);
            ByteBuffer byteBuffer = this.data;
            byteBuffer.limit(byteBuffer.capacity());
            try {
                try {
                    int uleb128 = readUleb128();
                    String strDecode = Mutf8.decode(this, new char[uleb128]);
                    if (strDecode.length() == uleb128) {
                        this.data.position(iPosition);
                        this.data.limit(iLimit);
                        return strDecode;
                    }
                    throw new DexException("Declared length " + uleb128 + " doesn't match decoded length of " + strDecode.length());
                } catch (UTFDataFormatException e10) {
                    throw new DexException(e10);
                }
            } catch (Throwable th) {
                this.data.position(iPosition);
                this.data.limit(iLimit);
                throw th;
            }
            this.data.position(iPosition);
            this.data.limit(iLimit);
            throw th;
        }

        public TypeList readTypeList() {
            short[] shortArray = readShortArray(readInt());
            alignToFourBytes();
            return new TypeList(Dex.this, shortArray);
        }

        public int readUleb128() {
            return Leb128.readUnsignedLeb128(this);
        }

        public int readUleb128p1() {
            return Leb128.readUnsignedLeb128(this) - 1;
        }

        public int readUnsignedShort() {
            return readShort() & UShort.MAX_VALUE;
        }

        public void skip(int i10) {
            if (i10 < 0) {
                throw new IllegalArgumentException();
            }
            ByteBuffer byteBuffer = this.data;
            byteBuffer.position(byteBuffer.position() + i10);
        }

        public int used() {
            return this.data.position() - this.initialPosition;
        }

        public void write(byte[] bArr) {
            this.data.put(bArr);
        }

        @Override // com.android.dex.util.ByteOutput
        public void writeByte(int i10) {
            this.data.put((byte) i10);
        }

        public void writeInt(int i10) {
            this.data.putInt(i10);
        }

        public void writeShort(short s10) {
            this.data.putShort(s10);
        }

        public void writeSleb128(int i10) {
            try {
                Leb128.writeSignedLeb128(this, i10);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new DexException("Section limit " + this.data.limit() + " exceeded by " + this.name);
            }
        }

        public void writeStringData(String str) {
            try {
                writeUleb128(str.length());
                write(Mutf8.encode(str));
                writeByte(0);
            } catch (UTFDataFormatException unused) {
                throw new AssertionError();
            }
        }

        public void writeTypeList(TypeList typeList) {
            short[] types = typeList.getTypes();
            writeInt(types.length);
            for (short s10 : types) {
                writeShort(s10);
            }
            alignToFourBytesWithZeroFill();
        }

        public void writeUleb128(int i10) {
            try {
                Leb128.writeUnsignedLeb128(this, i10);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new DexException("Section limit " + this.data.limit() + " exceeded by " + this.name);
            }
        }

        public void writeUleb128p1(int i10) {
            writeUleb128(i10 + 1);
        }

        public void writeUnsignedShort(int i10) {
            short s10 = (short) i10;
            if (i10 == (65535 & s10)) {
                writeShort(s10);
                return;
            }
            throw new IllegalArgumentException("Expected an unsigned short: " + i10);
        }

        private Section(String str, ByteBuffer byteBuffer) {
            this.name = str;
            this.data = byteBuffer;
            this.initialPosition = byteBuffer.position();
        }

        public void write(short[] sArr) {
            for (short s10 : sArr) {
                writeShort(s10);
            }
        }
    }

    private final class StringTable extends AbstractList<String> implements RandomAccess {
        private StringTable() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.stringIds.size;
        }

        @Override // java.util.AbstractList, java.util.List
        public String get(int i10) {
            Dex.checkBounds(i10, Dex.this.tableOfContents.stringIds.size);
            Dex dex = Dex.this;
            return dex.open(dex.tableOfContents.stringIds.off + (i10 * 4)).readString();
        }
    }

    private final class TypeIndexToDescriptorIndexTable extends AbstractList<Integer> implements RandomAccess {
        private TypeIndexToDescriptorIndexTable() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.typeIds.size;
        }

        @Override // java.util.AbstractList, java.util.List
        public Integer get(int i10) {
            return Integer.valueOf(Dex.this.descriptorIndexFromTypeIndex(i10));
        }
    }

    private final class TypeIndexToDescriptorTable extends AbstractList<String> implements RandomAccess {
        private TypeIndexToDescriptorTable() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.typeIds.size;
        }

        @Override // java.util.AbstractList, java.util.List
        public String get(int i10) {
            return Dex.this.strings.get(Dex.this.descriptorIndexFromTypeIndex(i10));
        }
    }

    public Dex(byte[] bArr) throws IOException {
        this(ByteBuffer.wrap(bArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkBounds(int i10, int i11) {
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException("index:" + i10 + ", length=" + i11);
        }
    }

    private void loadFrom(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
                this.data = byteBufferWrap;
                byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
                this.tableOfContents.readFrom(this);
                return;
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public Section appendSection(int i10, String str) {
        if ((i10 & 3) != 0) {
            throw new IllegalStateException("Not four byte aligned!");
        }
        int i11 = this.nextSectionStart + i10;
        ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferDuplicate.position(this.nextSectionStart);
        byteBufferDuplicate.limit(i11);
        Section section = new Section(str, byteBufferDuplicate);
        this.nextSectionStart = i11;
        return section;
    }

    public Iterable<ClassDef> classDefs() {
        return new ClassDefIterable();
    }

    public int computeChecksum() throws IOException {
        Adler32 adler32 = new Adler32();
        byte[] bArr = new byte[8192];
        ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.limit(byteBufferDuplicate.capacity());
        byteBufferDuplicate.position(12);
        while (byteBufferDuplicate.hasRemaining()) {
            int iMin = Math.min(8192, byteBufferDuplicate.remaining());
            byteBufferDuplicate.get(bArr, 0, iMin);
            adler32.update(bArr, 0, iMin);
        }
        return (int) adler32.getValue();
    }

    public byte[] computeSignature() throws IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bArr = new byte[8192];
            ByteBuffer byteBufferDuplicate = this.data.duplicate();
            byteBufferDuplicate.limit(byteBufferDuplicate.capacity());
            byteBufferDuplicate.position(32);
            while (byteBufferDuplicate.hasRemaining()) {
                int iMin = Math.min(8192, byteBufferDuplicate.remaining());
                byteBufferDuplicate.get(bArr, 0, iMin);
                messageDigest.update(bArr, 0, iMin);
            }
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public int descriptorIndexFromTypeIndex(int i10) {
        checkBounds(i10, this.tableOfContents.typeIds.size);
        return this.data.getInt(this.tableOfContents.typeIds.off + (i10 * 4));
    }

    public List<FieldId> fieldIds() {
        return this.fieldIds;
    }

    public byte[] getBytes() {
        ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byte[] bArr = new byte[byteBufferDuplicate.capacity()];
        byteBufferDuplicate.position(0);
        byteBufferDuplicate.get(bArr);
        return bArr;
    }

    public int getLength() {
        return this.data.capacity();
    }

    public int getNextSectionStart() {
        return this.nextSectionStart;
    }

    public TableOfContents getTableOfContents() {
        return this.tableOfContents;
    }

    public List<MethodId> methodIds() {
        return this.methodIds;
    }

    public Section open(int i10) {
        if (i10 >= 0 && i10 < this.data.capacity()) {
            ByteBuffer byteBufferDuplicate = this.data.duplicate();
            byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferDuplicate.position(i10);
            byteBufferDuplicate.limit(this.data.capacity());
            return new Section("section", byteBufferDuplicate);
        }
        throw new IllegalArgumentException("position=" + i10 + " length=" + this.data.capacity());
    }

    public List<ProtoId> protoIds() {
        return this.protoIds;
    }

    public ClassData readClassData(ClassDef classDef) {
        int classDataOffset = classDef.getClassDataOffset();
        if (classDataOffset != 0) {
            return open(classDataOffset).readClassData();
        }
        throw new IllegalArgumentException("offset == 0");
    }

    public Code readCode(ClassData.Method method) {
        int codeOffset = method.getCodeOffset();
        if (codeOffset != 0) {
            return open(codeOffset).readCode();
        }
        throw new IllegalArgumentException("offset == 0");
    }

    public TypeList readTypeList(int i10) {
        return i10 == 0 ? TypeList.EMPTY : open(i10).readTypeList();
    }

    public List<String> strings() {
        return this.strings;
    }

    public List<Integer> typeIds() {
        return this.typeIds;
    }

    public List<String> typeNames() {
        return this.typeNames;
    }

    public void writeHashes() throws IOException {
        open(12).write(computeSignature());
        open(8).writeInt(computeChecksum());
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.clear();
        while (byteBufferDuplicate.hasRemaining()) {
            int iMin = Math.min(8192, byteBufferDuplicate.remaining());
            byteBufferDuplicate.get(bArr, 0, iMin);
            outputStream.write(bArr, 0, iMin);
        }
    }

    private Dex(ByteBuffer byteBuffer) throws IOException {
        TableOfContents tableOfContents = new TableOfContents();
        this.tableOfContents = tableOfContents;
        this.nextSectionStart = 0;
        this.strings = new StringTable();
        this.typeIds = new TypeIndexToDescriptorIndexTable();
        this.typeNames = new TypeIndexToDescriptorTable();
        this.protoIds = new ProtoIdTable();
        this.fieldIds = new FieldIdTable();
        this.methodIds = new MethodIdTable();
        this.data = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        tableOfContents.readFrom(this);
    }

    public void writeTo(File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            writeTo(fileOutputStream);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public Dex(int i10) throws IOException {
        this.tableOfContents = new TableOfContents();
        this.nextSectionStart = 0;
        this.strings = new StringTable();
        this.typeIds = new TypeIndexToDescriptorIndexTable();
        this.typeNames = new TypeIndexToDescriptorTable();
        this.protoIds = new ProtoIdTable();
        this.fieldIds = new FieldIdTable();
        this.methodIds = new MethodIdTable();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[i10]);
        this.data = byteBufferWrap;
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
    }

    public Dex(InputStream inputStream) throws IOException {
        this.tableOfContents = new TableOfContents();
        this.nextSectionStart = 0;
        this.strings = new StringTable();
        this.typeIds = new TypeIndexToDescriptorIndexTable();
        this.typeNames = new TypeIndexToDescriptorTable();
        this.protoIds = new ProtoIdTable();
        this.fieldIds = new FieldIdTable();
        this.methodIds = new MethodIdTable();
        try {
            loadFrom(inputStream);
        } finally {
            inputStream.close();
        }
    }

    public Dex(File file) throws IOException {
        this.tableOfContents = new TableOfContents();
        this.nextSectionStart = 0;
        this.strings = new StringTable();
        this.typeIds = new TypeIndexToDescriptorIndexTable();
        this.typeNames = new TypeIndexToDescriptorTable();
        this.protoIds = new ProtoIdTable();
        this.fieldIds = new FieldIdTable();
        this.methodIds = new MethodIdTable();
        if (FileUtils.hasArchiveSuffix(file.getName())) {
            ZipFile zipFile = new ZipFile(file);
            ZipEntry entry = zipFile.getEntry(DexFormat.DEX_IN_JAR_NAME);
            if (entry != null) {
                InputStream inputStream = zipFile.getInputStream(entry);
                try {
                    loadFrom(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    zipFile.close();
                    return;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            }
            throw new DexException("Expected classes.dex in " + file);
        }
        if (file.getName().endsWith(".dex")) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                loadFrom(fileInputStream);
                fileInputStream.close();
                return;
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        }
        throw new DexException("unknown output extension: " + file);
    }
}
