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
public final class MessageCloudGamingReleaseInstanceRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88030c;

    public static final class MessageCloudGamingReleaseInstanceRequestParameters extends GeneratedMessageV3 implements b {
        public static final int BID_FIELD_NUMBER = 3;
        public static final int CID_FIELD_NUMBER = 2;
        private static final MessageCloudGamingReleaseInstanceRequestParameters DEFAULT_INSTANCE = new MessageCloudGamingReleaseInstanceRequestParameters();
        private static final Parser<MessageCloudGamingReleaseInstanceRequestParameters> PARSER = new a();
        public static final int REASON_FIELD_NUMBER = 4;
        public static final int SIGN_FIELD_NUMBER = 5;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object bid_;
        private long cid_;
        private byte memoizedIsInitialized;
        private volatile Object reason_;
        private volatile Object sign_;
        private int uid_;

        class a extends AbstractParser<MessageCloudGamingReleaseInstanceRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingReleaseInstanceRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingReleaseInstanceRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object bid_;
            private long cid_;
            private Object reason_;
            private Object sign_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingReleaseInstanceRequest.f88028a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearBid() {
                this.bid_ = MessageCloudGamingReleaseInstanceRequestParameters.getDefaultInstance().getBid();
                onChanged();
                return this;
            }

            public b clearCid() {
                this.cid_ = 0L;
                onChanged();
                return this;
            }

            public b clearReason() {
                this.reason_ = MessageCloudGamingReleaseInstanceRequestParameters.getDefaultInstance().getReason();
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingReleaseInstanceRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
            public String getBid() {
                Object obj = this.bid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bid_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
            public ByteString getBidBytes() {
                Object obj = this.bid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
            public long getCid() {
                return this.cid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingReleaseInstanceRequest.f88028a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
            public String getReason() {
                Object obj = this.reason_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.reason_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
            public ByteString getReasonBytes() {
                Object obj = this.reason_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.reason_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingReleaseInstanceRequest.f88029b.ensureFieldAccessorsInitialized(MessageCloudGamingReleaseInstanceRequestParameters.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
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

            public b setCid(long value) {
                this.cid_ = value;
                onChanged();
                return this;
            }

            public b setReason(String value) {
                value.getClass();
                this.reason_ = value;
                onChanged();
                return this;
            }

            public b setReasonBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.reason_ = value;
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

            public b setUid(int value) {
                this.uid_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.bid_ = "";
                this.reason_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingReleaseInstanceRequestParameters build() {
                MessageCloudGamingReleaseInstanceRequestParameters messageCloudGamingReleaseInstanceRequestParametersBuildPartial = buildPartial();
                if (messageCloudGamingReleaseInstanceRequestParametersBuildPartial.isInitialized()) {
                    return messageCloudGamingReleaseInstanceRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingReleaseInstanceRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingReleaseInstanceRequestParameters buildPartial() {
                MessageCloudGamingReleaseInstanceRequestParameters messageCloudGamingReleaseInstanceRequestParameters = new MessageCloudGamingReleaseInstanceRequestParameters(this, (a) null);
                messageCloudGamingReleaseInstanceRequestParameters.uid_ = this.uid_;
                messageCloudGamingReleaseInstanceRequestParameters.cid_ = this.cid_;
                messageCloudGamingReleaseInstanceRequestParameters.bid_ = this.bid_;
                messageCloudGamingReleaseInstanceRequestParameters.reason_ = this.reason_;
                messageCloudGamingReleaseInstanceRequestParameters.sign_ = this.sign_;
                onBuilt();
                return messageCloudGamingReleaseInstanceRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingReleaseInstanceRequestParameters getDefaultInstanceForType() {
                return MessageCloudGamingReleaseInstanceRequestParameters.getDefaultInstance();
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
                this.cid_ = 0L;
                this.bid_ = "";
                this.reason_ = "";
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
                if (other instanceof MessageCloudGamingReleaseInstanceRequestParameters) {
                    return mergeFrom((MessageCloudGamingReleaseInstanceRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.bid_ = "";
                this.reason_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageCloudGamingReleaseInstanceRequestParameters other) {
                if (other == MessageCloudGamingReleaseInstanceRequestParameters.getDefaultInstance()) {
                    return this;
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (other.getCid() != 0) {
                    setCid(other.getCid());
                }
                if (!other.getBid().isEmpty()) {
                    this.bid_ = other.bid_;
                    onChanged();
                }
                if (!other.getReason().isEmpty()) {
                    this.reason_ = other.reason_;
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
                MessageCloudGamingReleaseInstanceRequestParameters messageCloudGamingReleaseInstanceRequestParameters = null;
                try {
                    try {
                        MessageCloudGamingReleaseInstanceRequestParameters messageCloudGamingReleaseInstanceRequestParameters2 = (MessageCloudGamingReleaseInstanceRequestParameters) MessageCloudGamingReleaseInstanceRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingReleaseInstanceRequestParameters2 != null) {
                            mergeFrom(messageCloudGamingReleaseInstanceRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingReleaseInstanceRequestParameters messageCloudGamingReleaseInstanceRequestParameters3 = (MessageCloudGamingReleaseInstanceRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingReleaseInstanceRequestParameters = messageCloudGamingReleaseInstanceRequestParameters3;
                            if (messageCloudGamingReleaseInstanceRequestParameters != null) {
                                mergeFrom(messageCloudGamingReleaseInstanceRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingReleaseInstanceRequestParameters != null) {
                        mergeFrom(messageCloudGamingReleaseInstanceRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingReleaseInstanceRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingReleaseInstanceRequest.f88028a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingReleaseInstanceRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingReleaseInstanceRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingReleaseInstanceRequestParameters)) {
                return super.equals(obj);
            }
            MessageCloudGamingReleaseInstanceRequestParameters messageCloudGamingReleaseInstanceRequestParameters = (MessageCloudGamingReleaseInstanceRequestParameters) obj;
            return getUid() == messageCloudGamingReleaseInstanceRequestParameters.getUid() && getCid() == messageCloudGamingReleaseInstanceRequestParameters.getCid() && getBid().equals(messageCloudGamingReleaseInstanceRequestParameters.getBid()) && getReason().equals(messageCloudGamingReleaseInstanceRequestParameters.getReason()) && getSign().equals(messageCloudGamingReleaseInstanceRequestParameters.getSign()) && this.unknownFields.equals(messageCloudGamingReleaseInstanceRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
        public String getBid() {
            Object obj = this.bid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
        public ByteString getBidBytes() {
            Object obj = this.bid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bid_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
        public long getCid() {
            return this.cid_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingReleaseInstanceRequestParameters> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
        public String getReason() {
            Object obj = this.reason_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.reason_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
        public ByteString getReasonBytes() {
            Object obj = this.reason_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.reason_ = byteStringCopyFromUtf8;
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
            long j10 = this.cid_;
            if (j10 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt64Size(2, j10);
            }
            if (!getBidBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.bid_);
            }
            if (!getReasonBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.reason_);
            }
            if (!getSignBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(5, this.sign_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingReleaseInstanceRequest.b
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
            int iHashCode = ((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + Internal.hashLong(getCid())) * 37) + 3) * 53) + getBid().hashCode()) * 37) + 4) * 53) + getReason().hashCode()) * 37) + 5) * 53) + getSign().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingReleaseInstanceRequest.f88029b.ensureFieldAccessorsInitialized(MessageCloudGamingReleaseInstanceRequestParameters.class, b.class);
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
            long j10 = this.cid_;
            if (j10 != 0) {
                output.writeInt64(2, j10);
            }
            if (!getBidBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.bid_);
            }
            if (!getReasonBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.reason_);
            }
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.sign_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingReleaseInstanceRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingReleaseInstanceRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingReleaseInstanceRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingReleaseInstanceRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingReleaseInstanceRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingReleaseInstanceRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.bid_ = "";
            this.reason_ = "";
            this.sign_ = "";
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingReleaseInstanceRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingReleaseInstanceRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private MessageCloudGamingReleaseInstanceRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                    this.cid_ = input.readInt64();
                                } else if (tag == 26) {
                                    this.bid_ = input.readStringRequireUtf8();
                                } else if (tag == 34) {
                                    this.reason_ = input.readStringRequireUtf8();
                                } else if (tag != 42) {
                                    if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    }
                                } else {
                                    this.sign_ = input.readStringRequireUtf8();
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

        public static MessageCloudGamingReleaseInstanceRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingReleaseInstanceRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingReleaseInstanceRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingReleaseInstanceRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingReleaseInstanceRequest.f88030c = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getBid();

        ByteString getBidBytes();

        long getCid();

        String getReason();

        ByteString getReasonBytes();

        String getSign();

        ByteString getSignBytes();

        int getUid();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n+cloud_gaming_release_instance_request.proto\"y\n2MessageCloudGamingReleaseInstanceRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003cid\u0018\u0002 \u0001(\u0003\u0012\u000b\n\u0003bid\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006reason\u0018\u0004 \u0001(\t\u0012\f\n\u0004sign\u0018\u0005 \u0001(\tBK\n\u001fcom.wufan.user.service.protobufB(MessageCloudGamingReleaseInstanceRequestb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = d().getMessageTypes().get(0);
        f88028a = descriptor;
        f88029b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Uid", "Cid", "Bid", "Reason", "Sign"});
    }

    private MessageCloudGamingReleaseInstanceRequest() {
    }

    public static Descriptors.FileDescriptor d() {
        return f88030c;
    }

    public static void e(ExtensionRegistry registry) {
        f(registry);
    }

    public static void f(ExtensionRegistryLite registry) {
    }
}
