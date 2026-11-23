.class public final Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$OneInputOPDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneInputOPData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;,
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;,
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEventOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;,
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerPropertiesOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;,
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;,
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

.field public static final GAME_CURSOR_SYNC_SEQ_NUM_FIELD_NUMBER:I = 0x8

.field public static final INPUT_OP_FIELD_NUMBER:I = 0x1

.field public static final INPUT_STATE_FIELD_NUMBER:I = 0x2

.field public static final OP_DEVICE_FIELD_NUMBER:I = 0x6

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POS_CURSOR_FIELD_NUMBER:I = 0x4

.field public static final POS_MODE_FIELD_NUMBER:I = 0xa

.field public static final POS_MOUSE_FIELD_NUMBER:I = 0x5

.field public static final SERIAL_NUMBER_FIELD_NUMBER:I = 0xb

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0xc

.field public static final TOUCH_EVENT_FIELD_NUMBER:I = 0x9

.field public static final VALUE_FIELD_NUMBER:I = 0x3

.field public static final VENDOR_FIELD_NUMBER:I = 0xf

.field public static final WHEEL_FIELD_NUMBER:I = 0xd

.field public static final WHEEL_H_FIELD_NUMBER:I = 0xe

.field public static final XINPUT_USER_INDEX_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private gameCursorSyncSeqNum_:I

.field private inputOp_:I

.field private inputState_:I

.field private memoizedIsInitialized:B

.field private opDevice_:I

.field private posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

.field private posMode_:I

.field private posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

.field private serialNumber_:I

.field private timestamp_:J

.field private touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

.field private value_:I

.field private volatile vendor_:Ljava/lang/Object;

.field private wheelH_:I

.field private wheel_:I

.field private xinputUserIndex_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputOp_:I

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputState_:I

    .line 9
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->value_:I

    .line 10
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->opDevice_:I

    .line 11
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->xinputUserIndex_:I

    .line 12
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->gameCursorSyncSeqNum_:I

    .line 13
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMode_:I

    .line 14
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->serialNumber_:I

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->timestamp_:J

    .line 16
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheel_:I

    .line 17
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheelH_:I

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->vendor_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;-><init>()V

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 23
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 24
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 25
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 26
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->vendor_:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :sswitch_1
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheelH_:I

    goto :goto_0

    .line 29
    :sswitch_2
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 30
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheel_:I

    goto :goto_0

    .line 31
    :sswitch_3
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->timestamp_:J

    goto :goto_0

    .line 33
    :sswitch_4
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 34
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->serialNumber_:I

    goto :goto_0

    .line 35
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 36
    invoke-static {v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v3, 0xa

    .line 37
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 38
    :cond_1
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 39
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMode_:I

    goto :goto_0

    .line 40
    :sswitch_6
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 41
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    invoke-virtual {v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;

    move-result-object v3

    .line 42
    :cond_2
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    if-eqz v3, :cond_3

    .line 43
    invoke-virtual {v3, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;

    .line 44
    invoke-virtual {v3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 45
    :cond_3
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    goto/16 :goto_0

    .line 46
    :sswitch_7
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 47
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->gameCursorSyncSeqNum_:I

    goto/16 :goto_0

    .line 48
    :sswitch_8
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 49
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->xinputUserIndex_:I

    goto/16 :goto_0

    .line 50
    :sswitch_9
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 51
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->opDevice_:I

    goto/16 :goto_0

    .line 52
    :sswitch_a
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    .line 53
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-virtual {v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    move-result-object v3

    .line 54
    :cond_4
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    if-eqz v3, :cond_5

    .line 55
    invoke-virtual {v3, v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 56
    invoke-virtual {v3}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 57
    :cond_5
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    goto/16 :goto_0

    .line 58
    :sswitch_b
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    .line 59
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-virtual {v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    move-result-object v3

    .line 60
    :cond_6
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    if-eqz v3, :cond_7

    .line 61
    invoke-virtual {v3, v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 62
    invoke-virtual {v3}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 63
    :cond_7
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    goto/16 :goto_0

    .line 64
    :sswitch_c
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->value_:I

    goto/16 :goto_0

    .line 66
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 67
    invoke-static {v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_8

    .line 68
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 69
    :cond_8
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 70
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputState_:I

    goto/16 :goto_0

    .line 71
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 72
    invoke-static {v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    move-result-object v3

    if-nez v3, :cond_9

    .line 73
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 74
    :cond_9
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 75
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputOp_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_f
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 76
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 77
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 78
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 80
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 81
    throw p1

    .line 82
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 83
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_e
        0x10 -> :sswitch_d
        0x18 -> :sswitch_c
        0x22 -> :sswitch_b
        0x2a -> :sswitch_a
        0x30 -> :sswitch_9
        0x38 -> :sswitch_8
        0x40 -> :sswitch_7
        0x4a -> :sswitch_6
        0x50 -> :sswitch_5
        0x58 -> :sswitch_4
        0x60 -> :sswitch_3
        0x68 -> :sswitch_2
        0x70 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$17700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$17902(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputOp_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$18002(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputState_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$18102(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->value_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$18202(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18302(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18402(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->opDevice_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$18502(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->xinputUserIndex_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$18602(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->gameCursorSyncSeqNum_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$18702(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$18802(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMode_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$18902(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->serialNumber_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$19002(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->timestamp_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$19102(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheel_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$19202(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheelH_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$19300(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->vendor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$19302(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->vendor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$19402(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$19500(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$14200()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasInputOp()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasInputOp()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasInputOp()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputOp_:I

    .line 39
    .line 40
    iget v2, p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputOp_:I

    .line 41
    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/4 v1, 0x0

    .line 47
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasInputState()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasInputState()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ne v1, v2, :cond_5

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_5
    const/4 v1, 0x0

    .line 62
    :goto_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasInputState()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_7

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputState_:I

    .line 71
    .line 72
    iget v2, p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputState_:I

    .line 73
    .line 74
    if-ne v1, v2, :cond_6

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    goto :goto_3

    .line 78
    :cond_6
    const/4 v1, 0x0

    .line 79
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasValue()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasValue()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ne v1, v2, :cond_8

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    goto :goto_4

    .line 93
    :cond_8
    const/4 v1, 0x0

    .line 94
    :goto_4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasValue()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_a

    .line 99
    .line 100
    if-eqz v1, :cond_9

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getValue()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getValue()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-ne v1, v2, :cond_9

    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    goto :goto_5

    .line 114
    :cond_9
    const/4 v1, 0x0

    .line 115
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosCursor()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosCursor()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-ne v1, v2, :cond_b

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    goto :goto_6

    .line 129
    :cond_b
    const/4 v1, 0x0

    .line 130
    :goto_6
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosCursor()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_d

    .line 135
    .line 136
    if-eqz v1, :cond_c

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosCursor()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosCursor()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_c

    .line 151
    .line 152
    const/4 v1, 0x1

    .line 153
    goto :goto_7

    .line 154
    :cond_c
    const/4 v1, 0x0

    .line 155
    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosMouse()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosMouse()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-ne v1, v2, :cond_e

    .line 166
    .line 167
    const/4 v1, 0x1

    .line 168
    goto :goto_8

    .line 169
    :cond_e
    const/4 v1, 0x0

    .line 170
    :goto_8
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosMouse()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_10

    .line 175
    .line 176
    if-eqz v1, :cond_f

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosMouse()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosMouse()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_f

    .line 191
    .line 192
    const/4 v1, 0x1

    .line 193
    goto :goto_9

    .line 194
    :cond_f
    const/4 v1, 0x0

    .line 195
    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasOpDevice()Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasOpDevice()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-ne v1, v2, :cond_11

    .line 206
    .line 207
    const/4 v1, 0x1

    .line 208
    goto :goto_a

    .line 209
    :cond_11
    const/4 v1, 0x0

    .line 210
    :goto_a
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasOpDevice()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_13

    .line 215
    .line 216
    if-eqz v1, :cond_12

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getOpDevice()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getOpDevice()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-ne v1, v2, :cond_12

    .line 227
    .line 228
    const/4 v1, 0x1

    .line 229
    goto :goto_b

    .line 230
    :cond_12
    const/4 v1, 0x0

    .line 231
    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasXinputUserIndex()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasXinputUserIndex()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-ne v1, v2, :cond_14

    .line 242
    .line 243
    const/4 v1, 0x1

    .line 244
    goto :goto_c

    .line 245
    :cond_14
    const/4 v1, 0x0

    .line 246
    :goto_c
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasXinputUserIndex()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_16

    .line 251
    .line 252
    if-eqz v1, :cond_15

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getXinputUserIndex()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getXinputUserIndex()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-ne v1, v2, :cond_15

    .line 263
    .line 264
    const/4 v1, 0x1

    .line 265
    goto :goto_d

    .line 266
    :cond_15
    const/4 v1, 0x0

    .line 267
    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasGameCursorSyncSeqNum()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasGameCursorSyncSeqNum()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-ne v1, v2, :cond_17

    .line 278
    .line 279
    const/4 v1, 0x1

    .line 280
    goto :goto_e

    .line 281
    :cond_17
    const/4 v1, 0x0

    .line 282
    :goto_e
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasGameCursorSyncSeqNum()Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_19

    .line 287
    .line 288
    if-eqz v1, :cond_18

    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getGameCursorSyncSeqNum()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getGameCursorSyncSeqNum()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-ne v1, v2, :cond_18

    .line 299
    .line 300
    const/4 v1, 0x1

    .line 301
    goto :goto_f

    .line 302
    :cond_18
    const/4 v1, 0x0

    .line 303
    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasTouchEvent()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasTouchEvent()Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-ne v1, v2, :cond_1a

    .line 314
    .line 315
    const/4 v1, 0x1

    .line 316
    goto :goto_10

    .line 317
    :cond_1a
    const/4 v1, 0x0

    .line 318
    :goto_10
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasTouchEvent()Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_1c

    .line 323
    .line 324
    if-eqz v1, :cond_1b

    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getTouchEvent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getTouchEvent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_1b

    .line 339
    .line 340
    const/4 v1, 0x1

    .line 341
    goto :goto_11

    .line 342
    :cond_1b
    const/4 v1, 0x0

    .line 343
    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosMode()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosMode()Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-ne v1, v2, :cond_1d

    .line 354
    .line 355
    const/4 v1, 0x1

    .line 356
    goto :goto_12

    .line 357
    :cond_1d
    const/4 v1, 0x0

    .line 358
    :goto_12
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosMode()Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_1f

    .line 363
    .line 364
    if-eqz v1, :cond_1e

    .line 365
    .line 366
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMode_:I

    .line 367
    .line 368
    iget v2, p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMode_:I

    .line 369
    .line 370
    if-ne v1, v2, :cond_1e

    .line 371
    .line 372
    const/4 v1, 0x1

    .line 373
    goto :goto_13

    .line 374
    :cond_1e
    const/4 v1, 0x0

    .line 375
    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasSerialNumber()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasSerialNumber()Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-ne v1, v2, :cond_20

    .line 386
    .line 387
    const/4 v1, 0x1

    .line 388
    goto :goto_14

    .line 389
    :cond_20
    const/4 v1, 0x0

    .line 390
    :goto_14
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasSerialNumber()Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_22

    .line 395
    .line 396
    if-eqz v1, :cond_21

    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getSerialNumber()I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getSerialNumber()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-ne v1, v2, :cond_21

    .line 407
    .line 408
    const/4 v1, 0x1

    .line 409
    goto :goto_15

    .line 410
    :cond_21
    const/4 v1, 0x0

    .line 411
    :cond_22
    :goto_15
    if-eqz v1, :cond_23

    .line 412
    .line 413
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasTimestamp()Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasTimestamp()Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-ne v1, v2, :cond_23

    .line 422
    .line 423
    const/4 v1, 0x1

    .line 424
    goto :goto_16

    .line 425
    :cond_23
    const/4 v1, 0x0

    .line 426
    :goto_16
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasTimestamp()Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-eqz v2, :cond_25

    .line 431
    .line 432
    if-eqz v1, :cond_24

    .line 433
    .line 434
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getTimestamp()J

    .line 435
    .line 436
    .line 437
    move-result-wide v1

    .line 438
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getTimestamp()J

    .line 439
    .line 440
    .line 441
    move-result-wide v4

    .line 442
    cmp-long v6, v1, v4

    .line 443
    .line 444
    if-nez v6, :cond_24

    .line 445
    .line 446
    const/4 v1, 0x1

    .line 447
    goto :goto_17

    .line 448
    :cond_24
    const/4 v1, 0x0

    .line 449
    :cond_25
    :goto_17
    if-eqz v1, :cond_26

    .line 450
    .line 451
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasWheel()Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasWheel()Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-ne v1, v2, :cond_26

    .line 460
    .line 461
    const/4 v1, 0x1

    .line 462
    goto :goto_18

    .line 463
    :cond_26
    const/4 v1, 0x0

    .line 464
    :goto_18
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasWheel()Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    if-eqz v2, :cond_28

    .line 469
    .line 470
    if-eqz v1, :cond_27

    .line 471
    .line 472
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getWheel()I

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getWheel()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-ne v1, v2, :cond_27

    .line 481
    .line 482
    const/4 v1, 0x1

    .line 483
    goto :goto_19

    .line 484
    :cond_27
    const/4 v1, 0x0

    .line 485
    :cond_28
    :goto_19
    if-eqz v1, :cond_29

    .line 486
    .line 487
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasWheelH()Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasWheelH()Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-ne v1, v2, :cond_29

    .line 496
    .line 497
    const/4 v1, 0x1

    .line 498
    goto :goto_1a

    .line 499
    :cond_29
    const/4 v1, 0x0

    .line 500
    :goto_1a
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasWheelH()Z

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    if-eqz v2, :cond_2b

    .line 505
    .line 506
    if-eqz v1, :cond_2a

    .line 507
    .line 508
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getWheelH()I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getWheelH()I

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    if-ne v1, v2, :cond_2a

    .line 517
    .line 518
    const/4 v1, 0x1

    .line 519
    goto :goto_1b

    .line 520
    :cond_2a
    const/4 v1, 0x0

    .line 521
    :cond_2b
    :goto_1b
    if-eqz v1, :cond_2c

    .line 522
    .line 523
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasVendor()Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasVendor()Z

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    if-ne v1, v2, :cond_2c

    .line 532
    .line 533
    const/4 v1, 0x1

    .line 534
    goto :goto_1c

    .line 535
    :cond_2c
    const/4 v1, 0x0

    .line 536
    :goto_1c
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasVendor()Z

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    if-eqz v2, :cond_2e

    .line 541
    .line 542
    if-eqz v1, :cond_2d

    .line 543
    .line 544
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getVendor()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getVendor()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    if-eqz v1, :cond_2d

    .line 557
    .line 558
    const/4 v1, 0x1

    .line 559
    goto :goto_1d

    .line 560
    :cond_2d
    const/4 v1, 0x0

    .line 561
    :cond_2e
    :goto_1d
    if-eqz v1, :cond_2f

    .line 562
    .line 563
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 564
    .line 565
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 566
    .line 567
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    if-eqz p1, :cond_2f

    .line 572
    .line 573
    goto :goto_1e

    .line 574
    :cond_2f
    const/4 v0, 0x0

    .line 575
    :goto_1e
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    return-object v0
.end method

.method public getGameCursorSyncSeqNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->gameCursorSyncSeqNum_:I

    .line 2
    .line 3
    return v0
.end method

.method public getInputOp()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputOp_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_BEGIN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getInputState()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputState_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getOpDevice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->opDevice_:I

    .line 2
    .line 3
    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosCursor()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPosCursorOrBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPosMode()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMode_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;->ABSOLUTE_MODE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPosMouse()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPosMouseOrBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->serialNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputOp_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputState_:I

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    and-int/2addr v0, v1

    .line 38
    if-ne v0, v1, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->value_:I

    .line 42
    .line 43
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v2, v0

    .line 48
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    and-int/2addr v0, v3

    .line 53
    if-ne v0, v3, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosCursor()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v2, v0

    .line 64
    :cond_4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 65
    .line 66
    const/16 v1, 0x10

    .line 67
    .line 68
    and-int/2addr v0, v1

    .line 69
    if-ne v0, v1, :cond_5

    .line 70
    .line 71
    const/4 v0, 0x5

    .line 72
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosMouse()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/2addr v2, v0

    .line 81
    :cond_5
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 82
    .line 83
    const/16 v1, 0x20

    .line 84
    .line 85
    and-int/2addr v0, v1

    .line 86
    if-ne v0, v1, :cond_6

    .line 87
    .line 88
    const/4 v0, 0x6

    .line 89
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->opDevice_:I

    .line 90
    .line 91
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    add-int/2addr v2, v0

    .line 96
    :cond_6
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 97
    .line 98
    const/16 v1, 0x40

    .line 99
    .line 100
    and-int/2addr v0, v1

    .line 101
    if-ne v0, v1, :cond_7

    .line 102
    .line 103
    const/4 v0, 0x7

    .line 104
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->xinputUserIndex_:I

    .line 105
    .line 106
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    add-int/2addr v2, v0

    .line 111
    :cond_7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 112
    .line 113
    const/16 v1, 0x80

    .line 114
    .line 115
    and-int/2addr v0, v1

    .line 116
    if-ne v0, v1, :cond_8

    .line 117
    .line 118
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->gameCursorSyncSeqNum_:I

    .line 119
    .line 120
    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    add-int/2addr v2, v0

    .line 125
    :cond_8
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 126
    .line 127
    const/16 v1, 0x100

    .line 128
    .line 129
    and-int/2addr v0, v1

    .line 130
    if-ne v0, v1, :cond_9

    .line 131
    .line 132
    const/16 v0, 0x9

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getTouchEvent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    add-int/2addr v2, v0

    .line 143
    :cond_9
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 144
    .line 145
    const/16 v1, 0x200

    .line 146
    .line 147
    and-int/2addr v0, v1

    .line 148
    if-ne v0, v1, :cond_a

    .line 149
    .line 150
    const/16 v0, 0xa

    .line 151
    .line 152
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMode_:I

    .line 153
    .line 154
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    add-int/2addr v2, v0

    .line 159
    :cond_a
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 160
    .line 161
    const/16 v1, 0x400

    .line 162
    .line 163
    and-int/2addr v0, v1

    .line 164
    if-ne v0, v1, :cond_b

    .line 165
    .line 166
    const/16 v0, 0xb

    .line 167
    .line 168
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->serialNumber_:I

    .line 169
    .line 170
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    add-int/2addr v2, v0

    .line 175
    :cond_b
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 176
    .line 177
    const/16 v1, 0x800

    .line 178
    .line 179
    and-int/2addr v0, v1

    .line 180
    if-ne v0, v1, :cond_c

    .line 181
    .line 182
    const/16 v0, 0xc

    .line 183
    .line 184
    iget-wide v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->timestamp_:J

    .line 185
    .line 186
    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    add-int/2addr v2, v0

    .line 191
    :cond_c
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 192
    .line 193
    const/16 v1, 0x1000

    .line 194
    .line 195
    and-int/2addr v0, v1

    .line 196
    if-ne v0, v1, :cond_d

    .line 197
    .line 198
    const/16 v0, 0xd

    .line 199
    .line 200
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheel_:I

    .line 201
    .line 202
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    add-int/2addr v2, v0

    .line 207
    :cond_d
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 208
    .line 209
    const/16 v1, 0x2000

    .line 210
    .line 211
    and-int/2addr v0, v1

    .line 212
    if-ne v0, v1, :cond_e

    .line 213
    .line 214
    const/16 v0, 0xe

    .line 215
    .line 216
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheelH_:I

    .line 217
    .line 218
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    add-int/2addr v2, v0

    .line 223
    :cond_e
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 224
    .line 225
    const/16 v1, 0x4000

    .line 226
    .line 227
    and-int/2addr v0, v1

    .line 228
    if-ne v0, v1, :cond_f

    .line 229
    .line 230
    const/16 v0, 0xf

    .line 231
    .line 232
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->vendor_:Ljava/lang/Object;

    .line 233
    .line 234
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    add-int/2addr v2, v0

    .line 239
    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    add-int/2addr v2, v0

    .line 246
    iput v2, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 247
    .line 248
    return v2
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->timestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTouchEvent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getTouchEventOrBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEventOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->value_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->vendor_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->vendor_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getVendorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->vendor_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->vendor_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getWheel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheel_:I

    .line 2
    .line 3
    return v0
.end method

.method public getWheelH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheelH_:I

    .line 2
    .line 3
    return v0
.end method

.method public getXinputUserIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->xinputUserIndex_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasGameCursorSyncSeqNum()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasInputOp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

.method public hasInputState()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasOpDevice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasPosCursor()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasPosMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x200

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasPosMouse()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasSerialNumber()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x400

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x800

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasTouchEvent()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasVendor()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x4000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasWheel()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x1000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasWheelH()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x2000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasXinputUserIndex()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x30b

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasInputOp()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    mul-int/lit8 v1, v1, 0x25

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x35

    .line 28
    .line 29
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputOp_:I

    .line 30
    .line 31
    add-int/2addr v1, v0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasInputState()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    mul-int/lit8 v1, v1, 0x25

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x2

    .line 41
    .line 42
    mul-int/lit8 v1, v1, 0x35

    .line 43
    .line 44
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputState_:I

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    mul-int/lit8 v1, v1, 0x25

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x3

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x35

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v1, v0

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosCursor()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    mul-int/lit8 v1, v1, 0x25

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x4

    .line 73
    .line 74
    mul-int/lit8 v1, v1, 0x35

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosCursor()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/2addr v1, v0

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosMouse()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    mul-int/lit8 v1, v1, 0x25

    .line 92
    .line 93
    add-int/lit8 v1, v1, 0x5

    .line 94
    .line 95
    mul-int/lit8 v1, v1, 0x35

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosMouse()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    add-int/2addr v1, v0

    .line 106
    :cond_5
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasOpDevice()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    mul-int/lit8 v1, v1, 0x25

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x6

    .line 115
    .line 116
    mul-int/lit8 v1, v1, 0x35

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getOpDevice()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr v1, v0

    .line 123
    :cond_6
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasXinputUserIndex()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    mul-int/lit8 v1, v1, 0x25

    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x7

    .line 132
    .line 133
    mul-int/lit8 v1, v1, 0x35

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getXinputUserIndex()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v1, v0

    .line 140
    :cond_7
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasGameCursorSyncSeqNum()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    mul-int/lit8 v1, v1, 0x25

    .line 147
    .line 148
    add-int/lit8 v1, v1, 0x8

    .line 149
    .line 150
    mul-int/lit8 v1, v1, 0x35

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getGameCursorSyncSeqNum()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    add-int/2addr v1, v0

    .line 157
    :cond_8
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasTouchEvent()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    mul-int/lit8 v1, v1, 0x25

    .line 164
    .line 165
    add-int/lit8 v1, v1, 0x9

    .line 166
    .line 167
    mul-int/lit8 v1, v1, 0x35

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getTouchEvent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    add-int/2addr v1, v0

    .line 178
    :cond_9
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosMode()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_a

    .line 183
    .line 184
    mul-int/lit8 v1, v1, 0x25

    .line 185
    .line 186
    add-int/lit8 v1, v1, 0xa

    .line 187
    .line 188
    mul-int/lit8 v1, v1, 0x35

    .line 189
    .line 190
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMode_:I

    .line 191
    .line 192
    add-int/2addr v1, v0

    .line 193
    :cond_a
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasSerialNumber()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_b

    .line 198
    .line 199
    mul-int/lit8 v1, v1, 0x25

    .line 200
    .line 201
    add-int/lit8 v1, v1, 0xb

    .line 202
    .line 203
    mul-int/lit8 v1, v1, 0x35

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getSerialNumber()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    add-int/2addr v1, v0

    .line 210
    :cond_b
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasTimestamp()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_c

    .line 215
    .line 216
    mul-int/lit8 v1, v1, 0x25

    .line 217
    .line 218
    add-int/lit8 v1, v1, 0xc

    .line 219
    .line 220
    mul-int/lit8 v1, v1, 0x35

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getTimestamp()J

    .line 223
    .line 224
    .line 225
    move-result-wide v2

    .line 226
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    add-int/2addr v1, v0

    .line 231
    :cond_c
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasWheel()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_d

    .line 236
    .line 237
    mul-int/lit8 v1, v1, 0x25

    .line 238
    .line 239
    add-int/lit8 v1, v1, 0xd

    .line 240
    .line 241
    mul-int/lit8 v1, v1, 0x35

    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getWheel()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    add-int/2addr v1, v0

    .line 248
    :cond_d
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasWheelH()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_e

    .line 253
    .line 254
    mul-int/lit8 v1, v1, 0x25

    .line 255
    .line 256
    add-int/lit8 v1, v1, 0xe

    .line 257
    .line 258
    mul-int/lit8 v1, v1, 0x35

    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getWheelH()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    add-int/2addr v1, v0

    .line 265
    :cond_e
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasVendor()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_f

    .line 270
    .line 271
    mul-int/lit8 v1, v1, 0x25

    .line 272
    .line 273
    add-int/lit8 v1, v1, 0xf

    .line 274
    .line 275
    mul-int/lit8 v1, v1, 0x35

    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getVendor()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    add-int/2addr v1, v0

    .line 286
    :cond_f
    mul-int/lit8 v1, v1, 0x1d

    .line 287
    .line 288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    add-int/2addr v1, v0

    .line 295
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 296
    .line 297
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$14300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    .line 6
    .line 7
    const-class v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->newBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputOp_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->inputState_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    and-int/2addr v0, v1

    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->value_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    and-int/2addr v0, v2

    .line 40
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosCursor()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 50
    .line 51
    const/16 v1, 0x10

    .line 52
    .line 53
    and-int/2addr v0, v1

    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    const/4 v0, 0x5

    .line 57
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosMouse()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 65
    .line 66
    const/16 v1, 0x20

    .line 67
    .line 68
    and-int/2addr v0, v1

    .line 69
    if-ne v0, v1, :cond_5

    .line 70
    .line 71
    const/4 v0, 0x6

    .line 72
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->opDevice_:I

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 78
    .line 79
    const/16 v1, 0x40

    .line 80
    .line 81
    and-int/2addr v0, v1

    .line 82
    if-ne v0, v1, :cond_6

    .line 83
    .line 84
    const/4 v0, 0x7

    .line 85
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->xinputUserIndex_:I

    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 88
    .line 89
    .line 90
    :cond_6
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 91
    .line 92
    const/16 v1, 0x80

    .line 93
    .line 94
    and-int/2addr v0, v1

    .line 95
    if-ne v0, v1, :cond_7

    .line 96
    .line 97
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->gameCursorSyncSeqNum_:I

    .line 98
    .line 99
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 100
    .line 101
    .line 102
    :cond_7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 103
    .line 104
    const/16 v1, 0x100

    .line 105
    .line 106
    and-int/2addr v0, v1

    .line 107
    if-ne v0, v1, :cond_8

    .line 108
    .line 109
    const/16 v0, 0x9

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getTouchEvent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 116
    .line 117
    .line 118
    :cond_8
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 119
    .line 120
    const/16 v1, 0x200

    .line 121
    .line 122
    and-int/2addr v0, v1

    .line 123
    if-ne v0, v1, :cond_9

    .line 124
    .line 125
    const/16 v0, 0xa

    .line 126
    .line 127
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->posMode_:I

    .line 128
    .line 129
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 130
    .line 131
    .line 132
    :cond_9
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 133
    .line 134
    const/16 v1, 0x400

    .line 135
    .line 136
    and-int/2addr v0, v1

    .line 137
    if-ne v0, v1, :cond_a

    .line 138
    .line 139
    const/16 v0, 0xb

    .line 140
    .line 141
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->serialNumber_:I

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 144
    .line 145
    .line 146
    :cond_a
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 147
    .line 148
    const/16 v1, 0x800

    .line 149
    .line 150
    and-int/2addr v0, v1

    .line 151
    if-ne v0, v1, :cond_b

    .line 152
    .line 153
    const/16 v0, 0xc

    .line 154
    .line 155
    iget-wide v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->timestamp_:J

    .line 156
    .line 157
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 158
    .line 159
    .line 160
    :cond_b
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 161
    .line 162
    const/16 v1, 0x1000

    .line 163
    .line 164
    and-int/2addr v0, v1

    .line 165
    if-ne v0, v1, :cond_c

    .line 166
    .line 167
    const/16 v0, 0xd

    .line 168
    .line 169
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheel_:I

    .line 170
    .line 171
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 172
    .line 173
    .line 174
    :cond_c
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 175
    .line 176
    const/16 v1, 0x2000

    .line 177
    .line 178
    and-int/2addr v0, v1

    .line 179
    if-ne v0, v1, :cond_d

    .line 180
    .line 181
    const/16 v0, 0xe

    .line 182
    .line 183
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->wheelH_:I

    .line 184
    .line 185
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 186
    .line 187
    .line 188
    :cond_d
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->bitField0_:I

    .line 189
    .line 190
    const/16 v1, 0x4000

    .line 191
    .line 192
    and-int/2addr v0, v1

    .line 193
    if-ne v0, v1, :cond_e

    .line 194
    .line 195
    const/16 v0, 0xf

    .line 196
    .line 197
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->vendor_:Ljava/lang/Object;

    .line 198
    .line 199
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 203
    .line 204
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method
