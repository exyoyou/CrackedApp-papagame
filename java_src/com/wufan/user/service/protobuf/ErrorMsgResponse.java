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
public final class ErrorMsgResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f87919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Descriptors.FileDescriptor f87921c;

    public static final class ErrorMsg extends GeneratedMessageV3 implements b {
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final ErrorMsg DEFAULT_INSTANCE = new ErrorMsg();
        private static final Parser<ErrorMsg> PARSER = new a();

        class a extends AbstractParser<ErrorMsg> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ErrorMsg parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new ErrorMsg(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object errorMsg_;
            private int error_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ErrorMsgResponse.f87919a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearError() {
                this.error_ = 0;
                onChanged();
                return this;
            }

            public b clearErrorMsg() {
                this.errorMsg_ = ErrorMsg.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ErrorMsgResponse.f87919a;
            }

            @Override // com.wufan.user.service.protobuf.ErrorMsgResponse.b
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.ErrorMsgResponse.b
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.ErrorMsgResponse.b
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ErrorMsgResponse.f87920b.ensureFieldAccessorsInitialized(ErrorMsg.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
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
            public ErrorMsg build() {
                ErrorMsg errorMsgBuildPartial = buildPartial();
                if (errorMsgBuildPartial.isInitialized()) {
                    return errorMsgBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) errorMsgBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ErrorMsg buildPartial() {
                ErrorMsg errorMsg = new ErrorMsg(this, (a) null);
                errorMsg.error_ = this.error_;
                errorMsg.errorMsg_ = this.errorMsg_;
                onBuilt();
                return errorMsg;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ErrorMsg getDefaultInstanceForType() {
                return ErrorMsg.getDefaultInstance();
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
                this.errorMsg_ = "";
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof ErrorMsg) {
                    return mergeFrom((ErrorMsg) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(ErrorMsg other) {
                if (other == ErrorMsg.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
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
                ErrorMsg errorMsg = null;
                try {
                    try {
                        ErrorMsg errorMsg2 = (ErrorMsg) ErrorMsg.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (errorMsg2 != null) {
                            mergeFrom(errorMsg2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        ErrorMsg errorMsg3 = (ErrorMsg) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            errorMsg = errorMsg3;
                            if (errorMsg != null) {
                                mergeFrom(errorMsg);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (errorMsg != null) {
                        mergeFrom(errorMsg);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ ErrorMsg(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ErrorMsg getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ErrorMsgResponse.f87919a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ErrorMsg parseDelimitedFrom(InputStream input) throws IOException {
            return (ErrorMsg) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static ErrorMsg parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<ErrorMsg> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ErrorMsg)) {
                return super.equals(obj);
            }
            ErrorMsg errorMsg = (ErrorMsg) obj;
            return getError() == errorMsg.getError() && getErrorMsg().equals(errorMsg.getErrorMsg()) && this.unknownFields.equals(errorMsg.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.ErrorMsgResponse.b
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.ErrorMsgResponse.b
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.ErrorMsgResponse.b
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
        public Parser<ErrorMsg> getParserForType() {
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

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError()) * 37) + 3) * 53) + getErrorMsg().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ErrorMsgResponse.f87920b.ensureFieldAccessorsInitialized(ErrorMsg.class, b.class);
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
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.errorMsg_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ ErrorMsg(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(ErrorMsg prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static ErrorMsg parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private ErrorMsg(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ErrorMsg parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ErrorMsg) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static ErrorMsg parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ErrorMsg getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static ErrorMsg parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private ErrorMsg() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static ErrorMsg parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static ErrorMsg parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static ErrorMsg parseFrom(InputStream input) throws IOException {
            return (ErrorMsg) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private ErrorMsg(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                    this.error_ = input.readInt32();
                                } else if (tag != 26) {
                                    if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    }
                                } else {
                                    this.errorMsg_ = input.readStringRequireUtf8();
                                }
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

        public static ErrorMsg parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ErrorMsg) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static ErrorMsg parseFrom(CodedInputStream input) throws IOException {
            return (ErrorMsg) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static ErrorMsg parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ErrorMsg) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = ErrorMsgResponse.f87921c = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000ferror_msg.proto\"+\n\bErrorMsg\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\tB3\n\u001fcom.wufan.user.service.protobufB\u0010ErrorMsgResponseb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = d().getMessageTypes().get(0);
        f87919a = descriptor;
        f87920b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "ErrorMsg"});
    }

    private ErrorMsgResponse() {
    }

    public static Descriptors.FileDescriptor d() {
        return f87921c;
    }

    public static void e(ExtensionRegistry registry) {
        f(registry);
    }

    public static void f(ExtensionRegistryLite registry) {
    }
}
