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
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class UserRegStatusResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f88119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88120d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88121e;

    public static final class UserRegStatusResponseField extends GeneratedMessageV3 implements b {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private UserRegStatus data_;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final UserRegStatusResponseField DEFAULT_INSTANCE = new UserRegStatusResponseField();
        private static final Parser<UserRegStatusResponseField> PARSER = new a();

        public static final class UserRegStatus extends GeneratedMessageV3 implements c {
            public static final int MOBILEPHONE_FIELD_NUMBER = 6;
            public static final int NEWMEMBERS_FIELD_NUMBER = 4;
            public static final int SETPWD_FIELD_NUMBER = 5;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private boolean mobilePhone_;
            private boolean newMembers_;
            private boolean setPwd_;
            private static final UserRegStatus DEFAULT_INSTANCE = new UserRegStatus();
            private static final Parser<UserRegStatus> PARSER = new a();

            class a extends AbstractParser<UserRegStatus> {
                a() {
                }

                @Override // com.google.protobuf.Parser
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public UserRegStatus parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                    return new UserRegStatus(input, extensionRegistry, null);
                }
            }

            public static final class b extends GeneratedMessageV3.Builder<b> implements c {
                private boolean mobilePhone_;
                private boolean newMembers_;
                private boolean setPwd_;

                /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                    this(builderParent);
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return UserRegStatusResponse.f88119c;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public b clearMobilePhone() {
                    this.mobilePhone_ = false;
                    onChanged();
                    return this;
                }

                public b clearNewMembers() {
                    this.newMembers_ = false;
                    onChanged();
                    return this;
                }

                public b clearSetPwd() {
                    this.setPwd_ = false;
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return UserRegStatusResponse.f88119c;
                }

                @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.UserRegStatusResponseField.c
                public boolean getMobilePhone() {
                    return this.mobilePhone_;
                }

                @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.UserRegStatusResponseField.c
                public boolean getNewMembers() {
                    return this.newMembers_;
                }

                @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.UserRegStatusResponseField.c
                public boolean getSetPwd() {
                    return this.setPwd_;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder
                protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return UserRegStatusResponse.f88120d.ensureFieldAccessorsInitialized(UserRegStatus.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public b setMobilePhone(boolean value) {
                    this.mobilePhone_ = value;
                    onChanged();
                    return this;
                }

                public b setNewMembers(boolean value) {
                    this.newMembers_ = value;
                    onChanged();
                    return this;
                }

                public b setSetPwd(boolean value) {
                    this.setPwd_ = value;
                    onChanged();
                    return this;
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    maybeForceBuilderInitialization();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                    return (b) super.addRepeatedField(field, value);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public UserRegStatus build() {
                    UserRegStatus userRegStatusBuildPartial = buildPartial();
                    if (userRegStatusBuildPartial.isInitialized()) {
                        return userRegStatusBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) userRegStatusBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public UserRegStatus buildPartial() {
                    UserRegStatus userRegStatus = new UserRegStatus(this, (a) null);
                    userRegStatus.newMembers_ = this.newMembers_;
                    userRegStatus.setPwd_ = this.setPwd_;
                    userRegStatus.mobilePhone_ = this.mobilePhone_;
                    onBuilt();
                    return userRegStatus;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                public b clearField(Descriptors.FieldDescriptor field) {
                    return (b) super.clearField(field);
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public UserRegStatus getDefaultInstanceForType() {
                    return UserRegStatus.getDefaultInstance();
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

                private b(GeneratedMessageV3.BuilderParent parent) {
                    super(parent);
                    maybeForceBuilderInitialization();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public b clear() {
                    super.clear();
                    this.newMembers_ = false;
                    this.setPwd_ = false;
                    this.mobilePhone_ = false;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
                /* JADX INFO: renamed from: clone */
                public b mo24clone() {
                    return (b) super.mo24clone();
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public b mergeFrom(Message other) {
                    if (other instanceof UserRegStatus) {
                        return mergeFrom((UserRegStatus) other);
                    }
                    super.mergeFrom(other);
                    return this;
                }

                public b mergeFrom(UserRegStatus other) {
                    if (other == UserRegStatus.getDefaultInstance()) {
                        return this;
                    }
                    if (other.getNewMembers()) {
                        setNewMembers(other.getNewMembers());
                    }
                    if (other.getSetPwd()) {
                        setSetPwd(other.getSetPwd());
                    }
                    if (other.getMobilePhone()) {
                        setMobilePhone(other.getMobilePhone());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Code duplicated, block: B:16:0x0023  */
                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                    UserRegStatus userRegStatus = null;
                    try {
                        try {
                            UserRegStatus userRegStatus2 = (UserRegStatus) UserRegStatus.PARSER.parsePartialFrom(input, extensionRegistry);
                            if (userRegStatus2 != null) {
                                mergeFrom(userRegStatus2);
                            }
                            return this;
                        } catch (InvalidProtocolBufferException e10) {
                            UserRegStatus userRegStatus3 = (UserRegStatus) e10.getUnfinishedMessage();
                            try {
                                throw e10.unwrapIOException();
                            } catch (Throwable th) {
                                th = th;
                                userRegStatus = userRegStatus3;
                                if (userRegStatus != null) {
                                    mergeFrom(userRegStatus);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (userRegStatus != null) {
                            mergeFrom(userRegStatus);
                        }
                        throw th;
                    }
                }
            }

            /* synthetic */ UserRegStatus(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
                this(codedInputStream, extensionRegistryLite);
            }

            public static UserRegStatus getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UserRegStatusResponse.f88119c;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static UserRegStatus parseDelimitedFrom(InputStream input) throws IOException {
                return (UserRegStatus) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
            }

            public static UserRegStatus parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(data);
            }

            public static Parser<UserRegStatus> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(final Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof UserRegStatus)) {
                    return super.equals(obj);
                }
                UserRegStatus userRegStatus = (UserRegStatus) obj;
                return getNewMembers() == userRegStatus.getNewMembers() && getSetPwd() == userRegStatus.getSetPwd() && getMobilePhone() == userRegStatus.getMobilePhone() && this.unknownFields.equals(userRegStatus.unknownFields);
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.UserRegStatusResponseField.c
            public boolean getMobilePhone() {
                return this.mobilePhone_;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.UserRegStatusResponseField.c
            public boolean getNewMembers() {
                return this.newMembers_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<UserRegStatus> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i10 = this.memoizedSize;
                if (i10 != -1) {
                    return i10;
                }
                boolean z10 = this.newMembers_;
                int iComputeBoolSize = z10 ? 0 + CodedOutputStream.computeBoolSize(4, z10) : 0;
                boolean z11 = this.setPwd_;
                if (z11) {
                    iComputeBoolSize += CodedOutputStream.computeBoolSize(5, z11);
                }
                boolean z12 = this.mobilePhone_;
                if (z12) {
                    iComputeBoolSize += CodedOutputStream.computeBoolSize(6, z12);
                }
                int serializedSize = iComputeBoolSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.UserRegStatusResponseField.c
            public boolean getSetPwd() {
                return this.setPwd_;
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
                int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 4) * 53) + Internal.hashBoolean(getNewMembers())) * 37) + 5) * 53) + Internal.hashBoolean(getSetPwd())) * 37) + 6) * 53) + Internal.hashBoolean(getMobilePhone())) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return UserRegStatusResponse.f88120d.ensureFieldAccessorsInitialized(UserRegStatus.class, b.class);
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
                boolean z10 = this.newMembers_;
                if (z10) {
                    output.writeBool(4, z10);
                }
                boolean z11 = this.setPwd_;
                if (z11) {
                    output.writeBool(5, z11);
                }
                boolean z12 = this.mobilePhone_;
                if (z12) {
                    output.writeBool(6, z12);
                }
                this.unknownFields.writeTo(output);
            }

            /* synthetic */ UserRegStatus(GeneratedMessageV3.Builder builder, a aVar) {
                this(builder);
            }

            public static b newBuilder(UserRegStatus prototype) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
            }

            public static UserRegStatus parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(data, extensionRegistry);
            }

            private UserRegStatus(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static UserRegStatus parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (UserRegStatus) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
            }

            public static UserRegStatus parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(data);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public UserRegStatus getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public b toBuilder() {
                a aVar = null;
                return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
            }

            public static UserRegStatus parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(data, extensionRegistry);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public b newBuilderForType() {
                return newBuilder();
            }

            private UserRegStatus() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static UserRegStatus parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(data);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
                return new b(parent, null);
            }

            public static UserRegStatus parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(data, extensionRegistry);
            }

            private UserRegStatus(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                this();
                extensionRegistry.getClass();
                UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int tag = input.readTag();
                            if (tag != 0) {
                                if (tag == 32) {
                                    this.newMembers_ = input.readBool();
                                } else if (tag == 40) {
                                    this.setPwd_ = input.readBool();
                                } else if (tag != 48) {
                                    if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    }
                                } else {
                                    this.mobilePhone_ = input.readBool();
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

            public static UserRegStatus parseFrom(InputStream input) throws IOException {
                return (UserRegStatus) GeneratedMessageV3.parseWithIOException(PARSER, input);
            }

            public static UserRegStatus parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (UserRegStatus) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
            }

            public static UserRegStatus parseFrom(CodedInputStream input) throws IOException {
                return (UserRegStatus) GeneratedMessageV3.parseWithIOException(PARSER, input);
            }

            public static UserRegStatus parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (UserRegStatus) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
            }
        }

        class a extends AbstractParser<UserRegStatusResponseField> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UserRegStatusResponseField parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new UserRegStatusResponseField(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private SingleFieldBuilderV3<UserRegStatus, UserRegStatus.b, c> dataBuilder_;
            private UserRegStatus data_;
            private Object errorMsg_;
            private int error_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private SingleFieldBuilderV3<UserRegStatus, UserRegStatus.b, c> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new SingleFieldBuilderV3<>(getData(), getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UserRegStatusResponse.f88117a;
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
                this.errorMsg_ = UserRegStatusResponseField.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
            public UserRegStatus getData() {
                SingleFieldBuilderV3<UserRegStatus, UserRegStatus.b, c> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (UserRegStatus) singleFieldBuilderV3.getMessage();
                }
                UserRegStatus userRegStatus = this.data_;
                return userRegStatus == null ? UserRegStatus.getDefaultInstance() : userRegStatus;
            }

            public UserRegStatus.b getDataBuilder() {
                onChanged();
                return (UserRegStatus.b) getDataFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
            public c getDataOrBuilder() {
                SingleFieldBuilderV3<UserRegStatus, UserRegStatus.b, c> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (c) singleFieldBuilderV3.getMessageOrBuilder();
                }
                UserRegStatus userRegStatus = this.data_;
                return userRegStatus == null ? UserRegStatus.getDefaultInstance() : userRegStatus;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return UserRegStatusResponse.f88117a;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
            public boolean hasData() {
                return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return UserRegStatusResponse.f88118b.ensureFieldAccessorsInitialized(UserRegStatusResponseField.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeData(UserRegStatus value) {
                SingleFieldBuilderV3<UserRegStatus, UserRegStatus.b, c> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    UserRegStatus userRegStatus = this.data_;
                    if (userRegStatus != null) {
                        this.data_ = UserRegStatus.newBuilder(userRegStatus).mergeFrom(value).buildPartial();
                    } else {
                        this.data_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b setData(UserRegStatus value) {
                SingleFieldBuilderV3<UserRegStatus, UserRegStatus.b, c> singleFieldBuilderV3 = this.dataBuilder_;
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
            public UserRegStatusResponseField build() {
                UserRegStatusResponseField userRegStatusResponseFieldBuildPartial = buildPartial();
                if (userRegStatusResponseFieldBuildPartial.isInitialized()) {
                    return userRegStatusResponseFieldBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) userRegStatusResponseFieldBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public UserRegStatusResponseField buildPartial() {
                UserRegStatusResponseField userRegStatusResponseField = new UserRegStatusResponseField(this, (a) null);
                userRegStatusResponseField.error_ = this.error_;
                SingleFieldBuilderV3<UserRegStatus, UserRegStatus.b, c> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    userRegStatusResponseField.data_ = this.data_;
                } else {
                    userRegStatusResponseField.data_ = (UserRegStatus) singleFieldBuilderV3.build();
                }
                userRegStatusResponseField.errorMsg_ = this.errorMsg_;
                onBuilt();
                return userRegStatusResponseField;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public UserRegStatusResponseField getDefaultInstanceForType() {
                return UserRegStatusResponseField.getDefaultInstance();
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

            public b setData(UserRegStatus.b builderForValue) {
                SingleFieldBuilderV3<UserRegStatus, UserRegStatus.b, c> singleFieldBuilderV3 = this.dataBuilder_;
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
                if (other instanceof UserRegStatusResponseField) {
                    return mergeFrom((UserRegStatusResponseField) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(UserRegStatusResponseField other) {
                if (other == UserRegStatusResponseField.getDefaultInstance()) {
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
                UserRegStatusResponseField userRegStatusResponseField = null;
                try {
                    try {
                        UserRegStatusResponseField userRegStatusResponseField2 = (UserRegStatusResponseField) UserRegStatusResponseField.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (userRegStatusResponseField2 != null) {
                            mergeFrom(userRegStatusResponseField2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        UserRegStatusResponseField userRegStatusResponseField3 = (UserRegStatusResponseField) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            userRegStatusResponseField = userRegStatusResponseField3;
                            if (userRegStatusResponseField != null) {
                                mergeFrom(userRegStatusResponseField);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (userRegStatusResponseField != null) {
                        mergeFrom(userRegStatusResponseField);
                    }
                    throw th;
                }
            }
        }

        public interface c extends MessageOrBuilder {
            boolean getMobilePhone();

            boolean getNewMembers();

            boolean getSetPwd();
        }

        /* synthetic */ UserRegStatusResponseField(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static UserRegStatusResponseField getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UserRegStatusResponse.f88117a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static UserRegStatusResponseField parseDelimitedFrom(InputStream input) throws IOException {
            return (UserRegStatusResponseField) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static UserRegStatusResponseField parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<UserRegStatusResponseField> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UserRegStatusResponseField)) {
                return super.equals(obj);
            }
            UserRegStatusResponseField userRegStatusResponseField = (UserRegStatusResponseField) obj;
            if (getError() == userRegStatusResponseField.getError() && hasData() == userRegStatusResponseField.hasData()) {
                return (!hasData() || getData().equals(userRegStatusResponseField.getData())) && getErrorMsg().equals(userRegStatusResponseField.getErrorMsg()) && this.unknownFields.equals(userRegStatusResponseField.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
        public UserRegStatus getData() {
            UserRegStatus userRegStatus = this.data_;
            return userRegStatus == null ? UserRegStatus.getDefaultInstance() : userRegStatus;
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
        public c getDataOrBuilder() {
            return getData();
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
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
        public Parser<UserRegStatusResponseField> getParserForType() {
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

        @Override // com.wufan.user.service.protobuf.UserRegStatusResponse.b
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
            return UserRegStatusResponse.f88118b.ensureFieldAccessorsInitialized(UserRegStatusResponseField.class, b.class);
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

        /* synthetic */ UserRegStatusResponseField(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(UserRegStatusResponseField prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static UserRegStatusResponseField parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private UserRegStatusResponseField(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static UserRegStatusResponseField parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UserRegStatusResponseField) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static UserRegStatusResponseField parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public UserRegStatusResponseField getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static UserRegStatusResponseField parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private UserRegStatusResponseField() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static UserRegStatusResponseField parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static UserRegStatusResponseField parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static UserRegStatusResponseField parseFrom(InputStream input) throws IOException {
            return (UserRegStatusResponseField) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private UserRegStatusResponseField(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                UserRegStatus userRegStatus = this.data_;
                                UserRegStatus.b builder = userRegStatus != null ? userRegStatus.toBuilder() : null;
                                UserRegStatus userRegStatus2 = (UserRegStatus) input.readMessage(UserRegStatus.parser(), extensionRegistry);
                                this.data_ = userRegStatus2;
                                if (builder != null) {
                                    builder.mergeFrom(userRegStatus2);
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

        public static UserRegStatusResponseField parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UserRegStatusResponseField) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static UserRegStatusResponseField parseFrom(CodedInputStream input) throws IOException {
            return (UserRegStatusResponseField) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static UserRegStatusResponseField parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UserRegStatusResponseField) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = UserRegStatusResponse.f88121e = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        UserRegStatusResponseField.UserRegStatus getData();

        UserRegStatusResponseField.c getDataOrBuilder();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        boolean hasData();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001euser_reg_status_response.proto\"À\u0001\n\u001aUserRegStatusResponseField\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u00127\n\u0004data\u0018\u0002 \u0001(\u000b2).UserRegStatusResponseField.UserRegStatus\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\u001aH\n\rUserRegStatus\u0012\u0012\n\nnewMembers\u0018\u0004 \u0001(\b\u0012\u000e\n\u0006setPwd\u0018\u0005 \u0001(\b\u0012\u0013\n\u000bmobilePhone\u0018\u0006 \u0001(\bB8\n\u001fcom.wufan.user.service.protobufB\u0015UserRegStatusResponseb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = f().getMessageTypes().get(0);
        f88117a = descriptor;
        f88118b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "Data", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = descriptor.getNestedTypes().get(0);
        f88119c = descriptor2;
        f88120d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"NewMembers", "SetPwd", "MobilePhone"});
    }

    private UserRegStatusResponse() {
    }

    public static Descriptors.FileDescriptor f() {
        return f88121e;
    }

    public static void g(ExtensionRegistry registry) {
        h(registry);
    }

    public static void h(ExtensionRegistryLite registry) {
    }
}
