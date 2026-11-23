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
public final class RecommendPlayerArgs extends GeneratedMessageV3 implements h0 {
    public static final int GAMEID_FIELD_NUMBER = 4;
    public static final int GAMESERIES_FIELD_NUMBER = 3;
    public static final int LOCALDOWNLOADGAMEIDS_FIELD_NUMBER = 2;
    public static final int LOCATIONPAGETYPE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private long gameId_;
    private volatile Object gameSeries_;
    private int localDownloadGameIdsMemoizedSerializedSize;
    private Internal.LongList localDownloadGameIds_;
    private int locationPageType_;
    private byte memoizedIsInitialized;
    private static final RecommendPlayerArgs DEFAULT_INSTANCE = new RecommendPlayerArgs();
    private static final Parser<RecommendPlayerArgs> PARSER = new a();

    public enum FriendLocationPageType implements ProtocolMessageEnum {
        BATTLE_HOME_PAGE(0),
        BATTLE_ROOM_LIST(1),
        BATTLE_ROOM(2),
        GAME_HOME_PAGE(3),
        UNRECOGNIZED(-1);

        public static final int BATTLE_HOME_PAGE_VALUE = 0;
        public static final int BATTLE_ROOM_LIST_VALUE = 1;
        public static final int BATTLE_ROOM_VALUE = 2;
        public static final int GAME_HOME_PAGE_VALUE = 3;
        private final int value;
        private static final Internal.EnumLiteMap<FriendLocationPageType> internalValueMap = new a();
        private static final FriendLocationPageType[] VALUES = values();

        class a implements Internal.EnumLiteMap<FriendLocationPageType> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public FriendLocationPageType findValueByNumber(int number) {
                return FriendLocationPageType.forNumber(number);
            }
        }

        FriendLocationPageType(int value) {
            this.value = value;
        }

        public static FriendLocationPageType forNumber(int value) {
            if (value == 0) {
                return BATTLE_HOME_PAGE;
            }
            if (value == 1) {
                return BATTLE_ROOM_LIST;
            }
            if (value == 2) {
                return BATTLE_ROOM;
            }
            if (value != 3) {
                return null;
            }
            return GAME_HOME_PAGE;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return RecommendPlayerArgs.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<FriendLocationPageType> internalGetValueMap() {
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
        public static FriendLocationPageType valueOf(int value) {
            return forNumber(value);
        }

        public static FriendLocationPageType valueOf(Descriptors.EnumValueDescriptor desc) {
            if (desc.getType() == getDescriptor()) {
                if (desc.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[desc.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    class a extends AbstractParser<RecommendPlayerArgs> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RecommendPlayerArgs parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new RecommendPlayerArgs(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements h0 {
        private int bitField0_;
        private long gameId_;
        private Object gameSeries_;
        private Internal.LongList localDownloadGameIds_;
        private int locationPageType_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private void ensureLocalDownloadGameIdsIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.localDownloadGameIds_ = GeneratedMessageV3.mutableCopy(this.localDownloadGameIds_);
                this.bitField0_ |= 2;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87870g;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b addAllLocalDownloadGameIds(Iterable<? extends Long> values) {
            ensureLocalDownloadGameIdsIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.localDownloadGameIds_);
            onChanged();
            return this;
        }

        public b addLocalDownloadGameIds(long value) {
            ensureLocalDownloadGameIdsIsMutable();
            this.localDownloadGameIds_.addLong(value);
            onChanged();
            return this;
        }

        public b clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public b clearGameSeries() {
            this.gameSeries_ = RecommendPlayerArgs.getDefaultInstance().getGameSeries();
            onChanged();
            return this;
        }

        public b clearLocalDownloadGameIds() {
            this.localDownloadGameIds_ = GeneratedMessageV3.emptyLongList();
            this.bitField0_ &= -3;
            onChanged();
            return this;
        }

        public b clearLocationPageType() {
            this.locationPageType_ = 0;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87870g;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public String getGameSeries() {
            Object obj = this.gameSeries_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gameSeries_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public ByteString getGameSeriesBytes() {
            Object obj = this.gameSeries_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gameSeries_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public long getLocalDownloadGameIds(int index) {
            return this.localDownloadGameIds_.getLong(index);
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public int getLocalDownloadGameIdsCount() {
            return this.localDownloadGameIds_.size();
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public List<Long> getLocalDownloadGameIdsList() {
            return (this.bitField0_ & 2) != 0 ? Collections.unmodifiableList(this.localDownloadGameIds_) : this.localDownloadGameIds_;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public FriendLocationPageType getLocationPageType() {
            FriendLocationPageType friendLocationPageTypeValueOf = FriendLocationPageType.valueOf(this.locationPageType_);
            return friendLocationPageTypeValueOf == null ? FriendLocationPageType.UNRECOGNIZED : friendLocationPageTypeValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public int getLocationPageTypeValue() {
            return this.locationPageType_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87872h.ensureFieldAccessorsInitialized(RecommendPlayerArgs.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setGameId(long value) {
            this.gameId_ = value;
            onChanged();
            return this;
        }

        public b setGameSeries(String value) {
            value.getClass();
            this.gameSeries_ = value;
            onChanged();
            return this;
        }

        public b setGameSeriesBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.gameSeries_ = value;
            onChanged();
            return this;
        }

        public b setLocalDownloadGameIds(int index, long value) {
            ensureLocalDownloadGameIdsIsMutable();
            this.localDownloadGameIds_.setLong(index, value);
            onChanged();
            return this;
        }

        public b setLocationPageType(FriendLocationPageType value) {
            value.getClass();
            this.locationPageType_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setLocationPageTypeValue(int value) {
            this.locationPageType_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.locationPageType_ = 0;
            this.localDownloadGameIds_ = GeneratedMessageV3.emptyLongList();
            this.gameSeries_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RecommendPlayerArgs build() {
            RecommendPlayerArgs recommendPlayerArgsBuildPartial = buildPartial();
            if (recommendPlayerArgsBuildPartial.isInitialized()) {
                return recommendPlayerArgsBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) recommendPlayerArgsBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RecommendPlayerArgs buildPartial() {
            RecommendPlayerArgs recommendPlayerArgs = new RecommendPlayerArgs(this, (a) null);
            recommendPlayerArgs.locationPageType_ = this.locationPageType_;
            if ((this.bitField0_ & 2) != 0) {
                this.localDownloadGameIds_.makeImmutable();
                this.bitField0_ &= -3;
            }
            recommendPlayerArgs.localDownloadGameIds_ = this.localDownloadGameIds_;
            recommendPlayerArgs.gameSeries_ = this.gameSeries_;
            recommendPlayerArgs.gameId_ = this.gameId_;
            recommendPlayerArgs.bitField0_ = 0;
            onBuilt();
            return recommendPlayerArgs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RecommendPlayerArgs getDefaultInstanceForType() {
            return RecommendPlayerArgs.getDefaultInstance();
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
            this.locationPageType_ = 0;
            this.localDownloadGameIds_ = GeneratedMessageV3.emptyLongList();
            this.bitField0_ &= -3;
            this.gameSeries_ = "";
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
            if (other instanceof RecommendPlayerArgs) {
                return mergeFrom((RecommendPlayerArgs) other);
            }
            super.mergeFrom(other);
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.locationPageType_ = 0;
            this.localDownloadGameIds_ = GeneratedMessageV3.emptyLongList();
            this.gameSeries_ = "";
            maybeForceBuilderInitialization();
        }

        public b mergeFrom(RecommendPlayerArgs other) {
            if (other == RecommendPlayerArgs.getDefaultInstance()) {
                return this;
            }
            if (other.locationPageType_ != 0) {
                setLocationPageTypeValue(other.getLocationPageTypeValue());
            }
            if (!other.localDownloadGameIds_.isEmpty()) {
                if (this.localDownloadGameIds_.isEmpty()) {
                    this.localDownloadGameIds_ = other.localDownloadGameIds_;
                    this.bitField0_ &= -3;
                } else {
                    ensureLocalDownloadGameIdsIsMutable();
                    this.localDownloadGameIds_.addAll(other.localDownloadGameIds_);
                }
                onChanged();
            }
            if (!other.getGameSeries().isEmpty()) {
                this.gameSeries_ = other.gameSeries_;
                onChanged();
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
            RecommendPlayerArgs recommendPlayerArgs = null;
            try {
                try {
                    RecommendPlayerArgs recommendPlayerArgs2 = (RecommendPlayerArgs) RecommendPlayerArgs.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (recommendPlayerArgs2 != null) {
                        mergeFrom(recommendPlayerArgs2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    RecommendPlayerArgs recommendPlayerArgs3 = (RecommendPlayerArgs) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        recommendPlayerArgs = recommendPlayerArgs3;
                        if (recommendPlayerArgs != null) {
                            mergeFrom(recommendPlayerArgs);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (recommendPlayerArgs != null) {
                    mergeFrom(recommendPlayerArgs);
                }
                throw th;
            }
        }
    }

    /* synthetic */ RecommendPlayerArgs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static RecommendPlayerArgs getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87870g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RecommendPlayerArgs parseDelimitedFrom(InputStream input) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static RecommendPlayerArgs parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<RecommendPlayerArgs> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RecommendPlayerArgs)) {
            return super.equals(obj);
        }
        RecommendPlayerArgs recommendPlayerArgs = (RecommendPlayerArgs) obj;
        return this.locationPageType_ == recommendPlayerArgs.locationPageType_ && getLocalDownloadGameIdsList().equals(recommendPlayerArgs.getLocalDownloadGameIdsList()) && getGameSeries().equals(recommendPlayerArgs.getGameSeries()) && getGameId() == recommendPlayerArgs.getGameId() && this.unknownFields.equals(recommendPlayerArgs.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public String getGameSeries() {
        Object obj = this.gameSeries_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gameSeries_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public ByteString getGameSeriesBytes() {
        Object obj = this.gameSeries_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.gameSeries_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public long getLocalDownloadGameIds(int index) {
        return this.localDownloadGameIds_.getLong(index);
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public int getLocalDownloadGameIdsCount() {
        return this.localDownloadGameIds_.size();
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public List<Long> getLocalDownloadGameIdsList() {
        return this.localDownloadGameIds_;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public FriendLocationPageType getLocationPageType() {
        FriendLocationPageType friendLocationPageTypeValueOf = FriendLocationPageType.valueOf(this.locationPageType_);
        return friendLocationPageTypeValueOf == null ? FriendLocationPageType.UNRECOGNIZED : friendLocationPageTypeValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public int getLocationPageTypeValue() {
        return this.locationPageType_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<RecommendPlayerArgs> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeEnumSize = this.locationPageType_ != FriendLocationPageType.BATTLE_HOME_PAGE.getNumber() ? CodedOutputStream.computeEnumSize(1, this.locationPageType_) + 0 : 0;
        int iComputeInt64SizeNoTag = 0;
        for (int i11 = 0; i11 < this.localDownloadGameIds_.size(); i11++) {
            iComputeInt64SizeNoTag += CodedOutputStream.computeInt64SizeNoTag(this.localDownloadGameIds_.getLong(i11));
        }
        int iComputeInt64Size = iComputeEnumSize + iComputeInt64SizeNoTag;
        if (!getLocalDownloadGameIdsList().isEmpty()) {
            iComputeInt64Size = iComputeInt64Size + 1 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt64SizeNoTag);
        }
        this.localDownloadGameIdsMemoizedSerializedSize = iComputeInt64SizeNoTag;
        if (!getGameSeriesBytes().isEmpty()) {
            iComputeInt64Size += GeneratedMessageV3.computeStringSize(3, this.gameSeries_);
        }
        long j10 = this.gameId_;
        if (j10 != 0) {
            iComputeInt64Size += CodedOutputStream.computeInt64Size(4, j10);
        }
        int serializedSize = iComputeInt64Size + this.unknownFields.getSerializedSize();
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
        int iHashCode = ((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + this.locationPageType_;
        if (getLocalDownloadGameIdsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getLocalDownloadGameIdsList().hashCode();
        }
        int iHashCode2 = (((((((((iHashCode * 37) + 3) * 53) + getGameSeries().hashCode()) * 37) + 4) * 53) + Internal.hashLong(getGameId())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87872h.ensureFieldAccessorsInitialized(RecommendPlayerArgs.class, b.class);
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
        if (this.locationPageType_ != FriendLocationPageType.BATTLE_HOME_PAGE.getNumber()) {
            output.writeEnum(1, this.locationPageType_);
        }
        if (getLocalDownloadGameIdsList().size() > 0) {
            output.writeUInt32NoTag(18);
            output.writeUInt32NoTag(this.localDownloadGameIdsMemoizedSerializedSize);
        }
        for (int i10 = 0; i10 < this.localDownloadGameIds_.size(); i10++) {
            output.writeInt64NoTag(this.localDownloadGameIds_.getLong(i10));
        }
        if (!getGameSeriesBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 3, this.gameSeries_);
        }
        long j10 = this.gameId_;
        if (j10 != 0) {
            output.writeInt64(4, j10);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ RecommendPlayerArgs(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(RecommendPlayerArgs prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static RecommendPlayerArgs parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private RecommendPlayerArgs(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.localDownloadGameIdsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RecommendPlayerArgs parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static RecommendPlayerArgs parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public RecommendPlayerArgs getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static RecommendPlayerArgs parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    public static RecommendPlayerArgs parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    private RecommendPlayerArgs() {
        this.localDownloadGameIdsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.locationPageType_ = 0;
        this.localDownloadGameIds_ = GeneratedMessageV3.emptyLongList();
        this.gameSeries_ = "";
    }

    public static RecommendPlayerArgs parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static RecommendPlayerArgs parseFrom(InputStream input) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static RecommendPlayerArgs parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static RecommendPlayerArgs parseFrom(CodedInputStream input) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private RecommendPlayerArgs(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        this();
        extensionRegistry.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    int tag = input.readTag();
                    if (tag != 0) {
                        if (tag == 8) {
                            this.locationPageType_ = input.readEnum();
                        } else if (tag == 16) {
                            if ((i10 & 2) == 0) {
                                this.localDownloadGameIds_ = GeneratedMessageV3.newLongList();
                                i10 |= 2;
                            }
                            this.localDownloadGameIds_.addLong(input.readInt64());
                        } else if (tag == 18) {
                            int iPushLimit = input.pushLimit(input.readRawVarint32());
                            if ((i10 & 2) == 0 && input.getBytesUntilLimit() > 0) {
                                this.localDownloadGameIds_ = GeneratedMessageV3.newLongList();
                                i10 |= 2;
                            }
                            while (input.getBytesUntilLimit() > 0) {
                                this.localDownloadGameIds_.addLong(input.readInt64());
                            }
                            input.popLimit(iPushLimit);
                        } else if (tag == 26) {
                            this.gameSeries_ = input.readStringRequireUtf8();
                        } else if (tag != 32) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.gameId_ = input.readInt64();
                        }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if ((i10 & 2) != 0) {
                    this.localDownloadGameIds_.makeImmutable();
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if ((i10 & 2) != 0) {
            this.localDownloadGameIds_.makeImmutable();
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static RecommendPlayerArgs parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
