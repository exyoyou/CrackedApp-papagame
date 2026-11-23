package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessage;
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
public final class FriendChangePlayStateNotification extends GeneratedMessageV3 implements l {
    public static final int FRIEND_FIELD_NUMBER = 1;
    public static final int STATE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private AccountInfo friend_;
    private byte memoizedIsInitialized;
    private PlayState state_;
    private static final FriendChangePlayStateNotification DEFAULT_INSTANCE = new FriendChangePlayStateNotification();
    private static final Parser<FriendChangePlayStateNotification> PARSER = new a();

    class a extends AbstractParser<FriendChangePlayStateNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FriendChangePlayStateNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new FriendChangePlayStateNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements l {
        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> friendBuilder_;
        private AccountInfo friend_;
        private SingleFieldBuilderV3<PlayState, PlayState.b, e0> stateBuilder_;
        private PlayState state_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87871g0;
        }

        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> getFriendFieldBuilder() {
            if (this.friendBuilder_ == null) {
                this.friendBuilder_ = new SingleFieldBuilderV3<>(getFriend(), getParentForChildren(), isClean());
                this.friend_ = null;
            }
            return this.friendBuilder_;
        }

        private SingleFieldBuilderV3<PlayState, PlayState.b, e0> getStateFieldBuilder() {
            if (this.stateBuilder_ == null) {
                this.stateBuilder_ = new SingleFieldBuilderV3<>(getState(), getParentForChildren(), isClean());
                this.state_ = null;
            }
            return this.stateBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearFriend() {
            if (this.friendBuilder_ == null) {
                this.friend_ = null;
                onChanged();
            } else {
                this.friend_ = null;
                this.friendBuilder_ = null;
            }
            return this;
        }

        public b clearState() {
            if (this.stateBuilder_ == null) {
                this.state_ = null;
                onChanged();
            } else {
                this.state_ = null;
                this.stateBuilder_ = null;
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87871g0;
        }

        @Override // com.wufan.friend.chat.protocol.l
        public AccountInfo getFriend() {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AccountInfo) singleFieldBuilderV3.getMessage();
            }
            AccountInfo accountInfo = this.friend_;
            return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
        }

        public AccountInfo.b getFriendBuilder() {
            onChanged();
            return (AccountInfo.b) getFriendFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.l
        public com.wufan.friend.chat.protocol.a getFriendOrBuilder() {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (com.wufan.friend.chat.protocol.a) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AccountInfo accountInfo = this.friend_;
            return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
        }

        @Override // com.wufan.friend.chat.protocol.l
        public PlayState getState() {
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV3 = this.stateBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (PlayState) singleFieldBuilderV3.getMessage();
            }
            PlayState playState = this.state_;
            return playState == null ? PlayState.getDefaultInstance() : playState;
        }

        public PlayState.b getStateBuilder() {
            onChanged();
            return (PlayState.b) getStateFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.l
        public e0 getStateOrBuilder() {
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV3 = this.stateBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (e0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            PlayState playState = this.state_;
            return playState == null ? PlayState.getDefaultInstance() : playState;
        }

        @Override // com.wufan.friend.chat.protocol.l
        public boolean hasFriend() {
            return (this.friendBuilder_ == null && this.friend_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.l
        public boolean hasState() {
            return (this.stateBuilder_ == null && this.state_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87873h0.ensureFieldAccessorsInitialized(FriendChangePlayStateNotification.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b mergeFriend(AccountInfo value) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 == null) {
                AccountInfo accountInfo = this.friend_;
                if (accountInfo != null) {
                    this.friend_ = AccountInfo.newBuilder(accountInfo).mergeFrom(value).buildPartial();
                } else {
                    this.friend_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b mergeState(PlayState value) {
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV3 = this.stateBuilder_;
            if (singleFieldBuilderV3 == null) {
                PlayState playState = this.state_;
                if (playState != null) {
                    this.state_ = PlayState.newBuilder(playState).mergeFrom(value).buildPartial();
                } else {
                    this.state_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b setFriend(AccountInfo value) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.friend_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setState(PlayState value) {
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV3 = this.stateBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.state_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
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
        public FriendChangePlayStateNotification build() {
            FriendChangePlayStateNotification friendChangePlayStateNotificationBuildPartial = buildPartial();
            if (friendChangePlayStateNotificationBuildPartial.isInitialized()) {
                return friendChangePlayStateNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) friendChangePlayStateNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public FriendChangePlayStateNotification buildPartial() {
            FriendChangePlayStateNotification friendChangePlayStateNotification = new FriendChangePlayStateNotification(this, (a) null);
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 == null) {
                friendChangePlayStateNotification.friend_ = this.friend_;
            } else {
                friendChangePlayStateNotification.friend_ = (AccountInfo) singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV4 = this.stateBuilder_;
            if (singleFieldBuilderV4 == null) {
                friendChangePlayStateNotification.state_ = this.state_;
            } else {
                friendChangePlayStateNotification.state_ = (PlayState) singleFieldBuilderV4.build();
            }
            onBuilt();
            return friendChangePlayStateNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FriendChangePlayStateNotification getDefaultInstanceForType() {
            return FriendChangePlayStateNotification.getDefaultInstance();
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
            if (this.friendBuilder_ == null) {
                this.friend_ = null;
            } else {
                this.friend_ = null;
                this.friendBuilder_ = null;
            }
            if (this.stateBuilder_ == null) {
                this.state_ = null;
            } else {
                this.state_ = null;
                this.stateBuilder_ = null;
            }
            return this;
        }

        public b setFriend(AccountInfo.b builderForValue) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.friend_ = builderForValue.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            return this;
        }

        public b setState(PlayState.b builderForValue) {
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV3 = this.stateBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.state_ = builderForValue.build();
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
            if (other instanceof FriendChangePlayStateNotification) {
                return mergeFrom((FriendChangePlayStateNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(FriendChangePlayStateNotification other) {
            if (other == FriendChangePlayStateNotification.getDefaultInstance()) {
                return this;
            }
            if (other.hasFriend()) {
                mergeFriend(other.getFriend());
            }
            if (other.hasState()) {
                mergeState(other.getState());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            FriendChangePlayStateNotification friendChangePlayStateNotification = null;
            try {
                try {
                    FriendChangePlayStateNotification friendChangePlayStateNotification2 = (FriendChangePlayStateNotification) FriendChangePlayStateNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (friendChangePlayStateNotification2 != null) {
                        mergeFrom(friendChangePlayStateNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    FriendChangePlayStateNotification friendChangePlayStateNotification3 = (FriendChangePlayStateNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        friendChangePlayStateNotification = friendChangePlayStateNotification3;
                        if (friendChangePlayStateNotification != null) {
                            mergeFrom(friendChangePlayStateNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (friendChangePlayStateNotification != null) {
                    mergeFrom(friendChangePlayStateNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ FriendChangePlayStateNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static FriendChangePlayStateNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87871g0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FriendChangePlayStateNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (FriendChangePlayStateNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static FriendChangePlayStateNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<FriendChangePlayStateNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FriendChangePlayStateNotification)) {
            return super.equals(obj);
        }
        FriendChangePlayStateNotification friendChangePlayStateNotification = (FriendChangePlayStateNotification) obj;
        if (hasFriend() != friendChangePlayStateNotification.hasFriend()) {
            return false;
        }
        if ((!hasFriend() || getFriend().equals(friendChangePlayStateNotification.getFriend())) && hasState() == friendChangePlayStateNotification.hasState()) {
            return (!hasState() || getState().equals(friendChangePlayStateNotification.getState())) && this.unknownFields.equals(friendChangePlayStateNotification.unknownFields);
        }
        return false;
    }

    @Override // com.wufan.friend.chat.protocol.l
    public AccountInfo getFriend() {
        AccountInfo accountInfo = this.friend_;
        return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
    }

    @Override // com.wufan.friend.chat.protocol.l
    public com.wufan.friend.chat.protocol.a getFriendOrBuilder() {
        return getFriend();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<FriendChangePlayStateNotification> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeMessageSize = this.friend_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getFriend()) : 0;
        if (this.state_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getState());
        }
        int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.friend.chat.protocol.l
    public PlayState getState() {
        PlayState playState = this.state_;
        return playState == null ? PlayState.getDefaultInstance() : playState;
    }

    @Override // com.wufan.friend.chat.protocol.l
    public e0 getStateOrBuilder() {
        return getState();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.l
    public boolean hasFriend() {
        return this.friend_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.l
    public boolean hasState() {
        return this.state_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode();
        if (hasFriend()) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getFriend().hashCode();
        }
        if (hasState()) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getState().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87873h0.ensureFieldAccessorsInitialized(FriendChangePlayStateNotification.class, b.class);
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
        if (this.friend_ != null) {
            output.writeMessage(1, getFriend());
        }
        if (this.state_ != null) {
            output.writeMessage(2, getState());
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ FriendChangePlayStateNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(FriendChangePlayStateNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static FriendChangePlayStateNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private FriendChangePlayStateNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FriendChangePlayStateNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendChangePlayStateNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static FriendChangePlayStateNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public FriendChangePlayStateNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static FriendChangePlayStateNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private FriendChangePlayStateNotification() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FriendChangePlayStateNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static FriendChangePlayStateNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private FriendChangePlayStateNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    if (tag != 0) {
                        if (tag == 10) {
                            AccountInfo accountInfo = this.friend_;
                            AccountInfo.b builder = accountInfo != null ? accountInfo.toBuilder() : null;
                            AccountInfo accountInfo2 = (AccountInfo) codedInputStream.readMessage(AccountInfo.parser(), extensionRegistryLite);
                            this.friend_ = accountInfo2;
                            if (builder != null) {
                                builder.mergeFrom(accountInfo2);
                                this.friend_ = builder.buildPartial();
                            }
                        } else if (tag != 18) {
                            if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        } else {
                            PlayState playState = this.state_;
                            PlayState.b builder2 = playState != null ? playState.toBuilder() : null;
                            PlayState playState2 = (PlayState) codedInputStream.readMessage(PlayState.parser(), extensionRegistryLite);
                            this.state_ = playState2;
                            if (builder2 != null) {
                                builder2.mergeFrom(playState2);
                                this.state_ = builder2.buildPartial();
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

    public static FriendChangePlayStateNotification parseFrom(InputStream input) throws IOException {
        return (FriendChangePlayStateNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static FriendChangePlayStateNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendChangePlayStateNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static FriendChangePlayStateNotification parseFrom(CodedInputStream input) throws IOException {
        return (FriendChangePlayStateNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static FriendChangePlayStateNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendChangePlayStateNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
