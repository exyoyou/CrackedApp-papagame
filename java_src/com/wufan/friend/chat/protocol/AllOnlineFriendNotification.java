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
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class AllOnlineFriendNotification extends GeneratedMessageV3 implements d {
    public static final int FRIENDCOUNT_FIELD_NUMBER = 2;
    public static final int FRIENDS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private int friendCount_;
    private List<Friend> friends_;
    private byte memoizedIsInitialized;
    private static final AllOnlineFriendNotification DEFAULT_INSTANCE = new AllOnlineFriendNotification();
    private static final Parser<AllOnlineFriendNotification> PARSER = new a();

    class a extends AbstractParser<AllOnlineFriendNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AllOnlineFriendNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new AllOnlineFriendNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements d {
        private int bitField0_;
        private int friendCount_;
        private RepeatedFieldBuilderV3<Friend, Friend.b, o> friendsBuilder_;
        private List<Friend> friends_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private void ensureFriendsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.friends_ = new ArrayList(this.friends_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87879k0;
        }

        private RepeatedFieldBuilderV3<Friend, Friend.b, o> getFriendsFieldBuilder() {
            if (this.friendsBuilder_ == null) {
                this.friendsBuilder_ = new RepeatedFieldBuilderV3<>(this.friends_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                this.friends_ = null;
            }
            return this.friendsBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getFriendsFieldBuilder();
            }
        }

        public b addAllFriends(Iterable<? extends Friend> values) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureFriendsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.friends_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public b addFriends(Friend value) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureFriendsIsMutable();
                this.friends_.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Friend.b addFriendsBuilder() {
            return (Friend.b) getFriendsFieldBuilder().addBuilder(Friend.getDefaultInstance());
        }

        public b clearFriendCount() {
            this.friendCount_ = 0;
            onChanged();
            return this;
        }

        public b clearFriends() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.friends_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87879k0;
        }

        @Override // com.wufan.friend.chat.protocol.d
        public int getFriendCount() {
            return this.friendCount_;
        }

        @Override // com.wufan.friend.chat.protocol.d
        public Friend getFriends(int index) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.friends_.get(index) : (Friend) repeatedFieldBuilderV3.getMessage(index);
        }

        public Friend.b getFriendsBuilder(int index) {
            return (Friend.b) getFriendsFieldBuilder().getBuilder(index);
        }

        public List<Friend.b> getFriendsBuilderList() {
            return getFriendsFieldBuilder().getBuilderList();
        }

        @Override // com.wufan.friend.chat.protocol.d
        public int getFriendsCount() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.friends_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.wufan.friend.chat.protocol.d
        public List<Friend> getFriendsList() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.friends_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.wufan.friend.chat.protocol.d
        public o getFriendsOrBuilder(int index) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.friends_.get(index) : (o) repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.wufan.friend.chat.protocol.d
        public List<? extends o> getFriendsOrBuilderList() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.friends_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87881l0.ensureFieldAccessorsInitialized(AllOnlineFriendNotification.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b removeFriends(int index) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureFriendsIsMutable();
                this.friends_.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public b setFriendCount(int value) {
            this.friendCount_ = value;
            onChanged();
            return this;
        }

        public b setFriends(int index, Friend value) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureFriendsIsMutable();
                this.friends_.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.friends_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public AllOnlineFriendNotification build() {
            AllOnlineFriendNotification allOnlineFriendNotificationBuildPartial = buildPartial();
            if (allOnlineFriendNotificationBuildPartial.isInitialized()) {
                return allOnlineFriendNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) allOnlineFriendNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public AllOnlineFriendNotification buildPartial() {
            AllOnlineFriendNotification allOnlineFriendNotification = new AllOnlineFriendNotification(this, (a) null);
            int i10 = this.bitField0_;
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((i10 & 1) != 0) {
                    this.friends_ = Collections.unmodifiableList(this.friends_);
                    this.bitField0_ &= -2;
                }
                allOnlineFriendNotification.friends_ = this.friends_;
            } else {
                allOnlineFriendNotification.friends_ = repeatedFieldBuilderV3.build();
            }
            allOnlineFriendNotification.friendCount_ = this.friendCount_;
            allOnlineFriendNotification.bitField0_ = 0;
            onBuilt();
            return allOnlineFriendNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public AllOnlineFriendNotification getDefaultInstanceForType() {
            return AllOnlineFriendNotification.getDefaultInstance();
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

        public Friend.b addFriendsBuilder(int index) {
            return (Friend.b) getFriendsFieldBuilder().addBuilder(index, Friend.getDefaultInstance());
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
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.friends_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            this.friendCount_ = 0;
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.friends_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public b addFriends(int index, Friend value) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureFriendsIsMutable();
                this.friends_.add(index, value);
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
            if (other instanceof AllOnlineFriendNotification) {
                return mergeFrom((AllOnlineFriendNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b setFriends(int index, Friend.b builderForValue) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureFriendsIsMutable();
                this.friends_.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public b mergeFrom(AllOnlineFriendNotification other) {
            if (other == AllOnlineFriendNotification.getDefaultInstance()) {
                return this;
            }
            if (this.friendsBuilder_ == null) {
                if (!other.friends_.isEmpty()) {
                    if (this.friends_.isEmpty()) {
                        this.friends_ = other.friends_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureFriendsIsMutable();
                        this.friends_.addAll(other.friends_);
                    }
                    onChanged();
                }
            } else if (!other.friends_.isEmpty()) {
                if (!this.friendsBuilder_.isEmpty()) {
                    this.friendsBuilder_.addAllMessages(other.friends_);
                } else {
                    this.friendsBuilder_.dispose();
                    this.friendsBuilder_ = null;
                    this.friends_ = other.friends_;
                    this.bitField0_ &= -2;
                    this.friendsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getFriendsFieldBuilder() : null;
                }
            }
            if (other.getFriendCount() != 0) {
                setFriendCount(other.getFriendCount());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        public b addFriends(Friend.b builderForValue) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureFriendsIsMutable();
                this.friends_.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public b addFriends(int index, Friend.b builderForValue) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.friendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureFriendsIsMutable();
                this.friends_.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            AllOnlineFriendNotification allOnlineFriendNotification = null;
            try {
                try {
                    AllOnlineFriendNotification allOnlineFriendNotification2 = (AllOnlineFriendNotification) AllOnlineFriendNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (allOnlineFriendNotification2 != null) {
                        mergeFrom(allOnlineFriendNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    AllOnlineFriendNotification allOnlineFriendNotification3 = (AllOnlineFriendNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        allOnlineFriendNotification = allOnlineFriendNotification3;
                        if (allOnlineFriendNotification != null) {
                            mergeFrom(allOnlineFriendNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (allOnlineFriendNotification != null) {
                    mergeFrom(allOnlineFriendNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ AllOnlineFriendNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static AllOnlineFriendNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87879k0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AllOnlineFriendNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (AllOnlineFriendNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static AllOnlineFriendNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<AllOnlineFriendNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AllOnlineFriendNotification)) {
            return super.equals(obj);
        }
        AllOnlineFriendNotification allOnlineFriendNotification = (AllOnlineFriendNotification) obj;
        return getFriendsList().equals(allOnlineFriendNotification.getFriendsList()) && getFriendCount() == allOnlineFriendNotification.getFriendCount() && this.unknownFields.equals(allOnlineFriendNotification.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.d
    public int getFriendCount() {
        return this.friendCount_;
    }

    @Override // com.wufan.friend.chat.protocol.d
    public Friend getFriends(int index) {
        return this.friends_.get(index);
    }

    @Override // com.wufan.friend.chat.protocol.d
    public int getFriendsCount() {
        return this.friends_.size();
    }

    @Override // com.wufan.friend.chat.protocol.d
    public List<Friend> getFriendsList() {
        return this.friends_;
    }

    @Override // com.wufan.friend.chat.protocol.d
    public o getFriendsOrBuilder(int index) {
        return this.friends_.get(index);
    }

    @Override // com.wufan.friend.chat.protocol.d
    public List<? extends o> getFriendsOrBuilderList() {
        return this.friends_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<AllOnlineFriendNotification> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeInt32Size = 0;
        for (int i11 = 0; i11 < this.friends_.size(); i11++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(1, this.friends_.get(i11));
        }
        int i12 = this.friendCount_;
        if (i12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, i12);
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
        int iHashCode = GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode();
        if (getFriendsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getFriendsList().hashCode();
        }
        int friendCount = (((((iHashCode * 37) + 2) * 53) + getFriendCount()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = friendCount;
        return friendCount;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87881l0.ensureFieldAccessorsInitialized(AllOnlineFriendNotification.class, b.class);
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
        for (int i10 = 0; i10 < this.friends_.size(); i10++) {
            output.writeMessage(1, this.friends_.get(i10));
        }
        int i11 = this.friendCount_;
        if (i11 != 0) {
            output.writeInt32(2, i11);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ AllOnlineFriendNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(AllOnlineFriendNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static AllOnlineFriendNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private AllOnlineFriendNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AllOnlineFriendNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AllOnlineFriendNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static AllOnlineFriendNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public AllOnlineFriendNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static AllOnlineFriendNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private AllOnlineFriendNotification() {
        this.memoizedIsInitialized = (byte) -1;
        this.friends_ = Collections.emptyList();
    }

    public static AllOnlineFriendNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static AllOnlineFriendNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static AllOnlineFriendNotification parseFrom(InputStream input) throws IOException {
        return (AllOnlineFriendNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private AllOnlineFriendNotification(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        this();
        extensionRegistry.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int tag = input.readTag();
                    if (tag != 0) {
                        if (tag == 10) {
                            if (!(z11 & true)) {
                                this.friends_ = new ArrayList();
                                z11 |= true;
                            }
                            this.friends_.add((Friend) input.readMessage(Friend.parser(), extensionRegistry));
                        } else if (tag != 16) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.friendCount_ = input.readInt32();
                        }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if (z11 & true) {
                    this.friends_ = Collections.unmodifiableList(this.friends_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (z11 & true) {
            this.friends_ = Collections.unmodifiableList(this.friends_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static AllOnlineFriendNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AllOnlineFriendNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static AllOnlineFriendNotification parseFrom(CodedInputStream input) throws IOException {
        return (AllOnlineFriendNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static AllOnlineFriendNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AllOnlineFriendNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
