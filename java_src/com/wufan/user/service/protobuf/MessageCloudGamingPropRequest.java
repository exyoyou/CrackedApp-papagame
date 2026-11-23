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
import com.google.protobuf.LazyStringArrayList;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolStringList;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageCloudGamingPropRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f88014c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88016e;

    public static final class MessageCloudGamingPropCardRequestParameters extends GeneratedMessageV3 implements b {
        public static final int APPVERSION_FIELD_NUMBER = 3;
        public static final int CARDID_FIELD_NUMBER = 7;
        private static final MessageCloudGamingPropCardRequestParameters DEFAULT_INSTANCE = new MessageCloudGamingPropCardRequestParameters();
        private static final Parser<MessageCloudGamingPropCardRequestParameters> PARSER = new a();
        public static final int SIGN_FIELD_NUMBER = 6;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private int bitField0_;
        private LazyStringList cardId_;
        private byte memoizedIsInitialized;
        private volatile Object sign_;
        private volatile Object token_;
        private int uid_;

        class a extends AbstractParser<MessageCloudGamingPropCardRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPropCardRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPropCardRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object appVersion_;
            private int bitField0_;
            private LazyStringList cardId_;
            private Object sign_;
            private Object token_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private void ensureCardIdIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.cardId_ = new LazyStringArrayList(this.cardId_);
                    this.bitField0_ |= 16;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPropRequest.f88014c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b addAllCardId(Iterable<String> values) {
                ensureCardIdIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.cardId_);
                onChanged();
                return this;
            }

            public b addCardId(String value) {
                value.getClass();
                ensureCardIdIsMutable();
                this.cardId_.add(value);
                onChanged();
                return this;
            }

            public b addCardIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                ensureCardIdIsMutable();
                this.cardId_.add(value);
                onChanged();
                return this;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageCloudGamingPropCardRequestParameters.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearCardId() {
                this.cardId_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingPropCardRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = MessageCloudGamingPropCardRequestParameters.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public ByteString getAppVersionBytes() {
                Object obj = this.appVersion_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVersion_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public String getCardId(int index) {
                return this.cardId_.get(index);
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public ByteString getCardIdBytes(int index) {
                return this.cardId_.getByteString(index);
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public int getCardIdCount() {
                return this.cardId_.size();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPropRequest.f88014c;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPropRequest.f88015d.ensureFieldAccessorsInitialized(MessageCloudGamingPropCardRequestParameters.class, b.class);
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

            public b setCardId(int index, String value) {
                value.getClass();
                ensureCardIdIsMutable();
                this.cardId_.set(index, value);
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

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
            public ProtocolStringList getCardIdList() {
                return this.cardId_.getUnmodifiableView();
            }

            private b() {
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                this.cardId_ = LazyStringArrayList.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPropCardRequestParameters build() {
                MessageCloudGamingPropCardRequestParameters messageCloudGamingPropCardRequestParametersBuildPartial = buildPartial();
                if (messageCloudGamingPropCardRequestParametersBuildPartial.isInitialized()) {
                    return messageCloudGamingPropCardRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPropCardRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPropCardRequestParameters buildPartial() {
                MessageCloudGamingPropCardRequestParameters messageCloudGamingPropCardRequestParameters = new MessageCloudGamingPropCardRequestParameters(this, (a) null);
                messageCloudGamingPropCardRequestParameters.uid_ = this.uid_;
                messageCloudGamingPropCardRequestParameters.token_ = this.token_;
                messageCloudGamingPropCardRequestParameters.appVersion_ = this.appVersion_;
                messageCloudGamingPropCardRequestParameters.sign_ = this.sign_;
                if ((this.bitField0_ & 16) != 0) {
                    this.cardId_ = this.cardId_.getUnmodifiableView();
                    this.bitField0_ &= -17;
                }
                messageCloudGamingPropCardRequestParameters.cardId_ = this.cardId_;
                messageCloudGamingPropCardRequestParameters.bitField0_ = 0;
                onBuilt();
                return messageCloudGamingPropCardRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPropCardRequestParameters getDefaultInstanceForType() {
                return MessageCloudGamingPropCardRequestParameters.getDefaultInstance();
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
                this.cardId_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -17;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPropCardRequestParameters) {
                    return mergeFrom((MessageCloudGamingPropCardRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                this.cardId_ = LazyStringArrayList.EMPTY;
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageCloudGamingPropCardRequestParameters other) {
                if (other == MessageCloudGamingPropCardRequestParameters.getDefaultInstance()) {
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
                if (!other.cardId_.isEmpty()) {
                    if (this.cardId_.isEmpty()) {
                        this.cardId_ = other.cardId_;
                        this.bitField0_ &= -17;
                    } else {
                        ensureCardIdIsMutable();
                        this.cardId_.addAll(other.cardId_);
                    }
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPropCardRequestParameters messageCloudGamingPropCardRequestParameters = null;
                try {
                    try {
                        MessageCloudGamingPropCardRequestParameters messageCloudGamingPropCardRequestParameters2 = (MessageCloudGamingPropCardRequestParameters) MessageCloudGamingPropCardRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPropCardRequestParameters2 != null) {
                            mergeFrom(messageCloudGamingPropCardRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPropCardRequestParameters messageCloudGamingPropCardRequestParameters3 = (MessageCloudGamingPropCardRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPropCardRequestParameters = messageCloudGamingPropCardRequestParameters3;
                            if (messageCloudGamingPropCardRequestParameters != null) {
                                mergeFrom(messageCloudGamingPropCardRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPropCardRequestParameters != null) {
                        mergeFrom(messageCloudGamingPropCardRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingPropCardRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingPropCardRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPropRequest.f88014c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPropCardRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropCardRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropCardRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPropCardRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPropCardRequestParameters)) {
                return super.equals(obj);
            }
            MessageCloudGamingPropCardRequestParameters messageCloudGamingPropCardRequestParameters = (MessageCloudGamingPropCardRequestParameters) obj;
            return getUid() == messageCloudGamingPropCardRequestParameters.getUid() && getToken().equals(messageCloudGamingPropCardRequestParameters.getToken()) && getAppVersion().equals(messageCloudGamingPropCardRequestParameters.getAppVersion()) && getSign().equals(messageCloudGamingPropCardRequestParameters.getSign()) && getCardIdList().equals(messageCloudGamingPropCardRequestParameters.getCardIdList()) && this.unknownFields.equals(messageCloudGamingPropCardRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
        public String getCardId(int index) {
            return this.cardId_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
        public ByteString getCardIdBytes(int index) {
            return this.cardId_.getByteString(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
        public int getCardIdCount() {
            return this.cardId_.size();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPropCardRequestParameters> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.uid_;
            int iComputeInt32Size = i11 != 0 ? CodedOutputStream.computeInt32Size(1, i11) + 0 : 0;
            if (!getTokenBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.token_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.appVersion_);
            }
            if (!getSignBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.sign_);
            }
            int iComputeStringSizeNoTag = 0;
            for (int i12 = 0; i12 < this.cardId_.size(); i12++) {
                iComputeStringSizeNoTag += GeneratedMessageV3.computeStringSizeNoTag(this.cardId_.getRaw(i12));
            }
            int size = iComputeInt32Size + iComputeStringSizeNoTag + (getCardIdList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
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
            int iHashCode = ((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getAppVersion().hashCode()) * 37) + 6) * 53) + getSign().hashCode();
            if (getCardIdCount() > 0) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getCardIdList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPropRequest.f88015d.ensureFieldAccessorsInitialized(MessageCloudGamingPropCardRequestParameters.class, b.class);
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
                GeneratedMessageV3.writeString(output, 6, this.sign_);
            }
            for (int i11 = 0; i11 < this.cardId_.size(); i11++) {
                GeneratedMessageV3.writeString(output, 7, this.cardId_.getRaw(i11));
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingPropCardRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingPropCardRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPropCardRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.b
        public ProtocolStringList getCardIdList() {
            return this.cardId_;
        }

        private MessageCloudGamingPropCardRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPropCardRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropCardRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPropCardRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPropCardRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingPropCardRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPropCardRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.appVersion_ = "";
            this.sign_ = "";
            this.cardId_ = LazyStringArrayList.EMPTY;
        }

        public static MessageCloudGamingPropCardRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingPropCardRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPropCardRequestParameters parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropCardRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropCardRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropCardRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private MessageCloudGamingPropCardRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            int i10 = 0;
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
                            } else if (tag == 50) {
                                this.sign_ = input.readStringRequireUtf8();
                            } else if (tag != 58) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                String stringRequireUtf8 = input.readStringRequireUtf8();
                                if ((i10 & 16) == 0) {
                                    this.cardId_ = new LazyStringArrayList();
                                    i10 |= 16;
                                }
                                this.cardId_.add(stringRequireUtf8);
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if ((i10 & 16) != 0) {
                        this.cardId_ = this.cardId_.getUnmodifiableView();
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if ((i10 & 16) != 0) {
                this.cardId_ = this.cardId_.getUnmodifiableView();
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MessageCloudGamingPropCardRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPropCardRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropCardRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropCardRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingPropUseRequestParameters extends GeneratedMessageV3 implements c {
        public static final int APPVERSION_FIELD_NUMBER = 3;
        public static final int CARDID_FIELD_NUMBER = 7;
        public static final int CARDNO_FIELD_NUMBER = 8;
        private static final MessageCloudGamingPropUseRequestParameters DEFAULT_INSTANCE = new MessageCloudGamingPropUseRequestParameters();
        private static final Parser<MessageCloudGamingPropUseRequestParameters> PARSER = new a();
        public static final int SIGN_FIELD_NUMBER = 6;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private volatile Object cardId_;
        private int cardNo_;
        private byte memoizedIsInitialized;
        private volatile Object sign_;
        private volatile Object token_;
        private int uid_;

        class a extends AbstractParser<MessageCloudGamingPropUseRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPropUseRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPropUseRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private Object appVersion_;
            private Object cardId_;
            private int cardNo_;
            private Object sign_;
            private Object token_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPropRequest.f88012a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageCloudGamingPropUseRequestParameters.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearCardId() {
                this.cardId_ = MessageCloudGamingPropUseRequestParameters.getDefaultInstance().getCardId();
                onChanged();
                return this;
            }

            public b clearCardNo() {
                this.cardNo_ = 0;
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingPropUseRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = MessageCloudGamingPropUseRequestParameters.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
            public ByteString getAppVersionBytes() {
                Object obj = this.appVersion_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVersion_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
            public String getCardId() {
                Object obj = this.cardId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cardId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
            public ByteString getCardIdBytes() {
                Object obj = this.cardId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cardId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
            public int getCardNo() {
                return this.cardNo_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingPropRequest.f88012a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPropRequest.f88013b.ensureFieldAccessorsInitialized(MessageCloudGamingPropUseRequestParameters.class, b.class);
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

            public b setCardId(String value) {
                value.getClass();
                this.cardId_ = value;
                onChanged();
                return this;
            }

            public b setCardIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.cardId_ = value;
                onChanged();
                return this;
            }

            public b setCardNo(int value) {
                this.cardNo_ = value;
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
                this.sign_ = "";
                this.cardId_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPropUseRequestParameters build() {
                MessageCloudGamingPropUseRequestParameters messageCloudGamingPropUseRequestParametersBuildPartial = buildPartial();
                if (messageCloudGamingPropUseRequestParametersBuildPartial.isInitialized()) {
                    return messageCloudGamingPropUseRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPropUseRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPropUseRequestParameters buildPartial() {
                MessageCloudGamingPropUseRequestParameters messageCloudGamingPropUseRequestParameters = new MessageCloudGamingPropUseRequestParameters(this, (a) null);
                messageCloudGamingPropUseRequestParameters.uid_ = this.uid_;
                messageCloudGamingPropUseRequestParameters.token_ = this.token_;
                messageCloudGamingPropUseRequestParameters.appVersion_ = this.appVersion_;
                messageCloudGamingPropUseRequestParameters.sign_ = this.sign_;
                messageCloudGamingPropUseRequestParameters.cardId_ = this.cardId_;
                messageCloudGamingPropUseRequestParameters.cardNo_ = this.cardNo_;
                onBuilt();
                return messageCloudGamingPropUseRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPropUseRequestParameters getDefaultInstanceForType() {
                return MessageCloudGamingPropUseRequestParameters.getDefaultInstance();
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
                this.cardId_ = "";
                this.cardNo_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPropUseRequestParameters) {
                    return mergeFrom((MessageCloudGamingPropUseRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                this.cardId_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageCloudGamingPropUseRequestParameters other) {
                if (other == MessageCloudGamingPropUseRequestParameters.getDefaultInstance()) {
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
                if (!other.getCardId().isEmpty()) {
                    this.cardId_ = other.cardId_;
                    onChanged();
                }
                if (other.getCardNo() != 0) {
                    setCardNo(other.getCardNo());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPropUseRequestParameters messageCloudGamingPropUseRequestParameters = null;
                try {
                    try {
                        MessageCloudGamingPropUseRequestParameters messageCloudGamingPropUseRequestParameters2 = (MessageCloudGamingPropUseRequestParameters) MessageCloudGamingPropUseRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPropUseRequestParameters2 != null) {
                            mergeFrom(messageCloudGamingPropUseRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPropUseRequestParameters messageCloudGamingPropUseRequestParameters3 = (MessageCloudGamingPropUseRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPropUseRequestParameters = messageCloudGamingPropUseRequestParameters3;
                            if (messageCloudGamingPropUseRequestParameters != null) {
                                mergeFrom(messageCloudGamingPropUseRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPropUseRequestParameters != null) {
                        mergeFrom(messageCloudGamingPropUseRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingPropUseRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingPropUseRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPropRequest.f88012a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPropUseRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropUseRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropUseRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPropUseRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPropUseRequestParameters)) {
                return super.equals(obj);
            }
            MessageCloudGamingPropUseRequestParameters messageCloudGamingPropUseRequestParameters = (MessageCloudGamingPropUseRequestParameters) obj;
            return getUid() == messageCloudGamingPropUseRequestParameters.getUid() && getToken().equals(messageCloudGamingPropUseRequestParameters.getToken()) && getAppVersion().equals(messageCloudGamingPropUseRequestParameters.getAppVersion()) && getSign().equals(messageCloudGamingPropUseRequestParameters.getSign()) && getCardId().equals(messageCloudGamingPropUseRequestParameters.getCardId()) && getCardNo() == messageCloudGamingPropUseRequestParameters.getCardNo() && this.unknownFields.equals(messageCloudGamingPropUseRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
        public String getCardId() {
            Object obj = this.cardId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cardId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
        public ByteString getCardIdBytes() {
            Object obj = this.cardId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cardId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
        public int getCardNo() {
            return this.cardNo_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPropUseRequestParameters> getParserForType() {
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
            if (!getSignBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.sign_);
            }
            if (!getCardIdBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(7, this.cardId_);
            }
            int i12 = this.cardNo_;
            if (i12 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(8, i12);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPropRequest.c
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
            int iHashCode = ((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getAppVersion().hashCode()) * 37) + 6) * 53) + getSign().hashCode()) * 37) + 7) * 53) + getCardId().hashCode()) * 37) + 8) * 53) + getCardNo()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPropRequest.f88013b.ensureFieldAccessorsInitialized(MessageCloudGamingPropUseRequestParameters.class, b.class);
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
                GeneratedMessageV3.writeString(output, 6, this.sign_);
            }
            if (!getCardIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 7, this.cardId_);
            }
            int i11 = this.cardNo_;
            if (i11 != 0) {
                output.writeInt32(8, i11);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingPropUseRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingPropUseRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPropUseRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPropUseRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPropUseRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropUseRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPropUseRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPropUseRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingPropUseRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPropUseRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.appVersion_ = "";
            this.sign_ = "";
            this.cardId_ = "";
        }

        public static MessageCloudGamingPropUseRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingPropUseRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPropUseRequestParameters parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPropUseRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropUseRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropUseRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private MessageCloudGamingPropUseRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            } else if (tag == 50) {
                                this.sign_ = input.readStringRequireUtf8();
                            } else if (tag == 58) {
                                this.cardId_ = input.readStringRequireUtf8();
                            } else if (tag != 64) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.cardNo_ = input.readInt32();
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

        public static MessageCloudGamingPropUseRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPropUseRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPropUseRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPropUseRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingPropRequest.f88016e = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getCardId(int index);

        ByteString getCardIdBytes(int index);

        int getCardIdCount();

        List<String> getCardIdList();

        String getSign();

        ByteString getSignBytes();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    public interface c extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getCardId();

        ByteString getCardIdBytes();

        int getCardNo();

        String getSign();

        ByteString getSignBytes();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001fcloud_gaming_prop_request.proto\"\u008a\u0001\n*MessageCloudGamingPropUseRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\f\n\u0004sign\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006cardId\u0018\u0007 \u0001(\t\u0012\u000e\n\u0006cardNo\u0018\b \u0001(\u0005\"{\n+MessageCloudGamingPropCardRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\f\n\u0004sign\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006cardId\u0018\u0007 \u0003(\tB@\n\u001fcom.wufan.user.service.protobufB\u001dMessageCloudGamingPropRequestb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = f().getMessageTypes().get(0);
        f88012a = descriptor;
        f88013b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Uid", "Token", "AppVersion", "Sign", "CardId", "CardNo"});
        Descriptors.Descriptor descriptor2 = f().getMessageTypes().get(1);
        f88014c = descriptor2;
        f88015d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Uid", "Token", "AppVersion", "Sign", "CardId"});
    }

    private MessageCloudGamingPropRequest() {
    }

    public static Descriptors.FileDescriptor f() {
        return f88016e;
    }

    public static void g(ExtensionRegistry registry) {
        h(registry);
    }

    public static void h(ExtensionRegistryLite registry) {
    }
}
