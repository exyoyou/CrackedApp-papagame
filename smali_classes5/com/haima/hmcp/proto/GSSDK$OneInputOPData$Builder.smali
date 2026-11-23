.class public final Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$OneInputOPDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;",
        ">;",
        "Lcom/haima/hmcp/proto/GSSDK$OneInputOPDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gameCursorSyncSeqNum_:I

.field private inputOp_:I

.field private inputState_:I

.field private opDevice_:I

.field private posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

.field private posMode_:I

.field private posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

.field private serialNumber_:I

.field private timestamp_:J

.field private touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

.field private value_:I

.field private vendor_:Ljava/lang/Object;

.field private wheelH_:I

.field private wheel_:I

.field private xinputUserIndex_:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputOp_:I

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputState_:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 7
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 8
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 9
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMode_:I

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputOp_:I

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputState_:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 18
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMode_:I

    const-string p1, ""

    .line 19
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

    .line 20
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;-><init>()V

    return-void
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

.method private getPosCursorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getPosCursor()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getPosMouseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;",
            "Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getPosMouse()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getTouchEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getTouchEvent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$17700()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getPosCursorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getPosMouseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getTouchEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 6

    .line 3
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputOp_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$17902(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputState_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18002(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->value_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18102(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_4

    .line 9
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18202(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18202(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    :goto_1
    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_5
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_6

    .line 12
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18302(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18302(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    :goto_2
    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x20

    .line 14
    :cond_7
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->opDevice_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18402(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_8

    or-int/lit8 v3, v3, 0x40

    .line 15
    :cond_8
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->xinputUserIndex_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18502(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x80

    .line 16
    :cond_9
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->gameCursorSyncSeqNum_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18602(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x100

    .line 17
    :cond_a
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_b

    .line 18
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18702(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    goto :goto_3

    .line 19
    :cond_b
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18702(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    :goto_3
    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x200

    .line 20
    :cond_c
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMode_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18802(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_d

    or-int/lit16 v3, v3, 0x400

    .line 21
    :cond_d
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->serialNumber_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$18902(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_e

    or-int/lit16 v3, v3, 0x800

    .line 22
    :cond_e
    iget-wide v4, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->timestamp_:J

    invoke-static {v0, v4, v5}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$19002(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;J)J

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_f

    or-int/lit16 v3, v3, 0x1000

    .line 23
    :cond_f
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->wheel_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$19102(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_10

    or-int/lit16 v3, v3, 0x2000

    .line 24
    :cond_10
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->wheelH_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$19202(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    const/16 v2, 0x4000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    or-int/lit16 v3, v3, 0x4000

    .line 25
    :cond_11
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$19302(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v0, v3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$19402(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;I)I

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 4

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputOp_:I

    .line 7
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    const/4 v2, 0x1

    .line 8
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputState_:I

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->value_:I

    and-int/lit8 v1, v1, -0x5

    .line 10
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 12
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 14
    :goto_0
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 16
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 18
    :goto_1
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    .line 19
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->opDevice_:I

    and-int/lit8 v1, v1, -0x21

    .line 20
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->xinputUserIndex_:I

    and-int/lit8 v1, v1, -0x41

    .line 21
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->gameCursorSyncSeqNum_:I

    and-int/lit16 v1, v1, -0x81

    .line 22
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 24
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    goto :goto_2

    .line 25
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 26
    :goto_2
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    .line 27
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMode_:I

    and-int/lit16 v1, v1, -0x201

    .line 28
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->serialNumber_:I

    and-int/lit16 v1, v1, -0x401

    const-wide/16 v2, 0x0

    .line 29
    iput-wide v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->timestamp_:J

    and-int/lit16 v1, v1, -0x801

    .line 30
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->wheel_:I

    and-int/lit16 v1, v1, -0x1001

    .line 31
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->wheelH_:I

    and-int/lit16 v0, v1, -0x2001

    const-string v1, ""

    .line 32
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

    and-int/lit16 v0, v0, -0x4001

    .line 33
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    return-object p1
.end method

.method public clearGameCursorSyncSeqNum()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->gameCursorSyncSeqNum_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearInputOp()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputOp_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearInputState()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputState_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    return-object p1
.end method

.method public clearOpDevice()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->opDevice_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearPosCursor()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x9

    .line 18
    .line 19
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearPosMode()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMode_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearPosMouse()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x11

    .line 18
    .line 19
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearSerialNumber()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->serialNumber_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearTimestamp()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x801

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->timestamp_:J

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearTouchEvent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit16 v0, v0, -0x101

    .line 18
    .line 19
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearValue()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->value_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearVendor()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x4001

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getVendor()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearWheel()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x1001

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->wheel_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearWheelH()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->wheelH_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearXinputUserIndex()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->xinputUserIndex_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    .locals 1

    .line 3
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
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

.method public getGameCursorSyncSeqNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->gameCursorSyncSeqNum_:I

    .line 2
    .line 3
    return v0
.end method

.method public getInputOp()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputOp_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputState_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->opDevice_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPosCursor()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPosCursorBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getPosCursorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPosCursorOrBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getPosMode()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMode_:I

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
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPosMouseBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getPosMouseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPosMouseOrBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->serialNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->timestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTouchEvent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 19
    .line 20
    return-object v0
.end method

.method public getTouchEventBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->getTouchEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getTouchEventOrBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEventOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEventOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->value_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getVendorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->wheel_:I

    .line 2
    .line 3
    return v0
.end method

.method public getWheelH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->wheelH_:I

    .line 2
    .line 3
    return v0
.end method

.method public getXinputUserIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->xinputUserIndex_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasGameCursorSyncSeqNum()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 50
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasInputOp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getInputOp()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setInputOp(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasInputState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getInputState()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setInputState(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setValue(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosCursor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosCursor()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergePosCursor(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosMouse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosMouse()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergePosMouse(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasOpDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getOpDevice()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setOpDevice(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasXinputUserIndex()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getXinputUserIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setXinputUserIndex(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 25
    :cond_7
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasGameCursorSyncSeqNum()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getGameCursorSyncSeqNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setGameCursorSyncSeqNum(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getTouchEvent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeTouchEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 29
    :cond_9
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasPosMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getPosMode()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setPosMode(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 31
    :cond_a
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasSerialNumber()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getSerialNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setSerialNumber(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 33
    :cond_b
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 34
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setTimestamp(J)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 35
    :cond_c
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasWheel()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 36
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getWheel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setWheel(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 37
    :cond_d
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasWheelH()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getWheelH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setWheelH(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 39
    :cond_e
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->hasVendor()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 41
    invoke-static {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$19300(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 43
    :cond_f
    invoke-static {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->access$19500(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergePosCursor(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/2addr v0, v1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->newBuilder(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 46
    .line 47
    .line 48
    :goto_1
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 49
    .line 50
    or-int/2addr p1, v1

    .line 51
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergePosMouse(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/2addr v0, v1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->newBuilder(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 46
    .line 47
    .line 48
    :goto_1
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 49
    .line 50
    or-int/2addr p1, v1

    .line 51
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeTouchEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/2addr v0, v1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;->newBuilder(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 46
    .line 47
    .line 48
    :goto_1
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 49
    .line 50
    or-int/2addr p1, v1

    .line 51
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    return-object p1
.end method

.method public setGameCursorSyncSeqNum(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->gameCursorSyncSeqNum_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setInputOp(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputOp_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setInputState(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->inputState_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setOpDevice(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->opDevice_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setPosCursor(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPosCursor(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursorBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posCursor_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPosMode(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x200

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMode_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setPosMouse(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPosMouse(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->posMouse_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    return-object p1
.end method

.method public setSerialNumber(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->serialNumber_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setTimestamp(J)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->timestamp_:J

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setTouchEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTouchEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->touchEvent_:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$TouchEvent;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;

    return-object p1
.end method

.method public setValue(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->value_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setVendor(Ljava/lang/String;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x4000

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setVendorBytes(Lcom/google/protobuf/ByteString;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x4000

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->vendor_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setWheel(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x1000

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->wheel_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setWheelH(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x2000

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->wheelH_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setXinputUserIndex(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$Builder;->xinputUserIndex_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
