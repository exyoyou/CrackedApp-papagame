package com.windmill.sdk.models;

import android.os.Parcelable;
import com.czhj.sdk.common.models.App;
import com.czhj.sdk.common.models.Device;
import com.czhj.sdk.common.models.Network;
import com.czhj.sdk.common.models.Privacy;
import com.czhj.sdk.common.models.User;
import com.czhj.wire.AndroidMessage;
import com.czhj.wire.FieldEncoding;
import com.czhj.wire.Message;
import com.czhj.wire.ProtoAdapter;
import com.czhj.wire.ProtoReader;
import com.czhj.wire.ProtoWriter;
import com.czhj.wire.WireField;
import com.czhj.wire.internal.Internal;
import com.czhj.wire.okio.ByteString;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public final class SdkConfigRequest extends AndroidMessage<SdkConfigRequest, Builder> {
    public static final ProtoAdapter<SdkConfigRequest> ADAPTER;
    public static final Parcelable.Creator<SdkConfigRequest> CREATOR;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: app, reason: collision with root package name */
    @WireField(adapter = "App#ADAPTER", tag = 1)
    public final App f87057app;

    @WireField(adapter = "Device#ADAPTER", tag = 2)
    public final Device device;

    @WireField(adapter = "Network#ADAPTER", tag = 3)
    public final Network network;

    @WireField(adapter = "Privacy#ADAPTER", tag = 4)
    public final Privacy privacy;

    @WireField(adapter = "User#ADAPTER", tag = 5)
    public final User user;

    public static final class Builder extends Message.Builder<SdkConfigRequest, Builder> {

        /* JADX INFO: renamed from: app, reason: collision with root package name */
        public App f87058app;
        public Device device;
        public Network network;
        public Privacy privacy;
        public User user;

        public Builder app(App app2) {
            this.f87058app = app2;
            return this;
        }

        public Builder device(Device device) {
            this.device = device;
            return this;
        }

        public Builder network(Network network) {
            this.network = network;
            return this;
        }

        public Builder privacy(Privacy privacy) {
            this.privacy = privacy;
            return this;
        }

        public Builder user(User user) {
            this.user = user;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SdkConfigRequest build() {
            return new SdkConfigRequest(this.f87058app, this.device, this.network, this.privacy, this.user, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_SdkConfigRequest extends ProtoAdapter<SdkConfigRequest> {
        public ProtoAdapter_SdkConfigRequest() {
            super(FieldEncoding.LENGTH_DELIMITED, SdkConfigRequest.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SdkConfigRequest decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.app(App.ADAPTER.decode(reader));
                } else if (iNextTag == 2) {
                    builder.device(Device.ADAPTER.decode(reader));
                } else if (iNextTag == 3) {
                    builder.network(Network.ADAPTER.decode(reader));
                } else if (iNextTag == 4) {
                    builder.privacy(Privacy.ADAPTER.decode(reader));
                } else if (iNextTag != 5) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.user(User.ADAPTER.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, SdkConfigRequest value) throws IOException {
            App.ADAPTER.encodeWithTag(writer, 1, value.f87057app);
            Device.ADAPTER.encodeWithTag(writer, 2, value.device);
            Network.ADAPTER.encodeWithTag(writer, 3, value.network);
            Privacy.ADAPTER.encodeWithTag(writer, 4, value.privacy);
            User.ADAPTER.encodeWithTag(writer, 5, value.user);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SdkConfigRequest value) {
            return App.ADAPTER.encodedSizeWithTag(1, value.f87057app) + Device.ADAPTER.encodedSizeWithTag(2, value.device) + Network.ADAPTER.encodedSizeWithTag(3, value.network) + Privacy.ADAPTER.encodedSizeWithTag(4, value.privacy) + User.ADAPTER.encodedSizeWithTag(5, value.user) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SdkConfigRequest redact(SdkConfigRequest value) {
            Builder builderNewBuilder = value.newBuilder();
            App app2 = builderNewBuilder.f87058app;
            if (app2 != null) {
                builderNewBuilder.f87058app = App.ADAPTER.redact(app2);
            }
            Device device = builderNewBuilder.device;
            if (device != null) {
                builderNewBuilder.device = Device.ADAPTER.redact(device);
            }
            Network network = builderNewBuilder.network;
            if (network != null) {
                builderNewBuilder.network = Network.ADAPTER.redact(network);
            }
            Privacy privacy = builderNewBuilder.privacy;
            if (privacy != null) {
                builderNewBuilder.privacy = Privacy.ADAPTER.redact(privacy);
            }
            User user = builderNewBuilder.user;
            if (user != null) {
                builderNewBuilder.user = User.ADAPTER.redact(user);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SdkConfigRequest protoAdapter_SdkConfigRequest = new ProtoAdapter_SdkConfigRequest();
        ADAPTER = protoAdapter_SdkConfigRequest;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SdkConfigRequest);
    }

    public SdkConfigRequest(App app2, Device device, Network network, Privacy privacy, User user) {
        this(app2, device, network, privacy, user, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SdkConfigRequest)) {
            return false;
        }
        SdkConfigRequest sdkConfigRequest = (SdkConfigRequest) other;
        return unknownFields().equals(sdkConfigRequest.unknownFields()) && Internal.equals(this.f87057app, sdkConfigRequest.f87057app) && Internal.equals(this.device, sdkConfigRequest.device) && Internal.equals(this.network, sdkConfigRequest.network) && Internal.equals(this.privacy, sdkConfigRequest.privacy) && Internal.equals(this.user, sdkConfigRequest.user);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        App app2 = this.f87057app;
        int iHashCode2 = (iHashCode + (app2 != null ? app2.hashCode() : 0)) * 37;
        Device device = this.device;
        int iHashCode3 = (iHashCode2 + (device != null ? device.hashCode() : 0)) * 37;
        Network network = this.network;
        int iHashCode4 = (iHashCode3 + (network != null ? network.hashCode() : 0)) * 37;
        Privacy privacy = this.privacy;
        int iHashCode5 = (iHashCode4 + (privacy != null ? privacy.hashCode() : 0)) * 37;
        User user = this.user;
        int iHashCode6 = iHashCode5 + (user != null ? user.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.f87057app != null) {
            sb2.append(", app=");
            sb2.append(this.f87057app);
        }
        if (this.device != null) {
            sb2.append(", device=");
            sb2.append(this.device);
        }
        if (this.network != null) {
            sb2.append(", network=");
            sb2.append(this.network);
        }
        if (this.privacy != null) {
            sb2.append(", privacy=");
            sb2.append(this.privacy);
        }
        if (this.user != null) {
            sb2.append(", user=");
            sb2.append(this.user);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "SdkConfigRequest{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SdkConfigRequest(App app2, Device device, Network network, Privacy privacy, User user, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.f87057app = app2;
        this.device = device;
        this.network = network;
        this.privacy = privacy;
        this.user = user;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.f87058app = this.f87057app;
        builder.device = this.device;
        builder.network = this.network;
        builder.privacy = this.privacy;
        builder.user = this.user;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
