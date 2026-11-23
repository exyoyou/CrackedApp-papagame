package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class MemberTitleInfo extends GeneratedMessageV3 implements com.wufan.user.service.protobuf.b {
    public static final int BATTLETITLECOLOR_FIELD_NUMBER = 3;
    public static final int BATTLETITLE_FIELD_NUMBER = 1;
    public static final int LEVEL_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object battleTitleColor_;
    private volatile Object battleTitle_;
    private int level_;
    private byte memoizedIsInitialized;
    private static final MemberTitleInfo DEFAULT_INSTANCE = new MemberTitleInfo();
    private static final Parser<MemberTitleInfo> PARSER = new a();

    class a extends AbstractParser<MemberTitleInfo> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberTitleInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new MemberTitleInfo(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements com.wufan.user.service.protobuf.b {
        private Object battleTitleColor_;
        private Object battleTitle_;
        private int level_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return c.f88132k;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearBattleTitle() {
            this.battleTitle_ = MemberTitleInfo.getDefaultInstance().getBattleTitle();
            onChanged();
            return this;
        }

        public b clearBattleTitleColor() {
            this.battleTitleColor_ = MemberTitleInfo.getDefaultInstance().getBattleTitleColor();
            onChanged();
            return this;
        }

        public b clearLevel() {
            this.level_ = 0;
            onChanged();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.b
        public String getBattleTitle() {
            Object obj = this.battleTitle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.battleTitle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.b
        public ByteString getBattleTitleBytes() {
            Object obj = this.battleTitle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.battleTitle_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.b
        public String getBattleTitleColor() {
            Object obj = this.battleTitleColor_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.battleTitleColor_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.b
        public ByteString getBattleTitleColorBytes() {
            Object obj = this.battleTitleColor_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.battleTitleColor_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return c.f88132k;
        }

        @Override // com.wufan.user.service.protobuf.b
        public int getLevel() {
            return this.level_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return c.f88133l.ensureFieldAccessorsInitialized(MemberTitleInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setBattleTitle(String value) {
            value.getClass();
            this.battleTitle_ = value;
            onChanged();
            return this;
        }

        public b setBattleTitleBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.battleTitle_ = value;
            onChanged();
            return this;
        }

        public b setBattleTitleColor(String value) {
            value.getClass();
            this.battleTitleColor_ = value;
            onChanged();
            return this;
        }

        public b setBattleTitleColorBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.battleTitleColor_ = value;
            onChanged();
            return this;
        }

        public b setLevel(int value) {
            this.level_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public MemberTitleInfo build() {
            MemberTitleInfo memberTitleInfoBuildPartial = buildPartial();
            if (memberTitleInfoBuildPartial.isInitialized()) {
                return memberTitleInfoBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) memberTitleInfoBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public MemberTitleInfo buildPartial() {
            MemberTitleInfo memberTitleInfo = new MemberTitleInfo(this, (a) null);
            memberTitleInfo.battleTitle_ = this.battleTitle_;
            memberTitleInfo.level_ = this.level_;
            memberTitleInfo.battleTitleColor_ = this.battleTitleColor_;
            onBuilt();
            return memberTitleInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MemberTitleInfo getDefaultInstanceForType() {
            return MemberTitleInfo.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b setField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.setField(field, value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
            return (b) super.setRepeatedField(field, index, value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public final b setUnknownFields(final UnknownFieldSet unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b clearOneof(Descriptors.OneofDescriptor oneof) {
            return (b) super.clearOneof(oneof);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b clear() {
            super.clear();
            this.battleTitle_ = "";
            this.level_ = 0;
            this.battleTitleColor_ = "";
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof MemberTitleInfo) {
                return mergeFrom((MemberTitleInfo) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(MemberTitleInfo other) {
            if (other == MemberTitleInfo.getDefaultInstance()) {
                return this;
            }
            if (!other.getBattleTitle().isEmpty()) {
                this.battleTitle_ = other.battleTitle_;
                onChanged();
            }
            if (other.getLevel() != 0) {
                setLevel(other.getLevel());
            }
            if (!other.getBattleTitleColor().isEmpty()) {
                this.battleTitleColor_ = other.battleTitleColor_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            MemberTitleInfo memberTitleInfo = null;
            try {
                try {
                    MemberTitleInfo memberTitleInfo2 = (MemberTitleInfo) MemberTitleInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (memberTitleInfo2 != null) {
                        mergeFrom(memberTitleInfo2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    MemberTitleInfo memberTitleInfo3 = (MemberTitleInfo) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        memberTitleInfo = memberTitleInfo3;
                        if (memberTitleInfo != null) {
                            mergeFrom(memberTitleInfo);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (memberTitleInfo != null) {
                    mergeFrom(memberTitleInfo);
                }
                throw th;
            }
        }
    }

    /* synthetic */ MemberTitleInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static MemberTitleInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return c.f88132k;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MemberTitleInfo parseDelimitedFrom(InputStream input) throws IOException {
        return (MemberTitleInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static MemberTitleInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<MemberTitleInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MemberTitleInfo)) {
            return super.equals(obj);
        }
        MemberTitleInfo memberTitleInfo = (MemberTitleInfo) obj;
        return getBattleTitle().equals(memberTitleInfo.getBattleTitle()) && getLevel() == memberTitleInfo.getLevel() && getBattleTitleColor().equals(memberTitleInfo.getBattleTitleColor()) && this.unknownFields.equals(memberTitleInfo.unknownFields);
    }

    @Override // com.wufan.user.service.protobuf.b
    public String getBattleTitle() {
        Object obj = this.battleTitle_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.battleTitle_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.b
    public ByteString getBattleTitleBytes() {
        Object obj = this.battleTitle_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.battleTitle_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.b
    public String getBattleTitleColor() {
        Object obj = this.battleTitleColor_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.battleTitleColor_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.b
    public ByteString getBattleTitleColorBytes() {
        Object obj = this.battleTitleColor_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.battleTitleColor_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.b
    public int getLevel() {
        return this.level_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<MemberTitleInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeStringSize = getBattleTitleBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.battleTitle_);
        int i11 = this.level_;
        if (i11 != 0) {
            iComputeStringSize += CodedOutputStream.computeInt32Size(2, i11);
        }
        if (!getBattleTitleColorBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.battleTitleColor_);
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getBattleTitle().hashCode()) * 37) + 2) * 53) + getLevel()) * 37) + 3) * 53) + getBattleTitleColor().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return c.f88133l.ensureFieldAccessorsInitialized(MemberTitleInfo.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b10 = this.memoizedIsInitialized;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!getBattleTitleBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 1, this.battleTitle_);
        }
        int i10 = this.level_;
        if (i10 != 0) {
            output.writeInt32(2, i10);
        }
        if (!getBattleTitleColorBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 3, this.battleTitleColor_);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ MemberTitleInfo(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(MemberTitleInfo prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static MemberTitleInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private MemberTitleInfo(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MemberTitleInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (MemberTitleInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static MemberTitleInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public MemberTitleInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static MemberTitleInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private MemberTitleInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.battleTitle_ = "";
        this.battleTitleColor_ = "";
    }

    public static MemberTitleInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static MemberTitleInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static MemberTitleInfo parseFrom(InputStream input) throws IOException {
        return (MemberTitleInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private MemberTitleInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        this();
        extensionRegistry.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int tag = input.readTag();
                    if (tag != 0) {
                        if (tag == 10) {
                            this.battleTitle_ = input.readStringRequireUtf8();
                        } else if (tag == 16) {
                            this.level_ = input.readInt32();
                        } else if (tag != 26) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.battleTitleColor_ = input.readStringRequireUtf8();
                        }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static MemberTitleInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (MemberTitleInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static MemberTitleInfo parseFrom(CodedInputStream input) throws IOException {
        return (MemberTitleInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static MemberTitleInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (MemberTitleInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
