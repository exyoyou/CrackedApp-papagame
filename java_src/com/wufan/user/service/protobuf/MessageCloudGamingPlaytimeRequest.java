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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageCloudGamingPlaytimeRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f87986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f87988c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87989d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Descriptors.Descriptor f87990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87991f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Descriptors.FileDescriptor f87992g = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n)proto/cloud_gaming_playtime_request.proto\"{\n'MessageCloudGamingPlaytimeSignInRequest\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\f\n\u0004sign\u0018\u0004 \u0001(\t\u0012\u0012\n\nsignInType\u0018\u0005 \u0001(\u0005\"d\n$MessageCloudGamingPlaytimeVipRequest\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\f\n\u0004sign\u0018\u0004 \u0001(\t\"h\n(MessageCloudGamingPlaytimeSummaryRequest\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\f\n\u0004sign\u0018\u0004 \u0001(\tBD\n\u001fcom.wufan.user.service.protobufB!MessageCloudGamingPlaytimeRequestb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    public static final class MessageCloudGamingPlaytimeSignInRequest extends GeneratedMessageV3 implements b {
        public static final int APPVERSION_FIELD_NUMBER = 3;
        private static final MessageCloudGamingPlaytimeSignInRequest DEFAULT_INSTANCE = new MessageCloudGamingPlaytimeSignInRequest();
        private static final Parser<MessageCloudGamingPlaytimeSignInRequest> PARSER = new a();
        public static final int SIGNINTYPE_FIELD_NUMBER = 5;
        public static final int SIGN_FIELD_NUMBER = 4;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private byte memoizedIsInitialized;
        private int signInType_;
        private volatile Object sign_;
        private volatile Object token_;
        private int uid_;

        class a extends AbstractParser<MessageCloudGamingPlaytimeSignInRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPlaytimeSignInRequest parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPlaytimeSignInRequest(input, extensionRegistry);
            }
        }

        public static MessageCloudGamingPlaytimeSignInRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeRequest.f87986a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSignInRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPlaytimeSignInRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPlaytimeSignInRequest)) {
                return super.equals(obj);
            }
            MessageCloudGamingPlaytimeSignInRequest messageCloudGamingPlaytimeSignInRequest = (MessageCloudGamingPlaytimeSignInRequest) obj;
            return getUid() == messageCloudGamingPlaytimeSignInRequest.getUid() && getToken().equals(messageCloudGamingPlaytimeSignInRequest.getToken()) && getAppVersion().equals(messageCloudGamingPlaytimeSignInRequest.getAppVersion()) && getSign().equals(messageCloudGamingPlaytimeSignInRequest.getSign()) && getSignInType() == messageCloudGamingPlaytimeSignInRequest.getSignInType() && this.unknownFields.equals(messageCloudGamingPlaytimeSignInRequest.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPlaytimeSignInRequest> getParserForType() {
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
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.sign_);
            }
            int i12 = this.signInType_;
            if (i12 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(5, i12);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
        public int getSignInType() {
            return this.signInType_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
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
            int iHashCode = ((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getAppVersion().hashCode()) * 37) + 4) * 53) + getSign().hashCode()) * 37) + 5) * 53) + getSignInType()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeRequest.f87987b.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeSignInRequest.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new MessageCloudGamingPlaytimeSignInRequest();
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
            int i11 = this.signInType_;
            if (i11 != 0) {
                output.writeInt32(5, i11);
            }
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object appVersion_;
            private int signInType_;
            private Object sign_;
            private Object token_;
            private int uid_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeRequest.f87986a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageCloudGamingPlaytimeSignInRequest.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingPlaytimeSignInRequest.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearSignInType() {
                this.signInType_ = 0;
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = MessageCloudGamingPlaytimeSignInRequest.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
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
                return MessageCloudGamingPlaytimeRequest.f87986a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
            public int getSignInType() {
                return this.signInType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeRequest.f87987b.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeSignInRequest.class, b.class);
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

            public b setSignInType(int value) {
                this.signInType_ = value;
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

            private b() {
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeSignInRequest build() {
                MessageCloudGamingPlaytimeSignInRequest messageCloudGamingPlaytimeSignInRequestBuildPartial = buildPartial();
                if (messageCloudGamingPlaytimeSignInRequestBuildPartial.isInitialized()) {
                    return messageCloudGamingPlaytimeSignInRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPlaytimeSignInRequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeSignInRequest buildPartial() {
                MessageCloudGamingPlaytimeSignInRequest messageCloudGamingPlaytimeSignInRequest = new MessageCloudGamingPlaytimeSignInRequest(this);
                messageCloudGamingPlaytimeSignInRequest.uid_ = this.uid_;
                messageCloudGamingPlaytimeSignInRequest.token_ = this.token_;
                messageCloudGamingPlaytimeSignInRequest.appVersion_ = this.appVersion_;
                messageCloudGamingPlaytimeSignInRequest.sign_ = this.sign_;
                messageCloudGamingPlaytimeSignInRequest.signInType_ = this.signInType_;
                onBuilt();
                return messageCloudGamingPlaytimeSignInRequest;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPlaytimeSignInRequest getDefaultInstanceForType() {
                return MessageCloudGamingPlaytimeSignInRequest.getDefaultInstance();
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
                this.signInType_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPlaytimeSignInRequest) {
                    return mergeFrom((MessageCloudGamingPlaytimeSignInRequest) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageCloudGamingPlaytimeSignInRequest other) {
                if (other == MessageCloudGamingPlaytimeSignInRequest.getDefaultInstance()) {
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
                if (other.getSignInType() != 0) {
                    setSignInType(other.getSignInType());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPlaytimeSignInRequest messageCloudGamingPlaytimeSignInRequest = null;
                try {
                    try {
                        MessageCloudGamingPlaytimeSignInRequest messageCloudGamingPlaytimeSignInRequest2 = (MessageCloudGamingPlaytimeSignInRequest) MessageCloudGamingPlaytimeSignInRequest.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPlaytimeSignInRequest2 != null) {
                            mergeFrom(messageCloudGamingPlaytimeSignInRequest2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPlaytimeSignInRequest messageCloudGamingPlaytimeSignInRequest3 = (MessageCloudGamingPlaytimeSignInRequest) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPlaytimeSignInRequest = messageCloudGamingPlaytimeSignInRequest3;
                            if (messageCloudGamingPlaytimeSignInRequest != null) {
                                mergeFrom(messageCloudGamingPlaytimeSignInRequest);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPlaytimeSignInRequest != null) {
                        mergeFrom(messageCloudGamingPlaytimeSignInRequest);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(MessageCloudGamingPlaytimeSignInRequest prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeSignInRequest(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSignInRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPlaytimeSignInRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPlaytimeSignInRequest() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.appVersion_ = "";
            this.sign_ = "";
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSignInRequest) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSignInRequest) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeSignInRequest(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                } else if (tag == 18) {
                                    this.token_ = input.readStringRequireUtf8();
                                } else if (tag == 26) {
                                    this.appVersion_ = input.readStringRequireUtf8();
                                } else if (tag == 34) {
                                    this.sign_ = input.readStringRequireUtf8();
                                } else if (tag != 40) {
                                    if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    }
                                } else {
                                    this.signInType_ = input.readInt32();
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

        public static MessageCloudGamingPlaytimeSignInRequest parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSignInRequest) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeSignInRequest parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSignInRequest) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingPlaytimeSummaryRequest extends GeneratedMessageV3 implements c {
        public static final int APPVERSION_FIELD_NUMBER = 3;
        private static final MessageCloudGamingPlaytimeSummaryRequest DEFAULT_INSTANCE = new MessageCloudGamingPlaytimeSummaryRequest();
        private static final Parser<MessageCloudGamingPlaytimeSummaryRequest> PARSER = new a();
        public static final int SIGN_FIELD_NUMBER = 4;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private byte memoizedIsInitialized;
        private volatile Object sign_;
        private volatile Object token_;
        private int uid_;

        class a extends AbstractParser<MessageCloudGamingPlaytimeSummaryRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPlaytimeSummaryRequest parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPlaytimeSummaryRequest(input, extensionRegistry);
            }
        }

        public static MessageCloudGamingPlaytimeSummaryRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeRequest.f87990e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPlaytimeSummaryRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPlaytimeSummaryRequest)) {
                return super.equals(obj);
            }
            MessageCloudGamingPlaytimeSummaryRequest messageCloudGamingPlaytimeSummaryRequest = (MessageCloudGamingPlaytimeSummaryRequest) obj;
            return getUid() == messageCloudGamingPlaytimeSummaryRequest.getUid() && getToken().equals(messageCloudGamingPlaytimeSummaryRequest.getToken()) && getAppVersion().equals(messageCloudGamingPlaytimeSummaryRequest.getAppVersion()) && getSign().equals(messageCloudGamingPlaytimeSummaryRequest.getSign()) && this.unknownFields.equals(messageCloudGamingPlaytimeSummaryRequest.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPlaytimeSummaryRequest> getParserForType() {
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
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.sign_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
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
            int iHashCode = ((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getAppVersion().hashCode()) * 37) + 4) * 53) + getSign().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeRequest.f87991f.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeSummaryRequest.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new MessageCloudGamingPlaytimeSummaryRequest();
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
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private Object appVersion_;
            private Object sign_;
            private Object token_;
            private int uid_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeRequest.f87990e;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageCloudGamingPlaytimeSummaryRequest.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingPlaytimeSummaryRequest.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = MessageCloudGamingPlaytimeSummaryRequest.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
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
                return MessageCloudGamingPlaytimeRequest.f87990e;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.c
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeRequest.f87991f.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeSummaryRequest.class, b.class);
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

            private b() {
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeSummaryRequest build() {
                MessageCloudGamingPlaytimeSummaryRequest messageCloudGamingPlaytimeSummaryRequestBuildPartial = buildPartial();
                if (messageCloudGamingPlaytimeSummaryRequestBuildPartial.isInitialized()) {
                    return messageCloudGamingPlaytimeSummaryRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPlaytimeSummaryRequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeSummaryRequest buildPartial() {
                MessageCloudGamingPlaytimeSummaryRequest messageCloudGamingPlaytimeSummaryRequest = new MessageCloudGamingPlaytimeSummaryRequest(this);
                messageCloudGamingPlaytimeSummaryRequest.uid_ = this.uid_;
                messageCloudGamingPlaytimeSummaryRequest.token_ = this.token_;
                messageCloudGamingPlaytimeSummaryRequest.appVersion_ = this.appVersion_;
                messageCloudGamingPlaytimeSummaryRequest.sign_ = this.sign_;
                onBuilt();
                return messageCloudGamingPlaytimeSummaryRequest;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPlaytimeSummaryRequest getDefaultInstanceForType() {
                return MessageCloudGamingPlaytimeSummaryRequest.getDefaultInstance();
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
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPlaytimeSummaryRequest) {
                    return mergeFrom((MessageCloudGamingPlaytimeSummaryRequest) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageCloudGamingPlaytimeSummaryRequest other) {
                if (other == MessageCloudGamingPlaytimeSummaryRequest.getDefaultInstance()) {
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
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPlaytimeSummaryRequest messageCloudGamingPlaytimeSummaryRequest = null;
                try {
                    try {
                        MessageCloudGamingPlaytimeSummaryRequest messageCloudGamingPlaytimeSummaryRequest2 = (MessageCloudGamingPlaytimeSummaryRequest) MessageCloudGamingPlaytimeSummaryRequest.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPlaytimeSummaryRequest2 != null) {
                            mergeFrom(messageCloudGamingPlaytimeSummaryRequest2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPlaytimeSummaryRequest messageCloudGamingPlaytimeSummaryRequest3 = (MessageCloudGamingPlaytimeSummaryRequest) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPlaytimeSummaryRequest = messageCloudGamingPlaytimeSummaryRequest3;
                            if (messageCloudGamingPlaytimeSummaryRequest != null) {
                                mergeFrom(messageCloudGamingPlaytimeSummaryRequest);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPlaytimeSummaryRequest != null) {
                        mergeFrom(messageCloudGamingPlaytimeSummaryRequest);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(MessageCloudGamingPlaytimeSummaryRequest prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeSummaryRequest(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPlaytimeSummaryRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPlaytimeSummaryRequest() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.appVersion_ = "";
            this.sign_ = "";
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryRequest) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryRequest) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeSummaryRequest(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            } else if (tag != 34) {
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

        public static MessageCloudGamingPlaytimeSummaryRequest parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryRequest) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeSummaryRequest parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeSummaryRequest) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingPlaytimeVipRequest extends GeneratedMessageV3 implements d {
        public static final int APPVERSION_FIELD_NUMBER = 3;
        private static final MessageCloudGamingPlaytimeVipRequest DEFAULT_INSTANCE = new MessageCloudGamingPlaytimeVipRequest();
        private static final Parser<MessageCloudGamingPlaytimeVipRequest> PARSER = new a();
        public static final int SIGN_FIELD_NUMBER = 4;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private byte memoizedIsInitialized;
        private volatile Object sign_;
        private volatile Object token_;
        private int uid_;

        class a extends AbstractParser<MessageCloudGamingPlaytimeVipRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingPlaytimeVipRequest parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingPlaytimeVipRequest(input, extensionRegistry);
            }
        }

        public static MessageCloudGamingPlaytimeVipRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingPlaytimeRequest.f87988c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingPlaytimeVipRequest parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeVipRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeVipRequest parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingPlaytimeVipRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingPlaytimeVipRequest)) {
                return super.equals(obj);
            }
            MessageCloudGamingPlaytimeVipRequest messageCloudGamingPlaytimeVipRequest = (MessageCloudGamingPlaytimeVipRequest) obj;
            return getUid() == messageCloudGamingPlaytimeVipRequest.getUid() && getToken().equals(messageCloudGamingPlaytimeVipRequest.getToken()) && getAppVersion().equals(messageCloudGamingPlaytimeVipRequest.getAppVersion()) && getSign().equals(messageCloudGamingPlaytimeVipRequest.getSign()) && this.unknownFields.equals(messageCloudGamingPlaytimeVipRequest.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingPlaytimeVipRequest> getParserForType() {
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
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.sign_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
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
            int iHashCode = ((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getAppVersion().hashCode()) * 37) + 4) * 53) + getSign().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingPlaytimeRequest.f87989d.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeVipRequest.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
            return new MessageCloudGamingPlaytimeVipRequest();
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
            this.unknownFields.writeTo(output);
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements d {
            private Object appVersion_;
            private Object sign_;
            private Object token_;
            private int uid_;

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingPlaytimeRequest.f87988c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageCloudGamingPlaytimeVipRequest.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = MessageCloudGamingPlaytimeVipRequest.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = MessageCloudGamingPlaytimeVipRequest.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
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
                return MessageCloudGamingPlaytimeRequest.f87988c;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest.d
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingPlaytimeRequest.f87989d.ensureFieldAccessorsInitialized(MessageCloudGamingPlaytimeVipRequest.class, b.class);
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

            private b() {
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeVipRequest build() {
                MessageCloudGamingPlaytimeVipRequest messageCloudGamingPlaytimeVipRequestBuildPartial = buildPartial();
                if (messageCloudGamingPlaytimeVipRequestBuildPartial.isInitialized()) {
                    return messageCloudGamingPlaytimeVipRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingPlaytimeVipRequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingPlaytimeVipRequest buildPartial() {
                MessageCloudGamingPlaytimeVipRequest messageCloudGamingPlaytimeVipRequest = new MessageCloudGamingPlaytimeVipRequest(this);
                messageCloudGamingPlaytimeVipRequest.uid_ = this.uid_;
                messageCloudGamingPlaytimeVipRequest.token_ = this.token_;
                messageCloudGamingPlaytimeVipRequest.appVersion_ = this.appVersion_;
                messageCloudGamingPlaytimeVipRequest.sign_ = this.sign_;
                onBuilt();
                return messageCloudGamingPlaytimeVipRequest;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingPlaytimeVipRequest getDefaultInstanceForType() {
                return MessageCloudGamingPlaytimeVipRequest.getDefaultInstance();
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
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingPlaytimeVipRequest) {
                    return mergeFrom((MessageCloudGamingPlaytimeVipRequest) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.appVersion_ = "";
                this.sign_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageCloudGamingPlaytimeVipRequest other) {
                if (other == MessageCloudGamingPlaytimeVipRequest.getDefaultInstance()) {
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
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingPlaytimeVipRequest messageCloudGamingPlaytimeVipRequest = null;
                try {
                    try {
                        MessageCloudGamingPlaytimeVipRequest messageCloudGamingPlaytimeVipRequest2 = (MessageCloudGamingPlaytimeVipRequest) MessageCloudGamingPlaytimeVipRequest.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingPlaytimeVipRequest2 != null) {
                            mergeFrom(messageCloudGamingPlaytimeVipRequest2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingPlaytimeVipRequest messageCloudGamingPlaytimeVipRequest3 = (MessageCloudGamingPlaytimeVipRequest) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingPlaytimeVipRequest = messageCloudGamingPlaytimeVipRequest3;
                            if (messageCloudGamingPlaytimeVipRequest != null) {
                                mergeFrom(messageCloudGamingPlaytimeVipRequest);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingPlaytimeVipRequest != null) {
                        mergeFrom(messageCloudGamingPlaytimeVipRequest);
                    }
                    throw th;
                }
            }
        }

        public static b newBuilder(MessageCloudGamingPlaytimeVipRequest prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingPlaytimeVipRequest parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeVipRequest(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingPlaytimeVipRequest parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeVipRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeVipRequest parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingPlaytimeVipRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().mergeFrom(this);
        }

        public static MessageCloudGamingPlaytimeVipRequest parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingPlaytimeVipRequest() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.appVersion_ = "";
            this.sign_ = "";
        }

        public static MessageCloudGamingPlaytimeVipRequest parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent);
        }

        public static MessageCloudGamingPlaytimeVipRequest parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingPlaytimeVipRequest parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeVipRequest) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeVipRequest parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeVipRequest) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private MessageCloudGamingPlaytimeVipRequest(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            } else if (tag != 34) {
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

        public static MessageCloudGamingPlaytimeVipRequest parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingPlaytimeVipRequest) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingPlaytimeVipRequest parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingPlaytimeVipRequest) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public interface b extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getSign();

        ByteString getSignBytes();

        int getSignInType();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    public interface c extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getSign();

        ByteString getSignBytes();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    public interface d extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getSign();

        ByteString getSignBytes();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    static {
        Descriptors.Descriptor descriptor = g().getMessageTypes().get(0);
        f87986a = descriptor;
        f87987b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Uid", "Token", "AppVersion", "Sign", "SignInType"});
        Descriptors.Descriptor descriptor2 = g().getMessageTypes().get(1);
        f87988c = descriptor2;
        f87989d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Uid", "Token", "AppVersion", "Sign"});
        Descriptors.Descriptor descriptor3 = g().getMessageTypes().get(2);
        f87990e = descriptor3;
        f87991f = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Uid", "Token", "AppVersion", "Sign"});
    }

    private MessageCloudGamingPlaytimeRequest() {
    }

    public static Descriptors.FileDescriptor g() {
        return f87992g;
    }

    public static void h(ExtensionRegistry registry) {
        i(registry);
    }

    public static void i(ExtensionRegistryLite registry) {
    }
}
