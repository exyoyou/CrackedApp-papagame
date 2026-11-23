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
import com.wufan.user.service.protobuf.enumeration.FeedBackType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageCloudGamingFeedBackRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f87954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Descriptors.FileDescriptor f87956c;

    public static final class MessageCloudGamingFeedBackRequestParameters extends GeneratedMessageV3 implements b {
        public static final int APPVERSION_FIELD_NUMBER = 3;
        public static final int CONTACTWAY_FIELD_NUMBER = 7;
        public static final int FEEDBACKCONTENT_FIELD_NUMBER = 6;
        public static final int FEEDBACKTYPE_FIELD_NUMBER = 5;
        public static final int GAMEID_FIELD_NUMBER = 4;
        public static final int SIGN_FIELD_NUMBER = 8;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private volatile Object contactWay_;
        private volatile Object feedBackContent_;
        private int feedBackType_;
        private long gameId_;
        private byte memoizedIsInitialized;
        private volatile Object sign_;
        private volatile Object token_;
        private int uid_;
        private static final MessageCloudGamingFeedBackRequestParameters DEFAULT_INSTANCE = new MessageCloudGamingFeedBackRequestParameters();
        private static final Parser<MessageCloudGamingFeedBackRequestParameters> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingFeedBackRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingFeedBackRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingFeedBackRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object appVersion_;
            private Object contactWay_;
            private Object feedBackContent_;
            private int feedBackType_;
            private long gameId_;
            private Object sign_;
            private Object token_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingFeedBackRequest.f87954a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageCloudGamingFeedBackRequestParameters.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearContactWay() {
                this.contactWay_ = MessageCloudGamingFeedBackRequestParameters.getDefaultInstance().getContactWay();
                onChanged();
                return this;
            }

            public b clearFeedBackContent() {
                this.feedBackContent_ = MessageCloudGamingFeedBackRequestParameters.getDefaultInstance().getFeedBackContent();
                onChanged();
                return this;
            }

            public b clearFeedBackType() {
                this.feedBackType_ = 0;
                onChanged();
                return this;
            }

            public b clearGameId() {
                this.gameId_ = 0L;
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingFeedBackRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = MessageCloudGamingFeedBackRequestParameters.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public ByteString getAppVersionBytes() {
                Object obj = this.appVersion_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVersion_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public String getContactWay() {
                Object obj = this.contactWay_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.contactWay_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public ByteString getContactWayBytes() {
                Object obj = this.contactWay_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.contactWay_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingFeedBackRequest.f87954a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public String getFeedBackContent() {
                Object obj = this.feedBackContent_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.feedBackContent_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public ByteString getFeedBackContentBytes() {
                Object obj = this.feedBackContent_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.feedBackContent_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public FeedBackType getFeedBackType() {
                FeedBackType feedBackTypeValueOf = FeedBackType.valueOf(this.feedBackType_);
                return feedBackTypeValueOf == null ? FeedBackType.UNRECOGNIZED : feedBackTypeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public int getFeedBackTypeValue() {
                return this.feedBackType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public long getGameId() {
                return this.gameId_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingFeedBackRequest.f87955b.ensureFieldAccessorsInitialized(MessageCloudGamingFeedBackRequestParameters.class, b.class);
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

            public b setContactWay(String value) {
                value.getClass();
                this.contactWay_ = value;
                onChanged();
                return this;
            }

            public b setContactWayBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.contactWay_ = value;
                onChanged();
                return this;
            }

            public b setFeedBackContent(String value) {
                value.getClass();
                this.feedBackContent_ = value;
                onChanged();
                return this;
            }

            public b setFeedBackContentBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.feedBackContent_ = value;
                onChanged();
                return this;
            }

            public b setFeedBackType(FeedBackType value) {
                value.getClass();
                this.feedBackType_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setFeedBackTypeValue(int value) {
                this.feedBackType_ = value;
                onChanged();
                return this;
            }

            public b setGameId(long value) {
                this.gameId_ = value;
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
                this.feedBackType_ = 0;
                this.feedBackContent_ = "";
                this.contactWay_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingFeedBackRequestParameters build() {
                MessageCloudGamingFeedBackRequestParameters messageCloudGamingFeedBackRequestParametersBuildPartial = buildPartial();
                if (messageCloudGamingFeedBackRequestParametersBuildPartial.isInitialized()) {
                    return messageCloudGamingFeedBackRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingFeedBackRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingFeedBackRequestParameters buildPartial() {
                MessageCloudGamingFeedBackRequestParameters messageCloudGamingFeedBackRequestParameters = new MessageCloudGamingFeedBackRequestParameters(this, (a) null);
                messageCloudGamingFeedBackRequestParameters.uid_ = this.uid_;
                messageCloudGamingFeedBackRequestParameters.token_ = this.token_;
                messageCloudGamingFeedBackRequestParameters.appVersion_ = this.appVersion_;
                messageCloudGamingFeedBackRequestParameters.gameId_ = this.gameId_;
                messageCloudGamingFeedBackRequestParameters.feedBackType_ = this.feedBackType_;
                messageCloudGamingFeedBackRequestParameters.feedBackContent_ = this.feedBackContent_;
                messageCloudGamingFeedBackRequestParameters.contactWay_ = this.contactWay_;
                messageCloudGamingFeedBackRequestParameters.sign_ = this.sign_;
                onBuilt();
                return messageCloudGamingFeedBackRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingFeedBackRequestParameters getDefaultInstanceForType() {
                return MessageCloudGamingFeedBackRequestParameters.getDefaultInstance();
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
                this.feedBackType_ = 0;
                this.feedBackContent_ = "";
                this.contactWay_ = "";
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
                if (other instanceof MessageCloudGamingFeedBackRequestParameters) {
                    return mergeFrom((MessageCloudGamingFeedBackRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingFeedBackRequestParameters other) {
                if (other == MessageCloudGamingFeedBackRequestParameters.getDefaultInstance()) {
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
                if (other.feedBackType_ != 0) {
                    setFeedBackTypeValue(other.getFeedBackTypeValue());
                }
                if (!other.getFeedBackContent().isEmpty()) {
                    this.feedBackContent_ = other.feedBackContent_;
                    onChanged();
                }
                if (!other.getContactWay().isEmpty()) {
                    this.contactWay_ = other.contactWay_;
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

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.appVersion_ = "";
                this.feedBackType_ = 0;
                this.feedBackContent_ = "";
                this.contactWay_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingFeedBackRequestParameters messageCloudGamingFeedBackRequestParameters = null;
                try {
                    try {
                        MessageCloudGamingFeedBackRequestParameters messageCloudGamingFeedBackRequestParameters2 = (MessageCloudGamingFeedBackRequestParameters) MessageCloudGamingFeedBackRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingFeedBackRequestParameters2 != null) {
                            mergeFrom(messageCloudGamingFeedBackRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingFeedBackRequestParameters messageCloudGamingFeedBackRequestParameters3 = (MessageCloudGamingFeedBackRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingFeedBackRequestParameters = messageCloudGamingFeedBackRequestParameters3;
                            if (messageCloudGamingFeedBackRequestParameters != null) {
                                mergeFrom(messageCloudGamingFeedBackRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingFeedBackRequestParameters != null) {
                        mergeFrom(messageCloudGamingFeedBackRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingFeedBackRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingFeedBackRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingFeedBackRequest.f87954a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingFeedBackRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingFeedBackRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingFeedBackRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingFeedBackRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingFeedBackRequestParameters)) {
                return super.equals(obj);
            }
            MessageCloudGamingFeedBackRequestParameters messageCloudGamingFeedBackRequestParameters = (MessageCloudGamingFeedBackRequestParameters) obj;
            return getUid() == messageCloudGamingFeedBackRequestParameters.getUid() && getToken().equals(messageCloudGamingFeedBackRequestParameters.getToken()) && getAppVersion().equals(messageCloudGamingFeedBackRequestParameters.getAppVersion()) && getGameId() == messageCloudGamingFeedBackRequestParameters.getGameId() && this.feedBackType_ == messageCloudGamingFeedBackRequestParameters.feedBackType_ && getFeedBackContent().equals(messageCloudGamingFeedBackRequestParameters.getFeedBackContent()) && getContactWay().equals(messageCloudGamingFeedBackRequestParameters.getContactWay()) && getSign().equals(messageCloudGamingFeedBackRequestParameters.getSign()) && this.unknownFields.equals(messageCloudGamingFeedBackRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public String getContactWay() {
            Object obj = this.contactWay_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.contactWay_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public ByteString getContactWayBytes() {
            Object obj = this.contactWay_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contactWay_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public String getFeedBackContent() {
            Object obj = this.feedBackContent_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.feedBackContent_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public ByteString getFeedBackContentBytes() {
            Object obj = this.feedBackContent_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.feedBackContent_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public FeedBackType getFeedBackType() {
            FeedBackType feedBackTypeValueOf = FeedBackType.valueOf(this.feedBackType_);
            return feedBackTypeValueOf == null ? FeedBackType.UNRECOGNIZED : feedBackTypeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public int getFeedBackTypeValue() {
            return this.feedBackType_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingFeedBackRequestParameters> getParserForType() {
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
            if (this.feedBackType_ != FeedBackType.GAME_CRASH.getNumber()) {
                iComputeInt32Size += CodedOutputStream.computeEnumSize(5, this.feedBackType_);
            }
            if (!getFeedBackContentBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.feedBackContent_);
            }
            if (!getContactWayBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(7, this.contactWay_);
            }
            if (!getSignBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(8, this.sign_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingFeedBackRequest.b
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
            int iHashCode = ((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getAppVersion().hashCode()) * 37) + 4) * 53) + Internal.hashLong(getGameId())) * 37) + 5) * 53) + this.feedBackType_) * 37) + 6) * 53) + getFeedBackContent().hashCode()) * 37) + 7) * 53) + getContactWay().hashCode()) * 37) + 8) * 53) + getSign().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingFeedBackRequest.f87955b.ensureFieldAccessorsInitialized(MessageCloudGamingFeedBackRequestParameters.class, b.class);
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
            if (this.feedBackType_ != FeedBackType.GAME_CRASH.getNumber()) {
                output.writeEnum(5, this.feedBackType_);
            }
            if (!getFeedBackContentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.feedBackContent_);
            }
            if (!getContactWayBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 7, this.contactWay_);
            }
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 8, this.sign_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingFeedBackRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingFeedBackRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingFeedBackRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingFeedBackRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingFeedBackRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingFeedBackRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingFeedBackRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingFeedBackRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingFeedBackRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingFeedBackRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.appVersion_ = "";
            this.feedBackType_ = 0;
            this.feedBackContent_ = "";
            this.contactWay_ = "";
            this.sign_ = "";
        }

        public static MessageCloudGamingFeedBackRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingFeedBackRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingFeedBackRequestParameters parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingFeedBackRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingFeedBackRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingFeedBackRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingFeedBackRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingFeedBackRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingFeedBackRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            } else if (tag == 40) {
                                this.feedBackType_ = input.readEnum();
                            } else if (tag == 50) {
                                this.feedBackContent_ = input.readStringRequireUtf8();
                            } else if (tag == 58) {
                                this.contactWay_ = input.readStringRequireUtf8();
                            } else if (tag != 66) {
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

        public static MessageCloudGamingFeedBackRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingFeedBackRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingFeedBackRequest.f87956c = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getContactWay();

        ByteString getContactWayBytes();

        String getFeedBackContent();

        ByteString getFeedBackContentBytes();

        FeedBackType getFeedBackType();

        int getFeedBackTypeValue();

        long getGameId();

        String getSign();

        ByteString getSignBytes();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n$cloud_gaming_feed_back_request.proto\u001a\u001denumeration/enumeration.proto\"Ù\u0001\n+MessageCloudGamingFeedBackRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006gameId\u0018\u0004 \u0001(\u0003\u0012/\n\ffeedBackType\u0018\u0005 \u0001(\u000e2\u0019.enumeration.FeedBackType\u0012\u0017\n\u000ffeedBackContent\u0018\u0006 \u0001(\t\u0012\u0012\n\ncontactWay\u0018\u0007 \u0001(\t\u0012\f\n\u0004sign\u0018\b \u0001(\tBD\n\u001fcom.wufan.user.service.protobufB!MessageCloudGamingFeedBackRequestb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.wufan.user.service.protobuf.enumeration.a.b()}, new a());
        Descriptors.Descriptor descriptor = d().getMessageTypes().get(0);
        f87954a = descriptor;
        f87955b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Uid", "Token", "AppVersion", "GameId", "FeedBackType", "FeedBackContent", "ContactWay", "Sign"});
        com.wufan.user.service.protobuf.enumeration.a.b();
    }

    private MessageCloudGamingFeedBackRequest() {
    }

    public static Descriptors.FileDescriptor d() {
        return f87956c;
    }

    public static void e(ExtensionRegistry registry) {
        f(registry);
    }

    public static void f(ExtensionRegistryLite registry) {
    }
}
