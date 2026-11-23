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
public final class MessageCloudGamingVipStateResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f88057c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88058d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88059e;

    public static final class Info extends GeneratedMessageV3 implements b {
        public static final int GAMESURPLUS_FIELD_NUMBER = 3;
        public static final int SECRETKEY_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private long gameSurplus_;
        private byte memoizedIsInitialized;
        private volatile Object secretKey_;
        private int uid_;
        private static final Info DEFAULT_INSTANCE = new Info();
        private static final Parser<Info> PARSER = new a();

        class a extends AbstractParser<Info> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Info parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new Info(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private long gameSurplus_;
            private Object secretKey_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingVipStateResponse.f88057c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearGameSurplus() {
                this.gameSurplus_ = 0L;
                onChanged();
                return this;
            }

            public b clearSecretKey() {
                this.secretKey_ = Info.getDefaultInstance().getSecretKey();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingVipStateResponse.f88057c;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.b
            public long getGameSurplus() {
                return this.gameSurplus_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.b
            public String getSecretKey() {
                Object obj = this.secretKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.secretKey_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.b
            public ByteString getSecretKeyBytes() {
                Object obj = this.secretKey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.secretKey_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingVipStateResponse.f88058d.ensureFieldAccessorsInitialized(Info.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setGameSurplus(long value) {
                this.gameSurplus_ = value;
                onChanged();
                return this;
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

            public b setUid(int value) {
                this.uid_ = value;
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
            public Info build() {
                Info infoBuildPartial = buildPartial();
                if (infoBuildPartial.isInitialized()) {
                    return infoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) infoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Info buildPartial() {
                Info info = new Info(this, (a) null);
                info.uid_ = this.uid_;
                info.secretKey_ = this.secretKey_;
                info.gameSurplus_ = this.gameSurplus_;
                onBuilt();
                return info;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Info getDefaultInstanceForType() {
                return Info.getDefaultInstance();
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
                this.secretKey_ = "";
                this.gameSurplus_ = 0L;
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
                if (other instanceof Info) {
                    return mergeFrom((Info) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(Info other) {
                if (other == Info.getDefaultInstance()) {
                    return this;
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (!other.getSecretKey().isEmpty()) {
                    this.secretKey_ = other.secretKey_;
                    onChanged();
                }
                if (other.getGameSurplus() != 0) {
                    setGameSurplus(other.getGameSurplus());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                Info info = null;
                try {
                    try {
                        Info info2 = (Info) Info.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (info2 != null) {
                            mergeFrom(info2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        Info info3 = (Info) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            info = info3;
                            if (info != null) {
                                mergeFrom(info);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (info != null) {
                        mergeFrom(info);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ Info(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static Info getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingVipStateResponse.f88057c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Info parseDelimitedFrom(InputStream input) throws IOException {
            return (Info) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static Info parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<Info> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Info)) {
                return super.equals(obj);
            }
            Info info = (Info) obj;
            return getUid() == info.getUid() && getSecretKey().equals(info.getSecretKey()) && getGameSurplus() == info.getGameSurplus() && this.unknownFields.equals(info.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.b
        public long getGameSurplus() {
            return this.gameSurplus_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Info> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.b
        public String getSecretKey() {
            Object obj = this.secretKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.secretKey_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.b
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
            if (!getSecretKeyBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.secretKey_);
            }
            long j10 = this.gameSurplus_;
            if (j10 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt64Size(3, j10);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.b
        public int getUid() {
            return this.uid_;
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
            int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getSecretKey().hashCode()) * 37) + 3) * 53) + Internal.hashLong(getGameSurplus())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingVipStateResponse.f88058d.ensureFieldAccessorsInitialized(Info.class, b.class);
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
            if (!getSecretKeyBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.secretKey_);
            }
            long j10 = this.gameSurplus_;
            if (j10 != 0) {
                output.writeInt64(3, j10);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ Info(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(Info prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static Info parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private Info(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Info parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Info) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static Info parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Info getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static Info parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private Info() {
            this.memoizedIsInitialized = (byte) -1;
            this.secretKey_ = "";
        }

        public static Info parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static Info parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static Info parseFrom(InputStream input) throws IOException {
            return (Info) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private Info(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.uid_ = input.readInt32();
                            } else if (tag == 18) {
                                this.secretKey_ = input.readStringRequireUtf8();
                            } else if (tag != 24) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.gameSurplus_ = input.readInt64();
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

        public static Info parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Info) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static Info parseFrom(CodedInputStream input) throws IOException {
            return (Info) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static Info parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Info) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingVipStateResponseResult extends GeneratedMessageV3 implements c {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Info data_;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingVipStateResponseResult DEFAULT_INSTANCE = new MessageCloudGamingVipStateResponseResult();
        private static final Parser<MessageCloudGamingVipStateResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingVipStateResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingVipStateResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingVipStateResponseResult(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private SingleFieldBuilderV3<Info, Info.b, b> dataBuilder_;
            private Info data_;
            private Object errorMsg_;
            private int error_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private SingleFieldBuilderV3<Info, Info.b, b> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new SingleFieldBuilderV3<>(getData(), getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingVipStateResponse.f88055a;
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
                this.errorMsg_ = MessageCloudGamingVipStateResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
            public Info getData() {
                SingleFieldBuilderV3<Info, Info.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (Info) singleFieldBuilderV3.getMessage();
                }
                Info info = this.data_;
                return info == null ? Info.getDefaultInstance() : info;
            }

            public Info.b getDataBuilder() {
                onChanged();
                return (Info.b) getDataFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
            public b getDataOrBuilder() {
                SingleFieldBuilderV3<Info, Info.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (b) singleFieldBuilderV3.getMessageOrBuilder();
                }
                Info info = this.data_;
                return info == null ? Info.getDefaultInstance() : info;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingVipStateResponse.f88055a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
            public boolean hasData() {
                return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingVipStateResponse.f88056b.ensureFieldAccessorsInitialized(MessageCloudGamingVipStateResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeData(Info value) {
                SingleFieldBuilderV3<Info, Info.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Info info = this.data_;
                    if (info != null) {
                        this.data_ = Info.newBuilder(info).mergeFrom(value).buildPartial();
                    } else {
                        this.data_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b setData(Info value) {
                SingleFieldBuilderV3<Info, Info.b, b> singleFieldBuilderV3 = this.dataBuilder_;
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
            public MessageCloudGamingVipStateResponseResult build() {
                MessageCloudGamingVipStateResponseResult messageCloudGamingVipStateResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingVipStateResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingVipStateResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingVipStateResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingVipStateResponseResult buildPartial() {
                MessageCloudGamingVipStateResponseResult messageCloudGamingVipStateResponseResult = new MessageCloudGamingVipStateResponseResult(this, (a) null);
                messageCloudGamingVipStateResponseResult.error_ = this.error_;
                SingleFieldBuilderV3<Info, Info.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageCloudGamingVipStateResponseResult.data_ = this.data_;
                } else {
                    messageCloudGamingVipStateResponseResult.data_ = (Info) singleFieldBuilderV3.build();
                }
                messageCloudGamingVipStateResponseResult.errorMsg_ = this.errorMsg_;
                onBuilt();
                return messageCloudGamingVipStateResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingVipStateResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingVipStateResponseResult.getDefaultInstance();
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

            public b setData(Info.b builderForValue) {
                SingleFieldBuilderV3<Info, Info.b, b> singleFieldBuilderV3 = this.dataBuilder_;
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
                if (other instanceof MessageCloudGamingVipStateResponseResult) {
                    return mergeFrom((MessageCloudGamingVipStateResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingVipStateResponseResult other) {
                if (other == MessageCloudGamingVipStateResponseResult.getDefaultInstance()) {
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
                MessageCloudGamingVipStateResponseResult messageCloudGamingVipStateResponseResult = null;
                try {
                    try {
                        MessageCloudGamingVipStateResponseResult messageCloudGamingVipStateResponseResult2 = (MessageCloudGamingVipStateResponseResult) MessageCloudGamingVipStateResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingVipStateResponseResult2 != null) {
                            mergeFrom(messageCloudGamingVipStateResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingVipStateResponseResult messageCloudGamingVipStateResponseResult3 = (MessageCloudGamingVipStateResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingVipStateResponseResult = messageCloudGamingVipStateResponseResult3;
                            if (messageCloudGamingVipStateResponseResult != null) {
                                mergeFrom(messageCloudGamingVipStateResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingVipStateResponseResult != null) {
                        mergeFrom(messageCloudGamingVipStateResponseResult);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingVipStateResponseResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingVipStateResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingVipStateResponse.f88055a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingVipStateResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingVipStateResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingVipStateResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingVipStateResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingVipStateResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingVipStateResponseResult messageCloudGamingVipStateResponseResult = (MessageCloudGamingVipStateResponseResult) obj;
            if (getError() == messageCloudGamingVipStateResponseResult.getError() && hasData() == messageCloudGamingVipStateResponseResult.hasData()) {
                return (!hasData() || getData().equals(messageCloudGamingVipStateResponseResult.getData())) && getErrorMsg().equals(messageCloudGamingVipStateResponseResult.getErrorMsg()) && this.unknownFields.equals(messageCloudGamingVipStateResponseResult.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
        public Info getData() {
            Info info = this.data_;
            return info == null ? Info.getDefaultInstance() : info;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
        public b getDataOrBuilder() {
            return getData();
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
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
        public Parser<MessageCloudGamingVipStateResponseResult> getParserForType() {
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

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse.c
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
            return MessageCloudGamingVipStateResponse.f88056b.ensureFieldAccessorsInitialized(MessageCloudGamingVipStateResponseResult.class, b.class);
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

        /* synthetic */ MessageCloudGamingVipStateResponseResult(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingVipStateResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingVipStateResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingVipStateResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingVipStateResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingVipStateResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingVipStateResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingVipStateResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingVipStateResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingVipStateResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingVipStateResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingVipStateResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingVipStateResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingVipStateResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingVipStateResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                Info info = this.data_;
                                Info.b builder = info != null ? info.toBuilder() : null;
                                Info info2 = (Info) input.readMessage(Info.parser(), extensionRegistry);
                                this.data_ = info2;
                                if (builder != null) {
                                    builder.mergeFrom(info2);
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

        public static MessageCloudGamingVipStateResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingVipStateResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingVipStateResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingVipStateResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingVipStateResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingVipStateResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingVipStateResponse.f88059e = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        long getGameSurplus();

        String getSecretKey();

        ByteString getSecretKeyBytes();

        int getUid();
    }

    public interface c extends MessageOrBuilder {
        Info getData();

        b getDataOrBuilder();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        boolean hasData();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n%cloud_gaming_vip_state_response.proto\"`\n(MessageCloudGamingVipStateResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0013\n\u0004data\u0018\u0002 \u0001(\u000b2\u0005.Info\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\";\n\u0004Info\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u0011\n\tsecretKey\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bgameSurplus\u0018\u0003 \u0001(\u0003BE\n\u001fcom.wufan.user.service.protobufB\"MessageCloudGamingVipStateResponseb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = f().getMessageTypes().get(0);
        f88055a = descriptor;
        f88056b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "Data", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = f().getMessageTypes().get(1);
        f88057c = descriptor2;
        f88058d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Uid", "SecretKey", "GameSurplus"});
    }

    private MessageCloudGamingVipStateResponse() {
    }

    public static Descriptors.FileDescriptor f() {
        return f88059e;
    }

    public static void g(ExtensionRegistry registry) {
        h(registry);
    }

    public static void h(ExtensionRegistryLite registry) {
    }
}
