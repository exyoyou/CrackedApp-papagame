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
public final class FriendAddSuccessNotification extends GeneratedMessageV3 implements k {
    public static final int FRIEND_FIELD_NUMBER = 1;
    public static final int ONLINESTATE_FIELD_NUMBER = 3;
    public static final int PLAYSTATE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private AccountInfo friend_;
    private byte memoizedIsInitialized;
    private int onlineState_;
    private PlayState playState_;
    private static final FriendAddSuccessNotification DEFAULT_INSTANCE = new FriendAddSuccessNotification();
    private static final Parser<FriendAddSuccessNotification> PARSER = new a();

    class a extends AbstractParser<FriendAddSuccessNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FriendAddSuccessNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new FriendAddSuccessNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements k {
        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> friendBuilder_;
        private AccountInfo friend_;
        private int onlineState_;
        private SingleFieldBuilderV3<PlayState, PlayState.b, e0> playStateBuilder_;
        private PlayState playState_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87895s0;
        }

        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> getFriendFieldBuilder() {
            if (this.friendBuilder_ == null) {
                this.friendBuilder_ = new SingleFieldBuilderV3<>(getFriend(), getParentForChildren(), isClean());
                this.friend_ = null;
            }
            return this.friendBuilder_;
        }

        private SingleFieldBuilderV3<PlayState, PlayState.b, e0> getPlayStateFieldBuilder() {
            if (this.playStateBuilder_ == null) {
                this.playStateBuilder_ = new SingleFieldBuilderV3<>(getPlayState(), getParentForChildren(), isClean());
                this.playState_ = null;
            }
            return this.playStateBuilder_;
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

        public b clearOnlineState() {
            this.onlineState_ = 0;
            onChanged();
            return this;
        }

        public b clearPlayState() {
            if (this.playStateBuilder_ == null) {
                this.playState_ = null;
                onChanged();
            } else {
                this.playState_ = null;
                this.playStateBuilder_ = null;
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87895s0;
        }

        @Override // com.wufan.friend.chat.protocol.k
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

        @Override // com.wufan.friend.chat.protocol.k
        public com.wufan.friend.chat.protocol.a getFriendOrBuilder() {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (com.wufan.friend.chat.protocol.a) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AccountInfo accountInfo = this.friend_;
            return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
        }

        @Override // com.wufan.friend.chat.protocol.k
        public OnlineState getOnlineState() {
            OnlineState onlineStateValueOf = OnlineState.valueOf(this.onlineState_);
            return onlineStateValueOf == null ? OnlineState.UNRECOGNIZED : onlineStateValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.k
        public int getOnlineStateValue() {
            return this.onlineState_;
        }

        @Override // com.wufan.friend.chat.protocol.k
        public PlayState getPlayState() {
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV3 = this.playStateBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (PlayState) singleFieldBuilderV3.getMessage();
            }
            PlayState playState = this.playState_;
            return playState == null ? PlayState.getDefaultInstance() : playState;
        }

        public PlayState.b getPlayStateBuilder() {
            onChanged();
            return (PlayState.b) getPlayStateFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.k
        public e0 getPlayStateOrBuilder() {
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV3 = this.playStateBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (e0) singleFieldBuilderV3.getMessageOrBuilder();
            }
            PlayState playState = this.playState_;
            return playState == null ? PlayState.getDefaultInstance() : playState;
        }

        @Override // com.wufan.friend.chat.protocol.k
        public boolean hasFriend() {
            return (this.friendBuilder_ == null && this.friend_ == null) ? false : true;
        }

        @Override // com.wufan.friend.chat.protocol.k
        public boolean hasPlayState() {
            return (this.playStateBuilder_ == null && this.playState_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87897t0.ensureFieldAccessorsInitialized(FriendAddSuccessNotification.class, b.class);
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

        public b mergePlayState(PlayState value) {
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV3 = this.playStateBuilder_;
            if (singleFieldBuilderV3 == null) {
                PlayState playState = this.playState_;
                if (playState != null) {
                    this.playState_ = PlayState.newBuilder(playState).mergeFrom(value).buildPartial();
                } else {
                    this.playState_ = value;
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

        public b setOnlineState(OnlineState value) {
            value.getClass();
            this.onlineState_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setOnlineStateValue(int value) {
            this.onlineState_ = value;
            onChanged();
            return this;
        }

        public b setPlayState(PlayState value) {
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV3 = this.playStateBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.playState_ = value;
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
            this.onlineState_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public FriendAddSuccessNotification build() {
            FriendAddSuccessNotification friendAddSuccessNotificationBuildPartial = buildPartial();
            if (friendAddSuccessNotificationBuildPartial.isInitialized()) {
                return friendAddSuccessNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) friendAddSuccessNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public FriendAddSuccessNotification buildPartial() {
            FriendAddSuccessNotification friendAddSuccessNotification = new FriendAddSuccessNotification(this, (a) null);
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 == null) {
                friendAddSuccessNotification.friend_ = this.friend_;
            } else {
                friendAddSuccessNotification.friend_ = (AccountInfo) singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV4 = this.playStateBuilder_;
            if (singleFieldBuilderV4 == null) {
                friendAddSuccessNotification.playState_ = this.playState_;
            } else {
                friendAddSuccessNotification.playState_ = (PlayState) singleFieldBuilderV4.build();
            }
            friendAddSuccessNotification.onlineState_ = this.onlineState_;
            onBuilt();
            return friendAddSuccessNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FriendAddSuccessNotification getDefaultInstanceForType() {
            return FriendAddSuccessNotification.getDefaultInstance();
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
            if (this.friendBuilder_ == null) {
                this.friend_ = null;
            } else {
                this.friend_ = null;
                this.friendBuilder_ = null;
            }
            if (this.playStateBuilder_ == null) {
                this.playState_ = null;
            } else {
                this.playState_ = null;
                this.playStateBuilder_ = null;
            }
            this.onlineState_ = 0;
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.onlineState_ = 0;
            maybeForceBuilderInitialization();
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

        public b setPlayState(PlayState.b builderForValue) {
            SingleFieldBuilderV3<PlayState, PlayState.b, e0> singleFieldBuilderV3 = this.playStateBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.playState_ = builderForValue.build();
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
            if (other instanceof FriendAddSuccessNotification) {
                return mergeFrom((FriendAddSuccessNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(FriendAddSuccessNotification other) {
            if (other == FriendAddSuccessNotification.getDefaultInstance()) {
                return this;
            }
            if (other.hasFriend()) {
                mergeFriend(other.getFriend());
            }
            if (other.hasPlayState()) {
                mergePlayState(other.getPlayState());
            }
            if (other.onlineState_ != 0) {
                setOnlineStateValue(other.getOnlineStateValue());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            FriendAddSuccessNotification friendAddSuccessNotification = null;
            try {
                try {
                    FriendAddSuccessNotification friendAddSuccessNotification2 = (FriendAddSuccessNotification) FriendAddSuccessNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (friendAddSuccessNotification2 != null) {
                        mergeFrom(friendAddSuccessNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    FriendAddSuccessNotification friendAddSuccessNotification3 = (FriendAddSuccessNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        friendAddSuccessNotification = friendAddSuccessNotification3;
                        if (friendAddSuccessNotification != null) {
                            mergeFrom(friendAddSuccessNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (friendAddSuccessNotification != null) {
                    mergeFrom(friendAddSuccessNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ FriendAddSuccessNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static FriendAddSuccessNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87895s0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FriendAddSuccessNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (FriendAddSuccessNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static FriendAddSuccessNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<FriendAddSuccessNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FriendAddSuccessNotification)) {
            return super.equals(obj);
        }
        FriendAddSuccessNotification friendAddSuccessNotification = (FriendAddSuccessNotification) obj;
        if (hasFriend() != friendAddSuccessNotification.hasFriend()) {
            return false;
        }
        if ((!hasFriend() || getFriend().equals(friendAddSuccessNotification.getFriend())) && hasPlayState() == friendAddSuccessNotification.hasPlayState()) {
            return (!hasPlayState() || getPlayState().equals(friendAddSuccessNotification.getPlayState())) && this.onlineState_ == friendAddSuccessNotification.onlineState_ && this.unknownFields.equals(friendAddSuccessNotification.unknownFields);
        }
        return false;
    }

    @Override // com.wufan.friend.chat.protocol.k
    public AccountInfo getFriend() {
        AccountInfo accountInfo = this.friend_;
        return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
    }

    @Override // com.wufan.friend.chat.protocol.k
    public com.wufan.friend.chat.protocol.a getFriendOrBuilder() {
        return getFriend();
    }

    @Override // com.wufan.friend.chat.protocol.k
    public OnlineState getOnlineState() {
        OnlineState onlineStateValueOf = OnlineState.valueOf(this.onlineState_);
        return onlineStateValueOf == null ? OnlineState.UNRECOGNIZED : onlineStateValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.k
    public int getOnlineStateValue() {
        return this.onlineState_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<FriendAddSuccessNotification> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.k
    public PlayState getPlayState() {
        PlayState playState = this.playState_;
        return playState == null ? PlayState.getDefaultInstance() : playState;
    }

    @Override // com.wufan.friend.chat.protocol.k
    public e0 getPlayStateOrBuilder() {
        return getPlayState();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeMessageSize = this.friend_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getFriend()) : 0;
        if (this.playState_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getPlayState());
        }
        if (this.onlineState_ != OnlineState.ONLINE.getNumber()) {
            iComputeMessageSize += CodedOutputStream.computeEnumSize(3, this.onlineState_);
        }
        int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.k
    public boolean hasFriend() {
        return this.friend_ != null;
    }

    @Override // com.wufan.friend.chat.protocol.k
    public boolean hasPlayState() {
        return this.playState_ != null;
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
        if (hasPlayState()) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getPlayState().hashCode();
        }
        int iHashCode2 = (((((iHashCode * 37) + 3) * 53) + this.onlineState_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87897t0.ensureFieldAccessorsInitialized(FriendAddSuccessNotification.class, b.class);
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
        if (this.playState_ != null) {
            output.writeMessage(2, getPlayState());
        }
        if (this.onlineState_ != OnlineState.ONLINE.getNumber()) {
            output.writeEnum(3, this.onlineState_);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ FriendAddSuccessNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(FriendAddSuccessNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static FriendAddSuccessNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private FriendAddSuccessNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FriendAddSuccessNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendAddSuccessNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static FriendAddSuccessNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public FriendAddSuccessNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static FriendAddSuccessNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private FriendAddSuccessNotification() {
        this.memoizedIsInitialized = (byte) -1;
        this.onlineState_ = 0;
    }

    public static FriendAddSuccessNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static FriendAddSuccessNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static FriendAddSuccessNotification parseFrom(InputStream input) throws IOException {
        return (FriendAddSuccessNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private FriendAddSuccessNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
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
                            } else if (tag == 18) {
                                PlayState playState = this.playState_;
                                PlayState.b builder2 = playState != null ? playState.toBuilder() : null;
                                PlayState playState2 = (PlayState) codedInputStream.readMessage(PlayState.parser(), extensionRegistryLite);
                                this.playState_ = playState2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(playState2);
                                    this.playState_ = builder2.buildPartial();
                                }
                            } else if (tag != 24) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.onlineState_ = codedInputStream.readEnum();
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

    public static FriendAddSuccessNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendAddSuccessNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static FriendAddSuccessNotification parseFrom(CodedInputStream input) throws IOException {
        return (FriendAddSuccessNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static FriendAddSuccessNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendAddSuccessNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
