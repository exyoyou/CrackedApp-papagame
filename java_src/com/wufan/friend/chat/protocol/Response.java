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
public final class Response extends GeneratedMessageV3 implements p0 {
    public static final int DATA_FIELD_NUMBER = 10;
    public static final int INS_FIELD_NUMBER = 6;
    public static final int MESSAGE_FIELD_NUMBER = 8;
    public static final int NOTIFICATIONTYPE_FIELD_NUMBER = 9;
    public static final int PATH_FIELD_NUMBER = 5;
    public static final int REQUESTID_FIELD_NUMBER = 1;
    public static final int RESPONSETYPE_FIELD_NUMBER = 3;
    public static final int SERVICE_FIELD_NUMBER = 4;
    public static final int STATUS_FIELD_NUMBER = 7;
    public static final int TIMESTAMP_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private ResponseData data_;
    private volatile Object ins_;
    private byte memoizedIsInitialized;
    private volatile Object message_;
    private int notificationType_;
    private int path_;
    private long requestId_;
    private int responseType_;
    private int service_;
    private int status_;
    private long timestamp_;
    private static final Response DEFAULT_INSTANCE = new Response();
    private static final Parser<Response> PARSER = new a();

    class a extends AbstractParser<Response> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Response parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new Response(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements p0 {
        private SingleFieldBuilderV3<ResponseData, ResponseData.b, o0> dataBuilder_;
        private ResponseData data_;
        private Object ins_;
        private Object message_;
        private int notificationType_;
        private int path_;
        private long requestId_;
        private int responseType_;
        private int service_;
        private int status_;
        private long timestamp_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private SingleFieldBuilderV3<ResponseData, ResponseData.b, o0> getDataFieldBuilder() {
            if (this.dataBuilder_ == null) {
                this.dataBuilder_ = new SingleFieldBuilderV3<>(getData(), getParentForChildren(), isClean());
                this.data_ = null;
            }
            return this.dataBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87906y;
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

        public b clearIns() {
            this.ins_ = Response.getDefaultInstance().getIns();
            onChanged();
            return this;
        }

        public b clearMessage() {
            this.message_ = Response.getDefaultInstance().getMessage();
            onChanged();
            return this;
        }

        public b clearNotificationType() {
            this.notificationType_ = 0;
            onChanged();
            return this;
        }

        public b clearPath() {
            this.path_ = 0;
            onChanged();
            return this;
        }

        public b clearRequestId() {
            this.requestId_ = 0L;
            onChanged();
            return this;
        }

        public b clearResponseType() {
            this.responseType_ = 0;
            onChanged();
            return this;
        }

        public b clearService() {
            this.service_ = 0;
            onChanged();
            return this;
        }

        public b clearStatus() {
            this.status_ = 0;
            onChanged();
            return this;
        }

        public b clearTimestamp() {
            this.timestamp_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public ResponseData getData() {
            SingleFieldBuilderV3<ResponseData, ResponseData.b, o0> singleFieldBuilderV3 = this.dataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (ResponseData) singleFieldBuilderV3.getMessage();
            }
            ResponseData responseData = this.data_;
            return responseData == null ? ResponseData.getDefaultInstance() : responseData;
        }

        public ResponseData.b getDataBuilder() {
            onChanged();
            return (ResponseData.b) getDataFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public o0 getDataOrBuilder() {
            SingleFieldBuilderV3<ResponseData, ResponseData.b, o0> singleFieldBuilderV3 = this.dataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (o0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            ResponseData responseData = this.data_;
            return responseData == null ? ResponseData.getDefaultInstance() : responseData;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87906y;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public String getIns() {
            Object obj = this.ins_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ins_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public ByteString getInsBytes() {
            Object obj = this.ins_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ins_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.message_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public NotificationType getNotificationType() {
            NotificationType notificationTypeValueOf = NotificationType.valueOf(this.notificationType_);
            return notificationTypeValueOf == null ? NotificationType.UNRECOGNIZED : notificationTypeValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public int getNotificationTypeValue() {
            return this.notificationType_;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public ServicePath getPath() {
            ServicePath servicePathValueOf = ServicePath.valueOf(this.path_);
            return servicePathValueOf == null ? ServicePath.UNRECOGNIZED : servicePathValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public int getPathValue() {
            return this.path_;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public long getRequestId() {
            return this.requestId_;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public ResponseType getResponseType() {
            ResponseType responseTypeValueOf = ResponseType.valueOf(this.responseType_);
            return responseTypeValueOf == null ? ResponseType.UNRECOGNIZED : responseTypeValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public int getResponseTypeValue() {
            return this.responseType_;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public ServiceName getService() {
            ServiceName serviceNameValueOf = ServiceName.valueOf(this.service_);
            return serviceNameValueOf == null ? ServiceName.UNRECOGNIZED : serviceNameValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public int getServiceValue() {
            return this.service_;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public ResponseStatus getStatus() {
            ResponseStatus responseStatusValueOf = ResponseStatus.valueOf(this.status_);
            return responseStatusValueOf == null ? ResponseStatus.UNRECOGNIZED : responseStatusValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public int getStatusValue() {
            return this.status_;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public long getTimestamp() {
            return this.timestamp_;
        }

        @Override // com.wufan.friend.chat.protocol.p0
        public boolean hasData() {
            return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87908z.ensureFieldAccessorsInitialized(Response.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b mergeData(ResponseData value) {
            SingleFieldBuilderV3<ResponseData, ResponseData.b, o0> singleFieldBuilderV3 = this.dataBuilder_;
            if (singleFieldBuilderV3 == null) {
                ResponseData responseData = this.data_;
                if (responseData != null) {
                    this.data_ = ResponseData.newBuilder(responseData).mergeFrom(value).buildPartial();
                } else {
                    this.data_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b setData(ResponseData value) {
            SingleFieldBuilderV3<ResponseData, ResponseData.b, o0> singleFieldBuilderV3 = this.dataBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.data_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setIns(String value) {
            value.getClass();
            this.ins_ = value;
            onChanged();
            return this;
        }

        public b setInsBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ins_ = value;
            onChanged();
            return this;
        }

        public b setMessage(String value) {
            value.getClass();
            this.message_ = value;
            onChanged();
            return this;
        }

        public b setMessageBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.message_ = value;
            onChanged();
            return this;
        }

        public b setNotificationType(NotificationType value) {
            value.getClass();
            this.notificationType_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setNotificationTypeValue(int value) {
            this.notificationType_ = value;
            onChanged();
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

        public b setRequestId(long value) {
            this.requestId_ = value;
            onChanged();
            return this;
        }

        public b setResponseType(ResponseType value) {
            value.getClass();
            this.responseType_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setResponseTypeValue(int value) {
            this.responseType_ = value;
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

        public b setStatus(ResponseStatus value) {
            value.getClass();
            this.status_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setStatusValue(int value) {
            this.status_ = value;
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
            this.responseType_ = 0;
            this.service_ = 0;
            this.path_ = 0;
            this.ins_ = "";
            this.status_ = 0;
            this.message_ = "";
            this.notificationType_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Response build() {
            Response responseBuildPartial = buildPartial();
            if (responseBuildPartial.isInitialized()) {
                return responseBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) responseBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Response buildPartial() {
            Response response = new Response(this, (a) null);
            response.requestId_ = this.requestId_;
            response.timestamp_ = this.timestamp_;
            response.responseType_ = this.responseType_;
            response.service_ = this.service_;
            response.path_ = this.path_;
            response.ins_ = this.ins_;
            response.status_ = this.status_;
            response.message_ = this.message_;
            response.notificationType_ = this.notificationType_;
            SingleFieldBuilderV3<ResponseData, ResponseData.b, o0> singleFieldBuilderV3 = this.dataBuilder_;
            if (singleFieldBuilderV3 == null) {
                response.data_ = this.data_;
            } else {
                response.data_ = (ResponseData) singleFieldBuilderV3.build();
            }
            onBuilt();
            return response;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Response getDefaultInstanceForType() {
            return Response.getDefaultInstance();
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
            this.responseType_ = 0;
            this.service_ = 0;
            this.path_ = 0;
            this.ins_ = "";
            this.status_ = 0;
            this.message_ = "";
            this.notificationType_ = 0;
            if (this.dataBuilder_ == null) {
                this.data_ = null;
            } else {
                this.data_ = null;
                this.dataBuilder_ = null;
            }
            return this;
        }

        public b setData(ResponseData.b builderForValue) {
            SingleFieldBuilderV3<ResponseData, ResponseData.b, o0> singleFieldBuilderV3 = this.dataBuilder_;
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
            if (other instanceof Response) {
                return mergeFrom((Response) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(Response other) {
            if (other == Response.getDefaultInstance()) {
                return this;
            }
            if (other.getRequestId() != 0) {
                setRequestId(other.getRequestId());
            }
            if (other.getTimestamp() != 0) {
                setTimestamp(other.getTimestamp());
            }
            if (other.responseType_ != 0) {
                setResponseTypeValue(other.getResponseTypeValue());
            }
            if (other.service_ != 0) {
                setServiceValue(other.getServiceValue());
            }
            if (other.path_ != 0) {
                setPathValue(other.getPathValue());
            }
            if (!other.getIns().isEmpty()) {
                this.ins_ = other.ins_;
                onChanged();
            }
            if (other.status_ != 0) {
                setStatusValue(other.getStatusValue());
            }
            if (!other.getMessage().isEmpty()) {
                this.message_ = other.message_;
                onChanged();
            }
            if (other.notificationType_ != 0) {
                setNotificationTypeValue(other.getNotificationTypeValue());
            }
            if (other.hasData()) {
                mergeData(other.getData());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.responseType_ = 0;
            this.service_ = 0;
            this.path_ = 0;
            this.ins_ = "";
            this.status_ = 0;
            this.message_ = "";
            this.notificationType_ = 0;
            maybeForceBuilderInitialization();
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            Response response = null;
            try {
                try {
                    Response response2 = (Response) Response.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (response2 != null) {
                        mergeFrom(response2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    Response response3 = (Response) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        response = response3;
                        if (response != null) {
                            mergeFrom(response);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (response != null) {
                    mergeFrom(response);
                }
                throw th;
            }
        }
    }

    /* synthetic */ Response(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static Response getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87906y;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Response parseDelimitedFrom(InputStream input) throws IOException {
        return (Response) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static Response parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<Response> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Response)) {
            return super.equals(obj);
        }
        Response response = (Response) obj;
        if (getRequestId() == response.getRequestId() && getTimestamp() == response.getTimestamp() && this.responseType_ == response.responseType_ && this.service_ == response.service_ && this.path_ == response.path_ && getIns().equals(response.getIns()) && this.status_ == response.status_ && getMessage().equals(response.getMessage()) && this.notificationType_ == response.notificationType_ && hasData() == response.hasData()) {
            return (!hasData() || getData().equals(response.getData())) && this.unknownFields.equals(response.unknownFields);
        }
        return false;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public ResponseData getData() {
        ResponseData responseData = this.data_;
        return responseData == null ? ResponseData.getDefaultInstance() : responseData;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public o0 getDataOrBuilder() {
        return getData();
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public String getIns() {
        Object obj = this.ins_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ins_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public ByteString getInsBytes() {
        Object obj = this.ins_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.ins_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public String getMessage() {
        Object obj = this.message_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.message_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public ByteString getMessageBytes() {
        Object obj = this.message_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.message_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public NotificationType getNotificationType() {
        NotificationType notificationTypeValueOf = NotificationType.valueOf(this.notificationType_);
        return notificationTypeValueOf == null ? NotificationType.UNRECOGNIZED : notificationTypeValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public int getNotificationTypeValue() {
        return this.notificationType_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Response> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public ServicePath getPath() {
        ServicePath servicePathValueOf = ServicePath.valueOf(this.path_);
        return servicePathValueOf == null ? ServicePath.UNRECOGNIZED : servicePathValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public int getPathValue() {
        return this.path_;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public long getRequestId() {
        return this.requestId_;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public ResponseType getResponseType() {
        ResponseType responseTypeValueOf = ResponseType.valueOf(this.responseType_);
        return responseTypeValueOf == null ? ResponseType.UNRECOGNIZED : responseTypeValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public int getResponseTypeValue() {
        return this.responseType_;
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
        if (this.responseType_ != ResponseType.UNDEFINED_CT.getNumber()) {
            iComputeInt64Size += CodedOutputStream.computeEnumSize(3, this.responseType_);
        }
        if (this.service_ != ServiceName.UNDEFINED_SN.getNumber()) {
            iComputeInt64Size += CodedOutputStream.computeEnumSize(4, this.service_);
        }
        if (this.path_ != ServicePath.UNDEFINED_SP.getNumber()) {
            iComputeInt64Size += CodedOutputStream.computeEnumSize(5, this.path_);
        }
        if (!getInsBytes().isEmpty()) {
            iComputeInt64Size += GeneratedMessageV3.computeStringSize(6, this.ins_);
        }
        if (this.status_ != ResponseStatus.UNKNOWN_RS.getNumber()) {
            iComputeInt64Size += CodedOutputStream.computeEnumSize(7, this.status_);
        }
        if (!getMessageBytes().isEmpty()) {
            iComputeInt64Size += GeneratedMessageV3.computeStringSize(8, this.message_);
        }
        if (this.notificationType_ != NotificationType.UNKNOWN_NT.getNumber()) {
            iComputeInt64Size += CodedOutputStream.computeEnumSize(9, this.notificationType_);
        }
        if (this.data_ != null) {
            iComputeInt64Size += CodedOutputStream.computeMessageSize(10, getData());
        }
        int serializedSize = iComputeInt64Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public ServiceName getService() {
        ServiceName serviceNameValueOf = ServiceName.valueOf(this.service_);
        return serviceNameValueOf == null ? ServiceName.UNRECOGNIZED : serviceNameValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public int getServiceValue() {
        return this.service_;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public ResponseStatus getStatus() {
        ResponseStatus responseStatusValueOf = ResponseStatus.valueOf(this.status_);
        return responseStatusValueOf == null ? ResponseStatus.UNRECOGNIZED : responseStatusValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public int getStatusValue() {
        return this.status_;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public long getTimestamp() {
        return this.timestamp_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.p0
    public boolean hasData() {
        return this.data_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getRequestId())) * 37) + 2) * 53) + Internal.hashLong(getTimestamp())) * 37) + 3) * 53) + this.responseType_) * 37) + 4) * 53) + this.service_) * 37) + 5) * 53) + this.path_) * 37) + 6) * 53) + getIns().hashCode()) * 37) + 7) * 53) + this.status_) * 37) + 8) * 53) + getMessage().hashCode()) * 37) + 9) * 53) + this.notificationType_;
        if (hasData()) {
            iHashCode = (((iHashCode * 37) + 10) * 53) + getData().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87908z.ensureFieldAccessorsInitialized(Response.class, b.class);
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
        if (this.responseType_ != ResponseType.UNDEFINED_CT.getNumber()) {
            output.writeEnum(3, this.responseType_);
        }
        if (this.service_ != ServiceName.UNDEFINED_SN.getNumber()) {
            output.writeEnum(4, this.service_);
        }
        if (this.path_ != ServicePath.UNDEFINED_SP.getNumber()) {
            output.writeEnum(5, this.path_);
        }
        if (!getInsBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 6, this.ins_);
        }
        if (this.status_ != ResponseStatus.UNKNOWN_RS.getNumber()) {
            output.writeEnum(7, this.status_);
        }
        if (!getMessageBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 8, this.message_);
        }
        if (this.notificationType_ != NotificationType.UNKNOWN_NT.getNumber()) {
            output.writeEnum(9, this.notificationType_);
        }
        if (this.data_ != null) {
            output.writeMessage(10, getData());
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ Response(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(Response prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static Response parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private Response(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Response parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Response) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static Response parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Response getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static Response parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private Response() {
        this.memoizedIsInitialized = (byte) -1;
        this.responseType_ = 0;
        this.service_ = 0;
        this.path_ = 0;
        this.ins_ = "";
        this.status_ = 0;
        this.message_ = "";
        this.notificationType_ = 0;
    }

    public static Response parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static Response parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static Response parseFrom(InputStream input) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Response parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static Response parseFrom(CodedInputStream input) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Response parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    private Response(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        this();
        extensionRegistry.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int tag = input.readTag();
                        switch (tag) {
                            case 0:
                                break;
                            case 8:
                                this.requestId_ = input.readInt64();
                                continue;
                            case 16:
                                this.timestamp_ = input.readInt64();
                                continue;
                            case 24:
                                this.responseType_ = input.readEnum();
                                continue;
                            case 32:
                                this.service_ = input.readEnum();
                                continue;
                            case 40:
                                this.path_ = input.readEnum();
                                continue;
                            case 50:
                                this.ins_ = input.readStringRequireUtf8();
                                continue;
                            case 56:
                                this.status_ = input.readEnum();
                                continue;
                            case 66:
                                this.message_ = input.readStringRequireUtf8();
                                continue;
                            case 72:
                                this.notificationType_ = input.readEnum();
                                continue;
                            case 82:
                                ResponseData responseData = this.data_;
                                ResponseData.b builder = responseData != null ? responseData.toBuilder() : null;
                                ResponseData responseData2 = (ResponseData) input.readMessage(ResponseData.parser(), extensionRegistry);
                                this.data_ = responseData2;
                                if (builder != null) {
                                    builder.mergeFrom(responseData2);
                                    this.data_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            default:
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    break;
                                }
                                break;
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e11) {
                    throw e11.setUnfinishedMessage(this);
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
}
