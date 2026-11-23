package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.Parser;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class Request extends GeneratedMessageV3 implements n0 {
    public static final int APPVERSION_FIELD_NUMBER = 6;
    public static final int ARGS_FIELD_NUMBER = 7;
    private static final Request DEFAULT_INSTANCE = new Request();
    private static final Parser<Request> PARSER = new a();
    public static final int PATH_FIELD_NUMBER = 5;
    public static final int PLATFORM_FIELD_NUMBER = 3;
    public static final int REQUESTID_FIELD_NUMBER = 1;
    public static final int SERVICE_FIELD_NUMBER = 4;
    public static final int TIMESTAMP_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object appVersion_;
    private RequestArgs args_;
    private byte memoizedIsInitialized;
    private int path_;
    private int platform_;
    private long requestId_;
    private int service_;
    private long timestamp_;

    class a extends AbstractParser<Request> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Request parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new Request(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements n0 {
        private Object appVersion_;
        private SingleFieldBuilderV3<RequestArgs, RequestArgs.b, m0> argsBuilder_;
        private RequestArgs args_;
        private int path_;
        private int platform_;
        private long requestId_;
        private int service_;
        private long timestamp_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private SingleFieldBuilderV3<RequestArgs, RequestArgs.b, m0> getArgsFieldBuilder() {
            if (this.argsBuilder_ == null) {
                this.argsBuilder_ = new SingleFieldBuilderV3<>(getArgs(), getParentForChildren(), isClean());
                this.args_ = null;
            }
            return this.argsBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87858a;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearAppVersion() {
            this.appVersion_ = Request.getDefaultInstance().getAppVersion();
            onChanged();
            return this;
        }

        public b clearArgs() {
            if (this.argsBuilder_ == null) {
                this.args_ = null;
                onChanged();
            } else {
                this.args_ = null;
                this.argsBuilder_ = null;
            }
            return this;
        }

        public b clearPath() {
            this.path_ = 0;
            onChanged();
            return this;
        }

        public b clearPlatform() {
            this.platform_ = 0;
            onChanged();
            return this;
        }

        public b clearRequestId() {
            this.requestId_ = 0L;
            onChanged();
            return this;
        }

        public b clearService() {
            this.service_ = 0;
            onChanged();
            return this;
        }

        public b clearTimestamp() {
            this.timestamp_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public RequestArgs getArgs() {
            SingleFieldBuilderV3<RequestArgs, RequestArgs.b, m0> singleFieldBuilderV3 = this.argsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (RequestArgs) singleFieldBuilderV3.getMessage();
            }
            RequestArgs requestArgs = this.args_;
            return requestArgs == null ? RequestArgs.getDefaultInstance() : requestArgs;
        }

        public RequestArgs.b getArgsBuilder() {
            onChanged();
            return (RequestArgs.b) getArgsFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public m0 getArgsOrBuilder() {
            SingleFieldBuilderV3<RequestArgs, RequestArgs.b, m0> singleFieldBuilderV3 = this.argsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (m0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            RequestArgs requestArgs = this.args_;
            return requestArgs == null ? RequestArgs.getDefaultInstance() : requestArgs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87858a;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public ServicePath getPath() {
            ServicePath servicePathValueOf = ServicePath.valueOf(this.path_);
            return servicePathValueOf == null ? ServicePath.UNRECOGNIZED : servicePathValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public int getPathValue() {
            return this.path_;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public Platform getPlatform() {
            Platform platformValueOf = Platform.valueOf(this.platform_);
            return platformValueOf == null ? Platform.UNRECOGNIZED : platformValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public int getPlatformValue() {
            return this.platform_;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public long getRequestId() {
            return this.requestId_;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public ServiceName getService() {
            ServiceName serviceNameValueOf = ServiceName.valueOf(this.service_);
            return serviceNameValueOf == null ? ServiceName.UNRECOGNIZED : serviceNameValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public int getServiceValue() {
            return this.service_;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public long getTimestamp() {
            return this.timestamp_;
        }

        @Override // com.wufan.friend.chat.protocol.n0
        public boolean hasArgs() {
            return (this.argsBuilder_ == null && this.args_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87860b.ensureFieldAccessorsInitialized(Request.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b mergeArgs(RequestArgs value) {
            SingleFieldBuilderV3<RequestArgs, RequestArgs.b, m0> singleFieldBuilderV3 = this.argsBuilder_;
            if (singleFieldBuilderV3 == null) {
                RequestArgs requestArgs = this.args_;
                if (requestArgs != null) {
                    this.args_ = RequestArgs.newBuilder(requestArgs).mergeFrom(value).buildPartial();
                } else {
                    this.args_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
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

        public b setArgs(RequestArgs value) {
            SingleFieldBuilderV3<RequestArgs, RequestArgs.b, m0> singleFieldBuilderV3 = this.argsBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.args_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setPath(ServicePath value) {
            value.getClass();
            this.path_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setPathValue(int value) {
            this.path_ = value;
            onChanged();
            return this;
        }

        public b setPlatform(Platform value) {
            value.getClass();
            this.platform_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setPlatformValue(int value) {
            this.platform_ = value;
            onChanged();
            return this;
        }

        public b setRequestId(long value) {
            this.requestId_ = value;
            onChanged();
            return this;
        }

        public b setService(ServiceName value) {
            value.getClass();
            this.service_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setServiceValue(int value) {
            this.service_ = value;
            onChanged();
            return this;
        }

        public b setTimestamp(long value) {
            this.timestamp_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.platform_ = 0;
            this.service_ = 0;
            this.path_ = 0;
            this.appVersion_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Request build() {
            Request requestBuildPartial = buildPartial();
            if (requestBuildPartial.isInitialized()) {
                return requestBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) requestBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Request buildPartial() {
            Request request = new Request(this, (a) null);
            request.requestId_ = this.requestId_;
            request.timestamp_ = this.timestamp_;
            request.platform_ = this.platform_;
            request.service_ = this.service_;
            request.path_ = this.path_;
            request.appVersion_ = this.appVersion_;
            SingleFieldBuilderV3<RequestArgs, RequestArgs.b, m0> singleFieldBuilderV3 = this.argsBuilder_;
            if (singleFieldBuilderV3 == null) {
                request.args_ = this.args_;
            } else {
                request.args_ = (RequestArgs) singleFieldBuilderV3.build();
            }
            onBuilt();
            return request;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Request getDefaultInstanceForType() {
            return Request.getDefaultInstance();
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
            this.requestId_ = 0L;
            this.timestamp_ = 0L;
            this.platform_ = 0;
            this.service_ = 0;
            this.path_ = 0;
            this.appVersion_ = "";
            if (this.argsBuilder_ == null) {
                this.args_ = null;
            } else {
                this.args_ = null;
                this.argsBuilder_ = null;
            }
            return this;
        }

        public b setArgs(RequestArgs.b builderForValue) {
            SingleFieldBuilderV3<RequestArgs, RequestArgs.b, m0> singleFieldBuilderV3 = this.argsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.args_ = builderForValue.build();
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
            if (other instanceof Request) {
                return mergeFrom((Request) other);
            }
            super.mergeFrom(other);
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.platform_ = 0;
            this.service_ = 0;
            this.path_ = 0;
            this.appVersion_ = "";
            maybeForceBuilderInitialization();
        }

        public b mergeFrom(Request other) {
            if (other == Request.getDefaultInstance()) {
                return this;
            }
            if (other.getRequestId() != 0) {
                setRequestId(other.getRequestId());
            }
            if (other.getTimestamp() != 0) {
                setTimestamp(other.getTimestamp());
            }
            if (other.platform_ != 0) {
                setPlatformValue(other.getPlatformValue());
            }
            if (other.service_ != 0) {
                setServiceValue(other.getServiceValue());
            }
            if (other.path_ != 0) {
                setPathValue(other.getPathValue());
            }
            if (!other.getAppVersion().isEmpty()) {
                this.appVersion_ = other.appVersion_;
                onChanged();
            }
            if (other.hasArgs()) {
                mergeArgs(other.getArgs());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            Request request = null;
            try {
                try {
                    Request request2 = (Request) Request.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (request2 != null) {
                        mergeFrom(request2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    Request request3 = (Request) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        request = request3;
                        if (request != null) {
                            mergeFrom(request);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (request != null) {
                    mergeFrom(request);
                }
                throw th;
            }
        }
    }

    /* synthetic */ Request(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static Request getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87858a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Request parseDelimitedFrom(InputStream input) throws IOException {
        return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static Request parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<Request> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Request)) {
            return super.equals(obj);
        }
        Request request = (Request) obj;
        if (getRequestId() == request.getRequestId() && getTimestamp() == request.getTimestamp() && this.platform_ == request.platform_ && this.service_ == request.service_ && this.path_ == request.path_ && getAppVersion().equals(request.getAppVersion()) && hasArgs() == request.hasArgs()) {
            return (!hasArgs() || getArgs().equals(request.getArgs())) && this.unknownFields.equals(request.unknownFields);
        }
        return false;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public String getAppVersion() {
        Object obj = this.appVersion_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.appVersion_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public ByteString getAppVersionBytes() {
        Object obj = this.appVersion_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.appVersion_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public RequestArgs getArgs() {
        RequestArgs requestArgs = this.args_;
        return requestArgs == null ? RequestArgs.getDefaultInstance() : requestArgs;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public m0 getArgsOrBuilder() {
        return getArgs();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Request> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public ServicePath getPath() {
        ServicePath servicePathValueOf = ServicePath.valueOf(this.path_);
        return servicePathValueOf == null ? ServicePath.UNRECOGNIZED : servicePathValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public int getPathValue() {
        return this.path_;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public Platform getPlatform() {
        Platform platformValueOf = Platform.valueOf(this.platform_);
        return platformValueOf == null ? Platform.UNRECOGNIZED : platformValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public int getPlatformValue() {
        return this.platform_;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public long getRequestId() {
        return this.requestId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        long j10 = this.requestId_;
        int iComputeInt64Size = j10 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j10) : 0;
        long j11 = this.timestamp_;
        if (j11 != 0) {
            iComputeInt64Size += CodedOutputStream.computeInt64Size(2, j11);
        }
        if (this.platform_ != Platform.UNDEFINED_PT.getNumber()) {
            iComputeInt64Size += CodedOutputStream.computeEnumSize(3, this.platform_);
        }
        if (this.service_ != ServiceName.UNDEFINED_SN.getNumber()) {
            iComputeInt64Size += CodedOutputStream.computeEnumSize(4, this.service_);
        }
        if (this.path_ != ServicePath.UNDEFINED_SP.getNumber()) {
            iComputeInt64Size += CodedOutputStream.computeEnumSize(5, this.path_);
        }
        if (!getAppVersionBytes().isEmpty()) {
            iComputeInt64Size += GeneratedMessageV3.computeStringSize(6, this.appVersion_);
        }
        if (this.args_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(7, getArgs());
        }
        int serializedSize = iComputeInt64Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public ServiceName getService() {
        ServiceName serviceNameValueOf = ServiceName.valueOf(this.service_);
        return serviceNameValueOf == null ? ServiceName.UNRECOGNIZED : serviceNameValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public int getServiceValue() {
        return this.service_;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public long getTimestamp() {
        return this.timestamp_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.n0
    public boolean hasArgs() {
        return this.args_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getRequestId())) * 37) + 2) * 53) + Internal.hashLong(getTimestamp())) * 37) + 3) * 53) + this.platform_) * 37) + 4) * 53) + this.service_) * 37) + 5) * 53) + this.path_) * 37) + 6) * 53) + getAppVersion().hashCode();
        if (hasArgs()) {
            iHashCode = (((iHashCode * 37) + 7) * 53) + getArgs().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87860b.ensureFieldAccessorsInitialized(Request.class, b.class);
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
        long j10 = this.requestId_;
        if (j10 != 0) {
            output.writeInt64(1, j10);
        }
        long j11 = this.timestamp_;
        if (j11 != 0) {
            output.writeInt64(2, j11);
        }
        if (this.platform_ != Platform.UNDEFINED_PT.getNumber()) {
            output.writeEnum(3, this.platform_);
        }
        if (this.service_ != ServiceName.UNDEFINED_SN.getNumber()) {
            output.writeEnum(4, this.service_);
        }
        if (this.path_ != ServicePath.UNDEFINED_SP.getNumber()) {
            output.writeEnum(5, this.path_);
        }
        if (!getAppVersionBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 6, this.appVersion_);
        }
        if (this.args_ != null) {
            output.writeMessage(7, getArgs());
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ Request(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(Request prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static Request parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private Request(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Request parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static Request parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Request getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static Request parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private Request() {
        this.memoizedIsInitialized = (byte) -1;
        this.platform_ = 0;
        this.service_ = 0;
        this.path_ = 0;
        this.appVersion_ = "";
    }

    public static Request parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static Request parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static Request parseFrom(InputStream input) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Request parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    private Request(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            this.requestId_ = input.readInt64();
                        } else if (tag == 16) {
                            this.timestamp_ = input.readInt64();
                        } else if (tag == 24) {
                            this.platform_ = input.readEnum();
                        } else if (tag == 32) {
                            this.service_ = input.readEnum();
                        } else if (tag == 40) {
                            this.path_ = input.readEnum();
                        } else if (tag == 50) {
                            this.appVersion_ = input.readStringRequireUtf8();
                        } else if (tag != 58) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            RequestArgs requestArgs = this.args_;
                            RequestArgs.b builder = requestArgs != null ? requestArgs.toBuilder() : null;
                            RequestArgs requestArgs2 = (RequestArgs) input.readMessage(RequestArgs.parser(), extensionRegistry);
                            this.args_ = requestArgs2;
                            if (builder != null) {
                                builder.mergeFrom(requestArgs2);
                                this.args_ = builder.buildPartial();
                            }
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

    public static Request parseFrom(CodedInputStream input) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Request parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
