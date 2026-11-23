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
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageCloudGamingServerListRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88044c;

    public static final class MessageCloudGamingServerListRequestParameters extends GeneratedMessageV3 implements b {
        public static final int APPVERSION_FIELD_NUMBER = 3;
        public static final int GAMEID_FIELD_NUMBER = 4;
        public static final int PACKAGENAME_FIELD_NUMBER = 5;
        public static final int SIGN_FIELD_NUMBER = 6;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private long gameId_;
        private byte memoizedIsInitialized;
        private volatile Object packageName_;
        private volatile Object sign_;
        private volatile Object token_;
        private int uid_;
        private static final MessageCloudGamingServerListRequestParameters DEFAULT_INSTANCE = new MessageCloudGamingServerListRequestParameters();
        private static final Parser<MessageCloudGamingServerListRequestParameters> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingServerListRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingServerListRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingServerListRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object appVersion_;
            private long gameId_;
            private Object packageName_;
            private Object sign_;
            private Object token_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingServerListRequest.f88042a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageCloudGamingServerListRequestParameters.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearGameId() {
                this.gameId_ = 0L;
                onChanged();
                return this;
            }

            public b clearPackageName() {
                this.packageName_ = MessageCloudGamingServerListRequestParameters.getDefaultInstance().getPackageName();
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingServerListRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = MessageCloudGamingServerListRequestParameters.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
            public ByteString getAppVersionBytes() {
                Object obj = this.appVersion_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVersion_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingServerListRequest.f88042a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
            public long getGameId() {
                return this.gameId_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
            public String getPackageName() {
                Object obj = this.packageName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.packageName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
            public ByteString getPackageNameBytes() {
                Object obj = this.packageName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.packageName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingServerListRequest.f88043b.ensureFieldAccessorsInitialized(MessageCloudGamingServerListRequestParameters.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setAppVersion(String value) {
                value.getClass();
                this.appVersion_ = value;
                onChanged();
                return this;
            }

            public b setAppVersionBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.appVersion_ = value;
                onChanged();
                return this;
            }

            public b setGameId(long value) {
                this.gameId_ = value;
                onChanged();
                return this;
            }

            public b setPackageName(String value) {
                value.getClass();
                this.packageName_ = value;
                onChanged();
                return this;
            }

            public b setPackageNameBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.packageName_ = value;
                onChanged();
                return this;
            }

            public b setSign(String value) {
                value.getClass();
                this.sign_ = value;
                onChanged();
                return this;
            }

            public b setSignBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.sign_ = value;
                onChanged();
                return this;
            }

            public b setToken(String value) {
                value.getClass();
                this.token_ = value;
                onChanged();
                return this;
            }

            public b setTokenBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.token_ = value;
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
                this.token_ = "";
                this.appVersion_ = "";
                this.packageName_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingServerListRequestParameters build() {
                MessageCloudGamingServerListRequestParameters messageCloudGamingServerListRequestParametersBuildPartial = buildPartial();
                if (messageCloudGamingServerListRequestParametersBuildPartial.isInitialized()) {
                    return messageCloudGamingServerListRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingServerListRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingServerListRequestParameters buildPartial() {
                MessageCloudGamingServerListRequestParameters messageCloudGamingServerListRequestParameters = new MessageCloudGamingServerListRequestParameters(this, (a) null);
                messageCloudGamingServerListRequestParameters.uid_ = this.uid_;
                messageCloudGamingServerListRequestParameters.token_ = this.token_;
                messageCloudGamingServerListRequestParameters.appVersion_ = this.appVersion_;
                messageCloudGamingServerListRequestParameters.gameId_ = this.gameId_;
                messageCloudGamingServerListRequestParameters.packageName_ = this.packageName_;
                messageCloudGamingServerListRequestParameters.sign_ = this.sign_;
                onBuilt();
                return messageCloudGamingServerListRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingServerListRequestParameters getDefaultInstanceForType() {
                return MessageCloudGamingServerListRequestParameters.getDefaultInstance();
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
                this.token_ = "";
                this.appVersion_ = "";
                this.gameId_ = 0L;
                this.packageName_ = "";
                this.sign_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingServerListRequestParameters) {
                    return mergeFrom((MessageCloudGamingServerListRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.appVersion_ = "";
                this.packageName_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageCloudGamingServerListRequestParameters other) {
                if (other == MessageCloudGamingServerListRequestParameters.getDefaultInstance()) {
                    return this;
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (!other.getToken().isEmpty()) {
                    this.token_ = other.token_;
                    onChanged();
                }
                if (!other.getAppVersion().isEmpty()) {
                    this.appVersion_ = other.appVersion_;
                    onChanged();
                }
                if (other.getGameId() != 0) {
                    setGameId(other.getGameId());
                }
                if (!other.getPackageName().isEmpty()) {
                    this.packageName_ = other.packageName_;
                    onChanged();
                }
                if (!other.getSign().isEmpty()) {
                    this.sign_ = other.sign_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingServerListRequestParameters messageCloudGamingServerListRequestParameters = null;
                try {
                    try {
                        MessageCloudGamingServerListRequestParameters messageCloudGamingServerListRequestParameters2 = (MessageCloudGamingServerListRequestParameters) MessageCloudGamingServerListRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingServerListRequestParameters2 != null) {
                            mergeFrom(messageCloudGamingServerListRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingServerListRequestParameters messageCloudGamingServerListRequestParameters3 = (MessageCloudGamingServerListRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingServerListRequestParameters = messageCloudGamingServerListRequestParameters3;
                            if (messageCloudGamingServerListRequestParameters != null) {
                                mergeFrom(messageCloudGamingServerListRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingServerListRequestParameters != null) {
                        mergeFrom(messageCloudGamingServerListRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingServerListRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingServerListRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingServerListRequest.f88042a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingServerListRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingServerListRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingServerListRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingServerListRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingServerListRequestParameters)) {
                return super.equals(obj);
            }
            MessageCloudGamingServerListRequestParameters messageCloudGamingServerListRequestParameters = (MessageCloudGamingServerListRequestParameters) obj;
            return getUid() == messageCloudGamingServerListRequestParameters.getUid() && getToken().equals(messageCloudGamingServerListRequestParameters.getToken()) && getAppVersion().equals(messageCloudGamingServerListRequestParameters.getAppVersion()) && getGameId() == messageCloudGamingServerListRequestParameters.getGameId() && getPackageName().equals(messageCloudGamingServerListRequestParameters.getPackageName()) && getSign().equals(messageCloudGamingServerListRequestParameters.getSign()) && this.unknownFields.equals(messageCloudGamingServerListRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
        public String getPackageName() {
            Object obj = this.packageName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.packageName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
        public ByteString getPackageNameBytes() {
            Object obj = this.packageName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.packageName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingServerListRequestParameters> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.uid_;
            int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
            if (!getTokenBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.token_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.appVersion_);
            }
            long j10 = this.gameId_;
            if (j10 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt64Size(4, j10);
            }
            if (!getPackageNameBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(5, this.packageName_);
            }
            if (!getSignBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.sign_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest.b
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
            int iHashCode = ((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getAppVersion().hashCode()) * 37) + 4) * 53) + Internal.hashLong(getGameId())) * 37) + 5) * 53) + getPackageName().hashCode()) * 37) + 6) * 53) + getSign().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingServerListRequest.f88043b.ensureFieldAccessorsInitialized(MessageCloudGamingServerListRequestParameters.class, b.class);
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
            if (!getTokenBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.token_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.appVersion_);
            }
            long j10 = this.gameId_;
            if (j10 != 0) {
                output.writeInt64(4, j10);
            }
            if (!getPackageNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.packageName_);
            }
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.sign_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingServerListRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingServerListRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingServerListRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingServerListRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingServerListRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingServerListRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingServerListRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingServerListRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingServerListRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingServerListRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.appVersion_ = "";
            this.packageName_ = "";
            this.sign_ = "";
        }

        public static MessageCloudGamingServerListRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingServerListRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingServerListRequestParameters parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingServerListRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingServerListRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingServerListRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private MessageCloudGamingServerListRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.token_ = input.readStringRequireUtf8();
                            } else if (tag == 26) {
                                this.appVersion_ = input.readStringRequireUtf8();
                            } else if (tag == 32) {
                                this.gameId_ = input.readInt64();
                            } else if (tag == 42) {
                                this.packageName_ = input.readStringRequireUtf8();
                            } else if (tag != 50) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.sign_ = input.readStringRequireUtf8();
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

        public static MessageCloudGamingServerListRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingServerListRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingServerListRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingServerListRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingServerListRequest.f88044c = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        long getGameId();

        String getPackageName();

        ByteString getPackageNameBytes();

        String getSign();

        ByteString getSignBytes();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n&cloud_gaming_server_list_request.proto\"\u0092\u0001\n-MessageCloudGamingServerListRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006gameId\u0018\u0004 \u0001(\u0003\u0012\u0013\n\u000bpackageName\u0018\u0005 \u0001(\t\u0012\f\n\u0004sign\u0018\u0006 \u0001(\tBF\n\u001fcom.wufan.user.service.protobufB#MessageCloudGamingServerListRequestb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = d().getMessageTypes().get(0);
        f88042a = descriptor;
        f88043b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Uid", "Token", "AppVersion", "GameId", "PackageName", "Sign"});
    }

    private MessageCloudGamingServerListRequest() {
    }

    public static Descriptors.FileDescriptor d() {
        return f88044c;
    }

    public static void e(ExtensionRegistry registry) {
        f(registry);
    }

    public static void f(ExtensionRegistryLite registry) {
    }
}
