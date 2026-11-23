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
public final class AllFriendNotification extends GeneratedMessageV3 implements c {
    public static final int FRIENDCOUNT_FIELD_NUMBER = 3;
    public static final int OFFLINEFRIENDS_FIELD_NUMBER = 2;
    public static final int ONLINEFRIENDS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private int friendCount_;
    private byte memoizedIsInitialized;
    private List<Friend> offlineFriends_;
    private List<Friend> onlineFriends_;
    private static final AllFriendNotification DEFAULT_INSTANCE = new AllFriendNotification();
    private static final Parser<AllFriendNotification> PARSER = new a();

    class a extends AbstractParser<AllFriendNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AllFriendNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new AllFriendNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements c {
        private int bitField0_;
        private int friendCount_;
        private RepeatedFieldBuilderV3<Friend, Friend.b, o> offlineFriendsBuilder_;
        private List<Friend> offlineFriends_;
        private RepeatedFieldBuilderV3<Friend, Friend.b, o> onlineFriendsBuilder_;
        private List<Friend> onlineFriends_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private void ensureOfflineFriendsIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.offlineFriends_ = new ArrayList(this.offlineFriends_);
                this.bitField0_ |= 2;
            }
        }

        private void ensureOnlineFriendsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.onlineFriends_ = new ArrayList(this.onlineFriends_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87903w0;
        }

        private RepeatedFieldBuilderV3<Friend, Friend.b, o> getOfflineFriendsFieldBuilder() {
            if (this.offlineFriendsBuilder_ == null) {
                this.offlineFriendsBuilder_ = new RepeatedFieldBuilderV3<>(this.offlineFriends_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                this.offlineFriends_ = null;
            }
            return this.offlineFriendsBuilder_;
        }

        private RepeatedFieldBuilderV3<Friend, Friend.b, o> getOnlineFriendsFieldBuilder() {
            if (this.onlineFriendsBuilder_ == null) {
                this.onlineFriendsBuilder_ = new RepeatedFieldBuilderV3<>(this.onlineFriends_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                this.onlineFriends_ = null;
            }
            return this.onlineFriendsBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getOnlineFriendsFieldBuilder();
                getOfflineFriendsFieldBuilder();
            }
        }

        public b addAllOfflineFriends(Iterable<? extends Friend> values) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOfflineFriendsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.offlineFriends_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public b addAllOnlineFriends(Iterable<? extends Friend> values) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOnlineFriendsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.onlineFriends_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public b addOfflineFriends(Friend value) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureOfflineFriendsIsMutable();
                this.offlineFriends_.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Friend.b addOfflineFriendsBuilder() {
            return (Friend.b) getOfflineFriendsFieldBuilder().addBuilder(Friend.getDefaultInstance());
        }

        public b addOnlineFriends(Friend value) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureOnlineFriendsIsMutable();
                this.onlineFriends_.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Friend.b addOnlineFriendsBuilder() {
            return (Friend.b) getOnlineFriendsFieldBuilder().addBuilder(Friend.getDefaultInstance());
        }

        public b clearFriendCount() {
            this.friendCount_ = 0;
            onChanged();
            return this;
        }

        public b clearOfflineFriends() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.offlineFriends_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public b clearOnlineFriends() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.onlineFriends_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87903w0;
        }

        @Override // com.wufan.friend.chat.protocol.c
        public int getFriendCount() {
            return this.friendCount_;
        }

        @Override // com.wufan.friend.chat.protocol.c
        public Friend getOfflineFriends(int index) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.offlineFriends_.get(index) : (Friend) repeatedFieldBuilderV3.getMessage(index);
        }

        public Friend.b getOfflineFriendsBuilder(int index) {
            return (Friend.b) getOfflineFriendsFieldBuilder().getBuilder(index);
        }

        public List<Friend.b> getOfflineFriendsBuilderList() {
            return getOfflineFriendsFieldBuilder().getBuilderList();
        }

        @Override // com.wufan.friend.chat.protocol.c
        public int getOfflineFriendsCount() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.offlineFriends_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.wufan.friend.chat.protocol.c
        public List<Friend> getOfflineFriendsList() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.offlineFriends_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.wufan.friend.chat.protocol.c
        public o getOfflineFriendsOrBuilder(int index) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.offlineFriends_.get(index) : (o) repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.wufan.friend.chat.protocol.c
        public List<? extends o> getOfflineFriendsOrBuilderList() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.offlineFriends_);
        }

        @Override // com.wufan.friend.chat.protocol.c
        public Friend getOnlineFriends(int index) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.onlineFriends_.get(index) : (Friend) repeatedFieldBuilderV3.getMessage(index);
        }

        public Friend.b getOnlineFriendsBuilder(int index) {
            return (Friend.b) getOnlineFriendsFieldBuilder().getBuilder(index);
        }

        public List<Friend.b> getOnlineFriendsBuilderList() {
            return getOnlineFriendsFieldBuilder().getBuilderList();
        }

        @Override // com.wufan.friend.chat.protocol.c
        public int getOnlineFriendsCount() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.onlineFriends_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.wufan.friend.chat.protocol.c
        public List<Friend> getOnlineFriendsList() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.onlineFriends_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.wufan.friend.chat.protocol.c
        public o getOnlineFriendsOrBuilder(int index) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.onlineFriends_.get(index) : (o) repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.wufan.friend.chat.protocol.c
        public List<? extends o> getOnlineFriendsOrBuilderList() {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.onlineFriends_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87905x0.ensureFieldAccessorsInitialized(AllFriendNotification.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b removeOfflineFriends(int index) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOfflineFriendsIsMutable();
                this.offlineFriends_.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public b removeOnlineFriends(int index) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOnlineFriendsIsMutable();
                this.onlineFriends_.remove(index);
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

        public b setOfflineFriends(int index, Friend value) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureOfflineFriendsIsMutable();
                this.offlineFriends_.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        public b setOnlineFriends(int index, Friend value) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureOnlineFriendsIsMutable();
                this.onlineFriends_.set(index, value);
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
            this.onlineFriends_ = Collections.emptyList();
            this.offlineFriends_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public AllFriendNotification build() {
            AllFriendNotification allFriendNotificationBuildPartial = buildPartial();
            if (allFriendNotificationBuildPartial.isInitialized()) {
                return allFriendNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) allFriendNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public AllFriendNotification buildPartial() {
            AllFriendNotification allFriendNotification = new AllFriendNotification(this, (a) null);
            int i10 = this.bitField0_;
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((i10 & 1) != 0) {
                    this.onlineFriends_ = Collections.unmodifiableList(this.onlineFriends_);
                    this.bitField0_ &= -2;
                }
                allFriendNotification.onlineFriends_ = this.onlineFriends_;
            } else {
                allFriendNotification.onlineFriends_ = repeatedFieldBuilderV3.build();
            }
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV4 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV4 != null) {
                allFriendNotification.offlineFriends_ = repeatedFieldBuilderV4.build();
            } else {
                if ((this.bitField0_ & 2) != 0) {
                    this.offlineFriends_ = Collections.unmodifiableList(this.offlineFriends_);
                    this.bitField0_ &= -3;
                }
                allFriendNotification.offlineFriends_ = this.offlineFriends_;
            }
            allFriendNotification.friendCount_ = this.friendCount_;
            allFriendNotification.bitField0_ = 0;
            onBuilt();
            return allFriendNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public AllFriendNotification getDefaultInstanceForType() {
            return AllFriendNotification.getDefaultInstance();
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

        public Friend.b addOfflineFriendsBuilder(int index) {
            return (Friend.b) getOfflineFriendsFieldBuilder().addBuilder(index, Friend.getDefaultInstance());
        }

        public Friend.b addOnlineFriendsBuilder(int index) {
            return (Friend.b) getOnlineFriendsFieldBuilder().addBuilder(index, Friend.getDefaultInstance());
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
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.onlineFriends_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV4 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV4 == null) {
                this.offlineFriends_ = Collections.emptyList();
                this.bitField0_ &= -3;
            } else {
                repeatedFieldBuilderV4.clear();
            }
            this.friendCount_ = 0;
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.onlineFriends_ = Collections.emptyList();
            this.offlineFriends_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public b addOfflineFriends(int index, Friend value) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureOfflineFriendsIsMutable();
                this.offlineFriends_.add(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, value);
            }
            return this;
        }

        public b addOnlineFriends(int index, Friend value) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureOnlineFriendsIsMutable();
                this.onlineFriends_.add(index, value);
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
            if (other instanceof AllFriendNotification) {
                return mergeFrom((AllFriendNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b setOfflineFriends(int index, Friend.b builderForValue) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOfflineFriendsIsMutable();
                this.offlineFriends_.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public b setOnlineFriends(int index, Friend.b builderForValue) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOnlineFriendsIsMutable();
                this.onlineFriends_.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public b mergeFrom(AllFriendNotification other) {
            if (other == AllFriendNotification.getDefaultInstance()) {
                return this;
            }
            if (this.onlineFriendsBuilder_ == null) {
                if (!other.onlineFriends_.isEmpty()) {
                    if (this.onlineFriends_.isEmpty()) {
                        this.onlineFriends_ = other.onlineFriends_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureOnlineFriendsIsMutable();
                        this.onlineFriends_.addAll(other.onlineFriends_);
                    }
                    onChanged();
                }
            } else if (!other.onlineFriends_.isEmpty()) {
                if (!this.onlineFriendsBuilder_.isEmpty()) {
                    this.onlineFriendsBuilder_.addAllMessages(other.onlineFriends_);
                } else {
                    this.onlineFriendsBuilder_.dispose();
                    this.onlineFriendsBuilder_ = null;
                    this.onlineFriends_ = other.onlineFriends_;
                    this.bitField0_ &= -2;
                    this.onlineFriendsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getOnlineFriendsFieldBuilder() : null;
                }
            }
            if (this.offlineFriendsBuilder_ == null) {
                if (!other.offlineFriends_.isEmpty()) {
                    if (this.offlineFriends_.isEmpty()) {
                        this.offlineFriends_ = other.offlineFriends_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureOfflineFriendsIsMutable();
                        this.offlineFriends_.addAll(other.offlineFriends_);
                    }
                    onChanged();
                }
            } else if (!other.offlineFriends_.isEmpty()) {
                if (!this.offlineFriendsBuilder_.isEmpty()) {
                    this.offlineFriendsBuilder_.addAllMessages(other.offlineFriends_);
                } else {
                    this.offlineFriendsBuilder_.dispose();
                    this.offlineFriendsBuilder_ = null;
                    this.offlineFriends_ = other.offlineFriends_;
                    this.bitField0_ &= -3;
                    this.offlineFriendsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getOfflineFriendsFieldBuilder() : null;
                }
            }
            if (other.getFriendCount() != 0) {
                setFriendCount(other.getFriendCount());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        public b addOfflineFriends(Friend.b builderForValue) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOfflineFriendsIsMutable();
                this.offlineFriends_.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public b addOnlineFriends(Friend.b builderForValue) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOnlineFriendsIsMutable();
                this.onlineFriends_.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public b addOfflineFriends(int index, Friend.b builderForValue) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.offlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOfflineFriendsIsMutable();
                this.offlineFriends_.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        public b addOnlineFriends(int index, Friend.b builderForValue) {
            RepeatedFieldBuilderV3<Friend, Friend.b, o> repeatedFieldBuilderV3 = this.onlineFriendsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureOnlineFriendsIsMutable();
                this.onlineFriends_.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            AllFriendNotification allFriendNotification = null;
            try {
                try {
                    AllFriendNotification allFriendNotification2 = (AllFriendNotification) AllFriendNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (allFriendNotification2 != null) {
                        mergeFrom(allFriendNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    AllFriendNotification allFriendNotification3 = (AllFriendNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        allFriendNotification = allFriendNotification3;
                        if (allFriendNotification != null) {
                            mergeFrom(allFriendNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (allFriendNotification != null) {
                    mergeFrom(allFriendNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ AllFriendNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static AllFriendNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87903w0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AllFriendNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (AllFriendNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static AllFriendNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<AllFriendNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AllFriendNotification)) {
            return super.equals(obj);
        }
        AllFriendNotification allFriendNotification = (AllFriendNotification) obj;
        return getOnlineFriendsList().equals(allFriendNotification.getOnlineFriendsList()) && getOfflineFriendsList().equals(allFriendNotification.getOfflineFriendsList()) && getFriendCount() == allFriendNotification.getFriendCount() && this.unknownFields.equals(allFriendNotification.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.c
    public int getFriendCount() {
        return this.friendCount_;
    }

    @Override // com.wufan.friend.chat.protocol.c
    public Friend getOfflineFriends(int index) {
        return this.offlineFriends_.get(index);
    }

    @Override // com.wufan.friend.chat.protocol.c
    public int getOfflineFriendsCount() {
        return this.offlineFriends_.size();
    }

    @Override // com.wufan.friend.chat.protocol.c
    public List<Friend> getOfflineFriendsList() {
        return this.offlineFriends_;
    }

    @Override // com.wufan.friend.chat.protocol.c
    public o getOfflineFriendsOrBuilder(int index) {
        return this.offlineFriends_.get(index);
    }

    @Override // com.wufan.friend.chat.protocol.c
    public List<? extends o> getOfflineFriendsOrBuilderList() {
        return this.offlineFriends_;
    }

    @Override // com.wufan.friend.chat.protocol.c
    public Friend getOnlineFriends(int index) {
        return this.onlineFriends_.get(index);
    }

    @Override // com.wufan.friend.chat.protocol.c
    public int getOnlineFriendsCount() {
        return this.onlineFriends_.size();
    }

    @Override // com.wufan.friend.chat.protocol.c
    public List<Friend> getOnlineFriendsList() {
        return this.onlineFriends_;
    }

    @Override // com.wufan.friend.chat.protocol.c
    public o getOnlineFriendsOrBuilder(int index) {
        return this.onlineFriends_.get(index);
    }

    @Override // com.wufan.friend.chat.protocol.c
    public List<? extends o> getOnlineFriendsOrBuilderList() {
        return this.onlineFriends_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<AllFriendNotification> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeInt32Size = 0;
        for (int i11 = 0; i11 < this.onlineFriends_.size(); i11++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(1, this.onlineFriends_.get(i11));
        }
        for (int i12 = 0; i12 < this.offlineFriends_.size(); i12++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(2, this.offlineFriends_.get(i12));
        }
        int i13 = this.friendCount_;
        if (i13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(3, i13);
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
        if (getOnlineFriendsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getOnlineFriendsList().hashCode();
        }
        if (getOfflineFriendsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getOfflineFriendsList().hashCode();
        }
        int friendCount = (((((iHashCode * 37) + 3) * 53) + getFriendCount()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = friendCount;
        return friendCount;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87905x0.ensureFieldAccessorsInitialized(AllFriendNotification.class, b.class);
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
        for (int i10 = 0; i10 < this.onlineFriends_.size(); i10++) {
            output.writeMessage(1, this.onlineFriends_.get(i10));
        }
        for (int i11 = 0; i11 < this.offlineFriends_.size(); i11++) {
            output.writeMessage(2, this.offlineFriends_.get(i11));
        }
        int i12 = this.friendCount_;
        if (i12 != 0) {
            output.writeInt32(3, i12);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ AllFriendNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(AllFriendNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static AllFriendNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private AllFriendNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AllFriendNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AllFriendNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static AllFriendNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public AllFriendNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static AllFriendNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private AllFriendNotification() {
        this.memoizedIsInitialized = (byte) -1;
        this.onlineFriends_ = Collections.emptyList();
        this.offlineFriends_ = Collections.emptyList();
    }

    public static AllFriendNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static AllFriendNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static AllFriendNotification parseFrom(InputStream input) throws IOException {
        return (AllFriendNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private AllFriendNotification(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                        if (tag == 10) {
                            if ((i10 & 1) == 0) {
                                this.onlineFriends_ = new ArrayList();
                                i10 |= 1;
                            }
                            this.onlineFriends_.add((Friend) input.readMessage(Friend.parser(), extensionRegistry));
                        } else if (tag == 18) {
                            if ((i10 & 2) == 0) {
                                this.offlineFriends_ = new ArrayList();
                                i10 |= 2;
                            }
                            this.offlineFriends_.add((Friend) input.readMessage(Friend.parser(), extensionRegistry));
                        } else if (tag != 24) {
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
                if ((i10 & 1) != 0) {
                    this.onlineFriends_ = Collections.unmodifiableList(this.onlineFriends_);
                }
                if ((i10 & 2) != 0) {
                    this.offlineFriends_ = Collections.unmodifiableList(this.offlineFriends_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if ((i10 & 1) != 0) {
            this.onlineFriends_ = Collections.unmodifiableList(this.onlineFriends_);
        }
        if ((i10 & 2) != 0) {
            this.offlineFriends_ = Collections.unmodifiableList(this.offlineFriends_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static AllFriendNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AllFriendNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static AllFriendNotification parseFrom(CodedInputStream input) throws IOException {
        return (AllFriendNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static AllFriendNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AllFriendNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
