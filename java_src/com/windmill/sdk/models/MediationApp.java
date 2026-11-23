package com.windmill.sdk.models;

import android.os.Parcelable;
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
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class MediationApp extends AndroidMessage<MediationApp, Builder> {
    public static final ProtoAdapter<MediationApp> ADAPTER;
    public static final Parcelable.Creator<MediationApp> CREATOR;
    public static final Integer DEFAULT_APP_ID;
    public static final Integer DEFAULT_MEDIATION_CHANNEL_ID;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer app_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer mediation_channel_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final Map<String, String> options;

    public static final class Builder extends Message.Builder<MediationApp, Builder> {
        public Integer app_id = MediationApp.DEFAULT_APP_ID;
        public Integer mediation_channel_id = MediationApp.DEFAULT_MEDIATION_CHANNEL_ID;
        public Map<String, String> options = Internal.newMutableMap();

        public Builder app_id(Integer app_id) {
            this.app_id = app_id;
            return this;
        }

        public Builder mediation_channel_id(Integer mediation_channel_id) {
            this.mediation_channel_id = mediation_channel_id;
            return this;
        }

        public Builder options(Map<String, String> options) {
            Internal.checkElementsNotNull(options);
            this.options = options;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public MediationApp build() {
            return new MediationApp(this.app_id, this.mediation_channel_id, this.options, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_MediationApp extends ProtoAdapter<MediationApp> {
        private final ProtoAdapter<Map<String, String>> options;

        public ProtoAdapter_MediationApp() {
            super(FieldEncoding.LENGTH_DELIMITED, MediationApp.class);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            this.options = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public MediationApp decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.app_id(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag == 2) {
                    builder.mediation_channel_id(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.options.putAll(this.options.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, MediationApp value) throws IOException {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 1, value.app_id);
            protoAdapter.encodeWithTag(writer, 2, value.mediation_channel_id);
            this.options.encodeWithTag(writer, 3, value.options);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(MediationApp value) {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            return protoAdapter.encodedSizeWithTag(1, value.app_id) + protoAdapter.encodedSizeWithTag(2, value.mediation_channel_id) + this.options.encodedSizeWithTag(3, value.options) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public MediationApp redact(MediationApp value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_MediationApp protoAdapter_MediationApp = new ProtoAdapter_MediationApp();
        ADAPTER = protoAdapter_MediationApp;
        CREATOR = AndroidMessage.newCreator(protoAdapter_MediationApp);
        DEFAULT_APP_ID = 0;
        DEFAULT_MEDIATION_CHANNEL_ID = 0;
    }

    public MediationApp(Integer app_id, Integer mediation_channel_id, Map<String, String> options) {
        this(app_id, mediation_channel_id, options, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof MediationApp)) {
            return false;
        }
        MediationApp mediationApp = (MediationApp) other;
        return unknownFields().equals(mediationApp.unknownFields()) && Internal.equals(this.app_id, mediationApp.app_id) && Internal.equals(this.mediation_channel_id, mediationApp.mediation_channel_id) && this.options.equals(mediationApp.options);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.app_id;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.mediation_channel_id;
        int iHashCode3 = ((iHashCode2 + (num2 != null ? num2.hashCode() : 0)) * 37) + this.options.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.app_id != null) {
            sb2.append(", app_id=");
            sb2.append(this.app_id);
        }
        if (this.mediation_channel_id != null) {
            sb2.append(", mediation_channel_id=");
            sb2.append(this.mediation_channel_id);
        }
        if (!this.options.isEmpty()) {
            sb2.append(", options=");
            sb2.append(this.options);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "MediationApp{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public MediationApp(Integer app_id, Integer mediation_channel_id, Map<String, String> options, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.app_id = app_id;
        this.mediation_channel_id = mediation_channel_id;
        this.options = Internal.immutableCopyOf("options", options);
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.app_id = this.app_id;
        builder.mediation_channel_id = this.mediation_channel_id;
        builder.options = Internal.copyOf("options", this.options);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
