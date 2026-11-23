package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageCheckTokenResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f87925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f87927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Descriptors.FileDescriptor f87929e;

    public static final class MemberInfo extends GeneratedMessageV3 implements b {
        private static final MemberInfo DEFAULT_INSTANCE = new MemberInfo();
        private static final Parser<MemberInfo> PARSER = new a();
        public static final int SECRETKEY_FIELD_NUMBER = 5;
        public static final int SVIPLEVEL_FIELD_NUMBER = 3;
        public static final int UID_FIELD_NUMBER = 1;
        public static final int VIPEXPTIME_FIELD_NUMBER = 4;
        public static final int VIPLEVEL_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object secretKey_;
        private int svipLevel_;
        private int uid_;
        private long vipExpTime_;
        private int vipLevel_;

        class a extends AbstractParser<MemberInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MemberInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MemberInfo(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object secretKey_;
            private int svipLevel_;
            private int uid_;
            private long vipExpTime_;
            private int vipLevel_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCheckTokenResponse.f87927c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearSecretKey() {
                this.secretKey_ = MemberInfo.getDefaultInstance().getSecretKey();
                onChanged();
                return this;
            }

            public b clearSvipLevel() {
                this.svipLevel_ = 0;
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            public b clearVipExpTime() {
                this.vipExpTime_ = 0L;
                onChanged();
                return this;
            }

            public b clearVipLevel() {
                this.vipLevel_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCheckTokenResponse.f87927c;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
            public String getSecretKey() {
                Object obj = this.secretKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.secretKey_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
            public ByteString getSecretKeyBytes() {
                Object obj = this.secretKey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.secretKey_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
            public int getSvipLevel() {
                return this.svipLevel_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
            public long getVipExpTime() {
                return this.vipExpTime_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
            public int getVipLevel() {
                return this.vipLevel_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCheckTokenResponse.f87928d.ensureFieldAccessorsInitialized(MemberInfo.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setSecretKey(String value) {
                value.getClass();
                this.secretKey_ = value;
                onChanged();
                return this;
            }

            public b setSecretKeyBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.secretKey_ = value;
                onChanged();
                return this;
            }

            public b setSvipLevel(int value) {
                this.svipLevel_ = value;
                onChanged();
                return this;
            }

            public b setUid(int value) {
                this.uid_ = value;
                onChanged();
                return this;
            }

            public b setVipExpTime(long value) {
                this.vipExpTime_ = value;
                onChanged();
                return this;
            }

            public b setVipLevel(int value) {
                this.vipLevel_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.secretKey_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MemberInfo build() {
                MemberInfo memberInfoBuildPartial = buildPartial();
                if (memberInfoBuildPartial.isInitialized()) {
                    return memberInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) memberInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MemberInfo buildPartial() {
                MemberInfo memberInfo = new MemberInfo(this, (a) null);
                memberInfo.uid_ = this.uid_;
                memberInfo.vipLevel_ = this.vipLevel_;
                memberInfo.svipLevel_ = this.svipLevel_;
                memberInfo.vipExpTime_ = this.vipExpTime_;
                memberInfo.secretKey_ = this.secretKey_;
                onBuilt();
                return memberInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MemberInfo getDefaultInstanceForType() {
                return MemberInfo.getDefaultInstance();
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
                this.uid_ = 0;
                this.vipLevel_ = 0;
                this.svipLevel_ = 0;
                this.vipExpTime_ = 0L;
                this.secretKey_ = "";
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.secretKey_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MemberInfo) {
                    return mergeFrom((MemberInfo) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MemberInfo other) {
                if (other == MemberInfo.getDefaultInstance()) {
                    return this;
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (other.getVipLevel() != 0) {
                    setVipLevel(other.getVipLevel());
                }
                if (other.getSvipLevel() != 0) {
                    setSvipLevel(other.getSvipLevel());
                }
                if (other.getVipExpTime() != 0) {
                    setVipExpTime(other.getVipExpTime());
                }
                if (!other.getSecretKey().isEmpty()) {
                    this.secretKey_ = other.secretKey_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MemberInfo memberInfo = null;
                try {
                    try {
                        MemberInfo memberInfo2 = (MemberInfo) MemberInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (memberInfo2 != null) {
                            mergeFrom(memberInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MemberInfo memberInfo3 = (MemberInfo) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            memberInfo = memberInfo3;
                            if (memberInfo != null) {
                                mergeFrom(memberInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (memberInfo != null) {
                        mergeFrom(memberInfo);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MemberInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MemberInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCheckTokenResponse.f87927c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MemberInfo parseDelimitedFrom(InputStream input) throws IOException {
            return (MemberInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MemberInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MemberInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MemberInfo)) {
                return super.equals(obj);
            }
            MemberInfo memberInfo = (MemberInfo) obj;
            return getUid() == memberInfo.getUid() && getVipLevel() == memberInfo.getVipLevel() && getSvipLevel() == memberInfo.getSvipLevel() && getVipExpTime() == memberInfo.getVipExpTime() && getSecretKey().equals(memberInfo.getSecretKey()) && this.unknownFields.equals(memberInfo.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MemberInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
        public String getSecretKey() {
            Object obj = this.secretKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.secretKey_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
        public ByteString getSecretKeyBytes() {
            Object obj = this.secretKey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.secretKey_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.uid_;
            int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
            int i12 = this.vipLevel_;
            if (i12 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, i12);
            }
            int i13 = this.svipLevel_;
            if (i13 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(3, i13);
            }
            long j10 = this.vipExpTime_;
            if (j10 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt64Size(4, j10);
            }
            if (!getSecretKeyBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(5, this.secretKey_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
        public int getSvipLevel() {
            return this.svipLevel_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
        public int getUid() {
            return this.uid_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
        public long getVipExpTime() {
            return this.vipExpTime_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.b
        public int getVipLevel() {
            return this.vipLevel_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getVipLevel()) * 37) + 3) * 53) + getSvipLevel()) * 37) + 4) * 53) + Internal.hashLong(getVipExpTime())) * 37) + 5) * 53) + getSecretKey().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCheckTokenResponse.f87928d.ensureFieldAccessorsInitialized(MemberInfo.class, b.class);
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
            int i10 = this.uid_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            int i11 = this.vipLevel_;
            if (i11 != 0) {
                output.writeInt32(2, i11);
            }
            int i12 = this.svipLevel_;
            if (i12 != 0) {
                output.writeInt32(3, i12);
            }
            long j10 = this.vipExpTime_;
            if (j10 != 0) {
                output.writeInt64(4, j10);
            }
            if (!getSecretKeyBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.secretKey_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MemberInfo(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MemberInfo prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MemberInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MemberInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MemberInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemberInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MemberInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MemberInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MemberInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MemberInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.secretKey_ = "";
        }

        public static MemberInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MemberInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MemberInfo parseFrom(InputStream input) throws IOException {
            return (MemberInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MemberInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int tag = input.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.uid_ = input.readInt32();
                                } else if (tag == 16) {
                                    this.vipLevel_ = input.readInt32();
                                } else if (tag == 24) {
                                    this.svipLevel_ = input.readInt32();
                                } else if (tag == 32) {
                                    this.vipExpTime_ = input.readInt64();
                                } else if (tag != 42) {
                                    if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    }
                                } else {
                                    this.secretKey_ = input.readStringRequireUtf8();
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
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

        public static MemberInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemberInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MemberInfo parseFrom(CodedInputStream input) throws IOException {
            return (MemberInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MemberInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemberInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCheckTokenResponseResult extends GeneratedMessageV3 implements c {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private MemberInfo data_;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final MessageCheckTokenResponseResult DEFAULT_INSTANCE = new MessageCheckTokenResponseResult();
        private static final Parser<MessageCheckTokenResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCheckTokenResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCheckTokenResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCheckTokenResponseResult(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private SingleFieldBuilderV3<MemberInfo, MemberInfo.b, b> dataBuilder_;
            private MemberInfo data_;
            private Object errorMsg_;
            private int error_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private SingleFieldBuilderV3<MemberInfo, MemberInfo.b, b> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new SingleFieldBuilderV3<>(getData(), getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCheckTokenResponse.f87925a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearData() {
                if (this.dataBuilder_ == null) {
                    this.data_ = null;
                    onChanged();
                } else {
                    this.data_ = null;
                    this.dataBuilder_ = null;
                }
                return this;
            }

            public b clearError() {
                this.error_ = 0;
                onChanged();
                return this;
            }

            public b clearErrorMsg() {
                this.errorMsg_ = MessageCheckTokenResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
            public MemberInfo getData() {
                SingleFieldBuilderV3<MemberInfo, MemberInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (MemberInfo) singleFieldBuilderV3.getMessage();
                }
                MemberInfo memberInfo = this.data_;
                return memberInfo == null ? MemberInfo.getDefaultInstance() : memberInfo;
            }

            public MemberInfo.b getDataBuilder() {
                onChanged();
                return (MemberInfo.b) getDataFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
            public b getDataOrBuilder() {
                SingleFieldBuilderV3<MemberInfo, MemberInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (b) singleFieldBuilderV3.getMessageOrBuilder();
                }
                MemberInfo memberInfo = this.data_;
                return memberInfo == null ? MemberInfo.getDefaultInstance() : memberInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCheckTokenResponse.f87925a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
            public boolean hasData() {
                return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCheckTokenResponse.f87926b.ensureFieldAccessorsInitialized(MessageCheckTokenResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeData(MemberInfo value) {
                SingleFieldBuilderV3<MemberInfo, MemberInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    MemberInfo memberInfo = this.data_;
                    if (memberInfo != null) {
                        this.data_ = MemberInfo.newBuilder(memberInfo).mergeFrom(value).buildPartial();
                    } else {
                        this.data_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b setData(MemberInfo value) {
                SingleFieldBuilderV3<MemberInfo, MemberInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.data_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            public b setError(int value) {
                this.error_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsg(String value) {
                value.getClass();
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsgBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCheckTokenResponseResult build() {
                MessageCheckTokenResponseResult messageCheckTokenResponseResultBuildPartial = buildPartial();
                if (messageCheckTokenResponseResultBuildPartial.isInitialized()) {
                    return messageCheckTokenResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCheckTokenResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCheckTokenResponseResult buildPartial() {
                MessageCheckTokenResponseResult messageCheckTokenResponseResult = new MessageCheckTokenResponseResult(this, (a) null);
                messageCheckTokenResponseResult.error_ = this.error_;
                SingleFieldBuilderV3<MemberInfo, MemberInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageCheckTokenResponseResult.data_ = this.data_;
                } else {
                    messageCheckTokenResponseResult.data_ = (MemberInfo) singleFieldBuilderV3.build();
                }
                messageCheckTokenResponseResult.errorMsg_ = this.errorMsg_;
                onBuilt();
                return messageCheckTokenResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCheckTokenResponseResult getDefaultInstanceForType() {
                return MessageCheckTokenResponseResult.getDefaultInstance();
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
                this.error_ = 0;
                if (this.dataBuilder_ == null) {
                    this.data_ = null;
                } else {
                    this.data_ = null;
                    this.dataBuilder_ = null;
                }
                this.errorMsg_ = "";
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            public b setData(MemberInfo.b builderForValue) {
                SingleFieldBuilderV3<MemberInfo, MemberInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.data_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCheckTokenResponseResult) {
                    return mergeFrom((MessageCheckTokenResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCheckTokenResponseResult other) {
                if (other == MessageCheckTokenResponseResult.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (other.hasData()) {
                    mergeData(other.getData());
                }
                if (!other.getErrorMsg().isEmpty()) {
                    this.errorMsg_ = other.errorMsg_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCheckTokenResponseResult messageCheckTokenResponseResult = null;
                try {
                    try {
                        MessageCheckTokenResponseResult messageCheckTokenResponseResult2 = (MessageCheckTokenResponseResult) MessageCheckTokenResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCheckTokenResponseResult2 != null) {
                            mergeFrom(messageCheckTokenResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCheckTokenResponseResult messageCheckTokenResponseResult3 = (MessageCheckTokenResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCheckTokenResponseResult = messageCheckTokenResponseResult3;
                            if (messageCheckTokenResponseResult != null) {
                                mergeFrom(messageCheckTokenResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCheckTokenResponseResult != null) {
                        mergeFrom(messageCheckTokenResponseResult);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCheckTokenResponseResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCheckTokenResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCheckTokenResponse.f87925a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCheckTokenResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCheckTokenResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCheckTokenResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCheckTokenResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCheckTokenResponseResult)) {
                return super.equals(obj);
            }
            MessageCheckTokenResponseResult messageCheckTokenResponseResult = (MessageCheckTokenResponseResult) obj;
            if (getError() == messageCheckTokenResponseResult.getError() && hasData() == messageCheckTokenResponseResult.hasData()) {
                return (!hasData() || getData().equals(messageCheckTokenResponseResult.getData())) && getErrorMsg().equals(messageCheckTokenResponseResult.getErrorMsg()) && this.unknownFields.equals(messageCheckTokenResponseResult.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
        public MemberInfo getData() {
            MemberInfo memberInfo = this.data_;
            return memberInfo == null ? MemberInfo.getDefaultInstance() : memberInfo;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
        public b getDataOrBuilder() {
            return getData();
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCheckTokenResponseResult> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.error_;
            int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
            if (this.data_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(2, getData());
            }
            if (!getErrorMsgBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.errorMsg_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCheckTokenResponse.c
        public boolean hasData() {
            return this.data_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError();
            if (hasData()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getData().hashCode();
            }
            int iHashCode2 = (((((iHashCode * 37) + 3) * 53) + getErrorMsg().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCheckTokenResponse.f87926b.ensureFieldAccessorsInitialized(MessageCheckTokenResponseResult.class, b.class);
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
            int i10 = this.error_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            if (this.data_ != null) {
                output.writeMessage(2, getData());
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.errorMsg_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCheckTokenResponseResult(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCheckTokenResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCheckTokenResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCheckTokenResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCheckTokenResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCheckTokenResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCheckTokenResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCheckTokenResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCheckTokenResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCheckTokenResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static MessageCheckTokenResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCheckTokenResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCheckTokenResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCheckTokenResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCheckTokenResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.error_ = input.readInt32();
                            } else if (tag == 18) {
                                MemberInfo memberInfo = this.data_;
                                MemberInfo.b builder = memberInfo != null ? memberInfo.toBuilder() : null;
                                MemberInfo memberInfo2 = (MemberInfo) input.readMessage(MemberInfo.parser(), extensionRegistry);
                                this.data_ = memberInfo2;
                                if (builder != null) {
                                    builder.mergeFrom(memberInfo2);
                                    this.data_ = builder.buildPartial();
                                }
                            } else if (tag != 26) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.errorMsg_ = input.readStringRequireUtf8();
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

        public static MessageCheckTokenResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCheckTokenResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCheckTokenResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCheckTokenResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCheckTokenResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCheckTokenResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCheckTokenResponse.f87929e = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getSecretKey();

        ByteString getSecretKeyBytes();

        int getSvipLevel();

        int getUid();

        long getVipExpTime();

        int getVipLevel();
    }

    public interface c extends MessageOrBuilder {
        MemberInfo getData();

        b getDataOrBuilder();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        boolean hasData();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001acheck_token_response.proto\"]\n\u001fMessageCheckTokenResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0019\n\u0004data\u0018\u0002 \u0001(\u000b2\u000b.MemberInfo\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\"e\n\nMemberInfo\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u0010\n\bvipLevel\u0018\u0002 \u0001(\u0005\u0012\u0011\n\tsvipLevel\u0018\u0003 \u0001(\u0005\u0012\u0012\n\nvipExpTime\u0018\u0004 \u0001(\u0003\u0012\u0011\n\tsecretKey\u0018\u0005 \u0001(\tB<\n\u001fcom.wufan.user.service.protobufB\u0019MessageCheckTokenResponseb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = f().getMessageTypes().get(0);
        f87925a = descriptor;
        f87926b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "Data", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = f().getMessageTypes().get(1);
        f87927c = descriptor2;
        f87928d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Uid", "VipLevel", "SvipLevel", "VipExpTime", "SecretKey"});
    }

    private MessageCheckTokenResponse() {
    }

    public static Descriptors.FileDescriptor f() {
        return f87929e;
    }

    public static void g(ExtensionRegistry registry) {
        h(registry);
    }

    public static void h(ExtensionRegistryLite registry) {
    }
}
