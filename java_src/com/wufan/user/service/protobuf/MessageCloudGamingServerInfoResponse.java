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
public final class MessageCloudGamingServerInfoResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f88039c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88040d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88041e;

    public static final class KeyInfo extends GeneratedMessageV3 implements b {
        public static final int ACCESSKEY_FIELD_NUMBER = 2;
        public static final int APPCHANNEL_FIELD_NUMBER = 3;
        public static final int BID_FIELD_NUMBER = 1;
        private static final KeyInfo DEFAULT_INSTANCE = new KeyInfo();
        private static final Parser<KeyInfo> PARSER = new a();
        private static final long serialVersionUID = 0;
        private volatile Object accessKey_;
        private volatile Object appChannel_;
        private volatile Object bid_;
        private byte memoizedIsInitialized;

        class a extends AbstractParser<KeyInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public KeyInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new KeyInfo(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object accessKey_;
            private Object appChannel_;
            private Object bid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingServerInfoResponse.f88039c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAccessKey() {
                this.accessKey_ = KeyInfo.getDefaultInstance().getAccessKey();
                onChanged();
                return this;
            }

            public b clearAppChannel() {
                this.appChannel_ = KeyInfo.getDefaultInstance().getAppChannel();
                onChanged();
                return this;
            }

            public b clearBid() {
                this.bid_ = KeyInfo.getDefaultInstance().getBid();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
            public String getAccessKey() {
                Object obj = this.accessKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.accessKey_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
            public ByteString getAccessKeyBytes() {
                Object obj = this.accessKey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.accessKey_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
            public String getAppChannel() {
                Object obj = this.appChannel_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appChannel_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
            public ByteString getAppChannelBytes() {
                Object obj = this.appChannel_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appChannel_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
            public String getBid() {
                Object obj = this.bid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bid_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
            public ByteString getBidBytes() {
                Object obj = this.bid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingServerInfoResponse.f88039c;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingServerInfoResponse.f88040d.ensureFieldAccessorsInitialized(KeyInfo.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setAccessKey(String value) {
                value.getClass();
                this.accessKey_ = value;
                onChanged();
                return this;
            }

            public b setAccessKeyBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.accessKey_ = value;
                onChanged();
                return this;
            }

            public b setAppChannel(String value) {
                value.getClass();
                this.appChannel_ = value;
                onChanged();
                return this;
            }

            public b setAppChannelBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.appChannel_ = value;
                onChanged();
                return this;
            }

            public b setBid(String value) {
                value.getClass();
                this.bid_ = value;
                onChanged();
                return this;
            }

            public b setBidBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.bid_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.bid_ = "";
                this.accessKey_ = "";
                this.appChannel_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public KeyInfo build() {
                KeyInfo keyInfoBuildPartial = buildPartial();
                if (keyInfoBuildPartial.isInitialized()) {
                    return keyInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) keyInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public KeyInfo buildPartial() {
                KeyInfo keyInfo = new KeyInfo(this, (a) null);
                keyInfo.bid_ = this.bid_;
                keyInfo.accessKey_ = this.accessKey_;
                keyInfo.appChannel_ = this.appChannel_;
                onBuilt();
                return keyInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public KeyInfo getDefaultInstanceForType() {
                return KeyInfo.getDefaultInstance();
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
                this.bid_ = "";
                this.accessKey_ = "";
                this.appChannel_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof KeyInfo) {
                    return mergeFrom((KeyInfo) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.bid_ = "";
                this.accessKey_ = "";
                this.appChannel_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(KeyInfo other) {
                if (other == KeyInfo.getDefaultInstance()) {
                    return this;
                }
                if (!other.getBid().isEmpty()) {
                    this.bid_ = other.bid_;
                    onChanged();
                }
                if (!other.getAccessKey().isEmpty()) {
                    this.accessKey_ = other.accessKey_;
                    onChanged();
                }
                if (!other.getAppChannel().isEmpty()) {
                    this.appChannel_ = other.appChannel_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                KeyInfo keyInfo = null;
                try {
                    try {
                        KeyInfo keyInfo2 = (KeyInfo) KeyInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (keyInfo2 != null) {
                            mergeFrom(keyInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        KeyInfo keyInfo3 = (KeyInfo) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            keyInfo = keyInfo3;
                            if (keyInfo != null) {
                                mergeFrom(keyInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (keyInfo != null) {
                        mergeFrom(keyInfo);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ KeyInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static KeyInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingServerInfoResponse.f88039c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static KeyInfo parseDelimitedFrom(InputStream input) throws IOException {
            return (KeyInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static KeyInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<KeyInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof KeyInfo)) {
                return super.equals(obj);
            }
            KeyInfo keyInfo = (KeyInfo) obj;
            return getBid().equals(keyInfo.getBid()) && getAccessKey().equals(keyInfo.getAccessKey()) && getAppChannel().equals(keyInfo.getAppChannel()) && this.unknownFields.equals(keyInfo.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
        public String getAccessKey() {
            Object obj = this.accessKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.accessKey_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
        public ByteString getAccessKeyBytes() {
            Object obj = this.accessKey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.accessKey_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
        public String getAppChannel() {
            Object obj = this.appChannel_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appChannel_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
        public ByteString getAppChannelBytes() {
            Object obj = this.appChannel_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appChannel_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
        public String getBid() {
            Object obj = this.bid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.b
        public ByteString getBidBytes() {
            Object obj = this.bid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bid_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<KeyInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getBidBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.bid_);
            if (!getAccessKeyBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.accessKey_);
            }
            if (!getAppChannelBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.appChannel_);
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
            int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getBid().hashCode()) * 37) + 2) * 53) + getAccessKey().hashCode()) * 37) + 3) * 53) + getAppChannel().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingServerInfoResponse.f88040d.ensureFieldAccessorsInitialized(KeyInfo.class, b.class);
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
            if (!getBidBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.bid_);
            }
            if (!getAccessKeyBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.accessKey_);
            }
            if (!getAppChannelBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.appChannel_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ KeyInfo(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(KeyInfo prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static KeyInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private KeyInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static KeyInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (KeyInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static KeyInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public KeyInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static KeyInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private KeyInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.bid_ = "";
            this.accessKey_ = "";
            this.appChannel_ = "";
        }

        public static KeyInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static KeyInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static KeyInfo parseFrom(InputStream input) throws IOException {
            return (KeyInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static KeyInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (KeyInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private KeyInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.bid_ = input.readStringRequireUtf8();
                            } else if (tag == 18) {
                                this.accessKey_ = input.readStringRequireUtf8();
                            } else if (tag != 26) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.appChannel_ = input.readStringRequireUtf8();
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

        public static KeyInfo parseFrom(CodedInputStream input) throws IOException {
            return (KeyInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static KeyInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (KeyInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingServerInfoResponseResult extends GeneratedMessageV3 implements c {
        public static final int DATAINFO_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private KeyInfo dataInfo_;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingServerInfoResponseResult DEFAULT_INSTANCE = new MessageCloudGamingServerInfoResponseResult();
        private static final Parser<MessageCloudGamingServerInfoResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingServerInfoResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingServerInfoResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingServerInfoResponseResult(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private SingleFieldBuilderV3<KeyInfo, KeyInfo.b, b> dataInfoBuilder_;
            private KeyInfo dataInfo_;
            private Object errorMsg_;
            private int error_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private SingleFieldBuilderV3<KeyInfo, KeyInfo.b, b> getDataInfoFieldBuilder() {
                if (this.dataInfoBuilder_ == null) {
                    this.dataInfoBuilder_ = new SingleFieldBuilderV3<>(getDataInfo(), getParentForChildren(), isClean());
                    this.dataInfo_ = null;
                }
                return this.dataInfoBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingServerInfoResponse.f88037a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearDataInfo() {
                if (this.dataInfoBuilder_ == null) {
                    this.dataInfo_ = null;
                    onChanged();
                } else {
                    this.dataInfo_ = null;
                    this.dataInfoBuilder_ = null;
                }
                return this;
            }

            public b clearError() {
                this.error_ = 0;
                onChanged();
                return this;
            }

            public b clearErrorMsg() {
                this.errorMsg_ = MessageCloudGamingServerInfoResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
            public KeyInfo getDataInfo() {
                SingleFieldBuilderV3<KeyInfo, KeyInfo.b, b> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (KeyInfo) singleFieldBuilderV3.getMessage();
                }
                KeyInfo keyInfo = this.dataInfo_;
                return keyInfo == null ? KeyInfo.getDefaultInstance() : keyInfo;
            }

            public KeyInfo.b getDataInfoBuilder() {
                onChanged();
                return (KeyInfo.b) getDataInfoFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
            public b getDataInfoOrBuilder() {
                SingleFieldBuilderV3<KeyInfo, KeyInfo.b, b> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (b) singleFieldBuilderV3.getMessageOrBuilder();
                }
                KeyInfo keyInfo = this.dataInfo_;
                return keyInfo == null ? KeyInfo.getDefaultInstance() : keyInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingServerInfoResponse.f88037a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
            public boolean hasDataInfo() {
                return (this.dataInfoBuilder_ == null && this.dataInfo_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingServerInfoResponse.f88038b.ensureFieldAccessorsInitialized(MessageCloudGamingServerInfoResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeDataInfo(KeyInfo value) {
                SingleFieldBuilderV3<KeyInfo, KeyInfo.b, b> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    KeyInfo keyInfo = this.dataInfo_;
                    if (keyInfo != null) {
                        this.dataInfo_ = KeyInfo.newBuilder(keyInfo).mergeFrom(value).buildPartial();
                    } else {
                        this.dataInfo_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b setDataInfo(KeyInfo value) {
                SingleFieldBuilderV3<KeyInfo, KeyInfo.b, b> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.dataInfo_ = value;
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
            public MessageCloudGamingServerInfoResponseResult build() {
                MessageCloudGamingServerInfoResponseResult messageCloudGamingServerInfoResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingServerInfoResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingServerInfoResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingServerInfoResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingServerInfoResponseResult buildPartial() {
                MessageCloudGamingServerInfoResponseResult messageCloudGamingServerInfoResponseResult = new MessageCloudGamingServerInfoResponseResult(this, (a) null);
                messageCloudGamingServerInfoResponseResult.error_ = this.error_;
                SingleFieldBuilderV3<KeyInfo, KeyInfo.b, b> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageCloudGamingServerInfoResponseResult.dataInfo_ = this.dataInfo_;
                } else {
                    messageCloudGamingServerInfoResponseResult.dataInfo_ = (KeyInfo) singleFieldBuilderV3.build();
                }
                messageCloudGamingServerInfoResponseResult.errorMsg_ = this.errorMsg_;
                onBuilt();
                return messageCloudGamingServerInfoResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingServerInfoResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingServerInfoResponseResult.getDefaultInstance();
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
                if (this.dataInfoBuilder_ == null) {
                    this.dataInfo_ = null;
                } else {
                    this.dataInfo_ = null;
                    this.dataInfoBuilder_ = null;
                }
                this.errorMsg_ = "";
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            public b setDataInfo(KeyInfo.b builderForValue) {
                SingleFieldBuilderV3<KeyInfo, KeyInfo.b, b> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.dataInfo_ = builderForValue.build();
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
                if (other instanceof MessageCloudGamingServerInfoResponseResult) {
                    return mergeFrom((MessageCloudGamingServerInfoResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingServerInfoResponseResult other) {
                if (other == MessageCloudGamingServerInfoResponseResult.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (other.hasDataInfo()) {
                    mergeDataInfo(other.getDataInfo());
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
                MessageCloudGamingServerInfoResponseResult messageCloudGamingServerInfoResponseResult = null;
                try {
                    try {
                        MessageCloudGamingServerInfoResponseResult messageCloudGamingServerInfoResponseResult2 = (MessageCloudGamingServerInfoResponseResult) MessageCloudGamingServerInfoResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingServerInfoResponseResult2 != null) {
                            mergeFrom(messageCloudGamingServerInfoResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingServerInfoResponseResult messageCloudGamingServerInfoResponseResult3 = (MessageCloudGamingServerInfoResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingServerInfoResponseResult = messageCloudGamingServerInfoResponseResult3;
                            if (messageCloudGamingServerInfoResponseResult != null) {
                                mergeFrom(messageCloudGamingServerInfoResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingServerInfoResponseResult != null) {
                        mergeFrom(messageCloudGamingServerInfoResponseResult);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingServerInfoResponseResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingServerInfoResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingServerInfoResponse.f88037a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingServerInfoResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingServerInfoResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingServerInfoResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingServerInfoResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingServerInfoResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingServerInfoResponseResult messageCloudGamingServerInfoResponseResult = (MessageCloudGamingServerInfoResponseResult) obj;
            if (getError() == messageCloudGamingServerInfoResponseResult.getError() && hasDataInfo() == messageCloudGamingServerInfoResponseResult.hasDataInfo()) {
                return (!hasDataInfo() || getDataInfo().equals(messageCloudGamingServerInfoResponseResult.getDataInfo())) && getErrorMsg().equals(messageCloudGamingServerInfoResponseResult.getErrorMsg()) && this.unknownFields.equals(messageCloudGamingServerInfoResponseResult.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
        public KeyInfo getDataInfo() {
            KeyInfo keyInfo = this.dataInfo_;
            return keyInfo == null ? KeyInfo.getDefaultInstance() : keyInfo;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
        public b getDataInfoOrBuilder() {
            return getDataInfo();
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
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
        public Parser<MessageCloudGamingServerInfoResponseResult> getParserForType() {
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
            if (this.dataInfo_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(2, getDataInfo());
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

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerInfoResponse.c
        public boolean hasDataInfo() {
            return this.dataInfo_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError();
            if (hasDataInfo()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDataInfo().hashCode();
            }
            int iHashCode2 = (((((iHashCode * 37) + 3) * 53) + getErrorMsg().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingServerInfoResponse.f88038b.ensureFieldAccessorsInitialized(MessageCloudGamingServerInfoResponseResult.class, b.class);
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
            if (this.dataInfo_ != null) {
                output.writeMessage(2, getDataInfo());
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.errorMsg_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingServerInfoResponseResult(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingServerInfoResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingServerInfoResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingServerInfoResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingServerInfoResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingServerInfoResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingServerInfoResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingServerInfoResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingServerInfoResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingServerInfoResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingServerInfoResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingServerInfoResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingServerInfoResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingServerInfoResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingServerInfoResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                KeyInfo keyInfo = this.dataInfo_;
                                KeyInfo.b builder = keyInfo != null ? keyInfo.toBuilder() : null;
                                KeyInfo keyInfo2 = (KeyInfo) input.readMessage(KeyInfo.parser(), extensionRegistry);
                                this.dataInfo_ = keyInfo2;
                                if (builder != null) {
                                    builder.mergeFrom(keyInfo2);
                                    this.dataInfo_ = builder.buildPartial();
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

        public static MessageCloudGamingServerInfoResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingServerInfoResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingServerInfoResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingServerInfoResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingServerInfoResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingServerInfoResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingServerInfoResponse.f88041e = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAccessKey();

        ByteString getAccessKeyBytes();

        String getAppChannel();

        ByteString getAppChannelBytes();

        String getBid();

        ByteString getBidBytes();
    }

    public interface c extends MessageOrBuilder {
        KeyInfo getDataInfo();

        b getDataInfoOrBuilder();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        boolean hasDataInfo();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n'cloud_gaming_server_info_response.proto\u001a\u001denumeration/enumeration.proto\"i\n*MessageCloudGamingServerInfoResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u001a\n\bdataInfo\u0018\u0002 \u0001(\u000b2\b.KeyInfo\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\"=\n\u0007KeyInfo\u0012\u000b\n\u0003bid\u0018\u0001 \u0001(\t\u0012\u0011\n\taccessKey\u0018\u0002 \u0001(\t\u0012\u0012\n\nappChannel\u0018\u0003 \u0001(\tBG\n\u001fcom.wufan.user.service.protobufB$MessageCloudGamingServerInfoResponseb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.wufan.user.service.protobuf.enumeration.a.b()}, new a());
        Descriptors.Descriptor descriptor = f().getMessageTypes().get(0);
        f88037a = descriptor;
        f88038b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "DataInfo", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = f().getMessageTypes().get(1);
        f88039c = descriptor2;
        f88040d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Bid", "AccessKey", "AppChannel"});
        com.wufan.user.service.protobuf.enumeration.a.b();
    }

    private MessageCloudGamingServerInfoResponse() {
    }

    public static Descriptors.FileDescriptor f() {
        return f88041e;
    }

    public static void g(ExtensionRegistry registry) {
        h(registry);
    }

    public static void h(ExtensionRegistryLite registry) {
    }
}
