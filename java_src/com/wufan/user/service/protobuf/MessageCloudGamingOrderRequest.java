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
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import com.wufan.user.service.protobuf.enumeration.VipFeeType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageCloudGamingOrderRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f87974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f87976c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Descriptors.Descriptor f87978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87979f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Descriptors.FileDescriptor f87980g;

    public static final class MessageCloudGamingCoinRequestParameters extends GeneratedMessageV3 implements b {
        public static final int APPVERSION_FIELD_NUMBER = 3;
        public static final int JUMPURL_FIELD_NUMBER = 6;
        public static final int PAYTYPE_FIELD_NUMBER = 5;
        public static final int SIGN_FIELD_NUMBER = 4;
        public static final int SKUID_FIELD_NUMBER = 7;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private volatile Object jumpUrl_;
        private byte memoizedIsInitialized;
        private int payType_;
        private volatile Object sign_;
        private int skuId_;
        private volatile Object token_;
        private int uid_;
        private static final MessageCloudGamingCoinRequestParameters DEFAULT_INSTANCE = new MessageCloudGamingCoinRequestParameters();
        private static final Parser<MessageCloudGamingCoinRequestParameters> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingCoinRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingCoinRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingCoinRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object appVersion_;
            private Object jumpUrl_;
            private int payType_;
            private Object sign_;
            private int skuId_;
            private Object token_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingOrderRequest.f87976c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageCloudGamingCoinRequestParameters.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearJumpUrl() {
                this.jumpUrl_ = MessageCloudGamingCoinRequestParameters.getDefaultInstance().getJumpUrl();
                onChanged();
                return this;
            }

            public b clearPayType() {
                this.payType_ = 0;
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingCoinRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearSkuId() {
                this.skuId_ = 0;
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = MessageCloudGamingCoinRequestParameters.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
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
                return MessageCloudGamingOrderRequest.f87976c;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
            public String getJumpUrl() {
                Object obj = this.jumpUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.jumpUrl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
            public ByteString getJumpUrlBytes() {
                Object obj = this.jumpUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.jumpUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
            public int getPayType() {
                return this.payType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
            public int getSkuId() {
                return this.skuId_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingOrderRequest.f87977d.ensureFieldAccessorsInitialized(MessageCloudGamingCoinRequestParameters.class, b.class);
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

            public b setJumpUrl(String value) {
                value.getClass();
                this.jumpUrl_ = value;
                onChanged();
                return this;
            }

            public b setJumpUrlBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.jumpUrl_ = value;
                onChanged();
                return this;
            }

            public b setPayType(int value) {
                this.payType_ = value;
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

            public b setSkuId(int value) {
                this.skuId_ = value;
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
                this.sign_ = "";
                this.jumpUrl_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingCoinRequestParameters build() {
                MessageCloudGamingCoinRequestParameters messageCloudGamingCoinRequestParametersBuildPartial = buildPartial();
                if (messageCloudGamingCoinRequestParametersBuildPartial.isInitialized()) {
                    return messageCloudGamingCoinRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingCoinRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingCoinRequestParameters buildPartial() {
                MessageCloudGamingCoinRequestParameters messageCloudGamingCoinRequestParameters = new MessageCloudGamingCoinRequestParameters(this, (a) null);
                messageCloudGamingCoinRequestParameters.uid_ = this.uid_;
                messageCloudGamingCoinRequestParameters.token_ = this.token_;
                messageCloudGamingCoinRequestParameters.appVersion_ = this.appVersion_;
                messageCloudGamingCoinRequestParameters.sign_ = this.sign_;
                messageCloudGamingCoinRequestParameters.payType_ = this.payType_;
                messageCloudGamingCoinRequestParameters.jumpUrl_ = this.jumpUrl_;
                messageCloudGamingCoinRequestParameters.skuId_ = this.skuId_;
                onBuilt();
                return messageCloudGamingCoinRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingCoinRequestParameters getDefaultInstanceForType() {
                return MessageCloudGamingCoinRequestParameters.getDefaultInstance();
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
                this.sign_ = "";
                this.payType_ = 0;
                this.jumpUrl_ = "";
                this.skuId_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingCoinRequestParameters) {
                    return mergeFrom((MessageCloudGamingCoinRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                this.jumpUrl_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageCloudGamingCoinRequestParameters other) {
                if (other == MessageCloudGamingCoinRequestParameters.getDefaultInstance()) {
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
                if (!other.getSign().isEmpty()) {
                    this.sign_ = other.sign_;
                    onChanged();
                }
                if (other.getPayType() != 0) {
                    setPayType(other.getPayType());
                }
                if (!other.getJumpUrl().isEmpty()) {
                    this.jumpUrl_ = other.jumpUrl_;
                    onChanged();
                }
                if (other.getSkuId() != 0) {
                    setSkuId(other.getSkuId());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingCoinRequestParameters messageCloudGamingCoinRequestParameters = null;
                try {
                    try {
                        MessageCloudGamingCoinRequestParameters messageCloudGamingCoinRequestParameters2 = (MessageCloudGamingCoinRequestParameters) MessageCloudGamingCoinRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingCoinRequestParameters2 != null) {
                            mergeFrom(messageCloudGamingCoinRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingCoinRequestParameters messageCloudGamingCoinRequestParameters3 = (MessageCloudGamingCoinRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingCoinRequestParameters = messageCloudGamingCoinRequestParameters3;
                            if (messageCloudGamingCoinRequestParameters != null) {
                                mergeFrom(messageCloudGamingCoinRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingCoinRequestParameters != null) {
                        mergeFrom(messageCloudGamingCoinRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingCoinRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingCoinRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingOrderRequest.f87976c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingCoinRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingCoinRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingCoinRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingCoinRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingCoinRequestParameters)) {
                return super.equals(obj);
            }
            MessageCloudGamingCoinRequestParameters messageCloudGamingCoinRequestParameters = (MessageCloudGamingCoinRequestParameters) obj;
            return getUid() == messageCloudGamingCoinRequestParameters.getUid() && getToken().equals(messageCloudGamingCoinRequestParameters.getToken()) && getAppVersion().equals(messageCloudGamingCoinRequestParameters.getAppVersion()) && getSign().equals(messageCloudGamingCoinRequestParameters.getSign()) && getPayType() == messageCloudGamingCoinRequestParameters.getPayType() && getJumpUrl().equals(messageCloudGamingCoinRequestParameters.getJumpUrl()) && getSkuId() == messageCloudGamingCoinRequestParameters.getSkuId() && this.unknownFields.equals(messageCloudGamingCoinRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
        public String getJumpUrl() {
            Object obj = this.jumpUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.jumpUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
        public ByteString getJumpUrlBytes() {
            Object obj = this.jumpUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jumpUrl_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingCoinRequestParameters> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
        public int getPayType() {
            return this.payType_;
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
            if (!getSignBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.sign_);
            }
            int i12 = this.payType_;
            if (i12 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(5, i12);
            }
            if (!getJumpUrlBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.jumpUrl_);
            }
            int i13 = this.skuId_;
            if (i13 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(7, i13);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
        public int getSkuId() {
            return this.skuId_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.b
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
            int iHashCode = ((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getAppVersion().hashCode()) * 37) + 4) * 53) + getSign().hashCode()) * 37) + 5) * 53) + getPayType()) * 37) + 6) * 53) + getJumpUrl().hashCode()) * 37) + 7) * 53) + getSkuId()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingOrderRequest.f87977d.ensureFieldAccessorsInitialized(MessageCloudGamingCoinRequestParameters.class, b.class);
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
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.sign_);
            }
            int i11 = this.payType_;
            if (i11 != 0) {
                output.writeInt32(5, i11);
            }
            if (!getJumpUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.jumpUrl_);
            }
            int i12 = this.skuId_;
            if (i12 != 0) {
                output.writeInt32(7, i12);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingCoinRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingCoinRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingCoinRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingCoinRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingCoinRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingCoinRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingCoinRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingCoinRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingCoinRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingCoinRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.appVersion_ = "";
            this.sign_ = "";
            this.jumpUrl_ = "";
        }

        public static MessageCloudGamingCoinRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingCoinRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingCoinRequestParameters parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingCoinRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingCoinRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingCoinRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private MessageCloudGamingCoinRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            } else if (tag == 34) {
                                this.sign_ = input.readStringRequireUtf8();
                            } else if (tag == 40) {
                                this.payType_ = input.readInt32();
                            } else if (tag == 50) {
                                this.jumpUrl_ = input.readStringRequireUtf8();
                            } else if (tag != 56) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.skuId_ = input.readInt32();
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

        public static MessageCloudGamingCoinRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingCoinRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingCoinRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingCoinRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingOrderRequestParameters extends GeneratedMessageV3 implements c {
        public static final int APPVERSION_FIELD_NUMBER = 3;
        public static final int JUMPURL_FIELD_NUMBER = 8;
        public static final int PAYTYPE_FIELD_NUMBER = 7;
        public static final int PRODUCTNAME_FIELD_NUMBER = 5;
        public static final int SIGN_FIELD_NUMBER = 6;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        public static final int VIPFEETYPE_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private volatile Object jumpUrl_;
        private byte memoizedIsInitialized;
        private int payType_;
        private volatile Object productName_;
        private volatile Object sign_;
        private volatile Object token_;
        private int uid_;
        private int vipFeeType_;
        private static final MessageCloudGamingOrderRequestParameters DEFAULT_INSTANCE = new MessageCloudGamingOrderRequestParameters();
        private static final Parser<MessageCloudGamingOrderRequestParameters> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingOrderRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingOrderRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingOrderRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private Object appVersion_;
            private Object jumpUrl_;
            private int payType_;
            private Object productName_;
            private Object sign_;
            private Object token_;
            private int uid_;
            private int vipFeeType_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingOrderRequest.f87974a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageCloudGamingOrderRequestParameters.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearJumpUrl() {
                this.jumpUrl_ = MessageCloudGamingOrderRequestParameters.getDefaultInstance().getJumpUrl();
                onChanged();
                return this;
            }

            public b clearPayType() {
                this.payType_ = 0;
                onChanged();
                return this;
            }

            public b clearProductName() {
                this.productName_ = MessageCloudGamingOrderRequestParameters.getDefaultInstance().getProductName();
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingOrderRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = MessageCloudGamingOrderRequestParameters.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            public b clearVipFeeType() {
                this.vipFeeType_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
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
                return MessageCloudGamingOrderRequest.f87974a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public String getJumpUrl() {
                Object obj = this.jumpUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.jumpUrl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public ByteString getJumpUrlBytes() {
                Object obj = this.jumpUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.jumpUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public int getPayType() {
                return this.payType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public String getProductName() {
                Object obj = this.productName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.productName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public ByteString getProductNameBytes() {
                Object obj = this.productName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.productName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public int getUid() {
                return this.uid_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public VipFeeType getVipFeeType() {
                VipFeeType vipFeeTypeValueOf = VipFeeType.valueOf(this.vipFeeType_);
                return vipFeeTypeValueOf == null ? VipFeeType.UNRECOGNIZED : vipFeeTypeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
            public int getVipFeeTypeValue() {
                return this.vipFeeType_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingOrderRequest.f87975b.ensureFieldAccessorsInitialized(MessageCloudGamingOrderRequestParameters.class, b.class);
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

            public b setJumpUrl(String value) {
                value.getClass();
                this.jumpUrl_ = value;
                onChanged();
                return this;
            }

            public b setJumpUrlBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.jumpUrl_ = value;
                onChanged();
                return this;
            }

            public b setPayType(int value) {
                this.payType_ = value;
                onChanged();
                return this;
            }

            public b setProductName(String value) {
                value.getClass();
                this.productName_ = value;
                onChanged();
                return this;
            }

            public b setProductNameBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.productName_ = value;
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

            public b setVipFeeType(VipFeeType value) {
                value.getClass();
                this.vipFeeType_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setVipFeeTypeValue(int value) {
                this.vipFeeType_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.token_ = "";
                this.appVersion_ = "";
                this.vipFeeType_ = 0;
                this.productName_ = "";
                this.sign_ = "";
                this.jumpUrl_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingOrderRequestParameters build() {
                MessageCloudGamingOrderRequestParameters messageCloudGamingOrderRequestParametersBuildPartial = buildPartial();
                if (messageCloudGamingOrderRequestParametersBuildPartial.isInitialized()) {
                    return messageCloudGamingOrderRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingOrderRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingOrderRequestParameters buildPartial() {
                MessageCloudGamingOrderRequestParameters messageCloudGamingOrderRequestParameters = new MessageCloudGamingOrderRequestParameters(this, (a) null);
                messageCloudGamingOrderRequestParameters.uid_ = this.uid_;
                messageCloudGamingOrderRequestParameters.token_ = this.token_;
                messageCloudGamingOrderRequestParameters.appVersion_ = this.appVersion_;
                messageCloudGamingOrderRequestParameters.vipFeeType_ = this.vipFeeType_;
                messageCloudGamingOrderRequestParameters.productName_ = this.productName_;
                messageCloudGamingOrderRequestParameters.sign_ = this.sign_;
                messageCloudGamingOrderRequestParameters.payType_ = this.payType_;
                messageCloudGamingOrderRequestParameters.jumpUrl_ = this.jumpUrl_;
                onBuilt();
                return messageCloudGamingOrderRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingOrderRequestParameters getDefaultInstanceForType() {
                return MessageCloudGamingOrderRequestParameters.getDefaultInstance();
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
                this.vipFeeType_ = 0;
                this.productName_ = "";
                this.sign_ = "";
                this.payType_ = 0;
                this.jumpUrl_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingOrderRequestParameters) {
                    return mergeFrom((MessageCloudGamingOrderRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingOrderRequestParameters other) {
                if (other == MessageCloudGamingOrderRequestParameters.getDefaultInstance()) {
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
                if (other.vipFeeType_ != 0) {
                    setVipFeeTypeValue(other.getVipFeeTypeValue());
                }
                if (!other.getProductName().isEmpty()) {
                    this.productName_ = other.productName_;
                    onChanged();
                }
                if (!other.getSign().isEmpty()) {
                    this.sign_ = other.sign_;
                    onChanged();
                }
                if (other.getPayType() != 0) {
                    setPayType(other.getPayType());
                }
                if (!other.getJumpUrl().isEmpty()) {
                    this.jumpUrl_ = other.jumpUrl_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.appVersion_ = "";
                this.vipFeeType_ = 0;
                this.productName_ = "";
                this.sign_ = "";
                this.jumpUrl_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingOrderRequestParameters messageCloudGamingOrderRequestParameters = null;
                try {
                    try {
                        MessageCloudGamingOrderRequestParameters messageCloudGamingOrderRequestParameters2 = (MessageCloudGamingOrderRequestParameters) MessageCloudGamingOrderRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingOrderRequestParameters2 != null) {
                            mergeFrom(messageCloudGamingOrderRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingOrderRequestParameters messageCloudGamingOrderRequestParameters3 = (MessageCloudGamingOrderRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingOrderRequestParameters = messageCloudGamingOrderRequestParameters3;
                            if (messageCloudGamingOrderRequestParameters != null) {
                                mergeFrom(messageCloudGamingOrderRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingOrderRequestParameters != null) {
                        mergeFrom(messageCloudGamingOrderRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingOrderRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingOrderRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingOrderRequest.f87974a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingOrderRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingOrderRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingOrderRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingOrderRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingOrderRequestParameters)) {
                return super.equals(obj);
            }
            MessageCloudGamingOrderRequestParameters messageCloudGamingOrderRequestParameters = (MessageCloudGamingOrderRequestParameters) obj;
            return getUid() == messageCloudGamingOrderRequestParameters.getUid() && getToken().equals(messageCloudGamingOrderRequestParameters.getToken()) && getAppVersion().equals(messageCloudGamingOrderRequestParameters.getAppVersion()) && this.vipFeeType_ == messageCloudGamingOrderRequestParameters.vipFeeType_ && getProductName().equals(messageCloudGamingOrderRequestParameters.getProductName()) && getSign().equals(messageCloudGamingOrderRequestParameters.getSign()) && getPayType() == messageCloudGamingOrderRequestParameters.getPayType() && getJumpUrl().equals(messageCloudGamingOrderRequestParameters.getJumpUrl()) && this.unknownFields.equals(messageCloudGamingOrderRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public String getJumpUrl() {
            Object obj = this.jumpUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.jumpUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public ByteString getJumpUrlBytes() {
            Object obj = this.jumpUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jumpUrl_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingOrderRequestParameters> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public int getPayType() {
            return this.payType_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public String getProductName() {
            Object obj = this.productName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.productName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public ByteString getProductNameBytes() {
            Object obj = this.productName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.productName_ = byteStringCopyFromUtf8;
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
            if (!getTokenBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.token_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.appVersion_);
            }
            if (this.vipFeeType_ != VipFeeType.WEEK_VIP.getNumber()) {
                iComputeInt32Size += CodedOutputStream.computeEnumSize(4, this.vipFeeType_);
            }
            if (!getProductNameBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(5, this.productName_);
            }
            if (!getSignBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.sign_);
            }
            int i12 = this.payType_;
            if (i12 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(7, i12);
            }
            if (!getJumpUrlBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(8, this.jumpUrl_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public int getUid() {
            return this.uid_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public VipFeeType getVipFeeType() {
            VipFeeType vipFeeTypeValueOf = VipFeeType.valueOf(this.vipFeeType_);
            return vipFeeTypeValueOf == null ? VipFeeType.UNRECOGNIZED : vipFeeTypeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.c
        public int getVipFeeTypeValue() {
            return this.vipFeeType_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getAppVersion().hashCode()) * 37) + 4) * 53) + this.vipFeeType_) * 37) + 5) * 53) + getProductName().hashCode()) * 37) + 6) * 53) + getSign().hashCode()) * 37) + 7) * 53) + getPayType()) * 37) + 8) * 53) + getJumpUrl().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingOrderRequest.f87975b.ensureFieldAccessorsInitialized(MessageCloudGamingOrderRequestParameters.class, b.class);
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
            if (this.vipFeeType_ != VipFeeType.WEEK_VIP.getNumber()) {
                output.writeEnum(4, this.vipFeeType_);
            }
            if (!getProductNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.productName_);
            }
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.sign_);
            }
            int i11 = this.payType_;
            if (i11 != 0) {
                output.writeInt32(7, i11);
            }
            if (!getJumpUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 8, this.jumpUrl_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingOrderRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingOrderRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingOrderRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingOrderRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingOrderRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingOrderRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingOrderRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingOrderRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingOrderRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingOrderRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.appVersion_ = "";
            this.vipFeeType_ = 0;
            this.productName_ = "";
            this.sign_ = "";
            this.jumpUrl_ = "";
        }

        public static MessageCloudGamingOrderRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingOrderRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingOrderRequestParameters parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingOrderRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingOrderRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingOrderRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingOrderRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingOrderRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingOrderRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.vipFeeType_ = input.readEnum();
                            } else if (tag == 42) {
                                this.productName_ = input.readStringRequireUtf8();
                            } else if (tag == 50) {
                                this.sign_ = input.readStringRequireUtf8();
                            } else if (tag == 56) {
                                this.payType_ = input.readInt32();
                            } else if (tag != 66) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.jumpUrl_ = input.readStringRequireUtf8();
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

        public static MessageCloudGamingOrderRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingOrderRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingPropRequestParameters extends GeneratedMessageV3 implements d {
        public static final int APPVERSION_FIELD_NUMBER = 3;
        public static final int JUMPURL_FIELD_NUMBER = 6;
        public static final int PAYTYPE_FIELD_NUMBER = 5;
        public static final int SIGN_FIELD_NUMBER = 4;
        public static final int SKUID_FIELD_NUMBER = 7;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private volatile Object jumpUrl_;
        private byte memoizedIsInitialized;
        private int payType_;
        private volatile Object sign_;
        private volatile Object skuId_;
        private volatile Object token_;
        private int uid_;
        private static final MessageCloudGamingPropRequestParameters DEFAULT_INSTANCE = new MessageCloudGamingPropRequestParameters();
        private static final Parser<MessageCloudGamingPropRequestParameters> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingPropRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPropRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPropRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements d {
            private Object appVersion_;
            private Object jumpUrl_;
            private int payType_;
            private Object sign_;
            private Object skuId_;
            private Object token_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingOrderRequest.f87978e;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageCloudGamingPropRequestParameters.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearJumpUrl() {
                this.jumpUrl_ = MessageCloudGamingPropRequestParameters.getDefaultInstance().getJumpUrl();
                onChanged();
                return this;
            }

            public b clearPayType() {
                this.payType_ = 0;
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingPropRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearSkuId() {
                this.skuId_ = MessageCloudGamingPropRequestParameters.getDefaultInstance().getSkuId();
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = MessageCloudGamingPropRequestParameters.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
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
                return MessageCloudGamingOrderRequest.f87978e;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public String getJumpUrl() {
                Object obj = this.jumpUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.jumpUrl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public ByteString getJumpUrlBytes() {
                Object obj = this.jumpUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.jumpUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public int getPayType() {
                return this.payType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public String getSkuId() {
                Object obj = this.skuId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.skuId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public ByteString getSkuIdBytes() {
                Object obj = this.skuId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.skuId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingOrderRequest.f87979f.ensureFieldAccessorsInitialized(MessageCloudGamingPropRequestParameters.class, b.class);
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

            public b setJumpUrl(String value) {
                value.getClass();
                this.jumpUrl_ = value;
                onChanged();
                return this;
            }

            public b setJumpUrlBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.jumpUrl_ = value;
                onChanged();
                return this;
            }

            public b setPayType(int value) {
                this.payType_ = value;
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

            public b setSkuId(String value) {
                value.getClass();
                this.skuId_ = value;
                onChanged();
                return this;
            }

            public b setSkuIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.skuId_ = value;
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
                this.sign_ = "";
                this.jumpUrl_ = "";
                this.skuId_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPropRequestParameters build() {
                MessageCloudGamingPropRequestParameters messageCloudGamingPropRequestParametersBuildPartial = buildPartial();
                if (messageCloudGamingPropRequestParametersBuildPartial.isInitialized()) {
                    return messageCloudGamingPropRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPropRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPropRequestParameters buildPartial() {
                MessageCloudGamingPropRequestParameters messageCloudGamingPropRequestParameters = new MessageCloudGamingPropRequestParameters(this, (a) null);
                messageCloudGamingPropRequestParameters.uid_ = this.uid_;
                messageCloudGamingPropRequestParameters.token_ = this.token_;
                messageCloudGamingPropRequestParameters.appVersion_ = this.appVersion_;
                messageCloudGamingPropRequestParameters.sign_ = this.sign_;
                messageCloudGamingPropRequestParameters.payType_ = this.payType_;
                messageCloudGamingPropRequestParameters.jumpUrl_ = this.jumpUrl_;
                messageCloudGamingPropRequestParameters.skuId_ = this.skuId_;
                onBuilt();
                return messageCloudGamingPropRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPropRequestParameters getDefaultInstanceForType() {
                return MessageCloudGamingPropRequestParameters.getDefaultInstance();
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
                this.sign_ = "";
                this.payType_ = 0;
                this.jumpUrl_ = "";
                this.skuId_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPropRequestParameters) {
                    return mergeFrom((MessageCloudGamingPropRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                this.jumpUrl_ = "";
                this.skuId_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageCloudGamingPropRequestParameters other) {
                if (other == MessageCloudGamingPropRequestParameters.getDefaultInstance()) {
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
                if (!other.getSign().isEmpty()) {
                    this.sign_ = other.sign_;
                    onChanged();
                }
                if (other.getPayType() != 0) {
                    setPayType(other.getPayType());
                }
                if (!other.getJumpUrl().isEmpty()) {
                    this.jumpUrl_ = other.jumpUrl_;
                    onChanged();
                }
                if (!other.getSkuId().isEmpty()) {
                    this.skuId_ = other.skuId_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPropRequestParameters messageCloudGamingPropRequestParameters = null;
                try {
                    try {
                        MessageCloudGamingPropRequestParameters messageCloudGamingPropRequestParameters2 = (MessageCloudGamingPropRequestParameters) MessageCloudGamingPropRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPropRequestParameters2 != null) {
                            mergeFrom(messageCloudGamingPropRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPropRequestParameters messageCloudGamingPropRequestParameters3 = (MessageCloudGamingPropRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPropRequestParameters = messageCloudGamingPropRequestParameters3;
                            if (messageCloudGamingPropRequestParameters != null) {
                                mergeFrom(messageCloudGamingPropRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPropRequestParameters != null) {
                        mergeFrom(messageCloudGamingPropRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingPropRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingPropRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingOrderRequest.f87978e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPropRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPropRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPropRequestParameters)) {
                return super.equals(obj);
            }
            MessageCloudGamingPropRequestParameters messageCloudGamingPropRequestParameters = (MessageCloudGamingPropRequestParameters) obj;
            return getUid() == messageCloudGamingPropRequestParameters.getUid() && getToken().equals(messageCloudGamingPropRequestParameters.getToken()) && getAppVersion().equals(messageCloudGamingPropRequestParameters.getAppVersion()) && getSign().equals(messageCloudGamingPropRequestParameters.getSign()) && getPayType() == messageCloudGamingPropRequestParameters.getPayType() && getJumpUrl().equals(messageCloudGamingPropRequestParameters.getJumpUrl()) && getSkuId().equals(messageCloudGamingPropRequestParameters.getSkuId()) && this.unknownFields.equals(messageCloudGamingPropRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public String getJumpUrl() {
            Object obj = this.jumpUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.jumpUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public ByteString getJumpUrlBytes() {
            Object obj = this.jumpUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jumpUrl_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPropRequestParameters> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public int getPayType() {
            return this.payType_;
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
            if (!getSignBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.sign_);
            }
            int i12 = this.payType_;
            if (i12 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(5, i12);
            }
            if (!getJumpUrlBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.jumpUrl_);
            }
            if (!getSkuIdBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(7, this.skuId_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public String getSkuId() {
            Object obj = this.skuId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.skuId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public ByteString getSkuIdBytes() {
            Object obj = this.skuId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.skuId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingOrderRequest.d
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
            int iHashCode = ((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getAppVersion().hashCode()) * 37) + 4) * 53) + getSign().hashCode()) * 37) + 5) * 53) + getPayType()) * 37) + 6) * 53) + getJumpUrl().hashCode()) * 37) + 7) * 53) + getSkuId().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingOrderRequest.f87979f.ensureFieldAccessorsInitialized(MessageCloudGamingPropRequestParameters.class, b.class);
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
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.sign_);
            }
            int i11 = this.payType_;
            if (i11 != 0) {
                output.writeInt32(5, i11);
            }
            if (!getJumpUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.jumpUrl_);
            }
            if (!getSkuIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 7, this.skuId_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingPropRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingPropRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPropRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPropRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPropRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPropRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPropRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingPropRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPropRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.appVersion_ = "";
            this.sign_ = "";
            this.jumpUrl_ = "";
            this.skuId_ = "";
        }

        public static MessageCloudGamingPropRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingPropRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPropRequestParameters parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPropRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPropRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingPropRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            } else if (tag == 34) {
                                this.sign_ = input.readStringRequireUtf8();
                            } else if (tag == 40) {
                                this.payType_ = input.readInt32();
                            } else if (tag == 50) {
                                this.jumpUrl_ = input.readStringRequireUtf8();
                            } else if (tag != 58) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.skuId_ = input.readStringRequireUtf8();
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

        public static MessageCloudGamingPropRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingOrderRequest.f87980g = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getJumpUrl();

        ByteString getJumpUrlBytes();

        int getPayType();

        String getSign();

        ByteString getSignBytes();

        int getSkuId();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    public interface c extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getJumpUrl();

        ByteString getJumpUrlBytes();

        int getPayType();

        String getProductName();

        ByteString getProductNameBytes();

        String getSign();

        ByteString getSignBytes();

        String getToken();

        ByteString getTokenBytes();

        int getUid();

        VipFeeType getVipFeeType();

        int getVipFeeTypeValue();
    }

    public interface d extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getJumpUrl();

        ByteString getJumpUrlBytes();

        int getPayType();

        String getSign();

        ByteString getSignBytes();

        String getSkuId();

        ByteString getSkuIdBytes();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n cloud_gaming_order_request.proto\u001a\u001denumeration/enumeration.proto\"Ì\u0001\n(MessageCloudGamingOrderRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012+\n\nvipFeeType\u0018\u0004 \u0001(\u000e2\u0017.enumeration.VipFeeType\u0012\u0013\n\u000bproductName\u0018\u0005 \u0001(\t\u0012\f\n\u0004sign\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007payType\u0018\u0007 \u0001(\u0005\u0012\u000f\n\u0007jumpUrl\u0018\b \u0001(\t\"\u0098\u0001\n'MessageCloudGamingCoinRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\f\n\u0004sign\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007payType\u0018\u0005 \u0001(\u0005\u0012\u000f\n\u0007jumpUrl\u0018\u0006 \u0001(\t\u0012\r\n\u0005skuId\u0018\u0007 \u0001(\u0005\"\u0098\u0001\n'MessageCloudGamingPropRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\f\n\u0004sign\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007payType\u0018\u0005 \u0001(\u0005\u0012\u000f\n\u0007jumpUrl\u0018\u0006 \u0001(\t\u0012\r\n\u0005skuId\u0018\u0007 \u0001(\tBA\n\u001fcom.wufan.user.service.protobufB\u001eMessageCloudGamingOrderRequestb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.wufan.user.service.protobuf.enumeration.a.b()}, new a());
        Descriptors.Descriptor descriptor = h().getMessageTypes().get(0);
        f87974a = descriptor;
        f87975b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Uid", "Token", "AppVersion", "VipFeeType", "ProductName", "Sign", "PayType", "JumpUrl"});
        Descriptors.Descriptor descriptor2 = h().getMessageTypes().get(1);
        f87976c = descriptor2;
        f87977d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Uid", "Token", "AppVersion", "Sign", "PayType", "JumpUrl", "SkuId"});
        Descriptors.Descriptor descriptor3 = h().getMessageTypes().get(2);
        f87978e = descriptor3;
        f87979f = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Uid", "Token", "AppVersion", "Sign", "PayType", "JumpUrl", "SkuId"});
        com.wufan.user.service.protobuf.enumeration.a.b();
    }

    private MessageCloudGamingOrderRequest() {
    }

    public static Descriptors.FileDescriptor h() {
        return f87980g;
    }

    public static void i(ExtensionRegistry registry) {
        j(registry);
    }

    public static void j(ExtensionRegistryLite registry) {
    }
}
