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
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import com.wufan.user.service.protobuf.enumeration.ServerState;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageCloudGamingServerListResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f88047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88048d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Descriptors.Descriptor f88049e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88050f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88051g;

    public static final class LineList extends GeneratedMessageV3 implements b {
        public static final int CURRENTHSNTOTAL_FIELD_NUMBER = 3;
        public static final int CURRENTINSERVERNUM_FIELD_NUMBER = 4;
        public static final int ISVIP_FIELD_NUMBER = 5;
        public static final int K_FIELD_NUMBER = 7;
        public static final int SERVERLINENUM_FIELD_NUMBER = 1;
        public static final int SERVERNAME_FIELD_NUMBER = 2;
        public static final int STATE_FIELD_NUMBER = 6;
        public static final int TIMEOUT_FIELD_NUMBER = 9;
        public static final int VIDEOCODERATETITLE_FIELD_NUMBER = 8;
        private static final long serialVersionUID = 0;
        private int currentHsnTotal_;
        private int currentInServerNum_;
        private boolean isVip_;
        private volatile Object k_;
        private byte memoizedIsInitialized;
        private volatile Object serverLineNum_;
        private volatile Object serverName_;
        private int state_;
        private int timeOut_;
        private volatile Object videoCodeRateTitle_;
        private static final LineList DEFAULT_INSTANCE = new LineList();
        private static final Parser<LineList> PARSER = new a();

        class a extends AbstractParser<LineList> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public LineList parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new LineList(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private int currentHsnTotal_;
            private int currentInServerNum_;
            private boolean isVip_;
            private Object k_;
            private Object serverLineNum_;
            private Object serverName_;
            private int state_;
            private int timeOut_;
            private Object videoCodeRateTitle_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingServerListResponse.f88049e;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearCurrentHsnTotal() {
                this.currentHsnTotal_ = 0;
                onChanged();
                return this;
            }

            public b clearCurrentInServerNum() {
                this.currentInServerNum_ = 0;
                onChanged();
                return this;
            }

            public b clearIsVip() {
                this.isVip_ = false;
                onChanged();
                return this;
            }

            public b clearK() {
                this.k_ = LineList.getDefaultInstance().getK();
                onChanged();
                return this;
            }

            public b clearServerLineNum() {
                this.serverLineNum_ = LineList.getDefaultInstance().getServerLineNum();
                onChanged();
                return this;
            }

            public b clearServerName() {
                this.serverName_ = LineList.getDefaultInstance().getServerName();
                onChanged();
                return this;
            }

            public b clearState() {
                this.state_ = 0;
                onChanged();
                return this;
            }

            public b clearTimeOut() {
                this.timeOut_ = 0;
                onChanged();
                return this;
            }

            public b clearVideoCodeRateTitle() {
                this.videoCodeRateTitle_ = LineList.getDefaultInstance().getVideoCodeRateTitle();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public int getCurrentHsnTotal() {
                return this.currentHsnTotal_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public int getCurrentInServerNum() {
                return this.currentInServerNum_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingServerListResponse.f88049e;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public boolean getIsVip() {
                return this.isVip_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public String getK() {
                Object obj = this.k_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.k_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public ByteString getKBytes() {
                Object obj = this.k_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.k_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public String getServerLineNum() {
                Object obj = this.serverLineNum_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.serverLineNum_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public ByteString getServerLineNumBytes() {
                Object obj = this.serverLineNum_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.serverLineNum_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public String getServerName() {
                Object obj = this.serverName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.serverName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public ByteString getServerNameBytes() {
                Object obj = this.serverName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.serverName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public ServerState getState() {
                ServerState serverStateValueOf = ServerState.valueOf(this.state_);
                return serverStateValueOf == null ? ServerState.UNRECOGNIZED : serverStateValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public int getStateValue() {
                return this.state_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public int getTimeOut() {
                return this.timeOut_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public String getVideoCodeRateTitle() {
                Object obj = this.videoCodeRateTitle_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.videoCodeRateTitle_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
            public ByteString getVideoCodeRateTitleBytes() {
                Object obj = this.videoCodeRateTitle_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.videoCodeRateTitle_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingServerListResponse.f88050f.ensureFieldAccessorsInitialized(LineList.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setCurrentHsnTotal(int value) {
                this.currentHsnTotal_ = value;
                onChanged();
                return this;
            }

            public b setCurrentInServerNum(int value) {
                this.currentInServerNum_ = value;
                onChanged();
                return this;
            }

            public b setIsVip(boolean value) {
                this.isVip_ = value;
                onChanged();
                return this;
            }

            public b setK(String value) {
                value.getClass();
                this.k_ = value;
                onChanged();
                return this;
            }

            public b setKBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.k_ = value;
                onChanged();
                return this;
            }

            public b setServerLineNum(String value) {
                value.getClass();
                this.serverLineNum_ = value;
                onChanged();
                return this;
            }

            public b setServerLineNumBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.serverLineNum_ = value;
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

            public b setState(ServerState value) {
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

            public b setTimeOut(int value) {
                this.timeOut_ = value;
                onChanged();
                return this;
            }

            public b setVideoCodeRateTitle(String value) {
                value.getClass();
                this.videoCodeRateTitle_ = value;
                onChanged();
                return this;
            }

            public b setVideoCodeRateTitleBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.videoCodeRateTitle_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.serverLineNum_ = "";
                this.serverName_ = "";
                this.state_ = 0;
                this.k_ = "";
                this.videoCodeRateTitle_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LineList build() {
                LineList lineListBuildPartial = buildPartial();
                if (lineListBuildPartial.isInitialized()) {
                    return lineListBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) lineListBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LineList buildPartial() {
                LineList lineList = new LineList(this, (a) null);
                lineList.serverLineNum_ = this.serverLineNum_;
                lineList.serverName_ = this.serverName_;
                lineList.currentHsnTotal_ = this.currentHsnTotal_;
                lineList.currentInServerNum_ = this.currentInServerNum_;
                lineList.isVip_ = this.isVip_;
                lineList.state_ = this.state_;
                lineList.k_ = this.k_;
                lineList.videoCodeRateTitle_ = this.videoCodeRateTitle_;
                lineList.timeOut_ = this.timeOut_;
                onBuilt();
                return lineList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LineList getDefaultInstanceForType() {
                return LineList.getDefaultInstance();
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
                this.serverLineNum_ = "";
                this.serverName_ = "";
                this.currentHsnTotal_ = 0;
                this.currentInServerNum_ = 0;
                this.isVip_ = false;
                this.state_ = 0;
                this.k_ = "";
                this.videoCodeRateTitle_ = "";
                this.timeOut_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof LineList) {
                    return mergeFrom((LineList) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.serverLineNum_ = "";
                this.serverName_ = "";
                this.state_ = 0;
                this.k_ = "";
                this.videoCodeRateTitle_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(LineList other) {
                if (other == LineList.getDefaultInstance()) {
                    return this;
                }
                if (!other.getServerLineNum().isEmpty()) {
                    this.serverLineNum_ = other.serverLineNum_;
                    onChanged();
                }
                if (!other.getServerName().isEmpty()) {
                    this.serverName_ = other.serverName_;
                    onChanged();
                }
                if (other.getCurrentHsnTotal() != 0) {
                    setCurrentHsnTotal(other.getCurrentHsnTotal());
                }
                if (other.getCurrentInServerNum() != 0) {
                    setCurrentInServerNum(other.getCurrentInServerNum());
                }
                if (other.getIsVip()) {
                    setIsVip(other.getIsVip());
                }
                if (other.state_ != 0) {
                    setStateValue(other.getStateValue());
                }
                if (!other.getK().isEmpty()) {
                    this.k_ = other.k_;
                    onChanged();
                }
                if (!other.getVideoCodeRateTitle().isEmpty()) {
                    this.videoCodeRateTitle_ = other.videoCodeRateTitle_;
                    onChanged();
                }
                if (other.getTimeOut() != 0) {
                    setTimeOut(other.getTimeOut());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                LineList lineList = null;
                try {
                    try {
                        LineList lineList2 = (LineList) LineList.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (lineList2 != null) {
                            mergeFrom(lineList2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        LineList lineList3 = (LineList) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            lineList = lineList3;
                            if (lineList != null) {
                                mergeFrom(lineList);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (lineList != null) {
                        mergeFrom(lineList);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ LineList(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static LineList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingServerListResponse.f88049e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static LineList parseDelimitedFrom(InputStream input) throws IOException {
            return (LineList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static LineList parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<LineList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LineList)) {
                return super.equals(obj);
            }
            LineList lineList = (LineList) obj;
            return getServerLineNum().equals(lineList.getServerLineNum()) && getServerName().equals(lineList.getServerName()) && getCurrentHsnTotal() == lineList.getCurrentHsnTotal() && getCurrentInServerNum() == lineList.getCurrentInServerNum() && getIsVip() == lineList.getIsVip() && this.state_ == lineList.state_ && getK().equals(lineList.getK()) && getVideoCodeRateTitle().equals(lineList.getVideoCodeRateTitle()) && getTimeOut() == lineList.getTimeOut() && this.unknownFields.equals(lineList.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public int getCurrentHsnTotal() {
            return this.currentHsnTotal_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public int getCurrentInServerNum() {
            return this.currentInServerNum_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public boolean getIsVip() {
            return this.isVip_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public String getK() {
            Object obj = this.k_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.k_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public ByteString getKBytes() {
            Object obj = this.k_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.k_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LineList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getServerLineNumBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.serverLineNum_);
            if (!getServerNameBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.serverName_);
            }
            int i11 = this.currentHsnTotal_;
            if (i11 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(3, i11);
            }
            int i12 = this.currentInServerNum_;
            if (i12 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(4, i12);
            }
            boolean z10 = this.isVip_;
            if (z10) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(5, z10);
            }
            if (this.state_ != ServerState.SERVER_LINE_FULL.getNumber()) {
                iComputeStringSize += CodedOutputStream.computeEnumSize(6, this.state_);
            }
            if (!getKBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(7, this.k_);
            }
            if (!getVideoCodeRateTitleBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(8, this.videoCodeRateTitle_);
            }
            int i13 = this.timeOut_;
            if (i13 != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(9, i13);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public String getServerLineNum() {
            Object obj = this.serverLineNum_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.serverLineNum_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public ByteString getServerLineNumBytes() {
            Object obj = this.serverLineNum_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serverLineNum_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public String getServerName() {
            Object obj = this.serverName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.serverName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public ByteString getServerNameBytes() {
            Object obj = this.serverName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serverName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public ServerState getState() {
            ServerState serverStateValueOf = ServerState.valueOf(this.state_);
            return serverStateValueOf == null ? ServerState.UNRECOGNIZED : serverStateValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public int getStateValue() {
            return this.state_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public int getTimeOut() {
            return this.timeOut_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public String getVideoCodeRateTitle() {
            Object obj = this.videoCodeRateTitle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.videoCodeRateTitle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.b
        public ByteString getVideoCodeRateTitleBytes() {
            Object obj = this.videoCodeRateTitle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.videoCodeRateTitle_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getServerLineNum().hashCode()) * 37) + 2) * 53) + getServerName().hashCode()) * 37) + 3) * 53) + getCurrentHsnTotal()) * 37) + 4) * 53) + getCurrentInServerNum()) * 37) + 5) * 53) + Internal.hashBoolean(getIsVip())) * 37) + 6) * 53) + this.state_) * 37) + 7) * 53) + getK().hashCode()) * 37) + 8) * 53) + getVideoCodeRateTitle().hashCode()) * 37) + 9) * 53) + getTimeOut()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingServerListResponse.f88050f.ensureFieldAccessorsInitialized(LineList.class, b.class);
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
            if (!getServerLineNumBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.serverLineNum_);
            }
            if (!getServerNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.serverName_);
            }
            int i10 = this.currentHsnTotal_;
            if (i10 != 0) {
                output.writeInt32(3, i10);
            }
            int i11 = this.currentInServerNum_;
            if (i11 != 0) {
                output.writeInt32(4, i11);
            }
            boolean z10 = this.isVip_;
            if (z10) {
                output.writeBool(5, z10);
            }
            if (this.state_ != ServerState.SERVER_LINE_FULL.getNumber()) {
                output.writeEnum(6, this.state_);
            }
            if (!getKBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 7, this.k_);
            }
            if (!getVideoCodeRateTitleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 8, this.videoCodeRateTitle_);
            }
            int i12 = this.timeOut_;
            if (i12 != 0) {
                output.writeInt32(9, i12);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ LineList(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(LineList prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static LineList parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private LineList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LineList parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (LineList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static LineList parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LineList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static LineList parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private LineList() {
            this.memoizedIsInitialized = (byte) -1;
            this.serverLineNum_ = "";
            this.serverName_ = "";
            this.state_ = 0;
            this.k_ = "";
            this.videoCodeRateTitle_ = "";
        }

        public static LineList parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static LineList parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static LineList parseFrom(InputStream input) throws IOException {
            return (LineList) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static LineList parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (LineList) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static LineList parseFrom(CodedInputStream input) throws IOException {
            return (LineList) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private LineList(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                    this.serverLineNum_ = input.readStringRequireUtf8();
                                } else if (tag == 18) {
                                    this.serverName_ = input.readStringRequireUtf8();
                                } else if (tag == 24) {
                                    this.currentHsnTotal_ = input.readInt32();
                                } else if (tag == 32) {
                                    this.currentInServerNum_ = input.readInt32();
                                } else if (tag == 40) {
                                    this.isVip_ = input.readBool();
                                } else if (tag == 48) {
                                    this.state_ = input.readEnum();
                                } else if (tag == 58) {
                                    this.k_ = input.readStringRequireUtf8();
                                } else if (tag == 66) {
                                    this.videoCodeRateTitle_ = input.readStringRequireUtf8();
                                } else if (tag != 72) {
                                    if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                    }
                                } else {
                                    this.timeOut_ = input.readInt32();
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

        public static LineList parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (LineList) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingServerListResponseResult extends GeneratedMessageV3 implements c {
        public static final int DATAINFO_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private ServerInfo dataInfo_;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingServerListResponseResult DEFAULT_INSTANCE = new MessageCloudGamingServerListResponseResult();
        private static final Parser<MessageCloudGamingServerListResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingServerListResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingServerListResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingServerListResponseResult(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private SingleFieldBuilderV3<ServerInfo, ServerInfo.b, d> dataInfoBuilder_;
            private ServerInfo dataInfo_;
            private Object errorMsg_;
            private int error_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private SingleFieldBuilderV3<ServerInfo, ServerInfo.b, d> getDataInfoFieldBuilder() {
                if (this.dataInfoBuilder_ == null) {
                    this.dataInfoBuilder_ = new SingleFieldBuilderV3<>(getDataInfo(), getParentForChildren(), isClean());
                    this.dataInfo_ = null;
                }
                return this.dataInfoBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingServerListResponse.f88045a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearDataInfo() {
                if (this.dataInfoBuilder_ == null) {
                    this.dataInfo_ = null;
                    onChanged();
                } else {
                    this.dataInfo_ = null;
                    this.dataInfoBuilder_ = null;
                }
                return this;
            }

            public b clearError() {
                this.error_ = 0;
                onChanged();
                return this;
            }

            public b clearErrorMsg() {
                this.errorMsg_ = MessageCloudGamingServerListResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
            public ServerInfo getDataInfo() {
                SingleFieldBuilderV3<ServerInfo, ServerInfo.b, d> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (ServerInfo) singleFieldBuilderV3.getMessage();
                }
                ServerInfo serverInfo = this.dataInfo_;
                return serverInfo == null ? ServerInfo.getDefaultInstance() : serverInfo;
            }

            public ServerInfo.b getDataInfoBuilder() {
                onChanged();
                return (ServerInfo.b) getDataInfoFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
            public d getDataInfoOrBuilder() {
                SingleFieldBuilderV3<ServerInfo, ServerInfo.b, d> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (d) singleFieldBuilderV3.getMessageOrBuilder();
                }
                ServerInfo serverInfo = this.dataInfo_;
                return serverInfo == null ? ServerInfo.getDefaultInstance() : serverInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingServerListResponse.f88045a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
            public boolean hasDataInfo() {
                return (this.dataInfoBuilder_ == null && this.dataInfo_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingServerListResponse.f88046b.ensureFieldAccessorsInitialized(MessageCloudGamingServerListResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeDataInfo(ServerInfo value) {
                SingleFieldBuilderV3<ServerInfo, ServerInfo.b, d> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    ServerInfo serverInfo = this.dataInfo_;
                    if (serverInfo != null) {
                        this.dataInfo_ = ServerInfo.newBuilder(serverInfo).mergeFrom(value).buildPartial();
                    } else {
                        this.dataInfo_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b setDataInfo(ServerInfo value) {
                SingleFieldBuilderV3<ServerInfo, ServerInfo.b, d> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.dataInfo_ = value;
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
            public MessageCloudGamingServerListResponseResult build() {
                MessageCloudGamingServerListResponseResult messageCloudGamingServerListResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingServerListResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingServerListResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingServerListResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingServerListResponseResult buildPartial() {
                MessageCloudGamingServerListResponseResult messageCloudGamingServerListResponseResult = new MessageCloudGamingServerListResponseResult(this, (a) null);
                messageCloudGamingServerListResponseResult.error_ = this.error_;
                SingleFieldBuilderV3<ServerInfo, ServerInfo.b, d> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageCloudGamingServerListResponseResult.dataInfo_ = this.dataInfo_;
                } else {
                    messageCloudGamingServerListResponseResult.dataInfo_ = (ServerInfo) singleFieldBuilderV3.build();
                }
                messageCloudGamingServerListResponseResult.errorMsg_ = this.errorMsg_;
                onBuilt();
                return messageCloudGamingServerListResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingServerListResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingServerListResponseResult.getDefaultInstance();
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
                if (this.dataInfoBuilder_ == null) {
                    this.dataInfo_ = null;
                } else {
                    this.dataInfo_ = null;
                    this.dataInfoBuilder_ = null;
                }
                this.errorMsg_ = "";
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            public b setDataInfo(ServerInfo.b builderForValue) {
                SingleFieldBuilderV3<ServerInfo, ServerInfo.b, d> singleFieldBuilderV3 = this.dataInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.dataInfo_ = builderForValue.build();
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
                if (other instanceof MessageCloudGamingServerListResponseResult) {
                    return mergeFrom((MessageCloudGamingServerListResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingServerListResponseResult other) {
                if (other == MessageCloudGamingServerListResponseResult.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (other.hasDataInfo()) {
                    mergeDataInfo(other.getDataInfo());
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
                MessageCloudGamingServerListResponseResult messageCloudGamingServerListResponseResult = null;
                try {
                    try {
                        MessageCloudGamingServerListResponseResult messageCloudGamingServerListResponseResult2 = (MessageCloudGamingServerListResponseResult) MessageCloudGamingServerListResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingServerListResponseResult2 != null) {
                            mergeFrom(messageCloudGamingServerListResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingServerListResponseResult messageCloudGamingServerListResponseResult3 = (MessageCloudGamingServerListResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingServerListResponseResult = messageCloudGamingServerListResponseResult3;
                            if (messageCloudGamingServerListResponseResult != null) {
                                mergeFrom(messageCloudGamingServerListResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingServerListResponseResult != null) {
                        mergeFrom(messageCloudGamingServerListResponseResult);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingServerListResponseResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingServerListResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingServerListResponse.f88045a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingServerListResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingServerListResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingServerListResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingServerListResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingServerListResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingServerListResponseResult messageCloudGamingServerListResponseResult = (MessageCloudGamingServerListResponseResult) obj;
            if (getError() == messageCloudGamingServerListResponseResult.getError() && hasDataInfo() == messageCloudGamingServerListResponseResult.hasDataInfo()) {
                return (!hasDataInfo() || getDataInfo().equals(messageCloudGamingServerListResponseResult.getDataInfo())) && getErrorMsg().equals(messageCloudGamingServerListResponseResult.getErrorMsg()) && this.unknownFields.equals(messageCloudGamingServerListResponseResult.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
        public ServerInfo getDataInfo() {
            ServerInfo serverInfo = this.dataInfo_;
            return serverInfo == null ? ServerInfo.getDefaultInstance() : serverInfo;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
        public d getDataInfoOrBuilder() {
            return getDataInfo();
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
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
        public Parser<MessageCloudGamingServerListResponseResult> getParserForType() {
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
            if (this.dataInfo_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(2, getDataInfo());
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

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.c
        public boolean hasDataInfo() {
            return this.dataInfo_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError();
            if (hasDataInfo()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDataInfo().hashCode();
            }
            int iHashCode2 = (((((iHashCode * 37) + 3) * 53) + getErrorMsg().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingServerListResponse.f88046b.ensureFieldAccessorsInitialized(MessageCloudGamingServerListResponseResult.class, b.class);
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
            if (this.dataInfo_ != null) {
                output.writeMessage(2, getDataInfo());
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.errorMsg_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingServerListResponseResult(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingServerListResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingServerListResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingServerListResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingServerListResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingServerListResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingServerListResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingServerListResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingServerListResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingServerListResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingServerListResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingServerListResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingServerListResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingServerListResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingServerListResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                ServerInfo serverInfo = this.dataInfo_;
                                ServerInfo.b builder = serverInfo != null ? serverInfo.toBuilder() : null;
                                ServerInfo serverInfo2 = (ServerInfo) input.readMessage(ServerInfo.parser(), extensionRegistry);
                                this.dataInfo_ = serverInfo2;
                                if (builder != null) {
                                    builder.mergeFrom(serverInfo2);
                                    this.dataInfo_ = builder.buildPartial();
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

        public static MessageCloudGamingServerListResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingServerListResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingServerListResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingServerListResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingServerListResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingServerListResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class ServerInfo extends GeneratedMessageV3 implements d {
        public static final int GAMEID_FIELD_NUMBER = 1;
        public static final int LISTINFO_FIELD_NUMBER = 3;
        public static final int PACKAGENAME_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long gameId_;
        private List<LineList> listInfo_;
        private byte memoizedIsInitialized;
        private volatile Object packageName_;
        private static final ServerInfo DEFAULT_INSTANCE = new ServerInfo();
        private static final Parser<ServerInfo> PARSER = new a();

        class a extends AbstractParser<ServerInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ServerInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new ServerInfo(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements d {
            private int bitField0_;
            private long gameId_;
            private RepeatedFieldBuilderV3<LineList, LineList.b, b> listInfoBuilder_;
            private List<LineList> listInfo_;
            private Object packageName_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private void ensureListInfoIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.listInfo_ = new ArrayList(this.listInfo_);
                    this.bitField0_ |= 4;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingServerListResponse.f88047c;
            }

            private RepeatedFieldBuilderV3<LineList, LineList.b, b> getListInfoFieldBuilder() {
                if (this.listInfoBuilder_ == null) {
                    this.listInfoBuilder_ = new RepeatedFieldBuilderV3<>(this.listInfo_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.listInfo_ = null;
                }
                return this.listInfoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getListInfoFieldBuilder();
                }
            }

            public b addAllListInfo(Iterable<? extends LineList> values) {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureListInfoIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.listInfo_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(values);
                }
                return this;
            }

            public b addListInfo(LineList value) {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureListInfoIsMutable();
                    this.listInfo_.add(value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(value);
                }
                return this;
            }

            public LineList.b addListInfoBuilder() {
                return (LineList.b) getListInfoFieldBuilder().addBuilder(LineList.getDefaultInstance());
            }

            public b clearGameId() {
                this.gameId_ = 0L;
                onChanged();
                return this;
            }

            public b clearListInfo() {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.listInfo_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public b clearPackageName() {
                this.packageName_ = ServerInfo.getDefaultInstance().getPackageName();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingServerListResponse.f88047c;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
            public long getGameId() {
                return this.gameId_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
            public LineList getListInfo(int index) {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.listInfo_.get(index) : (LineList) repeatedFieldBuilderV3.getMessage(index);
            }

            public LineList.b getListInfoBuilder(int index) {
                return (LineList.b) getListInfoFieldBuilder().getBuilder(index);
            }

            public List<LineList.b> getListInfoBuilderList() {
                return getListInfoFieldBuilder().getBuilderList();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
            public int getListInfoCount() {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.listInfo_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
            public List<LineList> getListInfoList() {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.listInfo_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
            public b getListInfoOrBuilder(int index) {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.listInfo_.get(index) : (b) repeatedFieldBuilderV3.getMessageOrBuilder(index);
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
            public List<? extends b> getListInfoOrBuilderList() {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.listInfo_);
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
            public String getPackageName() {
                Object obj = this.packageName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.packageName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
            public ByteString getPackageNameBytes() {
                Object obj = this.packageName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.packageName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingServerListResponse.f88048d.ensureFieldAccessorsInitialized(ServerInfo.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b removeListInfo(int index) {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureListInfoIsMutable();
                    this.listInfo_.remove(index);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(index);
                }
                return this;
            }

            public b setGameId(long value) {
                this.gameId_ = value;
                onChanged();
                return this;
            }

            public b setListInfo(int index, LineList value) {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureListInfoIsMutable();
                    this.listInfo_.set(index, value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, value);
                }
                return this;
            }

            public b setPackageName(String value) {
                value.getClass();
                this.packageName_ = value;
                onChanged();
                return this;
            }

            public b setPackageNameBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.packageName_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.packageName_ = "";
                this.listInfo_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ServerInfo build() {
                ServerInfo serverInfoBuildPartial = buildPartial();
                if (serverInfoBuildPartial.isInitialized()) {
                    return serverInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) serverInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ServerInfo buildPartial() {
                ServerInfo serverInfo = new ServerInfo(this, (a) null);
                serverInfo.gameId_ = this.gameId_;
                serverInfo.packageName_ = this.packageName_;
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    serverInfo.listInfo_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 4) != 0) {
                        this.listInfo_ = Collections.unmodifiableList(this.listInfo_);
                        this.bitField0_ &= -5;
                    }
                    serverInfo.listInfo_ = this.listInfo_;
                }
                serverInfo.bitField0_ = 0;
                onBuilt();
                return serverInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ServerInfo getDefaultInstanceForType() {
                return ServerInfo.getDefaultInstance();
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

            public LineList.b addListInfoBuilder(int index) {
                return (LineList.b) getListInfoFieldBuilder().addBuilder(index, LineList.getDefaultInstance());
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
                this.gameId_ = 0L;
                this.packageName_ = "";
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.listInfo_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.packageName_ = "";
                this.listInfo_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public b addListInfo(int index, LineList value) {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureListInfoIsMutable();
                    this.listInfo_.add(index, value);
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
                if (other instanceof ServerInfo) {
                    return mergeFrom((ServerInfo) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b setListInfo(int index, LineList.b builderForValue) {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureListInfoIsMutable();
                    this.listInfo_.set(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
                }
                return this;
            }

            public b mergeFrom(ServerInfo other) {
                if (other == ServerInfo.getDefaultInstance()) {
                    return this;
                }
                if (other.getGameId() != 0) {
                    setGameId(other.getGameId());
                }
                if (!other.getPackageName().isEmpty()) {
                    this.packageName_ = other.packageName_;
                    onChanged();
                }
                if (this.listInfoBuilder_ == null) {
                    if (!other.listInfo_.isEmpty()) {
                        if (this.listInfo_.isEmpty()) {
                            this.listInfo_ = other.listInfo_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureListInfoIsMutable();
                            this.listInfo_.addAll(other.listInfo_);
                        }
                        onChanged();
                    }
                } else if (!other.listInfo_.isEmpty()) {
                    if (!this.listInfoBuilder_.isEmpty()) {
                        this.listInfoBuilder_.addAllMessages(other.listInfo_);
                    } else {
                        this.listInfoBuilder_.dispose();
                        this.listInfoBuilder_ = null;
                        this.listInfo_ = other.listInfo_;
                        this.bitField0_ &= -5;
                        this.listInfoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getListInfoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            public b addListInfo(LineList.b builderForValue) {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureListInfoIsMutable();
                    this.listInfo_.add(builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builderForValue.build());
                }
                return this;
            }

            public b addListInfo(int index, LineList.b builderForValue) {
                RepeatedFieldBuilderV3<LineList, LineList.b, b> repeatedFieldBuilderV3 = this.listInfoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureListInfoIsMutable();
                    this.listInfo_.add(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
                }
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                ServerInfo serverInfo = null;
                try {
                    try {
                        ServerInfo serverInfo2 = (ServerInfo) ServerInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (serverInfo2 != null) {
                            mergeFrom(serverInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        ServerInfo serverInfo3 = (ServerInfo) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            serverInfo = serverInfo3;
                            if (serverInfo != null) {
                                mergeFrom(serverInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (serverInfo != null) {
                        mergeFrom(serverInfo);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ ServerInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static ServerInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingServerListResponse.f88047c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ServerInfo parseDelimitedFrom(InputStream input) throws IOException {
            return (ServerInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static ServerInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<ServerInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ServerInfo)) {
                return super.equals(obj);
            }
            ServerInfo serverInfo = (ServerInfo) obj;
            return getGameId() == serverInfo.getGameId() && getPackageName().equals(serverInfo.getPackageName()) && getListInfoList().equals(serverInfo.getListInfoList()) && this.unknownFields.equals(serverInfo.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
        public LineList getListInfo(int index) {
            return this.listInfo_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
        public int getListInfoCount() {
            return this.listInfo_.size();
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
        public List<LineList> getListInfoList() {
            return this.listInfo_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
        public b getListInfoOrBuilder(int index) {
            return this.listInfo_.get(index);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
        public List<? extends b> getListInfoOrBuilderList() {
            return this.listInfo_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
        public String getPackageName() {
            Object obj = this.packageName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.packageName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse.d
        public ByteString getPackageNameBytes() {
            Object obj = this.packageName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.packageName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ServerInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            long j10 = this.gameId_;
            int iComputeInt64Size = j10 != 0 ? CodedOutputStream.computeInt64Size(1, j10) + 0 : 0;
            if (!getPackageNameBytes().isEmpty()) {
                iComputeInt64Size += GeneratedMessageV3.computeStringSize(2, this.packageName_);
            }
            for (int i11 = 0; i11 < this.listInfo_.size(); i11++) {
                iComputeInt64Size += CodedOutputStream.computeMessageSize(3, this.listInfo_.get(i11));
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
            int iHashCode = ((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getGameId())) * 37) + 2) * 53) + getPackageName().hashCode();
            if (getListInfoCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getListInfoList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingServerListResponse.f88048d.ensureFieldAccessorsInitialized(ServerInfo.class, b.class);
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
            long j10 = this.gameId_;
            if (j10 != 0) {
                output.writeInt64(1, j10);
            }
            if (!getPackageNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.packageName_);
            }
            for (int i10 = 0; i10 < this.listInfo_.size(); i10++) {
                output.writeMessage(3, this.listInfo_.get(i10));
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ ServerInfo(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(ServerInfo prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static ServerInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private ServerInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ServerInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ServerInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static ServerInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ServerInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static ServerInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private ServerInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.packageName_ = "";
            this.listInfo_ = Collections.emptyList();
        }

        public static ServerInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static ServerInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static ServerInfo parseFrom(InputStream input) throws IOException {
            return (ServerInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private ServerInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.gameId_ = input.readInt64();
                            } else if (tag == 18) {
                                this.packageName_ = input.readStringRequireUtf8();
                            } else if (tag != 26) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                if ((i10 & 4) == 0) {
                                    this.listInfo_ = new ArrayList();
                                    i10 |= 4;
                                }
                                this.listInfo_.add((LineList) input.readMessage(LineList.parser(), extensionRegistry));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if ((i10 & 4) != 0) {
                        this.listInfo_ = Collections.unmodifiableList(this.listInfo_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if ((i10 & 4) != 0) {
                this.listInfo_ = Collections.unmodifiableList(this.listInfo_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static ServerInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ServerInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static ServerInfo parseFrom(CodedInputStream input) throws IOException {
            return (ServerInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static ServerInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ServerInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingServerListResponse.f88051g = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        int getCurrentHsnTotal();

        int getCurrentInServerNum();

        boolean getIsVip();

        String getK();

        ByteString getKBytes();

        String getServerLineNum();

        ByteString getServerLineNumBytes();

        String getServerName();

        ByteString getServerNameBytes();

        ServerState getState();

        int getStateValue();

        int getTimeOut();

        String getVideoCodeRateTitle();

        ByteString getVideoCodeRateTitleBytes();
    }

    public interface c extends MessageOrBuilder {
        ServerInfo getDataInfo();

        d getDataInfoOrBuilder();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        boolean hasDataInfo();
    }

    public interface d extends MessageOrBuilder {
        long getGameId();

        LineList getListInfo(int index);

        int getListInfoCount();

        List<LineList> getListInfoList();

        b getListInfoOrBuilder(int index);

        List<? extends b> getListInfoOrBuilderList();

        String getPackageName();

        ByteString getPackageNameBytes();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n'cloud_gaming_server_list_response.proto\u001a\u001denumeration/enumeration.proto\"l\n*MessageCloudGamingServerListResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u001d\n\bdataInfo\u0018\u0002 \u0001(\u000b2\u000b.ServerInfo\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\"N\n\nServerInfo\u0012\u000e\n\u0006gameId\u0018\u0001 \u0001(\u0003\u0012\u0013\n\u000bpackageName\u0018\u0002 \u0001(\t\u0012\u001b\n\blistInfo\u0018\u0003 \u0003(\u000b2\t.LineList\"Ú\u0001\n\bLineList\u0012\u0015\n\rserverLineNum\u0018\u0001 \u0001(\t\u0012\u0012\n\nserverName\u0018\u0002 \u0001(\t\u0012\u0017\n\u000fcurrentHsnTotal\u0018\u0003 \u0001(\u0005\u0012\u001a\n\u0012currentInServerNum\u0018\u0004 \u0001(\u0005\u0012\r\n\u0005isVip\u0018\u0005 \u0001(\b\u0012'\n\u0005state\u0018\u0006 \u0001(\u000e2\u0018.enumeration.ServerState\u0012\t\n\u0001k\u0018\u0007 \u0001(\t\u0012\u001a\n\u0012videoCodeRateTitle\u0018\b \u0001(\t\u0012\u000f\n\u0007timeOut\u0018\t \u0001(\u0005BG\n\u001fcom.wufan.user.service.protobufB$MessageCloudGamingServerListResponseb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.wufan.user.service.protobuf.enumeration.a.b()}, new a());
        Descriptors.Descriptor descriptor = h().getMessageTypes().get(0);
        f88045a = descriptor;
        f88046b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "DataInfo", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = h().getMessageTypes().get(1);
        f88047c = descriptor2;
        f88048d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"GameId", "PackageName", "ListInfo"});
        Descriptors.Descriptor descriptor3 = h().getMessageTypes().get(2);
        f88049e = descriptor3;
        f88050f = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"ServerLineNum", "ServerName", "CurrentHsnTotal", "CurrentInServerNum", "IsVip", "State", "K", "VideoCodeRateTitle", "TimeOut"});
        com.wufan.user.service.protobuf.enumeration.a.b();
    }

    private MessageCloudGamingServerListResponse() {
    }

    public static Descriptors.FileDescriptor h() {
        return f88051g;
    }

    public static void i(ExtensionRegistry registry) {
        j(registry);
    }

    public static void j(ExtensionRegistryLite registry) {
    }
}
