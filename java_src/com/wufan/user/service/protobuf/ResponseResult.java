package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
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
public final class ResponseResult extends GeneratedMessageV3 implements f {
    public static final int DATA_FIELD_NUMBER = 2;
    public static final int ERRORMSG_FIELD_NUMBER = 3;
    public static final int ERROR_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private UserInfo data_;
    private volatile Object errorMsg_;
    private int error_;
    private byte memoizedIsInitialized;
    private static final ResponseResult DEFAULT_INSTANCE = new ResponseResult();
    private static final Parser<ResponseResult> PARSER = new a();

    class a extends AbstractParser<ResponseResult> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new ResponseResult(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements f {
        private SingleFieldBuilderV3<UserInfo, UserInfo.b, h> dataBuilder_;
        private UserInfo data_;
        private Object errorMsg_;
        private int error_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private SingleFieldBuilderV3<UserInfo, UserInfo.b, h> getDataFieldBuilder() {
            if (this.dataBuilder_ == null) {
                this.dataBuilder_ = new SingleFieldBuilderV3<>(getData(), getParentForChildren(), isClean());
                this.data_ = null;
            }
            return this.dataBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return c.f88122a;
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

        public b clearError() {
            this.error_ = 0;
            onChanged();
            return this;
        }

        public b clearErrorMsg() {
            this.errorMsg_ = ResponseResult.getDefaultInstance().getErrorMsg();
            onChanged();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.f
        public UserInfo getData() {
            SingleFieldBuilderV3<UserInfo, UserInfo.b, h> singleFieldBuilderV3 = this.dataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (UserInfo) singleFieldBuilderV3.getMessage();
            }
            UserInfo userInfo = this.data_;
            return userInfo == null ? UserInfo.getDefaultInstance() : userInfo;
        }

        public UserInfo.b getDataBuilder() {
            onChanged();
            return (UserInfo.b) getDataFieldBuilder().getBuilder();
        }

        @Override // com.wufan.user.service.protobuf.f
        public h getDataOrBuilder() {
            SingleFieldBuilderV3<UserInfo, UserInfo.b, h> singleFieldBuilderV3 = this.dataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (h) singleFieldBuilderV3.getMessageOrBuilder();
            }
            UserInfo userInfo = this.data_;
            return userInfo == null ? UserInfo.getDefaultInstance() : userInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return c.f88122a;
        }

        @Override // com.wufan.user.service.protobuf.f
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.f
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.f
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.f
        public boolean hasData() {
            return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return c.f88123b.ensureFieldAccessorsInitialized(ResponseResult.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b mergeData(UserInfo value) {
            SingleFieldBuilderV3<UserInfo, UserInfo.b, h> singleFieldBuilderV3 = this.dataBuilder_;
            if (singleFieldBuilderV3 == null) {
                UserInfo userInfo = this.data_;
                if (userInfo != null) {
                    this.data_ = UserInfo.newBuilder(userInfo).mergeFrom(value).buildPartial();
                } else {
                    this.data_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b setData(UserInfo value) {
            SingleFieldBuilderV3<UserInfo, UserInfo.b, h> singleFieldBuilderV3 = this.dataBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.data_ = value;
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
        public ResponseResult build() {
            ResponseResult responseResultBuildPartial = buildPartial();
            if (responseResultBuildPartial.isInitialized()) {
                return responseResultBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) responseResultBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public ResponseResult buildPartial() {
            ResponseResult responseResult = new ResponseResult(this, (a) null);
            responseResult.error_ = this.error_;
            SingleFieldBuilderV3<UserInfo, UserInfo.b, h> singleFieldBuilderV3 = this.dataBuilder_;
            if (singleFieldBuilderV3 == null) {
                responseResult.data_ = this.data_;
            } else {
                responseResult.data_ = (UserInfo) singleFieldBuilderV3.build();
            }
            responseResult.errorMsg_ = this.errorMsg_;
            onBuilt();
            return responseResult;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ResponseResult getDefaultInstanceForType() {
            return ResponseResult.getDefaultInstance();
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
            if (this.dataBuilder_ == null) {
                this.data_ = null;
            } else {
                this.data_ = null;
                this.dataBuilder_ = null;
            }
            this.errorMsg_ = "";
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.errorMsg_ = "";
            maybeForceBuilderInitialization();
        }

        public b setData(UserInfo.b builderForValue) {
            SingleFieldBuilderV3<UserInfo, UserInfo.b, h> singleFieldBuilderV3 = this.dataBuilder_;
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
            if (other instanceof ResponseResult) {
                return mergeFrom((ResponseResult) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(ResponseResult other) {
            if (other == ResponseResult.getDefaultInstance()) {
                return this;
            }
            if (other.getError() != 0) {
                setError(other.getError());
            }
            if (other.hasData()) {
                mergeData(other.getData());
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
            ResponseResult responseResult = null;
            try {
                try {
                    ResponseResult responseResult2 = (ResponseResult) ResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (responseResult2 != null) {
                        mergeFrom(responseResult2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    ResponseResult responseResult3 = (ResponseResult) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        responseResult = responseResult3;
                        if (responseResult != null) {
                            mergeFrom(responseResult);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (responseResult != null) {
                    mergeFrom(responseResult);
                }
                throw th;
            }
        }
    }

    /* synthetic */ ResponseResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static ResponseResult getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return c.f88122a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ResponseResult parseDelimitedFrom(InputStream input) throws IOException {
        return (ResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static ResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<ResponseResult> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResponseResult)) {
            return super.equals(obj);
        }
        ResponseResult responseResult = (ResponseResult) obj;
        if (getError() == responseResult.getError() && hasData() == responseResult.hasData()) {
            return (!hasData() || getData().equals(responseResult.getData())) && getErrorMsg().equals(responseResult.getErrorMsg()) && this.unknownFields.equals(responseResult.unknownFields);
        }
        return false;
    }

    @Override // com.wufan.user.service.protobuf.f
    public UserInfo getData() {
        UserInfo userInfo = this.data_;
        return userInfo == null ? UserInfo.getDefaultInstance() : userInfo;
    }

    @Override // com.wufan.user.service.protobuf.f
    public h getDataOrBuilder() {
        return getData();
    }

    @Override // com.wufan.user.service.protobuf.f
    public int getError() {
        return this.error_;
    }

    @Override // com.wufan.user.service.protobuf.f
    public String getErrorMsg() {
        Object obj = this.errorMsg_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.errorMsg_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.f
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
    public Parser<ResponseResult> getParserForType() {
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
        if (this.data_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(2, getData());
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

    @Override // com.wufan.user.service.protobuf.f
    public boolean hasData() {
        return this.data_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError();
        if (hasData()) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getData().hashCode();
        }
        int iHashCode2 = (((((iHashCode * 37) + 3) * 53) + getErrorMsg().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return c.f88123b.ensureFieldAccessorsInitialized(ResponseResult.class, b.class);
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
        if (this.data_ != null) {
            output.writeMessage(2, getData());
        }
        if (!getErrorMsgBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 3, this.errorMsg_);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ ResponseResult(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(ResponseResult prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static ResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private ResponseResult(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static ResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public ResponseResult getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static ResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private ResponseResult() {
        this.memoizedIsInitialized = (byte) -1;
        this.errorMsg_ = "";
    }

    public static ResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static ResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static ResponseResult parseFrom(InputStream input) throws IOException {
        return (ResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private ResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            UserInfo userInfo = this.data_;
                            UserInfo.b builder = userInfo != null ? userInfo.toBuilder() : null;
                            UserInfo userInfo2 = (UserInfo) input.readMessage(UserInfo.parser(), extensionRegistry);
                            this.data_ = userInfo2;
                            if (builder != null) {
                                builder.mergeFrom(userInfo2);
                                this.data_ = builder.buildPartial();
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

    public static ResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static ResponseResult parseFrom(CodedInputStream input) throws IOException {
        return (ResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static ResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
