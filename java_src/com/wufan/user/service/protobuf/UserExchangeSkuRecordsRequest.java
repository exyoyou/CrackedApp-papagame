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
public final class UserExchangeSkuRecordsRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88110c;

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = UserExchangeSkuRecordsRequest.f88110c = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        int getPage();

        String getSign();

        ByteString getSignBytes();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    public static final class exchangeSkuRecordsRequest extends GeneratedMessageV3 implements b {
        public static final int APPVERSION_FIELD_NUMBER = 5;
        public static final int PAGE_FIELD_NUMBER = 2;
        public static final int SIGN_FIELD_NUMBER = 4;
        public static final int TOKEN_FIELD_NUMBER = 3;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private byte memoizedIsInitialized;
        private int page_;
        private volatile Object sign_;
        private volatile Object token_;
        private int uid_;
        private static final exchangeSkuRecordsRequest DEFAULT_INSTANCE = new exchangeSkuRecordsRequest();
        private static final Parser<exchangeSkuRecordsRequest> PARSER = new a();

        class a extends AbstractParser<exchangeSkuRecordsRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public exchangeSkuRecordsRequest parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new exchangeSkuRecordsRequest(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object appVersion_;
            private int page_;
            private Object sign_;
            private Object token_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UserExchangeSkuRecordsRequest.f88108a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = exchangeSkuRecordsRequest.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearPage() {
                this.page_ = 0;
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = exchangeSkuRecordsRequest.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = exchangeSkuRecordsRequest.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
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
                return UserExchangeSkuRecordsRequest.f88108a;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
            public int getPage() {
                return this.page_;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return UserExchangeSkuRecordsRequest.f88109b.ensureFieldAccessorsInitialized(exchangeSkuRecordsRequest.class, b.class);
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

            public b setPage(int value) {
                this.page_ = value;
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
                this.sign_ = "";
                this.appVersion_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public exchangeSkuRecordsRequest build() {
                exchangeSkuRecordsRequest exchangeskurecordsrequestBuildPartial = buildPartial();
                if (exchangeskurecordsrequestBuildPartial.isInitialized()) {
                    return exchangeskurecordsrequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) exchangeskurecordsrequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public exchangeSkuRecordsRequest buildPartial() {
                exchangeSkuRecordsRequest exchangeskurecordsrequest = new exchangeSkuRecordsRequest(this, (a) null);
                exchangeskurecordsrequest.uid_ = this.uid_;
                exchangeskurecordsrequest.page_ = this.page_;
                exchangeskurecordsrequest.token_ = this.token_;
                exchangeskurecordsrequest.sign_ = this.sign_;
                exchangeskurecordsrequest.appVersion_ = this.appVersion_;
                onBuilt();
                return exchangeskurecordsrequest;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public exchangeSkuRecordsRequest getDefaultInstanceForType() {
                return exchangeSkuRecordsRequest.getDefaultInstance();
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
                this.page_ = 0;
                this.token_ = "";
                this.sign_ = "";
                this.appVersion_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof exchangeSkuRecordsRequest) {
                    return mergeFrom((exchangeSkuRecordsRequest) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.sign_ = "";
                this.appVersion_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(exchangeSkuRecordsRequest other) {
                if (other == exchangeSkuRecordsRequest.getDefaultInstance()) {
                    return this;
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (other.getPage() != 0) {
                    setPage(other.getPage());
                }
                if (!other.getToken().isEmpty()) {
                    this.token_ = other.token_;
                    onChanged();
                }
                if (!other.getSign().isEmpty()) {
                    this.sign_ = other.sign_;
                    onChanged();
                }
                if (!other.getAppVersion().isEmpty()) {
                    this.appVersion_ = other.appVersion_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                exchangeSkuRecordsRequest exchangeskurecordsrequest = null;
                try {
                    try {
                        exchangeSkuRecordsRequest exchangeskurecordsrequest2 = (exchangeSkuRecordsRequest) exchangeSkuRecordsRequest.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (exchangeskurecordsrequest2 != null) {
                            mergeFrom(exchangeskurecordsrequest2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        exchangeSkuRecordsRequest exchangeskurecordsrequest3 = (exchangeSkuRecordsRequest) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            exchangeskurecordsrequest = exchangeskurecordsrequest3;
                            if (exchangeskurecordsrequest != null) {
                                mergeFrom(exchangeskurecordsrequest);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (exchangeskurecordsrequest != null) {
                        mergeFrom(exchangeskurecordsrequest);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ exchangeSkuRecordsRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static exchangeSkuRecordsRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UserExchangeSkuRecordsRequest.f88108a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static exchangeSkuRecordsRequest parseDelimitedFrom(InputStream input) throws IOException {
            return (exchangeSkuRecordsRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static exchangeSkuRecordsRequest parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<exchangeSkuRecordsRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof exchangeSkuRecordsRequest)) {
                return super.equals(obj);
            }
            exchangeSkuRecordsRequest exchangeskurecordsrequest = (exchangeSkuRecordsRequest) obj;
            return getUid() == exchangeskurecordsrequest.getUid() && getPage() == exchangeskurecordsrequest.getPage() && getToken().equals(exchangeskurecordsrequest.getToken()) && getSign().equals(exchangeskurecordsrequest.getSign()) && getAppVersion().equals(exchangeskurecordsrequest.getAppVersion()) && this.unknownFields.equals(exchangeskurecordsrequest.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
        public int getPage() {
            return this.page_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<exchangeSkuRecordsRequest> getParserForType() {
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
            int i12 = this.page_;
            if (i12 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, i12);
            }
            if (!getTokenBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.token_);
            }
            if (!getSignBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.sign_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(5, this.appVersion_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserExchangeSkuRecordsRequest.b
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
            int iHashCode = ((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getPage()) * 37) + 3) * 53) + getToken().hashCode()) * 37) + 4) * 53) + getSign().hashCode()) * 37) + 5) * 53) + getAppVersion().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return UserExchangeSkuRecordsRequest.f88109b.ensureFieldAccessorsInitialized(exchangeSkuRecordsRequest.class, b.class);
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
            int i11 = this.page_;
            if (i11 != 0) {
                output.writeInt32(2, i11);
            }
            if (!getTokenBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.token_);
            }
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.sign_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.appVersion_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ exchangeSkuRecordsRequest(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(exchangeSkuRecordsRequest prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static exchangeSkuRecordsRequest parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private exchangeSkuRecordsRequest(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static exchangeSkuRecordsRequest parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (exchangeSkuRecordsRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static exchangeSkuRecordsRequest parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public exchangeSkuRecordsRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static exchangeSkuRecordsRequest parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private exchangeSkuRecordsRequest() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.sign_ = "";
            this.appVersion_ = "";
        }

        public static exchangeSkuRecordsRequest parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static exchangeSkuRecordsRequest parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static exchangeSkuRecordsRequest parseFrom(InputStream input) throws IOException {
            return (exchangeSkuRecordsRequest) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static exchangeSkuRecordsRequest parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (exchangeSkuRecordsRequest) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private exchangeSkuRecordsRequest(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                    this.page_ = input.readInt32();
                                } else if (tag == 26) {
                                    this.token_ = input.readStringRequireUtf8();
                                } else if (tag == 34) {
                                    this.sign_ = input.readStringRequireUtf8();
                                } else if (tag != 42) {
                                    if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    }
                                } else {
                                    this.appVersion_ = input.readStringRequireUtf8();
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

        public static exchangeSkuRecordsRequest parseFrom(CodedInputStream input) throws IOException {
            return (exchangeSkuRecordsRequest) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static exchangeSkuRecordsRequest parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (exchangeSkuRecordsRequest) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n$user_exchange_sku_list_request.proto\"g\n\u0019exchangeSkuRecordsRequest\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\f\n\u0004page\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0003 \u0001(\t\u0012\f\n\u0004sign\u0018\u0004 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0005 \u0001(\tB@\n\u001fcom.wufan.user.service.protobufB\u001dUserExchangeSkuRecordsRequestb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = d().getMessageTypes().get(0);
        f88108a = descriptor;
        f88109b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Uid", "Page", "Token", "Sign", "AppVersion"});
    }

    private UserExchangeSkuRecordsRequest() {
    }

    public static Descriptors.FileDescriptor d() {
        return f88110c;
    }

    public static void e(ExtensionRegistry registry) {
        f(registry);
    }

    public static void f(ExtensionRegistryLite registry) {
    }
}
