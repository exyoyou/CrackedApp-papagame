package com.squareup.wire;

import com.haima.hmcp.beans.HmInputMappingContent;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u0011\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/squareup/wire/FieldEncoding;", "", "Lcom/squareup/wire/ProtoAdapter;", "rawProtoAdapter", "", HmInputMappingContent.FIELD_VALUE, "I", "getValue$wire_runtime", "()I", "<init>", "(Ljava/lang/String;II)V", "Companion", "a", "VARINT", "FIXED64", "LENGTH_DELIMITED", "FIXED32", "wire-runtime"}, k = 1, mv = {1, 9, 0})
public enum FieldEncoding {
    VARINT(0),
    FIXED64(1),
    LENGTH_DELIMITED(2),
    FIXED32(5);

    private final int value;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.squareup.wire.FieldEncoding$a, reason: from kotlin metadata */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final FieldEncoding a(int i10) throws IOException {
            if (i10 == 0) {
                return FieldEncoding.VARINT;
            }
            if (i10 == 1) {
                return FieldEncoding.FIXED64;
            }
            if (i10 == 2) {
                return FieldEncoding.LENGTH_DELIMITED;
            }
            if (i10 == 5) {
                return FieldEncoding.FIXED32;
            }
            throw new ProtocolException("Unexpected FieldEncoding: " + i10);
        }

        private Companion() {
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FieldEncoding.values().length];
            try {
                iArr[FieldEncoding.VARINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FieldEncoding.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FieldEncoding.FIXED64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FieldEncoding.LENGTH_DELIMITED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    FieldEncoding(int i10) {
        this.value = i10;
    }

    @NotNull
    public static EnumEntries<FieldEncoding> getEntries() {
        return $ENTRIES;
    }

    /* JADX INFO: renamed from: getValue$wire_runtime, reason: from getter */
    public final int getValue() {
        return this.value;
    }

    @NotNull
    public final ProtoAdapter<?> rawProtoAdapter() {
        int i10 = b.$EnumSwitchMapping$0[ordinal()];
        if (i10 == 1) {
            return ProtoAdapter.f82280w;
        }
        if (i10 == 2) {
            return ProtoAdapter.f82274q;
        }
        if (i10 == 3) {
            return ProtoAdapter.A;
        }
        if (i10 == 4) {
            return ProtoAdapter.I;
        }
        throw new NoWhenBranchMatchedException();
    }
}
