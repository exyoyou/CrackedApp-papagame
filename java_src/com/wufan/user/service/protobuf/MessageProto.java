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
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageProto {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f88068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88069d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Descriptors.Descriptor f88070e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88071f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Descriptors.Descriptor f88072g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88073h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Descriptors.Descriptor f88074i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88075j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Descriptors.Descriptor f88076k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88077l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Descriptors.Descriptor f88078m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88079n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Descriptors.Descriptor f88080o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88081p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88082q;

    public static final class Account extends GeneratedMessageV3 implements b {
        public static final int ACCOUNTNAME_FIELD_NUMBER = 2;
        public static final int AVATAR_FIELD_NUMBER = 4;
        public static final int NICKNAME_FIELD_NUMBER = 3;
        public static final int UID_FIELD_NUMBER = 1;
        public static final int USERTOKEN_FIELD_NUMBER = 6;
        public static final int VIP_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private volatile Object accountName_;
        private volatile Object avatar_;
        private byte memoizedIsInitialized;
        private volatile Object nickname_;
        private int uid_;
        private volatile Object userToken_;
        private boolean vip_;
        private static final Account DEFAULT_INSTANCE = new Account();
        private static final Parser<Account> PARSER = new a();

        class a extends AbstractParser<Account> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Account parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new Account(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object accountName_;
            private Object avatar_;
            private Object nickname_;
            private int uid_;
            private Object userToken_;
            private boolean vip_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProto.f88068c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAccountName() {
                this.accountName_ = Account.getDefaultInstance().getAccountName();
                onChanged();
                return this;
            }

            public b clearAvatar() {
                this.avatar_ = Account.getDefaultInstance().getAvatar();
                onChanged();
                return this;
            }

            public b clearNickname() {
                this.nickname_ = Account.getDefaultInstance().getNickname();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            public b clearUserToken() {
                this.userToken_ = Account.getDefaultInstance().getUserToken();
                onChanged();
                return this;
            }

            public b clearVip() {
                this.vip_ = false;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.b
            public String getAccountName() {
                Object obj = this.accountName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.accountName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.b
            public ByteString getAccountNameBytes() {
                Object obj = this.accountName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.accountName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.b
            public String getAvatar() {
                Object obj = this.avatar_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.avatar_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.b
            public ByteString getAvatarBytes() {
                Object obj = this.avatar_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.avatar_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProto.f88068c;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.b
            public String getNickname() {
                Object obj = this.nickname_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.nickname_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.b
            public ByteString getNicknameBytes() {
                Object obj = this.nickname_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.nickname_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.b
            public String getUserToken() {
                Object obj = this.userToken_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.userToken_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.b
            public ByteString getUserTokenBytes() {
                Object obj = this.userToken_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userToken_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.b
            public boolean getVip() {
                return this.vip_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProto.f88069d.ensureFieldAccessorsInitialized(Account.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setAccountName(String value) {
                value.getClass();
                this.accountName_ = value;
                onChanged();
                return this;
            }

            public b setAccountNameBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.accountName_ = value;
                onChanged();
                return this;
            }

            public b setAvatar(String value) {
                value.getClass();
                this.avatar_ = value;
                onChanged();
                return this;
            }

            public b setAvatarBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.avatar_ = value;
                onChanged();
                return this;
            }

            public b setNickname(String value) {
                value.getClass();
                this.nickname_ = value;
                onChanged();
                return this;
            }

            public b setNicknameBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.nickname_ = value;
                onChanged();
                return this;
            }

            public b setUid(int value) {
                this.uid_ = value;
                onChanged();
                return this;
            }

            public b setUserToken(String value) {
                value.getClass();
                this.userToken_ = value;
                onChanged();
                return this;
            }

            public b setUserTokenBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.userToken_ = value;
                onChanged();
                return this;
            }

            public b setVip(boolean value) {
                this.vip_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.accountName_ = "";
                this.nickname_ = "";
                this.avatar_ = "";
                this.userToken_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Account build() {
                Account accountBuildPartial = buildPartial();
                if (accountBuildPartial.isInitialized()) {
                    return accountBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) accountBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Account buildPartial() {
                Account account = new Account(this, (a) null);
                account.uid_ = this.uid_;
                account.accountName_ = this.accountName_;
                account.nickname_ = this.nickname_;
                account.avatar_ = this.avatar_;
                account.vip_ = this.vip_;
                account.userToken_ = this.userToken_;
                onBuilt();
                return account;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Account getDefaultInstanceForType() {
                return Account.getDefaultInstance();
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
                this.accountName_ = "";
                this.nickname_ = "";
                this.avatar_ = "";
                this.vip_ = false;
                this.userToken_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof Account) {
                    return mergeFrom((Account) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.accountName_ = "";
                this.nickname_ = "";
                this.avatar_ = "";
                this.userToken_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(Account other) {
                if (other == Account.getDefaultInstance()) {
                    return this;
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (!other.getAccountName().isEmpty()) {
                    this.accountName_ = other.accountName_;
                    onChanged();
                }
                if (!other.getNickname().isEmpty()) {
                    this.nickname_ = other.nickname_;
                    onChanged();
                }
                if (!other.getAvatar().isEmpty()) {
                    this.avatar_ = other.avatar_;
                    onChanged();
                }
                if (other.getVip()) {
                    setVip(other.getVip());
                }
                if (!other.getUserToken().isEmpty()) {
                    this.userToken_ = other.userToken_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                Account account = null;
                try {
                    try {
                        Account account2 = (Account) Account.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (account2 != null) {
                            mergeFrom(account2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        Account account3 = (Account) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            account = account3;
                            if (account != null) {
                                mergeFrom(account);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (account != null) {
                        mergeFrom(account);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ Account(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static Account getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProto.f88068c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Account parseDelimitedFrom(InputStream input) throws IOException {
            return (Account) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static Account parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<Account> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Account)) {
                return super.equals(obj);
            }
            Account account = (Account) obj;
            return getUid() == account.getUid() && getAccountName().equals(account.getAccountName()) && getNickname().equals(account.getNickname()) && getAvatar().equals(account.getAvatar()) && getVip() == account.getVip() && getUserToken().equals(account.getUserToken()) && this.unknownFields.equals(account.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.b
        public String getAccountName() {
            Object obj = this.accountName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.accountName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.b
        public ByteString getAccountNameBytes() {
            Object obj = this.accountName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.accountName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.b
        public String getAvatar() {
            Object obj = this.avatar_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.avatar_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.b
        public ByteString getAvatarBytes() {
            Object obj = this.avatar_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.avatar_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.b
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.b
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Account> getParserForType() {
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
            if (!getAccountNameBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.accountName_);
            }
            if (!getNicknameBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.nickname_);
            }
            if (!getAvatarBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.avatar_);
            }
            boolean z10 = this.vip_;
            if (z10) {
                iComputeInt32Size += CodedOutputStream.computeBoolSize(5, z10);
            }
            if (!getUserTokenBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.userToken_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.b
        public int getUid() {
            return this.uid_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.b
        public String getUserToken() {
            Object obj = this.userToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.userToken_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.b
        public ByteString getUserTokenBytes() {
            Object obj = this.userToken_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userToken_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.b
        public boolean getVip() {
            return this.vip_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getAccountName().hashCode()) * 37) + 3) * 53) + getNickname().hashCode()) * 37) + 4) * 53) + getAvatar().hashCode()) * 37) + 5) * 53) + Internal.hashBoolean(getVip())) * 37) + 6) * 53) + getUserToken().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProto.f88069d.ensureFieldAccessorsInitialized(Account.class, b.class);
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
            if (!getAccountNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.accountName_);
            }
            if (!getNicknameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.nickname_);
            }
            if (!getAvatarBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.avatar_);
            }
            boolean z10 = this.vip_;
            if (z10) {
                output.writeBool(5, z10);
            }
            if (!getUserTokenBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.userToken_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ Account(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(Account prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static Account parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private Account(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Account parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Account) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static Account parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Account getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static Account parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private Account() {
            this.memoizedIsInitialized = (byte) -1;
            this.accountName_ = "";
            this.nickname_ = "";
            this.avatar_ = "";
            this.userToken_ = "";
        }

        public static Account parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static Account parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static Account parseFrom(InputStream input) throws IOException {
            return (Account) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static Account parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Account) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private Account(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.accountName_ = input.readStringRequireUtf8();
                            } else if (tag == 26) {
                                this.nickname_ = input.readStringRequireUtf8();
                            } else if (tag == 34) {
                                this.avatar_ = input.readStringRequireUtf8();
                            } else if (tag == 40) {
                                this.vip_ = input.readBool();
                            } else if (tag != 50) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.userToken_ = input.readStringRequireUtf8();
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

        public static Account parseFrom(CodedInputStream input) throws IOException {
            return (Account) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static Account parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Account) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageInfo extends GeneratedMessageV3 implements c {
        public static final int ADDTIME_FIELD_NUMBER = 8;
        public static final int CONTENT_FIELD_NUMBER = 4;
        public static final int ISREAD_FIELD_NUMBER = 9;
        public static final int JUMPCONTENT_FIELD_NUMBER = 5;
        public static final int MESSAGETYPE_FIELD_NUMBER = 2;
        public static final int RECORDID_FIELD_NUMBER = 1;
        public static final int STATUS_FIELD_NUMBER = 7;
        public static final int TITLE_FIELD_NUMBER = 3;
        public static final int UID_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private long addTime_;
        private volatile Object content_;
        private boolean isRead_;
        private volatile Object jumpContent_;
        private byte memoizedIsInitialized;
        private int messageType_;
        private volatile Object recordId_;
        private int status_;
        private volatile Object title_;
        private int uid_;
        private static final MessageInfo DEFAULT_INSTANCE = new MessageInfo();
        private static final Parser<MessageInfo> PARSER = new a();

        class a extends AbstractParser<MessageInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageInfo(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private long addTime_;
            private Object content_;
            private boolean isRead_;
            private Object jumpContent_;
            private int messageType_;
            private Object recordId_;
            private int status_;
            private Object title_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProto.f88076k;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAddTime() {
                this.addTime_ = 0L;
                onChanged();
                return this;
            }

            public b clearContent() {
                this.content_ = MessageInfo.getDefaultInstance().getContent();
                onChanged();
                return this;
            }

            public b clearIsRead() {
                this.isRead_ = false;
                onChanged();
                return this;
            }

            public b clearJumpContent() {
                this.jumpContent_ = MessageInfo.getDefaultInstance().getJumpContent();
                onChanged();
                return this;
            }

            public b clearMessageType() {
                this.messageType_ = 0;
                onChanged();
                return this;
            }

            public b clearRecordId() {
                this.recordId_ = MessageInfo.getDefaultInstance().getRecordId();
                onChanged();
                return this;
            }

            public b clearStatus() {
                this.status_ = 0;
                onChanged();
                return this;
            }

            public b clearTitle() {
                this.title_ = MessageInfo.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public long getAddTime() {
                return this.addTime_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public String getContent() {
                Object obj = this.content_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.content_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public ByteString getContentBytes() {
                Object obj = this.content_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.content_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProto.f88076k;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public boolean getIsRead() {
                return this.isRead_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public String getJumpContent() {
                Object obj = this.jumpContent_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.jumpContent_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public ByteString getJumpContentBytes() {
                Object obj = this.jumpContent_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.jumpContent_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public int getMessageType() {
                return this.messageType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public String getRecordId() {
                Object obj = this.recordId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.recordId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public ByteString getRecordIdBytes() {
                Object obj = this.recordId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.recordId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public int getStatus() {
                return this.status_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public ByteString getTitleBytes() {
                Object obj = this.title_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.title_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.c
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProto.f88077l.ensureFieldAccessorsInitialized(MessageInfo.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setAddTime(long value) {
                this.addTime_ = value;
                onChanged();
                return this;
            }

            public b setContent(String value) {
                value.getClass();
                this.content_ = value;
                onChanged();
                return this;
            }

            public b setContentBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.content_ = value;
                onChanged();
                return this;
            }

            public b setIsRead(boolean value) {
                this.isRead_ = value;
                onChanged();
                return this;
            }

            public b setJumpContent(String value) {
                value.getClass();
                this.jumpContent_ = value;
                onChanged();
                return this;
            }

            public b setJumpContentBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.jumpContent_ = value;
                onChanged();
                return this;
            }

            public b setMessageType(int value) {
                this.messageType_ = value;
                onChanged();
                return this;
            }

            public b setRecordId(String value) {
                value.getClass();
                this.recordId_ = value;
                onChanged();
                return this;
            }

            public b setRecordIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.recordId_ = value;
                onChanged();
                return this;
            }

            public b setStatus(int value) {
                this.status_ = value;
                onChanged();
                return this;
            }

            public b setTitle(String value) {
                value.getClass();
                this.title_ = value;
                onChanged();
                return this;
            }

            public b setTitleBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.title_ = value;
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
                this.recordId_ = "";
                this.title_ = "";
                this.content_ = "";
                this.jumpContent_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageInfo build() {
                MessageInfo messageInfoBuildPartial = buildPartial();
                if (messageInfoBuildPartial.isInitialized()) {
                    return messageInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageInfo buildPartial() {
                MessageInfo messageInfo = new MessageInfo(this, (a) null);
                messageInfo.recordId_ = this.recordId_;
                messageInfo.messageType_ = this.messageType_;
                messageInfo.title_ = this.title_;
                messageInfo.content_ = this.content_;
                messageInfo.jumpContent_ = this.jumpContent_;
                messageInfo.uid_ = this.uid_;
                messageInfo.status_ = this.status_;
                messageInfo.addTime_ = this.addTime_;
                messageInfo.isRead_ = this.isRead_;
                onBuilt();
                return messageInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageInfo getDefaultInstanceForType() {
                return MessageInfo.getDefaultInstance();
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
                this.recordId_ = "";
                this.messageType_ = 0;
                this.title_ = "";
                this.content_ = "";
                this.jumpContent_ = "";
                this.uid_ = 0;
                this.status_ = 0;
                this.addTime_ = 0L;
                this.isRead_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageInfo) {
                    return mergeFrom((MessageInfo) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.recordId_ = "";
                this.title_ = "";
                this.content_ = "";
                this.jumpContent_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageInfo other) {
                if (other == MessageInfo.getDefaultInstance()) {
                    return this;
                }
                if (!other.getRecordId().isEmpty()) {
                    this.recordId_ = other.recordId_;
                    onChanged();
                }
                if (other.getMessageType() != 0) {
                    setMessageType(other.getMessageType());
                }
                if (!other.getTitle().isEmpty()) {
                    this.title_ = other.title_;
                    onChanged();
                }
                if (!other.getContent().isEmpty()) {
                    this.content_ = other.content_;
                    onChanged();
                }
                if (!other.getJumpContent().isEmpty()) {
                    this.jumpContent_ = other.jumpContent_;
                    onChanged();
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (other.getStatus() != 0) {
                    setStatus(other.getStatus());
                }
                if (other.getAddTime() != 0) {
                    setAddTime(other.getAddTime());
                }
                if (other.getIsRead()) {
                    setIsRead(other.getIsRead());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageInfo messageInfo = null;
                try {
                    try {
                        MessageInfo messageInfo2 = (MessageInfo) MessageInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageInfo2 != null) {
                            mergeFrom(messageInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageInfo messageInfo3 = (MessageInfo) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageInfo = messageInfo3;
                            if (messageInfo != null) {
                                mergeFrom(messageInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageInfo != null) {
                        mergeFrom(messageInfo);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProto.f88076k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageInfo parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageInfo)) {
                return super.equals(obj);
            }
            MessageInfo messageInfo = (MessageInfo) obj;
            return getRecordId().equals(messageInfo.getRecordId()) && getMessageType() == messageInfo.getMessageType() && getTitle().equals(messageInfo.getTitle()) && getContent().equals(messageInfo.getContent()) && getJumpContent().equals(messageInfo.getJumpContent()) && getUid() == messageInfo.getUid() && getStatus() == messageInfo.getStatus() && getAddTime() == messageInfo.getAddTime() && getIsRead() == messageInfo.getIsRead() && this.unknownFields.equals(messageInfo.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public long getAddTime() {
            return this.addTime_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public String getContent() {
            Object obj = this.content_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.content_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public ByteString getContentBytes() {
            Object obj = this.content_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.content_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public boolean getIsRead() {
            return this.isRead_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public String getJumpContent() {
            Object obj = this.jumpContent_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.jumpContent_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public ByteString getJumpContentBytes() {
            Object obj = this.jumpContent_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jumpContent_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public int getMessageType() {
            return this.messageType_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public String getRecordId() {
            Object obj = this.recordId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.recordId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public ByteString getRecordIdBytes() {
            Object obj = this.recordId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.recordId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getRecordIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.recordId_);
            int i11 = this.messageType_;
            if (i11 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(2, i11);
            }
            if (!getTitleBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.title_);
            }
            if (!getContentBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(4, this.content_);
            }
            if (!getJumpContentBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(5, this.jumpContent_);
            }
            int i12 = this.uid_;
            if (i12 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(6, i12);
            }
            int i13 = this.status_;
            if (i13 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(7, i13);
            }
            long j10 = this.addTime_;
            if (j10 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt64Size(8, j10);
            }
            boolean z10 = this.isRead_;
            if (z10) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(9, z10);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public int getStatus() {
            return this.status_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.c
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
            int iHashCode = ((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getRecordId().hashCode()) * 37) + 2) * 53) + getMessageType()) * 37) + 3) * 53) + getTitle().hashCode()) * 37) + 4) * 53) + getContent().hashCode()) * 37) + 5) * 53) + getJumpContent().hashCode()) * 37) + 6) * 53) + getUid()) * 37) + 7) * 53) + getStatus()) * 37) + 8) * 53) + Internal.hashLong(getAddTime())) * 37) + 9) * 53) + Internal.hashBoolean(getIsRead())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProto.f88077l.ensureFieldAccessorsInitialized(MessageInfo.class, b.class);
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
            if (!getRecordIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.recordId_);
            }
            int i10 = this.messageType_;
            if (i10 != 0) {
                output.writeInt32(2, i10);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.title_);
            }
            if (!getContentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.content_);
            }
            if (!getJumpContentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.jumpContent_);
            }
            int i11 = this.uid_;
            if (i11 != 0) {
                output.writeInt32(6, i11);
            }
            int i12 = this.status_;
            if (i12 != 0) {
                output.writeInt32(7, i12);
            }
            long j10 = this.addTime_;
            if (j10 != 0) {
                output.writeInt64(8, j10);
            }
            boolean z10 = this.isRead_;
            if (z10) {
                output.writeBool(9, z10);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageInfo(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageInfo prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.recordId_ = "";
            this.title_ = "";
            this.content_ = "";
            this.jumpContent_ = "";
        }

        public static MessageInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageInfo parseFrom(InputStream input) throws IOException {
            return (MessageInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private MessageInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                if (tag == 10) {
                                    this.recordId_ = input.readStringRequireUtf8();
                                } else if (tag == 16) {
                                    this.messageType_ = input.readInt32();
                                } else if (tag == 26) {
                                    this.title_ = input.readStringRequireUtf8();
                                } else if (tag == 34) {
                                    this.content_ = input.readStringRequireUtf8();
                                } else if (tag == 42) {
                                    this.jumpContent_ = input.readStringRequireUtf8();
                                } else if (tag == 48) {
                                    this.uid_ = input.readInt32();
                                } else if (tag == 56) {
                                    this.status_ = input.readInt32();
                                } else if (tag == 64) {
                                    this.addTime_ = input.readInt64();
                                } else if (tag != 72) {
                                    if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    }
                                } else {
                                    this.isRead_ = input.readBool();
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

        public static MessageInfo parseFrom(CodedInputStream input) throws IOException {
            return (MessageInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageRequest extends GeneratedMessageV3 implements d {
        public static final int ACCOUNT_FIELD_NUMBER = 7;
        public static final int APPVERSION_FIELD_NUMBER = 1;
        public static final int PARAMS_FIELD_NUMBER = 5;
        public static final int PUSHPARAMS_FIELD_NUMBER = 6;
        public static final int REQUESTID_FIELD_NUMBER = 4;
        public static final int TYPE_FIELD_NUMBER = 3;
        public static final int VERSION_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private Account account_;
        private volatile Object appVersion_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private Params params_;
        private List<PushParams> pushParams_;
        private long requestId_;
        private int type_;
        private int version_;
        private static final MessageRequest DEFAULT_INSTANCE = new MessageRequest();
        private static final Parser<MessageRequest> PARSER = new a();

        public enum ProtoType implements ProtocolMessageEnum {
            LOGIN(0),
            PUSH_USER_NOTIFICATION_MESSAGE(1),
            PUSH_ALL_USER_NOTIFICATION_MESSAGE(2),
            PULL_USER_NOTIFICATION_MESSAGE(3),
            SET_READ_STATUS(4),
            PING(5),
            PULL_REMOTE_USER_NOTIFICATION_MESSAGE(6),
            JOIN_QUEUE_MESSAGE(7),
            CONFIRM_QUEUE_MESSAGE(8),
            NOTIFICATION_QUEUE_MESSAGE(9),
            REQUEST_QUEUE_MESSAGE(10),
            SWITCHOVER_QUEUE_MESSAGE(11),
            CONFIRM_SWITCHOVER_QUEUE_MESSAGE(12),
            EXIT_QUEUE_MESSAGE(13),
            RESOURCE_TIME_OUT(14),
            NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE(15),
            UNRECOGNIZED(-1);

            public static final int CONFIRM_QUEUE_MESSAGE_VALUE = 8;
            public static final int CONFIRM_SWITCHOVER_QUEUE_MESSAGE_VALUE = 12;
            public static final int EXIT_QUEUE_MESSAGE_VALUE = 13;
            public static final int JOIN_QUEUE_MESSAGE_VALUE = 7;
            public static final int LOGIN_VALUE = 0;
            public static final int NOTIFICATION_QUEUE_MESSAGE_VALUE = 9;
            public static final int NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE_VALUE = 15;
            public static final int PING_VALUE = 5;
            public static final int PULL_REMOTE_USER_NOTIFICATION_MESSAGE_VALUE = 6;
            public static final int PULL_USER_NOTIFICATION_MESSAGE_VALUE = 3;
            public static final int PUSH_ALL_USER_NOTIFICATION_MESSAGE_VALUE = 2;
            public static final int PUSH_USER_NOTIFICATION_MESSAGE_VALUE = 1;
            public static final int REQUEST_QUEUE_MESSAGE_VALUE = 10;
            public static final int RESOURCE_TIME_OUT_VALUE = 14;
            public static final int SET_READ_STATUS_VALUE = 4;
            public static final int SWITCHOVER_QUEUE_MESSAGE_VALUE = 11;
            private final int value;
            private static final Internal.EnumLiteMap<ProtoType> internalValueMap = new a();
            private static final ProtoType[] VALUES = values();

            class a implements Internal.EnumLiteMap<ProtoType> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public ProtoType findValueByNumber(int number) {
                    return ProtoType.forNumber(number);
                }
            }

            ProtoType(int value) {
                this.value = value;
            }

            public static ProtoType forNumber(int value) {
                switch (value) {
                    case 0:
                        return LOGIN;
                    case 1:
                        return PUSH_USER_NOTIFICATION_MESSAGE;
                    case 2:
                        return PUSH_ALL_USER_NOTIFICATION_MESSAGE;
                    case 3:
                        return PULL_USER_NOTIFICATION_MESSAGE;
                    case 4:
                        return SET_READ_STATUS;
                    case 5:
                        return PING;
                    case 6:
                        return PULL_REMOTE_USER_NOTIFICATION_MESSAGE;
                    case 7:
                        return JOIN_QUEUE_MESSAGE;
                    case 8:
                        return CONFIRM_QUEUE_MESSAGE;
                    case 9:
                        return NOTIFICATION_QUEUE_MESSAGE;
                    case 10:
                        return REQUEST_QUEUE_MESSAGE;
                    case 11:
                        return SWITCHOVER_QUEUE_MESSAGE;
                    case 12:
                        return CONFIRM_SWITCHOVER_QUEUE_MESSAGE;
                    case 13:
                        return EXIT_QUEUE_MESSAGE;
                    case 14:
                        return RESOURCE_TIME_OUT;
                    case 15:
                        return NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE;
                    default:
                        return null;
                }
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return MessageRequest.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<ProtoType> internalGetValueMap() {
                return internalValueMap;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static ProtoType valueOf(int value) {
                return forNumber(value);
            }

            public static ProtoType valueOf(Descriptors.EnumValueDescriptor desc) {
                if (desc.getType() == getDescriptor()) {
                    if (desc.getIndex() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[desc.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        class a extends AbstractParser<MessageRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageRequest parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageRequest(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements d {
            private SingleFieldBuilderV3<Account, Account.b, b> accountBuilder_;
            private Account account_;
            private Object appVersion_;
            private int bitField0_;
            private SingleFieldBuilderV3<Params, Params.b, e> paramsBuilder_;
            private Params params_;
            private RepeatedFieldBuilderV3<PushParams, PushParams.b, g> pushParamsBuilder_;
            private List<PushParams> pushParams_;
            private long requestId_;
            private int type_;
            private int version_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private void ensurePushParamsIsMutable() {
                if ((this.bitField0_ & 32) == 0) {
                    this.pushParams_ = new ArrayList(this.pushParams_);
                    this.bitField0_ |= 32;
                }
            }

            private SingleFieldBuilderV3<Account, Account.b, b> getAccountFieldBuilder() {
                if (this.accountBuilder_ == null) {
                    this.accountBuilder_ = new SingleFieldBuilderV3<>(getAccount(), getParentForChildren(), isClean());
                    this.account_ = null;
                }
                return this.accountBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProto.f88066a;
            }

            private SingleFieldBuilderV3<Params, Params.b, e> getParamsFieldBuilder() {
                if (this.paramsBuilder_ == null) {
                    this.paramsBuilder_ = new SingleFieldBuilderV3<>(getParams(), getParentForChildren(), isClean());
                    this.params_ = null;
                }
                return this.paramsBuilder_;
            }

            private RepeatedFieldBuilderV3<PushParams, PushParams.b, g> getPushParamsFieldBuilder() {
                if (this.pushParamsBuilder_ == null) {
                    this.pushParamsBuilder_ = new RepeatedFieldBuilderV3<>(this.pushParams_, (this.bitField0_ & 32) != 0, getParentForChildren(), isClean());
                    this.pushParams_ = null;
                }
                return this.pushParamsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getPushParamsFieldBuilder();
                }
            }

            public b addAllPushParams(Iterable<? extends PushParams> values) {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensurePushParamsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.pushParams_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(values);
                }
                return this;
            }

            public b addPushParams(PushParams value) {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensurePushParamsIsMutable();
                    this.pushParams_.add(value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(value);
                }
                return this;
            }

            public PushParams.b addPushParamsBuilder() {
                return (PushParams.b) getPushParamsFieldBuilder().addBuilder(PushParams.getDefaultInstance());
            }

            public b clearAccount() {
                if (this.accountBuilder_ == null) {
                    this.account_ = null;
                    onChanged();
                } else {
                    this.account_ = null;
                    this.accountBuilder_ = null;
                }
                return this;
            }

            public b clearAppVersion() {
                this.appVersion_ = MessageRequest.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearParams() {
                if (this.paramsBuilder_ == null) {
                    this.params_ = null;
                    onChanged();
                } else {
                    this.params_ = null;
                    this.paramsBuilder_ = null;
                }
                return this;
            }

            public b clearPushParams() {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.pushParams_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public b clearRequestId() {
                this.requestId_ = 0L;
                onChanged();
                return this;
            }

            public b clearType() {
                this.type_ = 0;
                onChanged();
                return this;
            }

            public b clearVersion() {
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public Account getAccount() {
                SingleFieldBuilderV3<Account, Account.b, b> singleFieldBuilderV3 = this.accountBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (Account) singleFieldBuilderV3.getMessage();
                }
                Account account = this.account_;
                return account == null ? Account.getDefaultInstance() : account;
            }

            public Account.b getAccountBuilder() {
                onChanged();
                return (Account.b) getAccountFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public b getAccountOrBuilder() {
                SingleFieldBuilderV3<Account, Account.b, b> singleFieldBuilderV3 = this.accountBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (b) singleFieldBuilderV3.getMessageOrBuilder();
                }
                Account account = this.account_;
                return account == null ? Account.getDefaultInstance() : account;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
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
                return MessageProto.f88066a;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public Params getParams() {
                SingleFieldBuilderV3<Params, Params.b, e> singleFieldBuilderV3 = this.paramsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (Params) singleFieldBuilderV3.getMessage();
                }
                Params params = this.params_;
                return params == null ? Params.getDefaultInstance() : params;
            }

            public Params.b getParamsBuilder() {
                onChanged();
                return (Params.b) getParamsFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public e getParamsOrBuilder() {
                SingleFieldBuilderV3<Params, Params.b, e> singleFieldBuilderV3 = this.paramsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (e) singleFieldBuilderV3.getMessageOrBuilder();
                }
                Params params = this.params_;
                return params == null ? Params.getDefaultInstance() : params;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public PushParams getPushParams(int index) {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                return repeatedFieldBuilderV3 == null ? this.pushParams_.get(index) : (PushParams) repeatedFieldBuilderV3.getMessage(index);
            }

            public PushParams.b getPushParamsBuilder(int index) {
                return (PushParams.b) getPushParamsFieldBuilder().getBuilder(index);
            }

            public List<PushParams.b> getPushParamsBuilderList() {
                return getPushParamsFieldBuilder().getBuilderList();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public int getPushParamsCount() {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                return repeatedFieldBuilderV3 == null ? this.pushParams_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public List<PushParams> getPushParamsList() {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.pushParams_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public g getPushParamsOrBuilder(int index) {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                return repeatedFieldBuilderV3 == null ? this.pushParams_.get(index) : (g) repeatedFieldBuilderV3.getMessageOrBuilder(index);
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public List<? extends g> getPushParamsOrBuilderList() {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.pushParams_);
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public long getRequestId() {
                return this.requestId_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public ProtoType getType() {
                ProtoType protoTypeValueOf = ProtoType.valueOf(this.type_);
                return protoTypeValueOf == null ? ProtoType.UNRECOGNIZED : protoTypeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public int getTypeValue() {
                return this.type_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public int getVersion() {
                return this.version_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public boolean hasAccount() {
                return (this.accountBuilder_ == null && this.account_ == null) ? false : true;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.d
            public boolean hasParams() {
                return (this.paramsBuilder_ == null && this.params_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProto.f88067b.ensureFieldAccessorsInitialized(MessageRequest.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeAccount(Account value) {
                SingleFieldBuilderV3<Account, Account.b, b> singleFieldBuilderV3 = this.accountBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Account account = this.account_;
                    if (account != null) {
                        this.account_ = Account.newBuilder(account).mergeFrom(value).buildPartial();
                    } else {
                        this.account_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b mergeParams(Params value) {
                SingleFieldBuilderV3<Params, Params.b, e> singleFieldBuilderV3 = this.paramsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Params params = this.params_;
                    if (params != null) {
                        this.params_ = Params.newBuilder(params).mergeFrom(value).buildPartial();
                    } else {
                        this.params_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b removePushParams(int index) {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensurePushParamsIsMutable();
                    this.pushParams_.remove(index);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(index);
                }
                return this;
            }

            public b setAccount(Account value) {
                SingleFieldBuilderV3<Account, Account.b, b> singleFieldBuilderV3 = this.accountBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.account_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
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

            public b setParams(Params value) {
                SingleFieldBuilderV3<Params, Params.b, e> singleFieldBuilderV3 = this.paramsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.params_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            public b setPushParams(int index, PushParams value) {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensurePushParamsIsMutable();
                    this.pushParams_.set(index, value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, value);
                }
                return this;
            }

            public b setRequestId(long value) {
                this.requestId_ = value;
                onChanged();
                return this;
            }

            public b setType(ProtoType value) {
                value.getClass();
                this.type_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setTypeValue(int value) {
                this.type_ = value;
                onChanged();
                return this;
            }

            public b setVersion(int value) {
                this.version_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.appVersion_ = "";
                this.type_ = 0;
                this.pushParams_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageRequest build() {
                MessageRequest messageRequestBuildPartial = buildPartial();
                if (messageRequestBuildPartial.isInitialized()) {
                    return messageRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageRequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageRequest buildPartial() {
                MessageRequest messageRequest = new MessageRequest(this, (a) null);
                messageRequest.appVersion_ = this.appVersion_;
                messageRequest.version_ = this.version_;
                messageRequest.type_ = this.type_;
                messageRequest.requestId_ = this.requestId_;
                SingleFieldBuilderV3<Params, Params.b, e> singleFieldBuilderV3 = this.paramsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageRequest.params_ = this.params_;
                } else {
                    messageRequest.params_ = (Params) singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    messageRequest.pushParams_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 32) != 0) {
                        this.pushParams_ = Collections.unmodifiableList(this.pushParams_);
                        this.bitField0_ &= -33;
                    }
                    messageRequest.pushParams_ = this.pushParams_;
                }
                SingleFieldBuilderV3<Account, Account.b, b> singleFieldBuilderV4 = this.accountBuilder_;
                if (singleFieldBuilderV4 == null) {
                    messageRequest.account_ = this.account_;
                } else {
                    messageRequest.account_ = (Account) singleFieldBuilderV4.build();
                }
                messageRequest.bitField0_ = 0;
                onBuilt();
                return messageRequest;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageRequest getDefaultInstanceForType() {
                return MessageRequest.getDefaultInstance();
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

            public PushParams.b addPushParamsBuilder(int index) {
                return (PushParams.b) getPushParamsFieldBuilder().addBuilder(index, PushParams.getDefaultInstance());
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
                this.appVersion_ = "";
                this.version_ = 0;
                this.type_ = 0;
                this.requestId_ = 0L;
                if (this.paramsBuilder_ == null) {
                    this.params_ = null;
                } else {
                    this.params_ = null;
                    this.paramsBuilder_ = null;
                }
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.pushParams_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                if (this.accountBuilder_ == null) {
                    this.account_ = null;
                } else {
                    this.account_ = null;
                    this.accountBuilder_ = null;
                }
                return this;
            }

            public b setAccount(Account.b builderForValue) {
                SingleFieldBuilderV3<Account, Account.b, b> singleFieldBuilderV3 = this.accountBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.account_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            public b setParams(Params.b builderForValue) {
                SingleFieldBuilderV3<Params, Params.b, e> singleFieldBuilderV3 = this.paramsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.params_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            public b addPushParams(int index, PushParams value) {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensurePushParamsIsMutable();
                    this.pushParams_.add(index, value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(index, value);
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
                if (other instanceof MessageRequest) {
                    return mergeFrom((MessageRequest) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b setPushParams(int index, PushParams.b builderForValue) {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensurePushParamsIsMutable();
                    this.pushParams_.set(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
                }
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.appVersion_ = "";
                this.type_ = 0;
                this.pushParams_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(MessageRequest other) {
                if (other == MessageRequest.getDefaultInstance()) {
                    return this;
                }
                if (!other.getAppVersion().isEmpty()) {
                    this.appVersion_ = other.appVersion_;
                    onChanged();
                }
                if (other.getVersion() != 0) {
                    setVersion(other.getVersion());
                }
                if (other.type_ != 0) {
                    setTypeValue(other.getTypeValue());
                }
                if (other.getRequestId() != 0) {
                    setRequestId(other.getRequestId());
                }
                if (other.hasParams()) {
                    mergeParams(other.getParams());
                }
                if (this.pushParamsBuilder_ == null) {
                    if (!other.pushParams_.isEmpty()) {
                        if (this.pushParams_.isEmpty()) {
                            this.pushParams_ = other.pushParams_;
                            this.bitField0_ &= -33;
                        } else {
                            ensurePushParamsIsMutable();
                            this.pushParams_.addAll(other.pushParams_);
                        }
                        onChanged();
                    }
                } else if (!other.pushParams_.isEmpty()) {
                    if (!this.pushParamsBuilder_.isEmpty()) {
                        this.pushParamsBuilder_.addAllMessages(other.pushParams_);
                    } else {
                        this.pushParamsBuilder_.dispose();
                        this.pushParamsBuilder_ = null;
                        this.pushParams_ = other.pushParams_;
                        this.bitField0_ &= -33;
                        this.pushParamsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getPushParamsFieldBuilder() : null;
                    }
                }
                if (other.hasAccount()) {
                    mergeAccount(other.getAccount());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            public b addPushParams(PushParams.b builderForValue) {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensurePushParamsIsMutable();
                    this.pushParams_.add(builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builderForValue.build());
                }
                return this;
            }

            public b addPushParams(int index, PushParams.b builderForValue) {
                RepeatedFieldBuilderV3<PushParams, PushParams.b, g> repeatedFieldBuilderV3 = this.pushParamsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensurePushParamsIsMutable();
                    this.pushParams_.add(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
                }
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageRequest messageRequest = null;
                try {
                    try {
                        MessageRequest messageRequest2 = (MessageRequest) MessageRequest.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageRequest2 != null) {
                            mergeFrom(messageRequest2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageRequest messageRequest3 = (MessageRequest) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageRequest = messageRequest3;
                            if (messageRequest != null) {
                                mergeFrom(messageRequest);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageRequest != null) {
                        mergeFrom(messageRequest);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProto.f88066a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageRequest parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageRequest parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageRequest)) {
                return super.equals(obj);
            }
            MessageRequest messageRequest = (MessageRequest) obj;
            if (!getAppVersion().equals(messageRequest.getAppVersion()) || getVersion() != messageRequest.getVersion() || this.type_ != messageRequest.type_ || getRequestId() != messageRequest.getRequestId() || hasParams() != messageRequest.hasParams()) {
                return false;
            }
            if ((!hasParams() || getParams().equals(messageRequest.getParams())) && getPushParamsList().equals(messageRequest.getPushParamsList()) && hasAccount() == messageRequest.hasAccount()) {
                return (!hasAccount() || getAccount().equals(messageRequest.getAccount())) && this.unknownFields.equals(messageRequest.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public Account getAccount() {
            Account account = this.account_;
            return account == null ? Account.getDefaultInstance() : account;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public b getAccountOrBuilder() {
            return getAccount();
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public Params getParams() {
            Params params = this.params_;
            return params == null ? Params.getDefaultInstance() : params;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public e getParamsOrBuilder() {
            return getParams();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public PushParams getPushParams(int index) {
            return this.pushParams_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public int getPushParamsCount() {
            return this.pushParams_.size();
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public List<PushParams> getPushParamsList() {
            return this.pushParams_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public g getPushParamsOrBuilder(int index) {
            return this.pushParams_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public List<? extends g> getPushParamsOrBuilderList() {
            return this.pushParams_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public long getRequestId() {
            return this.requestId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = !getAppVersionBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.appVersion_) + 0 : 0;
            int i11 = this.version_;
            if (i11 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(2, i11);
            }
            if (this.type_ != ProtoType.LOGIN.getNumber()) {
                iComputeStringSize += CodedOutputStream.computeEnumSize(3, this.type_);
            }
            long j10 = this.requestId_;
            if (j10 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt64Size(4, j10);
            }
            if (this.params_ != null) {
                iComputeStringSize += CodedOutputStream.computeMessageSize(5, getParams());
            }
            for (int i12 = 0; i12 < this.pushParams_.size(); i12++) {
                iComputeStringSize += CodedOutputStream.computeMessageSize(6, this.pushParams_.get(i12));
            }
            if (this.account_ != null) {
                iComputeStringSize += CodedOutputStream.computeMessageSize(7, getAccount());
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public ProtoType getType() {
            ProtoType protoTypeValueOf = ProtoType.valueOf(this.type_);
            return protoTypeValueOf == null ? ProtoType.UNRECOGNIZED : protoTypeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public int getTypeValue() {
            return this.type_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public int getVersion() {
            return this.version_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public boolean hasAccount() {
            return this.account_ != null;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.d
        public boolean hasParams() {
            return this.params_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getAppVersion().hashCode()) * 37) + 2) * 53) + getVersion()) * 37) + 3) * 53) + this.type_) * 37) + 4) * 53) + Internal.hashLong(getRequestId());
            if (hasParams()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getParams().hashCode();
            }
            if (getPushParamsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getPushParamsList().hashCode();
            }
            if (hasAccount()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getAccount().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProto.f88067b.ensureFieldAccessorsInitialized(MessageRequest.class, b.class);
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
            if (!getAppVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.appVersion_);
            }
            int i10 = this.version_;
            if (i10 != 0) {
                output.writeInt32(2, i10);
            }
            if (this.type_ != ProtoType.LOGIN.getNumber()) {
                output.writeEnum(3, this.type_);
            }
            long j10 = this.requestId_;
            if (j10 != 0) {
                output.writeInt64(4, j10);
            }
            if (this.params_ != null) {
                output.writeMessage(5, getParams());
            }
            for (int i11 = 0; i11 < this.pushParams_.size(); i11++) {
                output.writeMessage(6, this.pushParams_.get(i11));
            }
            if (this.account_ != null) {
                output.writeMessage(7, getAccount());
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageRequest(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageRequest prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageRequest parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageRequest(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageRequest parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageRequest parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageRequest parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageRequest() {
            this.memoizedIsInitialized = (byte) -1;
            this.appVersion_ = "";
            this.type_ = 0;
            this.pushParams_ = Collections.emptyList();
        }

        public static MessageRequest parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageRequest parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageRequest parseFrom(InputStream input) throws IOException {
            return (MessageRequest) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageRequest parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageRequest) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private MessageRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            int i10 = 0;
            while (!z10) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                this.appVersion_ = codedInputStream.readStringRequireUtf8();
                            } else if (tag == 16) {
                                this.version_ = codedInputStream.readInt32();
                            } else if (tag == 24) {
                                this.type_ = codedInputStream.readEnum();
                            } else if (tag != 32) {
                                if (tag == 42) {
                                    Params params = this.params_;
                                    Params.b builder = params != null ? params.toBuilder() : null;
                                    Params params2 = (Params) codedInputStream.readMessage(Params.parser(), extensionRegistryLite);
                                    this.params_ = params2;
                                    if (builder != null) {
                                        builder.mergeFrom(params2);
                                        this.params_ = builder.buildPartial();
                                    }
                                } else if (tag == 50) {
                                    if ((i10 & 32) == 0) {
                                        this.pushParams_ = new ArrayList();
                                        i10 |= 32;
                                    }
                                    this.pushParams_.add((PushParams) codedInputStream.readMessage(PushParams.parser(), extensionRegistryLite));
                                } else if (tag != 58) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    Account account = this.account_;
                                    Account.b builder2 = account != null ? account.toBuilder() : null;
                                    Account account2 = (Account) codedInputStream.readMessage(Account.parser(), extensionRegistryLite);
                                    this.account_ = account2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(account2);
                                        this.account_ = builder2.buildPartial();
                                    }
                                }
                            } else {
                                this.requestId_ = codedInputStream.readInt64();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if ((i10 & 32) != 0) {
                        this.pushParams_ = Collections.unmodifiableList(this.pushParams_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if ((i10 & 32) != 0) {
                this.pushParams_ = Collections.unmodifiableList(this.pushParams_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MessageRequest parseFrom(CodedInputStream input) throws IOException {
            return (MessageRequest) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageRequest parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageRequest) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class Params extends GeneratedMessageV3 implements e {
        public static final int FROMUID_FIELD_NUMBER = 11;
        public static final int GAMEID_FIELD_NUMBER = 6;
        public static final int ISINIT_FIELD_NUMBER = 5;
        public static final int ISRECONNECT_FIELD_NUMBER = 12;
        public static final int JOBID_FIELD_NUMBER = 9;
        public static final int LASTMESSAGEADDTIME_FIELD_NUMBER = 4;
        public static final int RECORDID_FIELD_NUMBER = 3;
        public static final int RESOURCEID_FIELD_NUMBER = 8;
        public static final int SERVERNAME_FIELD_NUMBER = 7;
        public static final int SWITCHOVERGAMEID_FIELD_NUMBER = 10;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int fromUid_;
        private long gameId_;
        private boolean isInit_;
        private boolean isReconnect_;
        private volatile Object jobId_;
        private long lastMessageAddTime_;
        private byte memoizedIsInitialized;
        private volatile Object recordId_;
        private volatile Object resourceId_;
        private volatile Object serverName_;
        private long switchoverGameId_;
        private volatile Object token_;
        private int uid_;
        private static final Params DEFAULT_INSTANCE = new Params();
        private static final Parser<Params> PARSER = new a();

        class a extends AbstractParser<Params> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Params parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new Params(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements e {
            private int fromUid_;
            private long gameId_;
            private boolean isInit_;
            private boolean isReconnect_;
            private Object jobId_;
            private long lastMessageAddTime_;
            private Object recordId_;
            private Object resourceId_;
            private Object serverName_;
            private long switchoverGameId_;
            private Object token_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProto.f88070e;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearFromUid() {
                this.fromUid_ = 0;
                onChanged();
                return this;
            }

            public b clearGameId() {
                this.gameId_ = 0L;
                onChanged();
                return this;
            }

            public b clearIsInit() {
                this.isInit_ = false;
                onChanged();
                return this;
            }

            public b clearIsReconnect() {
                this.isReconnect_ = false;
                onChanged();
                return this;
            }

            public b clearJobId() {
                this.jobId_ = Params.getDefaultInstance().getJobId();
                onChanged();
                return this;
            }

            public b clearLastMessageAddTime() {
                this.lastMessageAddTime_ = 0L;
                onChanged();
                return this;
            }

            public b clearRecordId() {
                this.recordId_ = Params.getDefaultInstance().getRecordId();
                onChanged();
                return this;
            }

            public b clearResourceId() {
                this.resourceId_ = Params.getDefaultInstance().getResourceId();
                onChanged();
                return this;
            }

            public b clearServerName() {
                this.serverName_ = Params.getDefaultInstance().getServerName();
                onChanged();
                return this;
            }

            public b clearSwitchoverGameId() {
                this.switchoverGameId_ = 0L;
                onChanged();
                return this;
            }

            public b clearToken() {
                this.token_ = Params.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProto.f88070e;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public int getFromUid() {
                return this.fromUid_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public long getGameId() {
                return this.gameId_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public boolean getIsInit() {
                return this.isInit_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public boolean getIsReconnect() {
                return this.isReconnect_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public String getJobId() {
                Object obj = this.jobId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.jobId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public ByteString getJobIdBytes() {
                Object obj = this.jobId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.jobId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public long getLastMessageAddTime() {
                return this.lastMessageAddTime_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public String getRecordId() {
                Object obj = this.recordId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.recordId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public ByteString getRecordIdBytes() {
                Object obj = this.recordId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.recordId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public String getResourceId() {
                Object obj = this.resourceId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.resourceId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public ByteString getResourceIdBytes() {
                Object obj = this.resourceId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.resourceId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public String getServerName() {
                Object obj = this.serverName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.serverName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public ByteString getServerNameBytes() {
                Object obj = this.serverName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.serverName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public long getSwitchoverGameId() {
                return this.switchoverGameId_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.e
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProto.f88071f.ensureFieldAccessorsInitialized(Params.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setFromUid(int value) {
                this.fromUid_ = value;
                onChanged();
                return this;
            }

            public b setGameId(long value) {
                this.gameId_ = value;
                onChanged();
                return this;
            }

            public b setIsInit(boolean value) {
                this.isInit_ = value;
                onChanged();
                return this;
            }

            public b setIsReconnect(boolean value) {
                this.isReconnect_ = value;
                onChanged();
                return this;
            }

            public b setJobId(String value) {
                value.getClass();
                this.jobId_ = value;
                onChanged();
                return this;
            }

            public b setJobIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.jobId_ = value;
                onChanged();
                return this;
            }

            public b setLastMessageAddTime(long value) {
                this.lastMessageAddTime_ = value;
                onChanged();
                return this;
            }

            public b setRecordId(String value) {
                value.getClass();
                this.recordId_ = value;
                onChanged();
                return this;
            }

            public b setRecordIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.recordId_ = value;
                onChanged();
                return this;
            }

            public b setResourceId(String value) {
                value.getClass();
                this.resourceId_ = value;
                onChanged();
                return this;
            }

            public b setResourceIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.resourceId_ = value;
                onChanged();
                return this;
            }

            public b setServerName(String value) {
                value.getClass();
                this.serverName_ = value;
                onChanged();
                return this;
            }

            public b setServerNameBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.serverName_ = value;
                onChanged();
                return this;
            }

            public b setSwitchoverGameId(long value) {
                this.switchoverGameId_ = value;
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
                this.recordId_ = "";
                this.serverName_ = "";
                this.resourceId_ = "";
                this.jobId_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Params build() {
                Params paramsBuildPartial = buildPartial();
                if (paramsBuildPartial.isInitialized()) {
                    return paramsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) paramsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Params buildPartial() {
                Params params = new Params(this, (a) null);
                params.uid_ = this.uid_;
                params.token_ = this.token_;
                params.recordId_ = this.recordId_;
                params.lastMessageAddTime_ = this.lastMessageAddTime_;
                params.isInit_ = this.isInit_;
                params.gameId_ = this.gameId_;
                params.serverName_ = this.serverName_;
                params.resourceId_ = this.resourceId_;
                params.jobId_ = this.jobId_;
                params.switchoverGameId_ = this.switchoverGameId_;
                params.fromUid_ = this.fromUid_;
                params.isReconnect_ = this.isReconnect_;
                onBuilt();
                return params;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Params getDefaultInstanceForType() {
                return Params.getDefaultInstance();
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
                this.recordId_ = "";
                this.lastMessageAddTime_ = 0L;
                this.isInit_ = false;
                this.gameId_ = 0L;
                this.serverName_ = "";
                this.resourceId_ = "";
                this.jobId_ = "";
                this.switchoverGameId_ = 0L;
                this.fromUid_ = 0;
                this.isReconnect_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof Params) {
                    return mergeFrom((Params) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.token_ = "";
                this.recordId_ = "";
                this.serverName_ = "";
                this.resourceId_ = "";
                this.jobId_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(Params other) {
                if (other == Params.getDefaultInstance()) {
                    return this;
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (!other.getToken().isEmpty()) {
                    this.token_ = other.token_;
                    onChanged();
                }
                if (!other.getRecordId().isEmpty()) {
                    this.recordId_ = other.recordId_;
                    onChanged();
                }
                if (other.getLastMessageAddTime() != 0) {
                    setLastMessageAddTime(other.getLastMessageAddTime());
                }
                if (other.getIsInit()) {
                    setIsInit(other.getIsInit());
                }
                if (other.getGameId() != 0) {
                    setGameId(other.getGameId());
                }
                if (!other.getServerName().isEmpty()) {
                    this.serverName_ = other.serverName_;
                    onChanged();
                }
                if (!other.getResourceId().isEmpty()) {
                    this.resourceId_ = other.resourceId_;
                    onChanged();
                }
                if (!other.getJobId().isEmpty()) {
                    this.jobId_ = other.jobId_;
                    onChanged();
                }
                if (other.getSwitchoverGameId() != 0) {
                    setSwitchoverGameId(other.getSwitchoverGameId());
                }
                if (other.getFromUid() != 0) {
                    setFromUid(other.getFromUid());
                }
                if (other.getIsReconnect()) {
                    setIsReconnect(other.getIsReconnect());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                Params params = null;
                try {
                    try {
                        Params params2 = (Params) Params.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (params2 != null) {
                            mergeFrom(params2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        Params params3 = (Params) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            params = params3;
                            if (params != null) {
                                mergeFrom(params);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (params != null) {
                        mergeFrom(params);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ Params(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static Params getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProto.f88070e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Params parseDelimitedFrom(InputStream input) throws IOException {
            return (Params) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static Params parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<Params> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Params)) {
                return super.equals(obj);
            }
            Params params = (Params) obj;
            return getUid() == params.getUid() && getToken().equals(params.getToken()) && getRecordId().equals(params.getRecordId()) && getLastMessageAddTime() == params.getLastMessageAddTime() && getIsInit() == params.getIsInit() && getGameId() == params.getGameId() && getServerName().equals(params.getServerName()) && getResourceId().equals(params.getResourceId()) && getJobId().equals(params.getJobId()) && getSwitchoverGameId() == params.getSwitchoverGameId() && getFromUid() == params.getFromUid() && getIsReconnect() == params.getIsReconnect() && this.unknownFields.equals(params.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public int getFromUid() {
            return this.fromUid_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public boolean getIsInit() {
            return this.isInit_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public boolean getIsReconnect() {
            return this.isReconnect_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public String getJobId() {
            Object obj = this.jobId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.jobId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public ByteString getJobIdBytes() {
            Object obj = this.jobId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jobId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public long getLastMessageAddTime() {
            return this.lastMessageAddTime_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Params> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public String getRecordId() {
            Object obj = this.recordId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.recordId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public ByteString getRecordIdBytes() {
            Object obj = this.recordId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.recordId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public String getResourceId() {
            Object obj = this.resourceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.resourceId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public ByteString getResourceIdBytes() {
            Object obj = this.resourceId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resourceId_ = byteStringCopyFromUtf8;
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
            if (!getTokenBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.token_);
            }
            if (!getRecordIdBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.recordId_);
            }
            long j10 = this.lastMessageAddTime_;
            if (j10 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt64Size(4, j10);
            }
            boolean z10 = this.isInit_;
            if (z10) {
                iComputeInt32Size += CodedOutputStream.computeBoolSize(5, z10);
            }
            long j11 = this.gameId_;
            if (j11 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt64Size(6, j11);
            }
            if (!getServerNameBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(7, this.serverName_);
            }
            if (!getResourceIdBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(8, this.resourceId_);
            }
            if (!getJobIdBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(9, this.jobId_);
            }
            long j12 = this.switchoverGameId_;
            if (j12 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt64Size(10, j12);
            }
            int i12 = this.fromUid_;
            if (i12 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(11, i12);
            }
            boolean z11 = this.isReconnect_;
            if (z11) {
                iComputeInt32Size += CodedOutputStream.computeBoolSize(12, z11);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public String getServerName() {
            Object obj = this.serverName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.serverName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public ByteString getServerNameBytes() {
            Object obj = this.serverName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serverName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public long getSwitchoverGameId() {
            return this.switchoverGameId_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.e
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
            int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + getRecordId().hashCode()) * 37) + 4) * 53) + Internal.hashLong(getLastMessageAddTime())) * 37) + 5) * 53) + Internal.hashBoolean(getIsInit())) * 37) + 6) * 53) + Internal.hashLong(getGameId())) * 37) + 7) * 53) + getServerName().hashCode()) * 37) + 8) * 53) + getResourceId().hashCode()) * 37) + 9) * 53) + getJobId().hashCode()) * 37) + 10) * 53) + Internal.hashLong(getSwitchoverGameId())) * 37) + 11) * 53) + getFromUid()) * 37) + 12) * 53) + Internal.hashBoolean(getIsReconnect())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProto.f88071f.ensureFieldAccessorsInitialized(Params.class, b.class);
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
            if (!getRecordIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.recordId_);
            }
            long j10 = this.lastMessageAddTime_;
            if (j10 != 0) {
                output.writeInt64(4, j10);
            }
            boolean z10 = this.isInit_;
            if (z10) {
                output.writeBool(5, z10);
            }
            long j11 = this.gameId_;
            if (j11 != 0) {
                output.writeInt64(6, j11);
            }
            if (!getServerNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 7, this.serverName_);
            }
            if (!getResourceIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 8, this.resourceId_);
            }
            if (!getJobIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 9, this.jobId_);
            }
            long j12 = this.switchoverGameId_;
            if (j12 != 0) {
                output.writeInt64(10, j12);
            }
            int i11 = this.fromUid_;
            if (i11 != 0) {
                output.writeInt32(11, i11);
            }
            boolean z11 = this.isReconnect_;
            if (z11) {
                output.writeBool(12, z11);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ Params(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(Params prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static Params parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private Params(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Params parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Params) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static Params parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Params getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static Params parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private Params() {
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.recordId_ = "";
            this.serverName_ = "";
            this.resourceId_ = "";
            this.jobId_ = "";
        }

        public static Params parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static Params parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static Params parseFrom(InputStream input) throws IOException {
            return (Params) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static Params parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Params) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static Params parseFrom(CodedInputStream input) throws IOException {
            return (Params) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private Params(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                    this.uid_ = input.readInt32();
                                    continue;
                                case 18:
                                    this.token_ = input.readStringRequireUtf8();
                                    continue;
                                case 26:
                                    this.recordId_ = input.readStringRequireUtf8();
                                    continue;
                                case 32:
                                    this.lastMessageAddTime_ = input.readInt64();
                                    continue;
                                case 40:
                                    this.isInit_ = input.readBool();
                                    continue;
                                case 48:
                                    this.gameId_ = input.readInt64();
                                    continue;
                                case 58:
                                    this.serverName_ = input.readStringRequireUtf8();
                                    continue;
                                case 66:
                                    this.resourceId_ = input.readStringRequireUtf8();
                                    continue;
                                case 74:
                                    this.jobId_ = input.readStringRequireUtf8();
                                    continue;
                                case 80:
                                    this.switchoverGameId_ = input.readInt64();
                                    continue;
                                case 88:
                                    this.fromUid_ = input.readInt32();
                                    continue;
                                case 96:
                                    this.isReconnect_ = input.readBool();
                                    continue;
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

        public static Params parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Params) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class Pong extends GeneratedMessageV3 implements f {
        private static final Pong DEFAULT_INSTANCE = new Pong();
        private static final Parser<Pong> PARSER = new a();
        public static final int TIMESTAMP_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private long timestamp_;

        class a extends AbstractParser<Pong> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Pong parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new Pong(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements f {
            private long timestamp_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProto.f88080o;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearTimestamp() {
                this.timestamp_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProto.f88080o;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.f
            public long getTimestamp() {
                return this.timestamp_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProto.f88081p.ensureFieldAccessorsInitialized(Pong.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
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
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Pong build() {
                Pong pongBuildPartial = buildPartial();
                if (pongBuildPartial.isInitialized()) {
                    return pongBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) pongBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Pong buildPartial() {
                Pong pong = new Pong(this, (a) null);
                pong.timestamp_ = this.timestamp_;
                onBuilt();
                return pong;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Pong getDefaultInstanceForType() {
                return Pong.getDefaultInstance();
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
                this.timestamp_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof Pong) {
                    return mergeFrom((Pong) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(Pong other) {
                if (other == Pong.getDefaultInstance()) {
                    return this;
                }
                if (other.getTimestamp() != 0) {
                    setTimestamp(other.getTimestamp());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                Pong pong = null;
                try {
                    try {
                        Pong pong2 = (Pong) Pong.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (pong2 != null) {
                            mergeFrom(pong2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        Pong pong3 = (Pong) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            pong = pong3;
                            if (pong != null) {
                                mergeFrom(pong);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (pong != null) {
                        mergeFrom(pong);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ Pong(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static Pong getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProto.f88080o;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Pong parseDelimitedFrom(InputStream input) throws IOException {
            return (Pong) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static Pong parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<Pong> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Pong)) {
                return super.equals(obj);
            }
            Pong pong = (Pong) obj;
            return getTimestamp() == pong.getTimestamp() && this.unknownFields.equals(pong.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Pong> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            long j10 = this.timestamp_;
            int iComputeInt64Size = (j10 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j10) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = iComputeInt64Size;
            return iComputeInt64Size;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.f
        public long getTimestamp() {
            return this.timestamp_;
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
            int iHashCode = ((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getTimestamp())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProto.f88081p.ensureFieldAccessorsInitialized(Pong.class, b.class);
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
            long j10 = this.timestamp_;
            if (j10 != 0) {
                output.writeInt64(1, j10);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ Pong(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(Pong prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static Pong parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private Pong(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Pong parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Pong) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static Pong parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Pong getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static Pong parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private Pong() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Pong parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static Pong parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private Pong(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag != 8) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.timestamp_ = input.readInt64();
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

        public static Pong parseFrom(InputStream input) throws IOException {
            return (Pong) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static Pong parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Pong) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static Pong parseFrom(CodedInputStream input) throws IOException {
            return (Pong) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static Pong parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Pong) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class PushParams extends GeneratedMessageV3 implements g {
        public static final int ADDTIME_FIELD_NUMBER = 7;
        public static final int CONTENT_FIELD_NUMBER = 4;
        public static final int GAMEID_FIELD_NUMBER = 10;
        public static final int JOBID_FIELD_NUMBER = 9;
        public static final int JUMPCONTENT_FIELD_NUMBER = 5;
        public static final int MESSAGETYPE_FIELD_NUMBER = 2;
        public static final int POSITION_FIELD_NUMBER = 12;
        public static final int RECORDID_FIELD_NUMBER = 1;
        public static final int RESOURCEID_FIELD_NUMBER = 8;
        public static final int SERVERNAME_FIELD_NUMBER = 11;
        public static final int TITLE_FIELD_NUMBER = 3;
        public static final int UID_FIELD_NUMBER = 6;
        public static final int WAITPOSITION_FIELD_NUMBER = 13;
        private static final long serialVersionUID = 0;
        private long addTime_;
        private volatile Object content_;
        private long gameId_;
        private volatile Object jobId_;
        private volatile Object jumpContent_;
        private byte memoizedIsInitialized;
        private int messageType_;
        private int position_;
        private volatile Object recordId_;
        private volatile Object resourceId_;
        private volatile Object serverName_;
        private volatile Object title_;
        private int uid_;
        private int waitPosition_;
        private static final PushParams DEFAULT_INSTANCE = new PushParams();
        private static final Parser<PushParams> PARSER = new a();

        class a extends AbstractParser<PushParams> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PushParams parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new PushParams(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements g {
            private long addTime_;
            private Object content_;
            private long gameId_;
            private Object jobId_;
            private Object jumpContent_;
            private int messageType_;
            private int position_;
            private Object recordId_;
            private Object resourceId_;
            private Object serverName_;
            private Object title_;
            private int uid_;
            private int waitPosition_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProto.f88072g;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAddTime() {
                this.addTime_ = 0L;
                onChanged();
                return this;
            }

            public b clearContent() {
                this.content_ = PushParams.getDefaultInstance().getContent();
                onChanged();
                return this;
            }

            public b clearGameId() {
                this.gameId_ = 0L;
                onChanged();
                return this;
            }

            public b clearJobId() {
                this.jobId_ = PushParams.getDefaultInstance().getJobId();
                onChanged();
                return this;
            }

            public b clearJumpContent() {
                this.jumpContent_ = PushParams.getDefaultInstance().getJumpContent();
                onChanged();
                return this;
            }

            public b clearMessageType() {
                this.messageType_ = 0;
                onChanged();
                return this;
            }

            public b clearPosition() {
                this.position_ = 0;
                onChanged();
                return this;
            }

            public b clearRecordId() {
                this.recordId_ = PushParams.getDefaultInstance().getRecordId();
                onChanged();
                return this;
            }

            public b clearResourceId() {
                this.resourceId_ = PushParams.getDefaultInstance().getResourceId();
                onChanged();
                return this;
            }

            public b clearServerName() {
                this.serverName_ = PushParams.getDefaultInstance().getServerName();
                onChanged();
                return this;
            }

            public b clearTitle() {
                this.title_ = PushParams.getDefaultInstance().getTitle();
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            public b clearWaitPosition() {
                this.waitPosition_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public long getAddTime() {
                return this.addTime_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public String getContent() {
                Object obj = this.content_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.content_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public ByteString getContentBytes() {
                Object obj = this.content_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.content_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProto.f88072g;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public long getGameId() {
                return this.gameId_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public String getJobId() {
                Object obj = this.jobId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.jobId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public ByteString getJobIdBytes() {
                Object obj = this.jobId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.jobId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public String getJumpContent() {
                Object obj = this.jumpContent_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.jumpContent_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public ByteString getJumpContentBytes() {
                Object obj = this.jumpContent_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.jumpContent_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public int getMessageType() {
                return this.messageType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public int getPosition() {
                return this.position_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public String getRecordId() {
                Object obj = this.recordId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.recordId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public ByteString getRecordIdBytes() {
                Object obj = this.recordId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.recordId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public String getResourceId() {
                Object obj = this.resourceId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.resourceId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public ByteString getResourceIdBytes() {
                Object obj = this.resourceId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.resourceId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public String getServerName() {
                Object obj = this.serverName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.serverName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public ByteString getServerNameBytes() {
                Object obj = this.serverName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.serverName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public ByteString getTitleBytes() {
                Object obj = this.title_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.title_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public int getUid() {
                return this.uid_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.g
            public int getWaitPosition() {
                return this.waitPosition_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProto.f88073h.ensureFieldAccessorsInitialized(PushParams.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setAddTime(long value) {
                this.addTime_ = value;
                onChanged();
                return this;
            }

            public b setContent(String value) {
                value.getClass();
                this.content_ = value;
                onChanged();
                return this;
            }

            public b setContentBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.content_ = value;
                onChanged();
                return this;
            }

            public b setGameId(long value) {
                this.gameId_ = value;
                onChanged();
                return this;
            }

            public b setJobId(String value) {
                value.getClass();
                this.jobId_ = value;
                onChanged();
                return this;
            }

            public b setJobIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.jobId_ = value;
                onChanged();
                return this;
            }

            public b setJumpContent(String value) {
                value.getClass();
                this.jumpContent_ = value;
                onChanged();
                return this;
            }

            public b setJumpContentBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.jumpContent_ = value;
                onChanged();
                return this;
            }

            public b setMessageType(int value) {
                this.messageType_ = value;
                onChanged();
                return this;
            }

            public b setPosition(int value) {
                this.position_ = value;
                onChanged();
                return this;
            }

            public b setRecordId(String value) {
                value.getClass();
                this.recordId_ = value;
                onChanged();
                return this;
            }

            public b setRecordIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.recordId_ = value;
                onChanged();
                return this;
            }

            public b setResourceId(String value) {
                value.getClass();
                this.resourceId_ = value;
                onChanged();
                return this;
            }

            public b setResourceIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.resourceId_ = value;
                onChanged();
                return this;
            }

            public b setServerName(String value) {
                value.getClass();
                this.serverName_ = value;
                onChanged();
                return this;
            }

            public b setServerNameBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.serverName_ = value;
                onChanged();
                return this;
            }

            public b setTitle(String value) {
                value.getClass();
                this.title_ = value;
                onChanged();
                return this;
            }

            public b setTitleBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.title_ = value;
                onChanged();
                return this;
            }

            public b setUid(int value) {
                this.uid_ = value;
                onChanged();
                return this;
            }

            public b setWaitPosition(int value) {
                this.waitPosition_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.recordId_ = "";
                this.title_ = "";
                this.content_ = "";
                this.jumpContent_ = "";
                this.resourceId_ = "";
                this.jobId_ = "";
                this.serverName_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PushParams build() {
                PushParams pushParamsBuildPartial = buildPartial();
                if (pushParamsBuildPartial.isInitialized()) {
                    return pushParamsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) pushParamsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PushParams buildPartial() {
                PushParams pushParams = new PushParams(this, (a) null);
                pushParams.recordId_ = this.recordId_;
                pushParams.messageType_ = this.messageType_;
                pushParams.title_ = this.title_;
                pushParams.content_ = this.content_;
                pushParams.jumpContent_ = this.jumpContent_;
                pushParams.uid_ = this.uid_;
                pushParams.addTime_ = this.addTime_;
                pushParams.resourceId_ = this.resourceId_;
                pushParams.jobId_ = this.jobId_;
                pushParams.gameId_ = this.gameId_;
                pushParams.serverName_ = this.serverName_;
                pushParams.position_ = this.position_;
                pushParams.waitPosition_ = this.waitPosition_;
                onBuilt();
                return pushParams;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PushParams getDefaultInstanceForType() {
                return PushParams.getDefaultInstance();
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
                this.recordId_ = "";
                this.messageType_ = 0;
                this.title_ = "";
                this.content_ = "";
                this.jumpContent_ = "";
                this.uid_ = 0;
                this.addTime_ = 0L;
                this.resourceId_ = "";
                this.jobId_ = "";
                this.gameId_ = 0L;
                this.serverName_ = "";
                this.position_ = 0;
                this.waitPosition_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof PushParams) {
                    return mergeFrom((PushParams) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(PushParams other) {
                if (other == PushParams.getDefaultInstance()) {
                    return this;
                }
                if (!other.getRecordId().isEmpty()) {
                    this.recordId_ = other.recordId_;
                    onChanged();
                }
                if (other.getMessageType() != 0) {
                    setMessageType(other.getMessageType());
                }
                if (!other.getTitle().isEmpty()) {
                    this.title_ = other.title_;
                    onChanged();
                }
                if (!other.getContent().isEmpty()) {
                    this.content_ = other.content_;
                    onChanged();
                }
                if (!other.getJumpContent().isEmpty()) {
                    this.jumpContent_ = other.jumpContent_;
                    onChanged();
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (other.getAddTime() != 0) {
                    setAddTime(other.getAddTime());
                }
                if (!other.getResourceId().isEmpty()) {
                    this.resourceId_ = other.resourceId_;
                    onChanged();
                }
                if (!other.getJobId().isEmpty()) {
                    this.jobId_ = other.jobId_;
                    onChanged();
                }
                if (other.getGameId() != 0) {
                    setGameId(other.getGameId());
                }
                if (!other.getServerName().isEmpty()) {
                    this.serverName_ = other.serverName_;
                    onChanged();
                }
                if (other.getPosition() != 0) {
                    setPosition(other.getPosition());
                }
                if (other.getWaitPosition() != 0) {
                    setWaitPosition(other.getWaitPosition());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.recordId_ = "";
                this.title_ = "";
                this.content_ = "";
                this.jumpContent_ = "";
                this.resourceId_ = "";
                this.jobId_ = "";
                this.serverName_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                PushParams pushParams = null;
                try {
                    try {
                        PushParams pushParams2 = (PushParams) PushParams.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (pushParams2 != null) {
                            mergeFrom(pushParams2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        PushParams pushParams3 = (PushParams) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            pushParams = pushParams3;
                            if (pushParams != null) {
                                mergeFrom(pushParams);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (pushParams != null) {
                        mergeFrom(pushParams);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ PushParams(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static PushParams getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProto.f88072g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PushParams parseDelimitedFrom(InputStream input) throws IOException {
            return (PushParams) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static PushParams parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<PushParams> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PushParams)) {
                return super.equals(obj);
            }
            PushParams pushParams = (PushParams) obj;
            return getRecordId().equals(pushParams.getRecordId()) && getMessageType() == pushParams.getMessageType() && getTitle().equals(pushParams.getTitle()) && getContent().equals(pushParams.getContent()) && getJumpContent().equals(pushParams.getJumpContent()) && getUid() == pushParams.getUid() && getAddTime() == pushParams.getAddTime() && getResourceId().equals(pushParams.getResourceId()) && getJobId().equals(pushParams.getJobId()) && getGameId() == pushParams.getGameId() && getServerName().equals(pushParams.getServerName()) && getPosition() == pushParams.getPosition() && getWaitPosition() == pushParams.getWaitPosition() && this.unknownFields.equals(pushParams.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public long getAddTime() {
            return this.addTime_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public String getContent() {
            Object obj = this.content_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.content_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public ByteString getContentBytes() {
            Object obj = this.content_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.content_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public String getJobId() {
            Object obj = this.jobId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.jobId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public ByteString getJobIdBytes() {
            Object obj = this.jobId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jobId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public String getJumpContent() {
            Object obj = this.jumpContent_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.jumpContent_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public ByteString getJumpContentBytes() {
            Object obj = this.jumpContent_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jumpContent_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public int getMessageType() {
            return this.messageType_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PushParams> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public int getPosition() {
            return this.position_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public String getRecordId() {
            Object obj = this.recordId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.recordId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public ByteString getRecordIdBytes() {
            Object obj = this.recordId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.recordId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public String getResourceId() {
            Object obj = this.resourceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.resourceId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public ByteString getResourceIdBytes() {
            Object obj = this.resourceId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resourceId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getRecordIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.recordId_);
            int i11 = this.messageType_;
            if (i11 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(2, i11);
            }
            if (!getTitleBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.title_);
            }
            if (!getContentBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(4, this.content_);
            }
            if (!getJumpContentBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(5, this.jumpContent_);
            }
            int i12 = this.uid_;
            if (i12 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(6, i12);
            }
            long j10 = this.addTime_;
            if (j10 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt64Size(7, j10);
            }
            if (!getResourceIdBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(8, this.resourceId_);
            }
            if (!getJobIdBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(9, this.jobId_);
            }
            long j11 = this.gameId_;
            if (j11 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt64Size(10, j11);
            }
            if (!getServerNameBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(11, this.serverName_);
            }
            int i13 = this.position_;
            if (i13 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(12, i13);
            }
            int i14 = this.waitPosition_;
            if (i14 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(13, i14);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public String getServerName() {
            Object obj = this.serverName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.serverName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public ByteString getServerNameBytes() {
            Object obj = this.serverName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serverName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public int getUid() {
            return this.uid_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.g
        public int getWaitPosition() {
            return this.waitPosition_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getRecordId().hashCode()) * 37) + 2) * 53) + getMessageType()) * 37) + 3) * 53) + getTitle().hashCode()) * 37) + 4) * 53) + getContent().hashCode()) * 37) + 5) * 53) + getJumpContent().hashCode()) * 37) + 6) * 53) + getUid()) * 37) + 7) * 53) + Internal.hashLong(getAddTime())) * 37) + 8) * 53) + getResourceId().hashCode()) * 37) + 9) * 53) + getJobId().hashCode()) * 37) + 10) * 53) + Internal.hashLong(getGameId())) * 37) + 11) * 53) + getServerName().hashCode()) * 37) + 12) * 53) + getPosition()) * 37) + 13) * 53) + getWaitPosition()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProto.f88073h.ensureFieldAccessorsInitialized(PushParams.class, b.class);
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
            if (!getRecordIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.recordId_);
            }
            int i10 = this.messageType_;
            if (i10 != 0) {
                output.writeInt32(2, i10);
            }
            if (!getTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.title_);
            }
            if (!getContentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.content_);
            }
            if (!getJumpContentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.jumpContent_);
            }
            int i11 = this.uid_;
            if (i11 != 0) {
                output.writeInt32(6, i11);
            }
            long j10 = this.addTime_;
            if (j10 != 0) {
                output.writeInt64(7, j10);
            }
            if (!getResourceIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 8, this.resourceId_);
            }
            if (!getJobIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 9, this.jobId_);
            }
            long j11 = this.gameId_;
            if (j11 != 0) {
                output.writeInt64(10, j11);
            }
            if (!getServerNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 11, this.serverName_);
            }
            int i12 = this.position_;
            if (i12 != 0) {
                output.writeInt32(12, i12);
            }
            int i13 = this.waitPosition_;
            if (i13 != 0) {
                output.writeInt32(13, i13);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ PushParams(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(PushParams prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static PushParams parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private PushParams(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PushParams parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PushParams) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static PushParams parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PushParams getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static PushParams parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private PushParams() {
            this.memoizedIsInitialized = (byte) -1;
            this.recordId_ = "";
            this.title_ = "";
            this.content_ = "";
            this.jumpContent_ = "";
            this.resourceId_ = "";
            this.jobId_ = "";
            this.serverName_ = "";
        }

        public static PushParams parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static PushParams parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static PushParams parseFrom(InputStream input) throws IOException {
            return (PushParams) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PushParams parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PushParams) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static PushParams parseFrom(CodedInputStream input) throws IOException {
            return (PushParams) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static PushParams parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PushParams) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private PushParams(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        switch (tag) {
                            case 0:
                                break;
                            case 10:
                                this.recordId_ = input.readStringRequireUtf8();
                                continue;
                            case 16:
                                this.messageType_ = input.readInt32();
                                continue;
                            case 26:
                                this.title_ = input.readStringRequireUtf8();
                                continue;
                            case 34:
                                this.content_ = input.readStringRequireUtf8();
                                continue;
                            case 42:
                                this.jumpContent_ = input.readStringRequireUtf8();
                                continue;
                            case 48:
                                this.uid_ = input.readInt32();
                                continue;
                            case 56:
                                this.addTime_ = input.readInt64();
                                continue;
                            case 66:
                                this.resourceId_ = input.readStringRequireUtf8();
                                continue;
                            case 74:
                                this.jobId_ = input.readStringRequireUtf8();
                                continue;
                            case 80:
                                this.gameId_ = input.readInt64();
                                continue;
                            case 90:
                                this.serverName_ = input.readStringRequireUtf8();
                                continue;
                            case 96:
                                this.position_ = input.readInt32();
                                continue;
                            case 104:
                                this.waitPosition_ = input.readInt32();
                                continue;
                            default:
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    break;
                                }
                                break;
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
    }

    public static final class QueueInfo extends GeneratedMessageV3 implements h {
        public static final int ACCESSKEY_FIELD_NUMBER = 4;
        public static final int APPCHANNEL_FIELD_NUMBER = 5;
        public static final int BID_FIELD_NUMBER = 3;
        public static final int GAMEID_FIELD_NUMBER = 12;
        public static final int ISQUEUE_FIELD_NUMBER = 11;
        public static final int JOBID_FIELD_NUMBER = 2;
        public static final int POSITION_FIELD_NUMBER = 6;
        public static final int QUITGAMETIME_FIELD_NUMBER = 9;
        public static final int RESOURCEID_FIELD_NUMBER = 1;
        public static final int SWITCHOVERWAITPOSITION_FIELD_NUMBER = 8;
        public static final int UNUSEDQUEUECARDS_FIELD_NUMBER = 10;
        public static final int WAITPOSITION_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private volatile Object accessKey_;
        private volatile Object appChannel_;
        private volatile Object bid_;
        private long gameId_;
        private boolean isQueue_;
        private volatile Object jobId_;
        private byte memoizedIsInitialized;
        private int position_;
        private long quitGameTime_;
        private volatile Object resourceId_;
        private int switchoverWaitPosition_;
        private boolean unusedQueueCards_;
        private int waitPosition_;
        private static final QueueInfo DEFAULT_INSTANCE = new QueueInfo();
        private static final Parser<QueueInfo> PARSER = new a();

        class a extends AbstractParser<QueueInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public QueueInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new QueueInfo(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements h {
            private Object accessKey_;
            private Object appChannel_;
            private Object bid_;
            private long gameId_;
            private boolean isQueue_;
            private Object jobId_;
            private int position_;
            private long quitGameTime_;
            private Object resourceId_;
            private int switchoverWaitPosition_;
            private boolean unusedQueueCards_;
            private int waitPosition_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProto.f88078m;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAccessKey() {
                this.accessKey_ = QueueInfo.getDefaultInstance().getAccessKey();
                onChanged();
                return this;
            }

            public b clearAppChannel() {
                this.appChannel_ = QueueInfo.getDefaultInstance().getAppChannel();
                onChanged();
                return this;
            }

            public b clearBid() {
                this.bid_ = QueueInfo.getDefaultInstance().getBid();
                onChanged();
                return this;
            }

            public b clearGameId() {
                this.gameId_ = 0L;
                onChanged();
                return this;
            }

            public b clearIsQueue() {
                this.isQueue_ = false;
                onChanged();
                return this;
            }

            public b clearJobId() {
                this.jobId_ = QueueInfo.getDefaultInstance().getJobId();
                onChanged();
                return this;
            }

            public b clearPosition() {
                this.position_ = 0;
                onChanged();
                return this;
            }

            public b clearQuitGameTime() {
                this.quitGameTime_ = 0L;
                onChanged();
                return this;
            }

            public b clearResourceId() {
                this.resourceId_ = QueueInfo.getDefaultInstance().getResourceId();
                onChanged();
                return this;
            }

            public b clearSwitchoverWaitPosition() {
                this.switchoverWaitPosition_ = 0;
                onChanged();
                return this;
            }

            public b clearUnusedQueueCards() {
                this.unusedQueueCards_ = false;
                onChanged();
                return this;
            }

            public b clearWaitPosition() {
                this.waitPosition_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public String getAccessKey() {
                Object obj = this.accessKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.accessKey_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public ByteString getAccessKeyBytes() {
                Object obj = this.accessKey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.accessKey_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public String getAppChannel() {
                Object obj = this.appChannel_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appChannel_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public ByteString getAppChannelBytes() {
                Object obj = this.appChannel_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appChannel_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public String getBid() {
                Object obj = this.bid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bid_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public ByteString getBidBytes() {
                Object obj = this.bid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProto.f88078m;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public long getGameId() {
                return this.gameId_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public boolean getIsQueue() {
                return this.isQueue_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public String getJobId() {
                Object obj = this.jobId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.jobId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public ByteString getJobIdBytes() {
                Object obj = this.jobId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.jobId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public int getPosition() {
                return this.position_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public long getQuitGameTime() {
                return this.quitGameTime_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public String getResourceId() {
                Object obj = this.resourceId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.resourceId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public ByteString getResourceIdBytes() {
                Object obj = this.resourceId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.resourceId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public int getSwitchoverWaitPosition() {
                return this.switchoverWaitPosition_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public boolean getUnusedQueueCards() {
                return this.unusedQueueCards_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.h
            public int getWaitPosition() {
                return this.waitPosition_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProto.f88079n.ensureFieldAccessorsInitialized(QueueInfo.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setAccessKey(String value) {
                value.getClass();
                this.accessKey_ = value;
                onChanged();
                return this;
            }

            public b setAccessKeyBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.accessKey_ = value;
                onChanged();
                return this;
            }

            public b setAppChannel(String value) {
                value.getClass();
                this.appChannel_ = value;
                onChanged();
                return this;
            }

            public b setAppChannelBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.appChannel_ = value;
                onChanged();
                return this;
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

            public b setGameId(long value) {
                this.gameId_ = value;
                onChanged();
                return this;
            }

            public b setIsQueue(boolean value) {
                this.isQueue_ = value;
                onChanged();
                return this;
            }

            public b setJobId(String value) {
                value.getClass();
                this.jobId_ = value;
                onChanged();
                return this;
            }

            public b setJobIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.jobId_ = value;
                onChanged();
                return this;
            }

            public b setPosition(int value) {
                this.position_ = value;
                onChanged();
                return this;
            }

            public b setQuitGameTime(long value) {
                this.quitGameTime_ = value;
                onChanged();
                return this;
            }

            public b setResourceId(String value) {
                value.getClass();
                this.resourceId_ = value;
                onChanged();
                return this;
            }

            public b setResourceIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.resourceId_ = value;
                onChanged();
                return this;
            }

            public b setSwitchoverWaitPosition(int value) {
                this.switchoverWaitPosition_ = value;
                onChanged();
                return this;
            }

            public b setUnusedQueueCards(boolean value) {
                this.unusedQueueCards_ = value;
                onChanged();
                return this;
            }

            public b setWaitPosition(int value) {
                this.waitPosition_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.resourceId_ = "";
                this.jobId_ = "";
                this.bid_ = "";
                this.accessKey_ = "";
                this.appChannel_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public QueueInfo build() {
                QueueInfo queueInfoBuildPartial = buildPartial();
                if (queueInfoBuildPartial.isInitialized()) {
                    return queueInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) queueInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public QueueInfo buildPartial() {
                QueueInfo queueInfo = new QueueInfo(this, (a) null);
                queueInfo.resourceId_ = this.resourceId_;
                queueInfo.jobId_ = this.jobId_;
                queueInfo.bid_ = this.bid_;
                queueInfo.accessKey_ = this.accessKey_;
                queueInfo.appChannel_ = this.appChannel_;
                queueInfo.position_ = this.position_;
                queueInfo.waitPosition_ = this.waitPosition_;
                queueInfo.switchoverWaitPosition_ = this.switchoverWaitPosition_;
                queueInfo.quitGameTime_ = this.quitGameTime_;
                queueInfo.unusedQueueCards_ = this.unusedQueueCards_;
                queueInfo.isQueue_ = this.isQueue_;
                queueInfo.gameId_ = this.gameId_;
                onBuilt();
                return queueInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public QueueInfo getDefaultInstanceForType() {
                return QueueInfo.getDefaultInstance();
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
                this.resourceId_ = "";
                this.jobId_ = "";
                this.bid_ = "";
                this.accessKey_ = "";
                this.appChannel_ = "";
                this.position_ = 0;
                this.waitPosition_ = 0;
                this.switchoverWaitPosition_ = 0;
                this.quitGameTime_ = 0L;
                this.unusedQueueCards_ = false;
                this.isQueue_ = false;
                this.gameId_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof QueueInfo) {
                    return mergeFrom((QueueInfo) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.resourceId_ = "";
                this.jobId_ = "";
                this.bid_ = "";
                this.accessKey_ = "";
                this.appChannel_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(QueueInfo other) {
                if (other == QueueInfo.getDefaultInstance()) {
                    return this;
                }
                if (!other.getResourceId().isEmpty()) {
                    this.resourceId_ = other.resourceId_;
                    onChanged();
                }
                if (!other.getJobId().isEmpty()) {
                    this.jobId_ = other.jobId_;
                    onChanged();
                }
                if (!other.getBid().isEmpty()) {
                    this.bid_ = other.bid_;
                    onChanged();
                }
                if (!other.getAccessKey().isEmpty()) {
                    this.accessKey_ = other.accessKey_;
                    onChanged();
                }
                if (!other.getAppChannel().isEmpty()) {
                    this.appChannel_ = other.appChannel_;
                    onChanged();
                }
                if (other.getPosition() != 0) {
                    setPosition(other.getPosition());
                }
                if (other.getWaitPosition() != 0) {
                    setWaitPosition(other.getWaitPosition());
                }
                if (other.getSwitchoverWaitPosition() != 0) {
                    setSwitchoverWaitPosition(other.getSwitchoverWaitPosition());
                }
                if (other.getQuitGameTime() != 0) {
                    setQuitGameTime(other.getQuitGameTime());
                }
                if (other.getUnusedQueueCards()) {
                    setUnusedQueueCards(other.getUnusedQueueCards());
                }
                if (other.getIsQueue()) {
                    setIsQueue(other.getIsQueue());
                }
                if (other.getGameId() != 0) {
                    setGameId(other.getGameId());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                QueueInfo queueInfo = null;
                try {
                    try {
                        QueueInfo queueInfo2 = (QueueInfo) QueueInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (queueInfo2 != null) {
                            mergeFrom(queueInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        QueueInfo queueInfo3 = (QueueInfo) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            queueInfo = queueInfo3;
                            if (queueInfo != null) {
                                mergeFrom(queueInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (queueInfo != null) {
                        mergeFrom(queueInfo);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ QueueInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static QueueInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProto.f88078m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static QueueInfo parseDelimitedFrom(InputStream input) throws IOException {
            return (QueueInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static QueueInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<QueueInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof QueueInfo)) {
                return super.equals(obj);
            }
            QueueInfo queueInfo = (QueueInfo) obj;
            return getResourceId().equals(queueInfo.getResourceId()) && getJobId().equals(queueInfo.getJobId()) && getBid().equals(queueInfo.getBid()) && getAccessKey().equals(queueInfo.getAccessKey()) && getAppChannel().equals(queueInfo.getAppChannel()) && getPosition() == queueInfo.getPosition() && getWaitPosition() == queueInfo.getWaitPosition() && getSwitchoverWaitPosition() == queueInfo.getSwitchoverWaitPosition() && getQuitGameTime() == queueInfo.getQuitGameTime() && getUnusedQueueCards() == queueInfo.getUnusedQueueCards() && getIsQueue() == queueInfo.getIsQueue() && getGameId() == queueInfo.getGameId() && this.unknownFields.equals(queueInfo.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public String getAccessKey() {
            Object obj = this.accessKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.accessKey_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public ByteString getAccessKeyBytes() {
            Object obj = this.accessKey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.accessKey_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public String getAppChannel() {
            Object obj = this.appChannel_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appChannel_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public ByteString getAppChannelBytes() {
            Object obj = this.appChannel_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appChannel_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public String getBid() {
            Object obj = this.bid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public ByteString getBidBytes() {
            Object obj = this.bid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bid_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public boolean getIsQueue() {
            return this.isQueue_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public String getJobId() {
            Object obj = this.jobId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.jobId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public ByteString getJobIdBytes() {
            Object obj = this.jobId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jobId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<QueueInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public int getPosition() {
            return this.position_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public long getQuitGameTime() {
            return this.quitGameTime_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public String getResourceId() {
            Object obj = this.resourceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.resourceId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public ByteString getResourceIdBytes() {
            Object obj = this.resourceId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resourceId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getResourceIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.resourceId_);
            if (!getJobIdBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.jobId_);
            }
            if (!getBidBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.bid_);
            }
            if (!getAccessKeyBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(4, this.accessKey_);
            }
            if (!getAppChannelBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(5, this.appChannel_);
            }
            int i11 = this.position_;
            if (i11 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(6, i11);
            }
            int i12 = this.waitPosition_;
            if (i12 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(7, i12);
            }
            int i13 = this.switchoverWaitPosition_;
            if (i13 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(8, i13);
            }
            long j10 = this.quitGameTime_;
            if (j10 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt64Size(9, j10);
            }
            boolean z10 = this.unusedQueueCards_;
            if (z10) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(10, z10);
            }
            boolean z11 = this.isQueue_;
            if (z11) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(11, z11);
            }
            long j11 = this.gameId_;
            if (j11 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt64Size(12, j11);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public int getSwitchoverWaitPosition() {
            return this.switchoverWaitPosition_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public boolean getUnusedQueueCards() {
            return this.unusedQueueCards_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.h
        public int getWaitPosition() {
            return this.waitPosition_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getResourceId().hashCode()) * 37) + 2) * 53) + getJobId().hashCode()) * 37) + 3) * 53) + getBid().hashCode()) * 37) + 4) * 53) + getAccessKey().hashCode()) * 37) + 5) * 53) + getAppChannel().hashCode()) * 37) + 6) * 53) + getPosition()) * 37) + 7) * 53) + getWaitPosition()) * 37) + 8) * 53) + getSwitchoverWaitPosition()) * 37) + 9) * 53) + Internal.hashLong(getQuitGameTime())) * 37) + 10) * 53) + Internal.hashBoolean(getUnusedQueueCards())) * 37) + 11) * 53) + Internal.hashBoolean(getIsQueue())) * 37) + 12) * 53) + Internal.hashLong(getGameId())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProto.f88079n.ensureFieldAccessorsInitialized(QueueInfo.class, b.class);
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
            if (!getResourceIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.resourceId_);
            }
            if (!getJobIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.jobId_);
            }
            if (!getBidBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.bid_);
            }
            if (!getAccessKeyBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.accessKey_);
            }
            if (!getAppChannelBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.appChannel_);
            }
            int i10 = this.position_;
            if (i10 != 0) {
                output.writeInt32(6, i10);
            }
            int i11 = this.waitPosition_;
            if (i11 != 0) {
                output.writeInt32(7, i11);
            }
            int i12 = this.switchoverWaitPosition_;
            if (i12 != 0) {
                output.writeInt32(8, i12);
            }
            long j10 = this.quitGameTime_;
            if (j10 != 0) {
                output.writeInt64(9, j10);
            }
            boolean z10 = this.unusedQueueCards_;
            if (z10) {
                output.writeBool(10, z10);
            }
            boolean z11 = this.isQueue_;
            if (z11) {
                output.writeBool(11, z11);
            }
            long j11 = this.gameId_;
            if (j11 != 0) {
                output.writeInt64(12, j11);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ QueueInfo(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(QueueInfo prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static QueueInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private QueueInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static QueueInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (QueueInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static QueueInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public QueueInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static QueueInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private QueueInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.resourceId_ = "";
            this.jobId_ = "";
            this.bid_ = "";
            this.accessKey_ = "";
            this.appChannel_ = "";
        }

        public static QueueInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static QueueInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static QueueInfo parseFrom(InputStream input) throws IOException {
            return (QueueInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static QueueInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (QueueInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static QueueInfo parseFrom(CodedInputStream input) throws IOException {
            return (QueueInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private QueueInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                case 10:
                                    this.resourceId_ = input.readStringRequireUtf8();
                                    continue;
                                case 18:
                                    this.jobId_ = input.readStringRequireUtf8();
                                    continue;
                                case 26:
                                    this.bid_ = input.readStringRequireUtf8();
                                    continue;
                                case 34:
                                    this.accessKey_ = input.readStringRequireUtf8();
                                    continue;
                                case 42:
                                    this.appChannel_ = input.readStringRequireUtf8();
                                    continue;
                                case 48:
                                    this.position_ = input.readInt32();
                                    continue;
                                case 56:
                                    this.waitPosition_ = input.readInt32();
                                    continue;
                                case 64:
                                    this.switchoverWaitPosition_ = input.readInt32();
                                    continue;
                                case 72:
                                    this.quitGameTime_ = input.readInt64();
                                    continue;
                                case 80:
                                    this.unusedQueueCards_ = input.readBool();
                                    continue;
                                case 88:
                                    this.isQueue_ = input.readBool();
                                    continue;
                                case 96:
                                    this.gameId_ = input.readInt64();
                                    continue;
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

        public static QueueInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (QueueInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class Response extends GeneratedMessageV3 implements i {
        public static final int BROADCASTUSERS_FIELD_NUMBER = 5;
        public static final int ERRORCODE_FIELD_NUMBER = 11;
        public static final int ERROR_FIELD_NUMBER = 6;
        public static final int LOGICERRORCODE_FIELD_NUMBER = 8;
        public static final int MESSAGEINFO_FIELD_NUMBER = 4;
        public static final int ONLINEPEOPLECOUNT_FIELD_NUMBER = 9;
        public static final int PONG_FIELD_NUMBER = 7;
        public static final int QUEUEINFO_FIELD_NUMBER = 10;
        public static final int REQUESTID_FIELD_NUMBER = 2;
        public static final int STATUSCODE_FIELD_NUMBER = 1;
        public static final int TYPE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int broadcastUsersMemoizedSerializedSize;
        private Internal.IntList broadcastUsers_;
        private int errorCode_;
        private volatile Object error_;
        private int logicErrorCode_;
        private byte memoizedIsInitialized;
        private List<MessageInfo> messageInfo_;
        private int onlinePeopleCount_;
        private Pong pong_;
        private QueueInfo queueInfo_;
        private long requestId_;
        private int statusCode_;
        private int type_;
        private static final Response DEFAULT_INSTANCE = new Response();
        private static final Parser<Response> PARSER = new a();

        public enum LogicErrorCode implements ProtocolMessageEnum {
            UNDEFINED_ERROR_CODE(0),
            NOT_FOUND_MESSAGE(1),
            LOGIN_FAIL(2),
            LOGIN_TOKEN_FAIL(3),
            LOGIN_UID_FAIL(4),
            JOIN_QUEUE_FAIL(5),
            NOTIFICATION_QUEUE_FAIL(6),
            STATUS_QUEUE_FAIL(7),
            CONFIRM_QUEUE_FAIL(8),
            SWITCHOVER_QUEUE_FAIL(9),
            EXIT_QUEUE_FAIL(10),
            UNRECOGNIZED(-1);

            public static final int CONFIRM_QUEUE_FAIL_VALUE = 8;
            public static final int EXIT_QUEUE_FAIL_VALUE = 10;
            public static final int JOIN_QUEUE_FAIL_VALUE = 5;
            public static final int LOGIN_FAIL_VALUE = 2;
            public static final int LOGIN_TOKEN_FAIL_VALUE = 3;
            public static final int LOGIN_UID_FAIL_VALUE = 4;
            public static final int NOTIFICATION_QUEUE_FAIL_VALUE = 6;
            public static final int NOT_FOUND_MESSAGE_VALUE = 1;
            public static final int STATUS_QUEUE_FAIL_VALUE = 7;
            public static final int SWITCHOVER_QUEUE_FAIL_VALUE = 9;
            public static final int UNDEFINED_ERROR_CODE_VALUE = 0;
            private final int value;
            private static final Internal.EnumLiteMap<LogicErrorCode> internalValueMap = new a();
            private static final LogicErrorCode[] VALUES = values();

            class a implements Internal.EnumLiteMap<LogicErrorCode> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public LogicErrorCode findValueByNumber(int number) {
                    return LogicErrorCode.forNumber(number);
                }
            }

            LogicErrorCode(int value) {
                this.value = value;
            }

            public static LogicErrorCode forNumber(int value) {
                switch (value) {
                    case 0:
                        return UNDEFINED_ERROR_CODE;
                    case 1:
                        return NOT_FOUND_MESSAGE;
                    case 2:
                        return LOGIN_FAIL;
                    case 3:
                        return LOGIN_TOKEN_FAIL;
                    case 4:
                        return LOGIN_UID_FAIL;
                    case 5:
                        return JOIN_QUEUE_FAIL;
                    case 6:
                        return NOTIFICATION_QUEUE_FAIL;
                    case 7:
                        return STATUS_QUEUE_FAIL;
                    case 8:
                        return CONFIRM_QUEUE_FAIL;
                    case 9:
                        return SWITCHOVER_QUEUE_FAIL;
                    case 10:
                        return EXIT_QUEUE_FAIL;
                    default:
                        return null;
                }
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return Response.getDescriptor().getEnumTypes().get(2);
            }

            public static Internal.EnumLiteMap<LogicErrorCode> internalGetValueMap() {
                return internalValueMap;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static LogicErrorCode valueOf(int value) {
                return forNumber(value);
            }

            public static LogicErrorCode valueOf(Descriptors.EnumValueDescriptor desc) {
                if (desc.getType() == getDescriptor()) {
                    if (desc.getIndex() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[desc.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum ProtoType implements ProtocolMessageEnum {
            UNDEFINED_RESPONSE(0),
            PONG(1),
            MESSAGE_LIST(2),
            UPDATE_AREA_ONLINE_PEOPLE_BROADCAST(3),
            IDLE_TIMEOUT(4),
            PUSH_LIMIT_TIPS(5),
            MESSAGE_STATUS(6),
            LOGIN_STATUS(7),
            NOTIFICATION_MESSAGE_LIST(8),
            JOIN_QUEUE_STATUS(10),
            NOTIFICATION_QUEUE_STATUS(9),
            CONFIRM_QUEUE_STATUS(11),
            RESPONSE_QUEUE_STATUS(12),
            SWITCHOVER_QUEUE_STATUS(13),
            CONFIRM_SWITCHOVER_QUEUE_STATUS(14),
            RESPONSE_MESSAGE_STATUS(15),
            EXIT_QUEUE_STATUS(16),
            RESOURCE_TIME_OUT_STATUS(17),
            NOTIFICATION_UPDATE_QUEUE_STATUS_STATUS(18),
            UNRECOGNIZED(-1);

            public static final int CONFIRM_QUEUE_STATUS_VALUE = 11;
            public static final int CONFIRM_SWITCHOVER_QUEUE_STATUS_VALUE = 14;
            public static final int EXIT_QUEUE_STATUS_VALUE = 16;
            public static final int IDLE_TIMEOUT_VALUE = 4;
            public static final int JOIN_QUEUE_STATUS_VALUE = 10;
            public static final int LOGIN_STATUS_VALUE = 7;
            public static final int MESSAGE_LIST_VALUE = 2;
            public static final int MESSAGE_STATUS_VALUE = 6;
            public static final int NOTIFICATION_MESSAGE_LIST_VALUE = 8;
            public static final int NOTIFICATION_QUEUE_STATUS_VALUE = 9;
            public static final int NOTIFICATION_UPDATE_QUEUE_STATUS_STATUS_VALUE = 18;
            public static final int PONG_VALUE = 1;
            public static final int PUSH_LIMIT_TIPS_VALUE = 5;
            public static final int RESOURCE_TIME_OUT_STATUS_VALUE = 17;
            public static final int RESPONSE_MESSAGE_STATUS_VALUE = 15;
            public static final int RESPONSE_QUEUE_STATUS_VALUE = 12;
            public static final int SWITCHOVER_QUEUE_STATUS_VALUE = 13;
            public static final int UNDEFINED_RESPONSE_VALUE = 0;
            public static final int UPDATE_AREA_ONLINE_PEOPLE_BROADCAST_VALUE = 3;
            private final int value;
            private static final Internal.EnumLiteMap<ProtoType> internalValueMap = new a();
            private static final ProtoType[] VALUES = values();

            class a implements Internal.EnumLiteMap<ProtoType> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public ProtoType findValueByNumber(int number) {
                    return ProtoType.forNumber(number);
                }
            }

            ProtoType(int value) {
                this.value = value;
            }

            public static ProtoType forNumber(int value) {
                switch (value) {
                    case 0:
                        return UNDEFINED_RESPONSE;
                    case 1:
                        return PONG;
                    case 2:
                        return MESSAGE_LIST;
                    case 3:
                        return UPDATE_AREA_ONLINE_PEOPLE_BROADCAST;
                    case 4:
                        return IDLE_TIMEOUT;
                    case 5:
                        return PUSH_LIMIT_TIPS;
                    case 6:
                        return MESSAGE_STATUS;
                    case 7:
                        return LOGIN_STATUS;
                    case 8:
                        return NOTIFICATION_MESSAGE_LIST;
                    case 9:
                        return NOTIFICATION_QUEUE_STATUS;
                    case 10:
                        return JOIN_QUEUE_STATUS;
                    case 11:
                        return CONFIRM_QUEUE_STATUS;
                    case 12:
                        return RESPONSE_QUEUE_STATUS;
                    case 13:
                        return SWITCHOVER_QUEUE_STATUS;
                    case 14:
                        return CONFIRM_SWITCHOVER_QUEUE_STATUS;
                    case 15:
                        return RESPONSE_MESSAGE_STATUS;
                    case 16:
                        return EXIT_QUEUE_STATUS;
                    case 17:
                        return RESOURCE_TIME_OUT_STATUS;
                    case 18:
                        return NOTIFICATION_UPDATE_QUEUE_STATUS_STATUS;
                    default:
                        return null;
                }
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return Response.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<ProtoType> internalGetValueMap() {
                return internalValueMap;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static ProtoType valueOf(int value) {
                return forNumber(value);
            }

            public static ProtoType valueOf(Descriptors.EnumValueDescriptor desc) {
                if (desc.getType() == getDescriptor()) {
                    if (desc.getIndex() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[desc.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public enum StatusCode implements ProtocolMessageEnum {
            UNDEFINED_CODE(0),
            SERVICE_FAILURE(1),
            PARAMS_FAILURE(2),
            INTERNAL_FAILURE(3),
            UN_LOGIN_FAILURE(4),
            RESULT_FAILURE(5),
            RESULT_SUCCESS(6),
            USER_TOKEN_FAILURE(7),
            PUSH_AUTHORIZATION_FAILURE(8),
            UNRECOGNIZED(-1);

            public static final int INTERNAL_FAILURE_VALUE = 3;
            public static final int PARAMS_FAILURE_VALUE = 2;
            public static final int PUSH_AUTHORIZATION_FAILURE_VALUE = 8;
            public static final int RESULT_FAILURE_VALUE = 5;
            public static final int RESULT_SUCCESS_VALUE = 6;
            public static final int SERVICE_FAILURE_VALUE = 1;
            public static final int UNDEFINED_CODE_VALUE = 0;
            public static final int UN_LOGIN_FAILURE_VALUE = 4;
            public static final int USER_TOKEN_FAILURE_VALUE = 7;
            private final int value;
            private static final Internal.EnumLiteMap<StatusCode> internalValueMap = new a();
            private static final StatusCode[] VALUES = values();

            class a implements Internal.EnumLiteMap<StatusCode> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public StatusCode findValueByNumber(int number) {
                    return StatusCode.forNumber(number);
                }
            }

            StatusCode(int value) {
                this.value = value;
            }

            public static StatusCode forNumber(int value) {
                switch (value) {
                    case 0:
                        return UNDEFINED_CODE;
                    case 1:
                        return SERVICE_FAILURE;
                    case 2:
                        return PARAMS_FAILURE;
                    case 3:
                        return INTERNAL_FAILURE;
                    case 4:
                        return UN_LOGIN_FAILURE;
                    case 5:
                        return RESULT_FAILURE;
                    case 6:
                        return RESULT_SUCCESS;
                    case 7:
                        return USER_TOKEN_FAILURE;
                    case 8:
                        return PUSH_AUTHORIZATION_FAILURE;
                    default:
                        return null;
                }
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return Response.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<StatusCode> internalGetValueMap() {
                return internalValueMap;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static StatusCode valueOf(int value) {
                return forNumber(value);
            }

            public static StatusCode valueOf(Descriptors.EnumValueDescriptor desc) {
                if (desc.getType() == getDescriptor()) {
                    if (desc.getIndex() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[desc.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        class a extends AbstractParser<Response> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Response parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new Response(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements i {
            private int bitField0_;
            private Internal.IntList broadcastUsers_;
            private int errorCode_;
            private Object error_;
            private int logicErrorCode_;
            private RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> messageInfoBuilder_;
            private List<MessageInfo> messageInfo_;
            private int onlinePeopleCount_;
            private SingleFieldBuilderV3<Pong, Pong.b, f> pongBuilder_;
            private Pong pong_;
            private SingleFieldBuilderV3<QueueInfo, QueueInfo.b, h> queueInfoBuilder_;
            private QueueInfo queueInfo_;
            private long requestId_;
            private int statusCode_;
            private int type_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private void ensureBroadcastUsersIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.broadcastUsers_ = GeneratedMessageV3.mutableCopy(this.broadcastUsers_);
                    this.bitField0_ |= 16;
                }
            }

            private void ensureMessageInfoIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.messageInfo_ = new ArrayList(this.messageInfo_);
                    this.bitField0_ |= 8;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProto.f88074i;
            }

            private RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> getMessageInfoFieldBuilder() {
                if (this.messageInfoBuilder_ == null) {
                    this.messageInfoBuilder_ = new RepeatedFieldBuilderV3<>(this.messageInfo_, (this.bitField0_ & 8) != 0, getParentForChildren(), isClean());
                    this.messageInfo_ = null;
                }
                return this.messageInfoBuilder_;
            }

            private SingleFieldBuilderV3<Pong, Pong.b, f> getPongFieldBuilder() {
                if (this.pongBuilder_ == null) {
                    this.pongBuilder_ = new SingleFieldBuilderV3<>(getPong(), getParentForChildren(), isClean());
                    this.pong_ = null;
                }
                return this.pongBuilder_;
            }

            private SingleFieldBuilderV3<QueueInfo, QueueInfo.b, h> getQueueInfoFieldBuilder() {
                if (this.queueInfoBuilder_ == null) {
                    this.queueInfoBuilder_ = new SingleFieldBuilderV3<>(getQueueInfo(), getParentForChildren(), isClean());
                    this.queueInfo_ = null;
                }
                return this.queueInfoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getMessageInfoFieldBuilder();
                }
            }

            public b addAllBroadcastUsers(Iterable<? extends Integer> values) {
                ensureBroadcastUsersIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.broadcastUsers_);
                onChanged();
                return this;
            }

            public b addAllMessageInfo(Iterable<? extends MessageInfo> values) {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureMessageInfoIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.messageInfo_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(values);
                }
                return this;
            }

            public b addBroadcastUsers(int value) {
                ensureBroadcastUsersIsMutable();
                this.broadcastUsers_.addInt(value);
                onChanged();
                return this;
            }

            public b addMessageInfo(MessageInfo value) {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureMessageInfoIsMutable();
                    this.messageInfo_.add(value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(value);
                }
                return this;
            }

            public MessageInfo.b addMessageInfoBuilder() {
                return (MessageInfo.b) getMessageInfoFieldBuilder().addBuilder(MessageInfo.getDefaultInstance());
            }

            public b clearBroadcastUsers() {
                this.broadcastUsers_ = GeneratedMessageV3.emptyIntList();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public b clearError() {
                this.error_ = Response.getDefaultInstance().getError();
                onChanged();
                return this;
            }

            public b clearErrorCode() {
                this.errorCode_ = 0;
                onChanged();
                return this;
            }

            public b clearLogicErrorCode() {
                this.logicErrorCode_ = 0;
                onChanged();
                return this;
            }

            public b clearMessageInfo() {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.messageInfo_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public b clearOnlinePeopleCount() {
                this.onlinePeopleCount_ = 0;
                onChanged();
                return this;
            }

            public b clearPong() {
                if (this.pongBuilder_ == null) {
                    this.pong_ = null;
                    onChanged();
                } else {
                    this.pong_ = null;
                    this.pongBuilder_ = null;
                }
                return this;
            }

            public b clearQueueInfo() {
                if (this.queueInfoBuilder_ == null) {
                    this.queueInfo_ = null;
                    onChanged();
                } else {
                    this.queueInfo_ = null;
                    this.queueInfoBuilder_ = null;
                }
                return this;
            }

            public b clearRequestId() {
                this.requestId_ = 0L;
                onChanged();
                return this;
            }

            public b clearStatusCode() {
                this.statusCode_ = 0;
                onChanged();
                return this;
            }

            public b clearType() {
                this.type_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public int getBroadcastUsers(int index) {
                return this.broadcastUsers_.getInt(index);
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public int getBroadcastUsersCount() {
                return this.broadcastUsers_.size();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public List<Integer> getBroadcastUsersList() {
                return (this.bitField0_ & 16) != 0 ? Collections.unmodifiableList(this.broadcastUsers_) : this.broadcastUsers_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProto.f88074i;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public String getError() {
                Object obj = this.error_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.error_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public ByteString getErrorBytes() {
                Object obj = this.error_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.error_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public int getErrorCode() {
                return this.errorCode_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public LogicErrorCode getLogicErrorCode() {
                LogicErrorCode logicErrorCodeValueOf = LogicErrorCode.valueOf(this.logicErrorCode_);
                return logicErrorCodeValueOf == null ? LogicErrorCode.UNRECOGNIZED : logicErrorCodeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public int getLogicErrorCodeValue() {
                return this.logicErrorCode_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public MessageInfo getMessageInfo(int index) {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.messageInfo_.get(index) : (MessageInfo) repeatedFieldBuilderV3.getMessage(index);
            }

            public MessageInfo.b getMessageInfoBuilder(int index) {
                return (MessageInfo.b) getMessageInfoFieldBuilder().getBuilder(index);
            }

            public List<MessageInfo.b> getMessageInfoBuilderList() {
                return getMessageInfoFieldBuilder().getBuilderList();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public int getMessageInfoCount() {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.messageInfo_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public List<MessageInfo> getMessageInfoList() {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.messageInfo_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public c getMessageInfoOrBuilder(int index) {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.messageInfo_.get(index) : (c) repeatedFieldBuilderV3.getMessageOrBuilder(index);
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public List<? extends c> getMessageInfoOrBuilderList() {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.messageInfo_);
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public int getOnlinePeopleCount() {
                return this.onlinePeopleCount_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public Pong getPong() {
                SingleFieldBuilderV3<Pong, Pong.b, f> singleFieldBuilderV3 = this.pongBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (Pong) singleFieldBuilderV3.getMessage();
                }
                Pong pong = this.pong_;
                return pong == null ? Pong.getDefaultInstance() : pong;
            }

            public Pong.b getPongBuilder() {
                onChanged();
                return (Pong.b) getPongFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public f getPongOrBuilder() {
                SingleFieldBuilderV3<Pong, Pong.b, f> singleFieldBuilderV3 = this.pongBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (f) singleFieldBuilderV3.getMessageOrBuilder();
                }
                Pong pong = this.pong_;
                return pong == null ? Pong.getDefaultInstance() : pong;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public QueueInfo getQueueInfo() {
                SingleFieldBuilderV3<QueueInfo, QueueInfo.b, h> singleFieldBuilderV3 = this.queueInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (QueueInfo) singleFieldBuilderV3.getMessage();
                }
                QueueInfo queueInfo = this.queueInfo_;
                return queueInfo == null ? QueueInfo.getDefaultInstance() : queueInfo;
            }

            public QueueInfo.b getQueueInfoBuilder() {
                onChanged();
                return (QueueInfo.b) getQueueInfoFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public h getQueueInfoOrBuilder() {
                SingleFieldBuilderV3<QueueInfo, QueueInfo.b, h> singleFieldBuilderV3 = this.queueInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (h) singleFieldBuilderV3.getMessageOrBuilder();
                }
                QueueInfo queueInfo = this.queueInfo_;
                return queueInfo == null ? QueueInfo.getDefaultInstance() : queueInfo;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public long getRequestId() {
                return this.requestId_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public StatusCode getStatusCode() {
                StatusCode statusCodeValueOf = StatusCode.valueOf(this.statusCode_);
                return statusCodeValueOf == null ? StatusCode.UNRECOGNIZED : statusCodeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public int getStatusCodeValue() {
                return this.statusCode_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public ProtoType getType() {
                ProtoType protoTypeValueOf = ProtoType.valueOf(this.type_);
                return protoTypeValueOf == null ? ProtoType.UNRECOGNIZED : protoTypeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public int getTypeValue() {
                return this.type_;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public boolean hasPong() {
                return (this.pongBuilder_ == null && this.pong_ == null) ? false : true;
            }

            @Override // com.wufan.user.service.protobuf.MessageProto.i
            public boolean hasQueueInfo() {
                return (this.queueInfoBuilder_ == null && this.queueInfo_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProto.f88075j.ensureFieldAccessorsInitialized(Response.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergePong(Pong value) {
                SingleFieldBuilderV3<Pong, Pong.b, f> singleFieldBuilderV3 = this.pongBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Pong pong = this.pong_;
                    if (pong != null) {
                        this.pong_ = Pong.newBuilder(pong).mergeFrom(value).buildPartial();
                    } else {
                        this.pong_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b mergeQueueInfo(QueueInfo value) {
                SingleFieldBuilderV3<QueueInfo, QueueInfo.b, h> singleFieldBuilderV3 = this.queueInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    QueueInfo queueInfo = this.queueInfo_;
                    if (queueInfo != null) {
                        this.queueInfo_ = QueueInfo.newBuilder(queueInfo).mergeFrom(value).buildPartial();
                    } else {
                        this.queueInfo_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b removeMessageInfo(int index) {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureMessageInfoIsMutable();
                    this.messageInfo_.remove(index);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(index);
                }
                return this;
            }

            public b setBroadcastUsers(int index, int value) {
                ensureBroadcastUsersIsMutable();
                this.broadcastUsers_.setInt(index, value);
                onChanged();
                return this;
            }

            public b setError(String value) {
                value.getClass();
                this.error_ = value;
                onChanged();
                return this;
            }

            public b setErrorBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.error_ = value;
                onChanged();
                return this;
            }

            public b setErrorCode(int value) {
                this.errorCode_ = value;
                onChanged();
                return this;
            }

            public b setLogicErrorCode(LogicErrorCode value) {
                value.getClass();
                this.logicErrorCode_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setLogicErrorCodeValue(int value) {
                this.logicErrorCode_ = value;
                onChanged();
                return this;
            }

            public b setMessageInfo(int index, MessageInfo value) {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureMessageInfoIsMutable();
                    this.messageInfo_.set(index, value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, value);
                }
                return this;
            }

            public b setOnlinePeopleCount(int value) {
                this.onlinePeopleCount_ = value;
                onChanged();
                return this;
            }

            public b setPong(Pong value) {
                SingleFieldBuilderV3<Pong, Pong.b, f> singleFieldBuilderV3 = this.pongBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.pong_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            public b setQueueInfo(QueueInfo value) {
                SingleFieldBuilderV3<QueueInfo, QueueInfo.b, h> singleFieldBuilderV3 = this.queueInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.queueInfo_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            public b setRequestId(long value) {
                this.requestId_ = value;
                onChanged();
                return this;
            }

            public b setStatusCode(StatusCode value) {
                value.getClass();
                this.statusCode_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setStatusCodeValue(int value) {
                this.statusCode_ = value;
                onChanged();
                return this;
            }

            public b setType(ProtoType value) {
                value.getClass();
                this.type_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setTypeValue(int value) {
                this.type_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.statusCode_ = 0;
                this.type_ = 0;
                this.messageInfo_ = Collections.emptyList();
                this.broadcastUsers_ = GeneratedMessageV3.emptyIntList();
                this.error_ = "";
                this.logicErrorCode_ = 0;
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
                response.statusCode_ = this.statusCode_;
                response.requestId_ = this.requestId_;
                response.type_ = this.type_;
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    response.messageInfo_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 8) != 0) {
                        this.messageInfo_ = Collections.unmodifiableList(this.messageInfo_);
                        this.bitField0_ &= -9;
                    }
                    response.messageInfo_ = this.messageInfo_;
                }
                if ((this.bitField0_ & 16) != 0) {
                    this.broadcastUsers_.makeImmutable();
                    this.bitField0_ &= -17;
                }
                response.broadcastUsers_ = this.broadcastUsers_;
                response.error_ = this.error_;
                SingleFieldBuilderV3<Pong, Pong.b, f> singleFieldBuilderV3 = this.pongBuilder_;
                if (singleFieldBuilderV3 == null) {
                    response.pong_ = this.pong_;
                } else {
                    response.pong_ = (Pong) singleFieldBuilderV3.build();
                }
                response.logicErrorCode_ = this.logicErrorCode_;
                response.onlinePeopleCount_ = this.onlinePeopleCount_;
                SingleFieldBuilderV3<QueueInfo, QueueInfo.b, h> singleFieldBuilderV4 = this.queueInfoBuilder_;
                if (singleFieldBuilderV4 == null) {
                    response.queueInfo_ = this.queueInfo_;
                } else {
                    response.queueInfo_ = (QueueInfo) singleFieldBuilderV4.build();
                }
                response.errorCode_ = this.errorCode_;
                response.bitField0_ = 0;
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

            public MessageInfo.b addMessageInfoBuilder(int index) {
                return (MessageInfo.b) getMessageInfoFieldBuilder().addBuilder(index, MessageInfo.getDefaultInstance());
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
                this.statusCode_ = 0;
                this.requestId_ = 0L;
                this.type_ = 0;
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.messageInfo_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                this.broadcastUsers_ = GeneratedMessageV3.emptyIntList();
                this.bitField0_ &= -17;
                this.error_ = "";
                if (this.pongBuilder_ == null) {
                    this.pong_ = null;
                } else {
                    this.pong_ = null;
                    this.pongBuilder_ = null;
                }
                this.logicErrorCode_ = 0;
                this.onlinePeopleCount_ = 0;
                if (this.queueInfoBuilder_ == null) {
                    this.queueInfo_ = null;
                } else {
                    this.queueInfo_ = null;
                    this.queueInfoBuilder_ = null;
                }
                this.errorCode_ = 0;
                return this;
            }

            public b setPong(Pong.b builderForValue) {
                SingleFieldBuilderV3<Pong, Pong.b, f> singleFieldBuilderV3 = this.pongBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.pong_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            public b setQueueInfo(QueueInfo.b builderForValue) {
                SingleFieldBuilderV3<QueueInfo, QueueInfo.b, h> singleFieldBuilderV3 = this.queueInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.queueInfo_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            public b addMessageInfo(int index, MessageInfo value) {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureMessageInfoIsMutable();
                    this.messageInfo_.add(index, value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(index, value);
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

            public b setMessageInfo(int index, MessageInfo.b builderForValue) {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureMessageInfoIsMutable();
                    this.messageInfo_.set(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
                }
                return this;
            }

            public b mergeFrom(Response other) {
                if (other == Response.getDefaultInstance()) {
                    return this;
                }
                if (other.statusCode_ != 0) {
                    setStatusCodeValue(other.getStatusCodeValue());
                }
                if (other.getRequestId() != 0) {
                    setRequestId(other.getRequestId());
                }
                if (other.type_ != 0) {
                    setTypeValue(other.getTypeValue());
                }
                if (this.messageInfoBuilder_ == null) {
                    if (!other.messageInfo_.isEmpty()) {
                        if (this.messageInfo_.isEmpty()) {
                            this.messageInfo_ = other.messageInfo_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureMessageInfoIsMutable();
                            this.messageInfo_.addAll(other.messageInfo_);
                        }
                        onChanged();
                    }
                } else if (!other.messageInfo_.isEmpty()) {
                    if (!this.messageInfoBuilder_.isEmpty()) {
                        this.messageInfoBuilder_.addAllMessages(other.messageInfo_);
                    } else {
                        this.messageInfoBuilder_.dispose();
                        this.messageInfoBuilder_ = null;
                        this.messageInfo_ = other.messageInfo_;
                        this.bitField0_ &= -9;
                        this.messageInfoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getMessageInfoFieldBuilder() : null;
                    }
                }
                if (!other.broadcastUsers_.isEmpty()) {
                    if (this.broadcastUsers_.isEmpty()) {
                        this.broadcastUsers_ = other.broadcastUsers_;
                        this.bitField0_ &= -17;
                    } else {
                        ensureBroadcastUsersIsMutable();
                        this.broadcastUsers_.addAll(other.broadcastUsers_);
                    }
                    onChanged();
                }
                if (!other.getError().isEmpty()) {
                    this.error_ = other.error_;
                    onChanged();
                }
                if (other.hasPong()) {
                    mergePong(other.getPong());
                }
                if (other.logicErrorCode_ != 0) {
                    setLogicErrorCodeValue(other.getLogicErrorCodeValue());
                }
                if (other.getOnlinePeopleCount() != 0) {
                    setOnlinePeopleCount(other.getOnlinePeopleCount());
                }
                if (other.hasQueueInfo()) {
                    mergeQueueInfo(other.getQueueInfo());
                }
                if (other.getErrorCode() != 0) {
                    setErrorCode(other.getErrorCode());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.statusCode_ = 0;
                this.type_ = 0;
                this.messageInfo_ = Collections.emptyList();
                this.broadcastUsers_ = GeneratedMessageV3.emptyIntList();
                this.error_ = "";
                this.logicErrorCode_ = 0;
                maybeForceBuilderInitialization();
            }

            public b addMessageInfo(MessageInfo.b builderForValue) {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureMessageInfoIsMutable();
                    this.messageInfo_.add(builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builderForValue.build());
                }
                return this;
            }

            public b addMessageInfo(int index, MessageInfo.b builderForValue) {
                RepeatedFieldBuilderV3<MessageInfo, MessageInfo.b, c> repeatedFieldBuilderV3 = this.messageInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureMessageInfoIsMutable();
                    this.messageInfo_.add(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
                }
                return this;
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
            return MessageProto.f88074i;
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
            if (this.statusCode_ != response.statusCode_ || getRequestId() != response.getRequestId() || this.type_ != response.type_ || !getMessageInfoList().equals(response.getMessageInfoList()) || !getBroadcastUsersList().equals(response.getBroadcastUsersList()) || !getError().equals(response.getError()) || hasPong() != response.hasPong()) {
                return false;
            }
            if ((!hasPong() || getPong().equals(response.getPong())) && this.logicErrorCode_ == response.logicErrorCode_ && getOnlinePeopleCount() == response.getOnlinePeopleCount() && hasQueueInfo() == response.hasQueueInfo()) {
                return (!hasQueueInfo() || getQueueInfo().equals(response.getQueueInfo())) && getErrorCode() == response.getErrorCode() && this.unknownFields.equals(response.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public int getBroadcastUsers(int index) {
            return this.broadcastUsers_.getInt(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public int getBroadcastUsersCount() {
            return this.broadcastUsers_.size();
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public List<Integer> getBroadcastUsersList() {
            return this.broadcastUsers_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public String getError() {
            Object obj = this.error_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.error_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public ByteString getErrorBytes() {
            Object obj = this.error_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.error_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public int getErrorCode() {
            return this.errorCode_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public LogicErrorCode getLogicErrorCode() {
            LogicErrorCode logicErrorCodeValueOf = LogicErrorCode.valueOf(this.logicErrorCode_);
            return logicErrorCodeValueOf == null ? LogicErrorCode.UNRECOGNIZED : logicErrorCodeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public int getLogicErrorCodeValue() {
            return this.logicErrorCode_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public MessageInfo getMessageInfo(int index) {
            return this.messageInfo_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public int getMessageInfoCount() {
            return this.messageInfo_.size();
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public List<MessageInfo> getMessageInfoList() {
            return this.messageInfo_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public c getMessageInfoOrBuilder(int index) {
            return this.messageInfo_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public List<? extends c> getMessageInfoOrBuilderList() {
            return this.messageInfo_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public int getOnlinePeopleCount() {
            return this.onlinePeopleCount_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Response> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public Pong getPong() {
            Pong pong = this.pong_;
            return pong == null ? Pong.getDefaultInstance() : pong;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public f getPongOrBuilder() {
            return getPong();
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public QueueInfo getQueueInfo() {
            QueueInfo queueInfo = this.queueInfo_;
            return queueInfo == null ? QueueInfo.getDefaultInstance() : queueInfo;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public h getQueueInfoOrBuilder() {
            return getQueueInfo();
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public long getRequestId() {
            return this.requestId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeEnumSize = this.statusCode_ != StatusCode.UNDEFINED_CODE.getNumber() ? CodedOutputStream.computeEnumSize(1, this.statusCode_) + 0 : 0;
            long j10 = this.requestId_;
            if (j10 != 0) {
                iComputeEnumSize += CodedOutputStream.computeInt64Size(2, j10);
            }
            if (this.type_ != ProtoType.UNDEFINED_RESPONSE.getNumber()) {
                iComputeEnumSize += CodedOutputStream.computeEnumSize(3, this.type_);
            }
            for (int i11 = 0; i11 < this.messageInfo_.size(); i11++) {
                iComputeEnumSize += CodedOutputStream.computeMessageSize(4, this.messageInfo_.get(i11));
            }
            int iComputeInt32SizeNoTag = 0;
            for (int i12 = 0; i12 < this.broadcastUsers_.size(); i12++) {
                iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.broadcastUsers_.getInt(i12));
            }
            int iComputeInt32Size = iComputeEnumSize + iComputeInt32SizeNoTag;
            if (!getBroadcastUsersList().isEmpty()) {
                iComputeInt32Size = iComputeInt32Size + 1 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt32SizeNoTag);
            }
            this.broadcastUsersMemoizedSerializedSize = iComputeInt32SizeNoTag;
            if (!getErrorBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.error_);
            }
            if (this.pong_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(7, getPong());
            }
            if (this.logicErrorCode_ != LogicErrorCode.UNDEFINED_ERROR_CODE.getNumber()) {
                iComputeInt32Size += CodedOutputStream.computeEnumSize(8, this.logicErrorCode_);
            }
            int i13 = this.onlinePeopleCount_;
            if (i13 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(9, i13);
            }
            if (this.queueInfo_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(10, getQueueInfo());
            }
            int i14 = this.errorCode_;
            if (i14 != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(11, i14);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public StatusCode getStatusCode() {
            StatusCode statusCodeValueOf = StatusCode.valueOf(this.statusCode_);
            return statusCodeValueOf == null ? StatusCode.UNRECOGNIZED : statusCodeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public int getStatusCodeValue() {
            return this.statusCode_;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public ProtoType getType() {
            ProtoType protoTypeValueOf = ProtoType.valueOf(this.type_);
            return protoTypeValueOf == null ? ProtoType.UNRECOGNIZED : protoTypeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public int getTypeValue() {
            return this.type_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public boolean hasPong() {
            return this.pong_ != null;
        }

        @Override // com.wufan.user.service.protobuf.MessageProto.i
        public boolean hasQueueInfo() {
            return this.queueInfo_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + this.statusCode_) * 37) + 2) * 53) + Internal.hashLong(getRequestId())) * 37) + 3) * 53) + this.type_;
            if (getMessageInfoCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getMessageInfoList().hashCode();
            }
            if (getBroadcastUsersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getBroadcastUsersList().hashCode();
            }
            int iHashCode2 = (((iHashCode * 37) + 6) * 53) + getError().hashCode();
            if (hasPong()) {
                iHashCode2 = (((iHashCode2 * 37) + 7) * 53) + getPong().hashCode();
            }
            int onlinePeopleCount = (((((((iHashCode2 * 37) + 8) * 53) + this.logicErrorCode_) * 37) + 9) * 53) + getOnlinePeopleCount();
            if (hasQueueInfo()) {
                onlinePeopleCount = (((onlinePeopleCount * 37) + 10) * 53) + getQueueInfo().hashCode();
            }
            int errorCode = (((((onlinePeopleCount * 37) + 11) * 53) + getErrorCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = errorCode;
            return errorCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProto.f88075j.ensureFieldAccessorsInitialized(Response.class, b.class);
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
            getSerializedSize();
            if (this.statusCode_ != StatusCode.UNDEFINED_CODE.getNumber()) {
                output.writeEnum(1, this.statusCode_);
            }
            long j10 = this.requestId_;
            if (j10 != 0) {
                output.writeInt64(2, j10);
            }
            if (this.type_ != ProtoType.UNDEFINED_RESPONSE.getNumber()) {
                output.writeEnum(3, this.type_);
            }
            for (int i10 = 0; i10 < this.messageInfo_.size(); i10++) {
                output.writeMessage(4, this.messageInfo_.get(i10));
            }
            if (getBroadcastUsersList().size() > 0) {
                output.writeUInt32NoTag(42);
                output.writeUInt32NoTag(this.broadcastUsersMemoizedSerializedSize);
            }
            for (int i11 = 0; i11 < this.broadcastUsers_.size(); i11++) {
                output.writeInt32NoTag(this.broadcastUsers_.getInt(i11));
            }
            if (!getErrorBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.error_);
            }
            if (this.pong_ != null) {
                output.writeMessage(7, getPong());
            }
            if (this.logicErrorCode_ != LogicErrorCode.UNDEFINED_ERROR_CODE.getNumber()) {
                output.writeEnum(8, this.logicErrorCode_);
            }
            int i12 = this.onlinePeopleCount_;
            if (i12 != 0) {
                output.writeInt32(9, i12);
            }
            if (this.queueInfo_ != null) {
                output.writeMessage(10, getQueueInfo());
            }
            int i13 = this.errorCode_;
            if (i13 != 0) {
                output.writeInt32(11, i13);
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
            this.broadcastUsersMemoizedSerializedSize = -1;
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

        public static Response parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        private Response() {
            this.broadcastUsersMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.statusCode_ = 0;
            this.type_ = 0;
            this.messageInfo_ = Collections.emptyList();
            this.broadcastUsers_ = GeneratedMessageV3.emptyIntList();
            this.error_ = "";
            this.logicErrorCode_ = 0;
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

        private Response(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            int i10 = 0;
            while (!z10) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        switch (tag) {
                            case 0:
                                break;
                            case 8:
                                this.statusCode_ = codedInputStream.readEnum();
                                continue;
                            case 16:
                                this.requestId_ = codedInputStream.readInt64();
                                continue;
                            case 24:
                                this.type_ = codedInputStream.readEnum();
                                continue;
                            case 34:
                                if ((i10 & 8) == 0) {
                                    this.messageInfo_ = new ArrayList();
                                    i10 |= 8;
                                }
                                this.messageInfo_.add((MessageInfo) codedInputStream.readMessage(MessageInfo.parser(), extensionRegistryLite));
                                continue;
                            case 40:
                                if ((i10 & 16) == 0) {
                                    this.broadcastUsers_ = GeneratedMessageV3.newIntList();
                                    i10 |= 16;
                                }
                                this.broadcastUsers_.addInt(codedInputStream.readInt32());
                                continue;
                            case 42:
                                int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                if ((i10 & 16) == 0 && codedInputStream.getBytesUntilLimit() > 0) {
                                    this.broadcastUsers_ = GeneratedMessageV3.newIntList();
                                    i10 |= 16;
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.broadcastUsers_.addInt(codedInputStream.readInt32());
                                }
                                codedInputStream.popLimit(iPushLimit);
                                continue;
                            case 50:
                                this.error_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 58:
                                Pong pong = this.pong_;
                                Pong.b builder = pong != null ? pong.toBuilder() : null;
                                Pong pong2 = (Pong) codedInputStream.readMessage(Pong.parser(), extensionRegistryLite);
                                this.pong_ = pong2;
                                if (builder != null) {
                                    builder.mergeFrom(pong2);
                                    this.pong_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 64:
                                this.logicErrorCode_ = codedInputStream.readEnum();
                                continue;
                            case 72:
                                this.onlinePeopleCount_ = codedInputStream.readInt32();
                                continue;
                            case 82:
                                QueueInfo queueInfo = this.queueInfo_;
                                QueueInfo.b builder2 = queueInfo != null ? queueInfo.toBuilder() : null;
                                QueueInfo queueInfo2 = (QueueInfo) codedInputStream.readMessage(QueueInfo.parser(), extensionRegistryLite);
                                this.queueInfo_ = queueInfo2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(queueInfo2);
                                    this.queueInfo_ = builder2.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 88:
                                this.errorCode_ = codedInputStream.readInt32();
                                continue;
                            default:
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    break;
                                }
                                break;
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if ((i10 & 8) != 0) {
                        this.messageInfo_ = Collections.unmodifiableList(this.messageInfo_);
                    }
                    if ((i10 & 16) != 0) {
                        this.broadcastUsers_.makeImmutable();
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if ((i10 & 8) != 0) {
                this.messageInfo_ = Collections.unmodifiableList(this.messageInfo_);
            }
            if ((i10 & 16) != 0) {
                this.broadcastUsers_.makeImmutable();
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageProto.f88082q = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAccountName();

        ByteString getAccountNameBytes();

        String getAvatar();

        ByteString getAvatarBytes();

        String getNickname();

        ByteString getNicknameBytes();

        int getUid();

        String getUserToken();

        ByteString getUserTokenBytes();

        boolean getVip();
    }

    public interface c extends MessageOrBuilder {
        long getAddTime();

        String getContent();

        ByteString getContentBytes();

        boolean getIsRead();

        String getJumpContent();

        ByteString getJumpContentBytes();

        int getMessageType();

        String getRecordId();

        ByteString getRecordIdBytes();

        int getStatus();

        String getTitle();

        ByteString getTitleBytes();

        int getUid();
    }

    public interface d extends MessageOrBuilder {
        Account getAccount();

        b getAccountOrBuilder();

        String getAppVersion();

        ByteString getAppVersionBytes();

        Params getParams();

        e getParamsOrBuilder();

        PushParams getPushParams(int index);

        int getPushParamsCount();

        List<PushParams> getPushParamsList();

        g getPushParamsOrBuilder(int index);

        List<? extends g> getPushParamsOrBuilderList();

        long getRequestId();

        MessageRequest.ProtoType getType();

        int getTypeValue();

        int getVersion();

        boolean hasAccount();

        boolean hasParams();
    }

    public interface e extends MessageOrBuilder {
        int getFromUid();

        long getGameId();

        boolean getIsInit();

        boolean getIsReconnect();

        String getJobId();

        ByteString getJobIdBytes();

        long getLastMessageAddTime();

        String getRecordId();

        ByteString getRecordIdBytes();

        String getResourceId();

        ByteString getResourceIdBytes();

        String getServerName();

        ByteString getServerNameBytes();

        long getSwitchoverGameId();

        String getToken();

        ByteString getTokenBytes();

        int getUid();
    }

    public interface f extends MessageOrBuilder {
        long getTimestamp();
    }

    public interface g extends MessageOrBuilder {
        long getAddTime();

        String getContent();

        ByteString getContentBytes();

        long getGameId();

        String getJobId();

        ByteString getJobIdBytes();

        String getJumpContent();

        ByteString getJumpContentBytes();

        int getMessageType();

        int getPosition();

        String getRecordId();

        ByteString getRecordIdBytes();

        String getResourceId();

        ByteString getResourceIdBytes();

        String getServerName();

        ByteString getServerNameBytes();

        String getTitle();

        ByteString getTitleBytes();

        int getUid();

        int getWaitPosition();
    }

    public interface h extends MessageOrBuilder {
        String getAccessKey();

        ByteString getAccessKeyBytes();

        String getAppChannel();

        ByteString getAppChannelBytes();

        String getBid();

        ByteString getBidBytes();

        long getGameId();

        boolean getIsQueue();

        String getJobId();

        ByteString getJobIdBytes();

        int getPosition();

        long getQuitGameTime();

        String getResourceId();

        ByteString getResourceIdBytes();

        int getSwitchoverWaitPosition();

        boolean getUnusedQueueCards();

        int getWaitPosition();
    }

    public interface i extends MessageOrBuilder {
        int getBroadcastUsers(int index);

        int getBroadcastUsersCount();

        List<Integer> getBroadcastUsersList();

        String getError();

        ByteString getErrorBytes();

        int getErrorCode();

        Response.LogicErrorCode getLogicErrorCode();

        int getLogicErrorCodeValue();

        MessageInfo getMessageInfo(int index);

        int getMessageInfoCount();

        List<MessageInfo> getMessageInfoList();

        c getMessageInfoOrBuilder(int index);

        List<? extends c> getMessageInfoOrBuilderList();

        int getOnlinePeopleCount();

        Pong getPong();

        f getPongOrBuilder();

        QueueInfo getQueueInfo();

        h getQueueInfoOrBuilder();

        long getRequestId();

        Response.StatusCode getStatusCode();

        int getStatusCodeValue();

        Response.ProtoType getType();

        int getTypeValue();

        boolean hasPong();

        boolean hasQueueInfo();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\rmessage.proto\"¨\u0005\n\u000eMessageRequest\u0012\u0012\n\nappVersion\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007version\u0018\u0002 \u0001(\u0005\u0012'\n\u0004type\u0018\u0003 \u0001(\u000e2\u0019.MessageRequest.ProtoType\u0012\u0011\n\trequestId\u0018\u0004 \u0001(\u0003\u0012\u0017\n\u0006params\u0018\u0005 \u0001(\u000b2\u0007.Params\u0012\u001f\n\npushParams\u0018\u0006 \u0003(\u000b2\u000b.PushParams\u0012\u0019\n\u0007account\u0018\u0007 \u0001(\u000b2\b.Account\"ß\u0003\n\tProtoType\u0012\t\n\u0005LOGIN\u0010\u0000\u0012\"\n\u001ePUSH_USER_NOTIFICATION_MESSAGE\u0010\u0001\u0012&\n\"PUSH_ALL_USER_NOTIFICATION_MESSAGE\u0010\u0002\u0012\"\n\u001ePULL_USER_NOTIFICATION_MESSAGE\u0010\u0003\u0012\u0013\n\u000fSET_READ_STATUS\u0010\u0004\u0012\b\n\u0004PING\u0010\u0005\u0012)\n%PULL_REMOTE_USER_NOTIFICATION_MESSAGE\u0010\u0006\u0012\u0016\n\u0012JOIN_QUEUE_MESSAGE\u0010\u0007\u0012\u0019\n\u0015CONFIRM_QUEUE_MESSAGE\u0010\b\u0012\u001e\n\u001aNOTIFICATION_QUEUE_MESSAGE\u0010\t\u0012\u0019\n\u0015REQUEST_QUEUE_MESSAGE\u0010\n\u0012\u001c\n\u0018SWITCHOVER_QUEUE_MESSAGE\u0010\u000b\u0012$\n CONFIRM_SWITCHOVER_QUEUE_MESSAGE\u0010\f\u0012\u0016\n\u0012EXIT_QUEUE_MESSAGE\u0010\r\u0012\u0015\n\u0011RESOURCE_TIME_OUT\u0010\u000e\u0012,\n(NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE\u0010\u000f\"m\n\u0007Account\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u0013\n\u000baccountName\u0018\u0002 \u0001(\t\u0012\u0010\n\bnickname\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006avatar\u0018\u0004 \u0001(\t\u0012\u000b\n\u0003vip\u0018\u0005 \u0001(\b\u0012\u0011\n\tuserToken\u0018\u0006 \u0001(\t\"é\u0001\n\u0006Params\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0010\n\brecordId\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012lastMessageAddTime\u0018\u0004 \u0001(\u0003\u0012\u000e\n\u0006isInit\u0018\u0005 \u0001(\b\u0012\u000e\n\u0006gameId\u0018\u0006 \u0001(\u0003\u0012\u0012\n\nserverName\u0018\u0007 \u0001(\t\u0012\u0012\n\nresourceId\u0018\b \u0001(\t\u0012\r\n\u0005jobId\u0018\t \u0001(\t\u0012\u0018\n\u0010switchoverGameId\u0018\n \u0001(\u0003\u0012\u000f\n\u0007fromUid\u0018\u000b \u0001(\u0005\u0012\u0013\n\u000bisReconnect\u0018\f \u0001(\b\"õ\u0001\n\nPushParams\u0012\u0010\n\brecordId\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bmessageType\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005title\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007content\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bjumpContent\u0018\u0005 \u0001(\t\u0012\u000b\n\u0003uid\u0018\u0006 \u0001(\u0005\u0012\u000f\n\u0007addTime\u0018\u0007 \u0001(\u0003\u0012\u0012\n\nresourceId\u0018\b \u0001(\t\u0012\r\n\u0005jobId\u0018\t \u0001(\t\u0012\u000e\n\u0006gameId\u0018\n \u0001(\u0003\u0012\u0012\n\nserverName\u0018\u000b \u0001(\t\u0012\u0010\n\bposition\u0018\f \u0001(\u0005\u0012\u0014\n\fwaitPosition\u0018\r \u0001(\u0005\"²\n\n\bResponse\u0012(\n\nstatusCode\u0018\u0001 \u0001(\u000e2\u0014.Response.StatusCode\u0012\u0011\n\trequestId\u0018\u0002 \u0001(\u0003\u0012!\n\u0004type\u0018\u0003 \u0001(\u000e2\u0013.Response.ProtoType\u0012!\n\u000bmessageInfo\u0018\u0004 \u0003(\u000b2\f.MessageInfo\u0012\u0016\n\u000ebroadcastUsers\u0018\u0005 \u0003(\u0005\u0012\r\n\u0005error\u0018\u0006 \u0001(\t\u0012\u0013\n\u0004pong\u0018\u0007 \u0001(\u000b2\u0005.Pong\u00120\n\u000elogicErrorCode\u0018\b \u0001(\u000e2\u0018.Response.LogicErrorCode\u0012\u0019\n\u0011onlinePeopleCount\u0018\t \u0001(\u0005\u0012\u001d\n\tqueueInfo\u0018\n \u0001(\u000b2\n.QueueInfo\u0012\u0011\n\terrorCode\u0018\u000b \u0001(\u0005\"Õ\u0001\n\nStatusCode\u0012\u0012\n\u000eUNDEFINED_CODE\u0010\u0000\u0012\u0013\n\u000fSERVICE_FAILURE\u0010\u0001\u0012\u0012\n\u000ePARAMS_FAILURE\u0010\u0002\u0012\u0014\n\u0010INTERNAL_FAILURE\u0010\u0003\u0012\u0014\n\u0010UN_LOGIN_FAILURE\u0010\u0004\u0012\u0012\n\u000eRESULT_FAILURE\u0010\u0005\u0012\u0012\n\u000eRESULT_SUCCESS\u0010\u0006\u0012\u0016\n\u0012USER_TOKEN_FAILURE\u0010\u0007\u0012\u001e\n\u001aPUSH_AUTHORIZATION_FAILURE\u0010\b\"\u0080\u0004\n\tProtoType\u0012\u0016\n\u0012UNDEFINED_RESPONSE\u0010\u0000\u0012\b\n\u0004PONG\u0010\u0001\u0012\u0010\n\fMESSAGE_LIST\u0010\u0002\u0012'\n#UPDATE_AREA_ONLINE_PEOPLE_BROADCAST\u0010\u0003\u0012\u0010\n\fIDLE_TIMEOUT\u0010\u0004\u0012\u0013\n\u000fPUSH_LIMIT_TIPS\u0010\u0005\u0012\u0012\n\u000eMESSAGE_STATUS\u0010\u0006\u0012\u0010\n\fLOGIN_STATUS\u0010\u0007\u0012\u001d\n\u0019NOTIFICATION_MESSAGE_LIST\u0010\b\u0012\u0015\n\u0011JOIN_QUEUE_STATUS\u0010\n\u0012\u001d\n\u0019NOTIFICATION_QUEUE_STATUS\u0010\t\u0012\u0018\n\u0014CONFIRM_QUEUE_STATUS\u0010\u000b\u0012\u0019\n\u0015RESPONSE_QUEUE_STATUS\u0010\f\u0012\u001b\n\u0017SWITCHOVER_QUEUE_STATUS\u0010\r\u0012#\n\u001fCONFIRM_SWITCHOVER_QUEUE_STATUS\u0010\u000e\u0012\u001b\n\u0017RESPONSE_MESSAGE_STATUS\u0010\u000f\u0012\u0015\n\u0011EXIT_QUEUE_STATUS\u0010\u0010\u0012\u001c\n\u0018RESOURCE_TIME_OUT_STATUS\u0010\u0011\u0012+\n'NOTIFICATION_UPDATE_QUEUE_STATUS_STATUS\u0010\u0012\"\u008c\u0002\n\u000eLogicErrorCode\u0012\u0018\n\u0014UNDEFINED_ERROR_CODE\u0010\u0000\u0012\u0015\n\u0011NOT_FOUND_MESSAGE\u0010\u0001\u0012\u000e\n\nLOGIN_FAIL\u0010\u0002\u0012\u0014\n\u0010LOGIN_TOKEN_FAIL\u0010\u0003\u0012\u0012\n\u000eLOGIN_UID_FAIL\u0010\u0004\u0012\u0013\n\u000fJOIN_QUEUE_FAIL\u0010\u0005\u0012\u001b\n\u0017NOTIFICATION_QUEUE_FAIL\u0010\u0006\u0012\u0015\n\u0011STATUS_QUEUE_FAIL\u0010\u0007\u0012\u0016\n\u0012CONFIRM_QUEUE_FAIL\u0010\b\u0012\u0019\n\u0015SWITCHOVER_QUEUE_FAIL\u0010\t\u0012\u0013\n\u000fEXIT_QUEUE_FAIL\u0010\n\"§\u0001\n\u000bMessageInfo\u0012\u0010\n\brecordId\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bmessageType\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005title\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007content\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bjumpContent\u0018\u0005 \u0001(\t\u0012\u000b\n\u0003uid\u0018\u0006 \u0001(\u0005\u0012\u000e\n\u0006status\u0018\u0007 \u0001(\u0005\u0012\u000f\n\u0007addTime\u0018\b \u0001(\u0003\u0012\u000e\n\u0006isRead\u0018\t \u0001(\b\"û\u0001\n\tQueueInfo\u0012\u0012\n\nresourceId\u0018\u0001 \u0001(\t\u0012\r\n\u0005jobId\u0018\u0002 \u0001(\t\u0012\u000b\n\u0003bid\u0018\u0003 \u0001(\t\u0012\u0011\n\taccessKey\u0018\u0004 \u0001(\t\u0012\u0012\n\nappChannel\u0018\u0005 \u0001(\t\u0012\u0010\n\bposition\u0018\u0006 \u0001(\u0005\u0012\u0014\n\fwaitPosition\u0018\u0007 \u0001(\u0005\u0012\u001e\n\u0016switchoverWaitPosition\u0018\b \u0001(\u0005\u0012\u0014\n\fquitGameTime\u0018\t \u0001(\u0003\u0012\u0018\n\u0010unusedQueueCards\u0018\n \u0001(\b\u0012\u000f\n\u0007isQueue\u0018\u000b \u0001(\b\u0012\u000e\n\u0006gameId\u0018\f \u0001(\u0003\"\u0019\n\u0004Pong\u0012\u0011\n\ttimestamp\u0018\u0001 \u0001(\u0003B/\n\u001fcom.wufan.user.service.protobufB\fMessageProtob\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = r().getMessageTypes().get(0);
        f88066a = descriptor;
        f88067b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"AppVersion", com.alipay.sdk.packet.d.f7183g, "Type", "RequestId", "Params", "PushParams", "Account"});
        Descriptors.Descriptor descriptor2 = r().getMessageTypes().get(1);
        f88068c = descriptor2;
        f88069d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Uid", "AccountName", "Nickname", "Avatar", "Vip", "UserToken"});
        Descriptors.Descriptor descriptor3 = r().getMessageTypes().get(2);
        f88070e = descriptor3;
        f88071f = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Uid", "Token", "RecordId", "LastMessageAddTime", "IsInit", "GameId", "ServerName", "ResourceId", "JobId", "SwitchoverGameId", "FromUid", "IsReconnect"});
        Descriptors.Descriptor descriptor4 = r().getMessageTypes().get(3);
        f88072g = descriptor4;
        f88073h = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"RecordId", "MessageType", "Title", "Content", "JumpContent", "Uid", "AddTime", "ResourceId", "JobId", "GameId", "ServerName", "Position", "WaitPosition"});
        Descriptors.Descriptor descriptor5 = r().getMessageTypes().get(4);
        f88074i = descriptor5;
        f88075j = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"StatusCode", "RequestId", "Type", "MessageInfo", "BroadcastUsers", "Error", "Pong", "LogicErrorCode", "OnlinePeopleCount", "QueueInfo", "ErrorCode"});
        Descriptors.Descriptor descriptor6 = r().getMessageTypes().get(5);
        f88076k = descriptor6;
        f88077l = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"RecordId", "MessageType", "Title", "Content", "JumpContent", "Uid", "Status", "AddTime", "IsRead"});
        Descriptors.Descriptor descriptor7 = r().getMessageTypes().get(6);
        f88078m = descriptor7;
        f88079n = new GeneratedMessageV3.FieldAccessorTable(descriptor7, new String[]{"ResourceId", "JobId", "Bid", "AccessKey", "AppChannel", "Position", "WaitPosition", "SwitchoverWaitPosition", "QuitGameTime", "UnusedQueueCards", "IsQueue", "GameId"});
        Descriptors.Descriptor descriptor8 = r().getMessageTypes().get(7);
        f88080o = descriptor8;
        f88081p = new GeneratedMessageV3.FieldAccessorTable(descriptor8, new String[]{RtspHeaders.Names.TIMESTAMP});
    }

    private MessageProto() {
    }

    public static Descriptors.FileDescriptor r() {
        return f88082q;
    }

    public static void s(ExtensionRegistry registry) {
        t(registry);
    }

    public static void t(ExtensionRegistryLite registry) {
    }
}
