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
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class PlayGameArgs extends GeneratedMessageV3 implements d0 {
    public static final int ACCOUNTID_FIELD_NUMBER = 5;
    public static final int GAMEID_FIELD_NUMBER = 2;
    public static final int LOBBYROOMID_FIELD_NUMBER = 4;
    public static final int LOCALBATTLEGAMEIDS_FIELD_NUMBER = 7;
    public static final int STATE_FIELD_NUMBER = 1;
    public static final int TYPE_FIELD_NUMBER = 3;
    public static final int VERSUS_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private int accountId_;
    private int bitField0_;
    private long gameId_;
    private long lobbyRoomId_;
    private int localBattleGameIdsMemoizedSerializedSize;
    private Internal.LongList localBattleGameIds_;
    private byte memoizedIsInitialized;
    private int state_;
    private int type_;
    private boolean versus_;
    private static final PlayGameArgs DEFAULT_INSTANCE = new PlayGameArgs();
    private static final Parser<PlayGameArgs> PARSER = new a();

    public enum State implements ProtocolMessageEnum {
        START(0),
        RUNNING(1),
        OVER(2),
        UNRECOGNIZED(-1);

        public static final int OVER_VALUE = 2;
        public static final int RUNNING_VALUE = 1;
        public static final int START_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<State> internalValueMap = new a();
        private static final State[] VALUES = values();

        class a implements Internal.EnumLiteMap<State> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public State findValueByNumber(int number) {
                return State.forNumber(number);
            }
        }

        State(int value) {
            this.value = value;
        }

        public static State forNumber(int value) {
            if (value == 0) {
                return START;
            }
            if (value == 1) {
                return RUNNING;
            }
            if (value != 2) {
                return null;
            }
            return OVER;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return PlayGameArgs.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<State> internalGetValueMap() {
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
        public static State valueOf(int value) {
            return forNumber(value);
        }

        public static State valueOf(Descriptors.EnumValueDescriptor desc) {
            if (desc.getType() == getDescriptor()) {
                if (desc.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[desc.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    class a extends AbstractParser<PlayGameArgs> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlayGameArgs parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new PlayGameArgs(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements d0 {
        private int accountId_;
        private int bitField0_;
        private long gameId_;
        private long lobbyRoomId_;
        private Internal.LongList localBattleGameIds_;
        private int state_;
        private int type_;
        private boolean versus_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private void ensureLocalBattleGameIdsIsMutable() {
            if ((this.bitField0_ & 64) == 0) {
                this.localBattleGameIds_ = GeneratedMessageV3.mutableCopy(this.localBattleGameIds_);
                this.bitField0_ |= 64;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87902w;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b addAllLocalBattleGameIds(Iterable<? extends Long> values) {
            ensureLocalBattleGameIdsIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.localBattleGameIds_);
            onChanged();
            return this;
        }

        public b addLocalBattleGameIds(long value) {
            ensureLocalBattleGameIdsIsMutable();
            this.localBattleGameIds_.addLong(value);
            onChanged();
            return this;
        }

        public b clearAccountId() {
            this.accountId_ = 0;
            onChanged();
            return this;
        }

        public b clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public b clearLobbyRoomId() {
            this.lobbyRoomId_ = 0L;
            onChanged();
            return this;
        }

        public b clearLocalBattleGameIds() {
            this.localBattleGameIds_ = GeneratedMessageV3.emptyLongList();
            this.bitField0_ &= -65;
            onChanged();
            return this;
        }

        public b clearState() {
            this.state_ = 0;
            onChanged();
            return this;
        }

        public b clearType() {
            this.type_ = 0;
            onChanged();
            return this;
        }

        public b clearVersus() {
            this.versus_ = false;
            onChanged();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public int getAccountId() {
            return this.accountId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87902w;
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public long getLobbyRoomId() {
            return this.lobbyRoomId_;
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public long getLocalBattleGameIds(int index) {
            return this.localBattleGameIds_.getLong(index);
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public int getLocalBattleGameIdsCount() {
            return this.localBattleGameIds_.size();
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public List<Long> getLocalBattleGameIdsList() {
            return (this.bitField0_ & 64) != 0 ? Collections.unmodifiableList(this.localBattleGameIds_) : this.localBattleGameIds_;
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public State getState() {
            State stateValueOf = State.valueOf(this.state_);
            return stateValueOf == null ? State.UNRECOGNIZED : stateValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public int getStateValue() {
            return this.state_;
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public PlayType getType() {
            PlayType playTypeValueOf = PlayType.valueOf(this.type_);
            return playTypeValueOf == null ? PlayType.UNRECOGNIZED : playTypeValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public int getTypeValue() {
            return this.type_;
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public boolean getVersus() {
            return this.versus_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87904x.ensureFieldAccessorsInitialized(PlayGameArgs.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setAccountId(int value) {
            this.accountId_ = value;
            onChanged();
            return this;
        }

        public b setGameId(long value) {
            this.gameId_ = value;
            onChanged();
            return this;
        }

        public b setLobbyRoomId(long value) {
            this.lobbyRoomId_ = value;
            onChanged();
            return this;
        }

        public b setLocalBattleGameIds(int index, long value) {
            ensureLocalBattleGameIdsIsMutable();
            this.localBattleGameIds_.setLong(index, value);
            onChanged();
            return this;
        }

        public b setState(State value) {
            value.getClass();
            this.state_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setStateValue(int value) {
            this.state_ = value;
            onChanged();
            return this;
        }

        public b setType(PlayType value) {
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

        public b setVersus(boolean value) {
            this.versus_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.state_ = 0;
            this.type_ = 0;
            this.localBattleGameIds_ = GeneratedMessageV3.emptyLongList();
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public PlayGameArgs build() {
            PlayGameArgs playGameArgsBuildPartial = buildPartial();
            if (playGameArgsBuildPartial.isInitialized()) {
                return playGameArgsBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) playGameArgsBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public PlayGameArgs buildPartial() {
            PlayGameArgs playGameArgs = new PlayGameArgs(this, (a) null);
            playGameArgs.state_ = this.state_;
            playGameArgs.gameId_ = this.gameId_;
            playGameArgs.type_ = this.type_;
            playGameArgs.lobbyRoomId_ = this.lobbyRoomId_;
            playGameArgs.accountId_ = this.accountId_;
            playGameArgs.versus_ = this.versus_;
            if ((this.bitField0_ & 64) != 0) {
                this.localBattleGameIds_.makeImmutable();
                this.bitField0_ &= -65;
            }
            playGameArgs.localBattleGameIds_ = this.localBattleGameIds_;
            playGameArgs.bitField0_ = 0;
            onBuilt();
            return playGameArgs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PlayGameArgs getDefaultInstanceForType() {
            return PlayGameArgs.getDefaultInstance();
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
            this.state_ = 0;
            this.gameId_ = 0L;
            this.type_ = 0;
            this.lobbyRoomId_ = 0L;
            this.accountId_ = 0;
            this.versus_ = false;
            this.localBattleGameIds_ = GeneratedMessageV3.emptyLongList();
            this.bitField0_ &= -65;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof PlayGameArgs) {
                return mergeFrom((PlayGameArgs) other);
            }
            super.mergeFrom(other);
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.state_ = 0;
            this.type_ = 0;
            this.localBattleGameIds_ = GeneratedMessageV3.emptyLongList();
            maybeForceBuilderInitialization();
        }

        public b mergeFrom(PlayGameArgs other) {
            if (other == PlayGameArgs.getDefaultInstance()) {
                return this;
            }
            if (other.state_ != 0) {
                setStateValue(other.getStateValue());
            }
            if (other.getGameId() != 0) {
                setGameId(other.getGameId());
            }
            if (other.type_ != 0) {
                setTypeValue(other.getTypeValue());
            }
            if (other.getLobbyRoomId() != 0) {
                setLobbyRoomId(other.getLobbyRoomId());
            }
            if (other.getAccountId() != 0) {
                setAccountId(other.getAccountId());
            }
            if (other.getVersus()) {
                setVersus(other.getVersus());
            }
            if (!other.localBattleGameIds_.isEmpty()) {
                if (this.localBattleGameIds_.isEmpty()) {
                    this.localBattleGameIds_ = other.localBattleGameIds_;
                    this.bitField0_ &= -65;
                } else {
                    ensureLocalBattleGameIdsIsMutable();
                    this.localBattleGameIds_.addAll(other.localBattleGameIds_);
                }
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            PlayGameArgs playGameArgs = null;
            try {
                try {
                    PlayGameArgs playGameArgs2 = (PlayGameArgs) PlayGameArgs.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (playGameArgs2 != null) {
                        mergeFrom(playGameArgs2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    PlayGameArgs playGameArgs3 = (PlayGameArgs) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        playGameArgs = playGameArgs3;
                        if (playGameArgs != null) {
                            mergeFrom(playGameArgs);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (playGameArgs != null) {
                    mergeFrom(playGameArgs);
                }
                throw th;
            }
        }
    }

    /* synthetic */ PlayGameArgs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static PlayGameArgs getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87902w;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static PlayGameArgs parseDelimitedFrom(InputStream input) throws IOException {
        return (PlayGameArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static PlayGameArgs parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<PlayGameArgs> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PlayGameArgs)) {
            return super.equals(obj);
        }
        PlayGameArgs playGameArgs = (PlayGameArgs) obj;
        return this.state_ == playGameArgs.state_ && getGameId() == playGameArgs.getGameId() && this.type_ == playGameArgs.type_ && getLobbyRoomId() == playGameArgs.getLobbyRoomId() && getAccountId() == playGameArgs.getAccountId() && getVersus() == playGameArgs.getVersus() && getLocalBattleGameIdsList().equals(playGameArgs.getLocalBattleGameIdsList()) && this.unknownFields.equals(playGameArgs.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public int getAccountId() {
        return this.accountId_;
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public long getLobbyRoomId() {
        return this.lobbyRoomId_;
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public long getLocalBattleGameIds(int index) {
        return this.localBattleGameIds_.getLong(index);
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public int getLocalBattleGameIdsCount() {
        return this.localBattleGameIds_.size();
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public List<Long> getLocalBattleGameIdsList() {
        return this.localBattleGameIds_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<PlayGameArgs> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeEnumSize = this.state_ != State.START.getNumber() ? CodedOutputStream.computeEnumSize(1, this.state_) + 0 : 0;
        long j10 = this.gameId_;
        if (j10 != 0) {
            iComputeEnumSize += CodedOutputStream.computeInt64Size(2, j10);
        }
        if (this.type_ != PlayType.STAND.getNumber()) {
            iComputeEnumSize += CodedOutputStream.computeEnumSize(3, this.type_);
        }
        long j11 = this.lobbyRoomId_;
        if (j11 != 0) {
            iComputeEnumSize += CodedOutputStream.computeInt64Size(4, j11);
        }
        int i11 = this.accountId_;
        if (i11 != 0) {
            iComputeEnumSize += CodedOutputStream.computeInt32Size(5, i11);
        }
        boolean z10 = this.versus_;
        if (z10) {
            iComputeEnumSize += CodedOutputStream.computeBoolSize(6, z10);
        }
        int iComputeInt64SizeNoTag = 0;
        for (int i12 = 0; i12 < this.localBattleGameIds_.size(); i12++) {
            iComputeInt64SizeNoTag += CodedOutputStream.computeInt64SizeNoTag(this.localBattleGameIds_.getLong(i12));
        }
        int iComputeInt32SizeNoTag = iComputeEnumSize + iComputeInt64SizeNoTag;
        if (!getLocalBattleGameIdsList().isEmpty()) {
            iComputeInt32SizeNoTag = iComputeInt32SizeNoTag + 1 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt64SizeNoTag);
        }
        this.localBattleGameIdsMemoizedSerializedSize = iComputeInt64SizeNoTag;
        int serializedSize = iComputeInt32SizeNoTag + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public State getState() {
        State stateValueOf = State.valueOf(this.state_);
        return stateValueOf == null ? State.UNRECOGNIZED : stateValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public int getStateValue() {
        return this.state_;
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public PlayType getType() {
        PlayType playTypeValueOf = PlayType.valueOf(this.type_);
        return playTypeValueOf == null ? PlayType.UNRECOGNIZED : playTypeValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public int getTypeValue() {
        return this.type_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public boolean getVersus() {
        return this.versus_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + this.state_) * 37) + 2) * 53) + Internal.hashLong(getGameId())) * 37) + 3) * 53) + this.type_) * 37) + 4) * 53) + Internal.hashLong(getLobbyRoomId())) * 37) + 5) * 53) + getAccountId()) * 37) + 6) * 53) + Internal.hashBoolean(getVersus());
        if (getLocalBattleGameIdsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 7) * 53) + getLocalBattleGameIdsList().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87904x.ensureFieldAccessorsInitialized(PlayGameArgs.class, b.class);
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
        if (this.state_ != State.START.getNumber()) {
            output.writeEnum(1, this.state_);
        }
        long j10 = this.gameId_;
        if (j10 != 0) {
            output.writeInt64(2, j10);
        }
        if (this.type_ != PlayType.STAND.getNumber()) {
            output.writeEnum(3, this.type_);
        }
        long j11 = this.lobbyRoomId_;
        if (j11 != 0) {
            output.writeInt64(4, j11);
        }
        int i10 = this.accountId_;
        if (i10 != 0) {
            output.writeInt32(5, i10);
        }
        boolean z10 = this.versus_;
        if (z10) {
            output.writeBool(6, z10);
        }
        if (getLocalBattleGameIdsList().size() > 0) {
            output.writeUInt32NoTag(58);
            output.writeUInt32NoTag(this.localBattleGameIdsMemoizedSerializedSize);
        }
        for (int i11 = 0; i11 < this.localBattleGameIds_.size(); i11++) {
            output.writeInt64NoTag(this.localBattleGameIds_.getLong(i11));
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ PlayGameArgs(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(PlayGameArgs prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static PlayGameArgs parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private PlayGameArgs(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.localBattleGameIdsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PlayGameArgs parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (PlayGameArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static PlayGameArgs parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public PlayGameArgs getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static PlayGameArgs parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    public static PlayGameArgs parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    private PlayGameArgs() {
        this.localBattleGameIdsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.state_ = 0;
        this.type_ = 0;
        this.localBattleGameIds_ = GeneratedMessageV3.emptyLongList();
    }

    public static PlayGameArgs parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static PlayGameArgs parseFrom(InputStream input) throws IOException {
        return (PlayGameArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static PlayGameArgs parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (PlayGameArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static PlayGameArgs parseFrom(CodedInputStream input) throws IOException {
        return (PlayGameArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private PlayGameArgs(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        this();
        extensionRegistry.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.state_ = input.readEnum();
                            } else if (tag == 16) {
                                this.gameId_ = input.readInt64();
                            } else if (tag == 24) {
                                this.type_ = input.readEnum();
                            } else if (tag == 32) {
                                this.lobbyRoomId_ = input.readInt64();
                            } else if (tag == 40) {
                                this.accountId_ = input.readInt32();
                            } else if (tag == 48) {
                                this.versus_ = input.readBool();
                            } else if (tag == 56) {
                                if ((i10 & 64) == 0) {
                                    this.localBattleGameIds_ = GeneratedMessageV3.newLongList();
                                    i10 |= 64;
                                }
                                this.localBattleGameIds_.addLong(input.readInt64());
                            } else if (tag != 58) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                int iPushLimit = input.pushLimit(input.readRawVarint32());
                                if ((i10 & 64) == 0 && input.getBytesUntilLimit() > 0) {
                                    this.localBattleGameIds_ = GeneratedMessageV3.newLongList();
                                    i10 |= 64;
                                }
                                while (input.getBytesUntilLimit() > 0) {
                                    this.localBattleGameIds_.addLong(input.readInt64());
                                }
                                input.popLimit(iPushLimit);
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
                if ((i10 & 64) != 0) {
                    this.localBattleGameIds_.makeImmutable();
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if ((i10 & 64) != 0) {
            this.localBattleGameIds_.makeImmutable();
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static PlayGameArgs parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (PlayGameArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
